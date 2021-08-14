local function getHoleCount(P)
	local hole=0
	for x=1,10 do
		for y=1,20 do
			if not P:solid(x,y)then
				holes=holes+1
			end
		end
	end
	return hole
end
return{
	color=COLOR.cyan,
	env={
		drop=60,lock=60,
		freshLimit=15,
		fieldH=20,
		highCam=true,
		fillClear=false,
		seqData={1,2,3,4,5,6,7},
		bg='blockrain',bgm='there',
	},
	mesDisp=function(P)
		setFont(60)
		mStr(P.stat.piece,63,280)
		mText(drawableText.piece,63,350)
	end,
	score=function(P)return{getHoleCount(P),P.stat.time}end,
	scoreDisp=function(D)return D[1].." Holes".."   "..STRING.time(D[2])end,
	comp=function(a,b)return a[1]<b[1]or a[1]==b[1]and a[2]<b[2]end,
	getRank=function(P)
		local H=getHoleCount(P)
		return
		H==0 and 5 or
		H<=1 and 4 or
		H<=2 and 3 or
		H<=4 and 2 or
		H<=7 and 1 or
		H<=10 and 0
	end,
}