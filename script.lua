-- local matrix = dofile (HYP_GetBaseDir() .. "matrix.lua")

Rmax=4000 -- radius of galaxy
Rbar=2000 -- radius of bar
Rker=500 -- radius of kernel

eratio=.8
etwist=7.5
speed = 200

ellipse={}
function update()
	for r=1,Rmax do
		local b=etwist*r/Rmax
		ellipse[r]={}
		ellipse[r].s=r*math.sin(b)
		ellipse[r].c=r*math.cos(b)
		ellipse[r].v=speed/r
		ellipse[r].e=eratio
	end
end

update()

stars = {}
total=0

function init_stars(j,n,size,damp)
	total=total+n
	stars[j]={}
	stars[j].n=n
	stars[j].vp=HYP_VertexPool.Create( n, "pool"..j )
	HYP_Object.SetMaterial( stars[j].vp, "mat"..j )
	HYP_Object.AttachTexture( stars[j].vp, "tex"..j, "mat"..j, 0 )
	HYP_Object.SetTexturingState( stars[j].vp, 1 )
	
	HYP_VertexPool.SetVerticesSize( stars[j].vp, size )
	if not damp then damp={} end
	if not damp[1] then damp[1]=0 end
	if not damp[2] then damp[2]=0.001 end
	if not damp[3] then damp[3]=0 end
	
	HYP_VertexPool.SetPointSpriteDistAtt( stars[j].vp, damp[1],damp[2],damp[3] )
	
	HYP_Object.SetBlendingState( stars[j].vp , 1 );
	HYP_Object.SetBlendingFactors( stars[j].vp, 1, 1 )
	stars[j].data= {}
	for i = 1, n do
		local a=2.0*math.pi*math.random()
		local r=math.random(Rmax)
		stars[j].data[i]={a=a,r=r}
		local e= 30 -- thickness
		if r<Rker then e=e+math.sqrt(Rker*Rker-r*r)/2 end
		HYP_VertexPool.SetVertexPosition( stars[j].vp, i-1 , 0,0,2*e*math.random()-e )
	end
end

init_stars(1,8000,128);
init_stars(2,1000,16);
init_stars(3,1000,16);
init_stars(4,1000,16);
init_stars(5,1000,16);
init_stars(6,1000,16);
init_stars(7,1000,16);
init_stars(8,1000,16);

function frame()
	local time_step = HYP_GetTimeStep();
	for j,v in ipairs(stars) do
		for i,star in ipairs(v.data) do
			local x, y, z = HYP_VertexPool.GetVertexPosition_Fast( v.vp, i-1);
			local e=ellipse[star.r]
			star.a=star.a+time_step*e.v
			x = math.sin(star.a)
			y = e.e*math.cos(star.a)
			HYP_VertexPool.SetVertexPosition_Fast( v.vp, i-1 , e.s*x+e.c*y,e.c*x-e.s*y,z )
		end
	end
	for i=1,10 do -- cycle stars in the vertex pools to mimic star evolution
		local start=1
		local i1=math.random(stars[start].n)
		local a=stars[start].data[i1].a
		local r=stars[start].data[i1].r
		local x, y, z = HYP_VertexPool.GetVertexPosition_Fast( stars[start].vp, i1-1);
		for j=start+1,#stars do
		    local i2=math.random(stars[j].n) -- star to swap with
		    local x, y, z = HYP_VertexPool.GetVertexPosition_Fast( stars[j].vp, i2-1);
			stars[j-1].data[i1]=stars[j].data[i2]
			HYP_VertexPool.SetVertexPosition_Fast( stars[j-1].vp, i1-1 , x,y,z )
			i1=i2
		end
		stars[#stars].data[i1]={a=a,r=r} -- add a supernova here one day
		HYP_VertexPool.SetVertexPosition_Fast( stars[#stars].vp, i1-1 , x,y,z )
	end
	HYP_DrawText( 60, 25, 1.0, .5, .1, total);
	HYP_DrawText( 100, 45, 1.0, .5, .1, string.format("%.3f", eratio) );
	HYP_DrawText( 100, 65, 1.0, .5, .1, string.format("%.3f", etwist) );
end