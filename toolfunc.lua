function string.splitS(s,sep)
	local t={}
	::L::
		local i=find(s,sep)or #s+1
		ins(t,sub(s,1,i-1))
		s=sub(s,i+#sep)
	if #s~=0 then goto L end
	return t
end
function sgn(i)return i>0 and 1 or i<0 and -1 or 0 end--Row numbe is A-uth-or's id!
function without(t,v)
	for i=1,#t do
		if t[i]==v then return end
	end
	return true
end
function mStr(s,x,y)
	gc.printf(s,x-300,y,600,"center")
end

function getNewRow(val)
	if not val then val=0 end
	local t=rem(freeRow)
	for i=1,10 do
		t[i]=val or 0
	end
	--clear a row and move to active list
	if #freeRow==0 then
		for i=1,20 do
			ins(freeRow,{0,0,0,0,0,0,0,0,0,0})
		end
	end
	--prepare new rows
	return t
end
function removeRow(t,k)
	ins(freeRow,rem(t,k))
end

local count=0
BGblockList={}for i=1,16 do BGblockList[i]={v=0}end
function getNewBlock()
	count=count+1
	if count==17 then count=1 end
	local t=BGblockList[count]
	t.bn,t.size=BGblock.next,2+3*rnd()
	t.b=blocks[t.bn][rnd(0,3)]
	t.x=rnd(-#t.b[1]*t.size*30+100,1180)
	t.y=-#t.b*30*t.size
	t.v=t.size*(1+rnd())
	BGblock.next=BGblock.next%7+1
	return t
end
--Background animation

function timeSort(a,b)
	return a.time>b.time
end
function badgeSort(a,b)
	return a.badge>b.badge
end
function stencil_miniTitle()
	for i=1,#miniTitle_rect do
		gc.rectangle("fill",unpack(miniTitle_rect[i]))
	end
end
function stencil_field()
	gc.rectangle("fill",0,-10,300,610)
end
function stencil_field_small()
	gc.rectangle("fill",0,0,60,120)
end
--Single-usage funcs
function swapLanguage(l)
	text=require("language/"..langID[l])
	Buttons.sel=nil
	for S,L in next,Buttons do
		for N,B in next,L do
			B.alpha=0
			B.t=text.ButtonText[S][N]
		end
	end
	if royaleCtrlPad then royaleCtrlPad:release()end
	royaleCtrlPad=gc.newCanvas(300,100)
	gc.setCanvas(royaleCtrlPad)
	gc.setColor(1,1,1)
	setFont(25)
	gc.setLineWidth(2)
	for i=1,4 do
		gc.rectangle("line",RCPB[2*i-1],RCPB[2*i],90,35,8,4)
		mStr(text.atkModeName[i],RCPB[2*i-1]+45,RCPB[2*i]+3)
	end
	gc.setCanvas()
	collectgarbage()
end
function VIB(t)
	if setting.vib>0 then
		love.system.vibrate(vibrateLevel[setting.vib+t])
	end
end
function sysSFX(s,v)
	if setting.sfx then
		local n=1
		::L::if sfx[s][n]:isPlaying()then
			n=n+1
			if not sfx[s][n]then
				sfx[s][n]=sfx[s][n-1]:clone()
				sfx[s][n]:seek(0)
				goto quit
			end
			goto L
		end::quit::
		sfx[s][n]:setVolume(v or 1)
		sfx[s][n]:play()
	end
end
function SFX(s,v)
	if setting.sfx and not P.ai then
		local n=1
		::L::if sfx[s][n]:isPlaying()then
			n=n+1
			if not sfx[s][n]then
				sfx[s][n]=sfx[s][n-1]:clone()
				sfx[s][n]:seek(0)
				goto quit
			end
			goto L
		end::quit::
		sfx[s][n]:setVolume(v or 1)
		sfx[s][n]:play()
	end
end
function BGM(s)
	if setting.bgm and bgmPlaying~=s then
		if bgmPlaying then newTask(Event_task.bgmFadeOut,nil,bgmPlaying)end
		for i=1,#Task do
			if Task[i].code==Event_task.bgmFadeIn then
				Task[i].code=Event_task.bgmFadeOut
			end
		end
		if s then
			newTask(Event_task.bgmFadeIn,nil,s)
			bgm[s]:play()
		end
		bgmPlaying=s
	end
end
function gotoScene(s,style)
	if not sceneSwaping and s~=scene then
		style=style or"deck"
		sceneSwaping={
			tar=s,style=style,
			time=swap[style][1],mid=swap[style][2],
			draw=swap[style].d
		}
		Buttons.sel=nil
	end
end
function back()
	local t=prevMenu[scene]
	if type(t)=="string"then
		gotoScene(t)
	else
		t()
	end
end
function loadData()
	userData:open("r")
	--local t=string.splitS(love.math.decompress(userdata,"zlib"),"\r\n")
	local t=string.splitS(userData:read(),"\r\n")
	userData:close()
	for i=1,#t do
		local i=t[i]
		if find(i,"=")then
			local t=sub(i,1,find(i,"=")-1)
			local v=sub(i,find(i,"=")+1)
			if t=="run"or t=="game"or t=="gametime"or t=="piece"or t=="row"or t=="atk"or t=="key"or t=="rotate"or t=="hold"or t=="spin"then
				v=toN(v)if not v or v<0 then v=0 end
				stat[t]=v
			end
		end
	end
end
function saveData()
	local t={}
	for i=1,#dataOpt do
		ins(t,dataOpt[i].."="..toS(stat[dataOpt[i]]))
	end
	t=table.concat(t,"\r\n")
	--t=love.math.compress(t,"zlib"):getString()
	userData:open("w")
	userData:write(t)
	userData:close()
end
function loadSetting()
	userSetting:open("r")
	--local t=string.splitS(love.math.decompress(userdata,"zlib"),"\r\n")
	local t=string.splitS(userSetting:read(),"\r\n")
	userSetting:close()
	for i=1,#t do
		local i=t[i]
		if find(i,"=")then
			local t=sub(i,1,find(i,"=")-1)
			local v=sub(i,find(i,"=")+1)
			if t=="sfx"or t=="bgm"or t=="bgblock"then
				setting[t]=v=="true"
			elseif t=="vib"then
				setting.vib=toN(v:match("[01234]"))or 0
			elseif t=="fullscreen"then
				setting.fullscreen=v=="true"
				love.window.setFullscreen(setting.fullscreen)
			elseif t=="keymap"then
				v=string.splitS(v,"/")
				for i=1,16 do
					local v1=string.splitS(v[i],",")
					for j=1,#v1 do
						setting.keyMap[i][j]=v1[j]
					end
				end
			elseif t=="keylib"then
				v=string.splitS(v,"/")
				for i=1,4 do
					local v1=string.splitS(v[i],",")
					for j=1,#v1 do
						setting.keyLib[i][j]=toN(v1[j])
					end
					for j=1,#setting.keyLib[i]do
						local v=setting.keyLib[i][j]
						if int(v)~=v or v>=9 or v<=0 then
							setting.keyLib[i]={i}
							break
						end
					end
				end
			elseif t=="virtualkey"then
				v=string.splitS(v,"/")
				for i=1,10 do
					if not v[i]then goto c end
					virtualkey[i]=string.splitS(v[i],",")
					for j=1,4 do
						virtualkey[i][j]=toN(virtualkey[i][j])
					end
					::c::
				end
			elseif t=="virtualkeyAlpha"then
				setting.virtualkeyAlpha=int(abs(toN(v)))
			elseif t=="virtualkeyIcon"or t=="virtualkeySwitch"then
				setting[t]=v=="true"
			elseif t=="frameMul"then
				setting.frameMul=min(max(toN(v)or 100,0),100)
			elseif t=="das"or t=="arr"or t=="sddas"or t=="sdarr"then
				v=toN(v)if not v or v<0 then v=0 end
				setting[t]=int(v)
			elseif t=="ghost"or t=="center"or t=="grid"or t=="swap"then
				setting[t]=v=="true"
			elseif t=="lang"then
				setting[t]=toN(v:match("[12]"))or 1
			end
		end
	end
end
function saveSetting()
	local vk={}
	for i=1,10 do
		for j=1,4 do
			virtualkey[i][j]=int(virtualkey[i][j]+.5)
		end--Saving a integer is better?
		vk[i]=table.concat(virtualkey[i],",")
	end--pre-pack virtualkey setting
	local map={}
	for i=1,16 do
		map[i]=table.concat(setting.keyMap[i],",")
	end
	local lib={}
	for i=1,4 do
		lib[i]=table.concat(setting.keyLib[i],",")
	end
	local t={
		"keymap="..toS(table.concat(map,"/")),
		"keylib="..toS(table.concat(lib,"/")),
		"virtualkey="..toS(table.concat(vk,"/")),
	}
	for i=1,#saveOpt do
		ins(t,saveOpt[i].."="..toS(setting[saveOpt[i]]))
	end
	t=table.concat(t,"\r\n")
	--t=love.math.compress(t,"zlib"):getString()
	userSetting:open("w")
	userSetting:write(t)
	userSetting:close()
end