---@param RND RandomGenerator
local function randomizer(RND)
    local last=RND:random(2)==1 and 1 or 4
    local function get_next()
        local list={1,2,3,1,3,2}
        local ret=list[last]
        last=last+1
        if last>6 then last=1 end
        return ret
    end
    local bag={}
    local function fill_bag()
        local weights=0
        while weights<24 do
            local x=get_next()
            table.insert(bag,x)
            weights=weights+(x==1 and 2 or 3)
        end
        local pos=RND:random(#bag)+1
        table.insert(bag,pos,4)
        if skip==1 then skip=0 end
    end
    return function()
        if #bag==0 then fill_bag() end
        return table.remove(bag,1)
    end
end
local lines={
    {1,2,3,4,0,0,5,6,7,8},
    {7,6,5,0,0,0,4,3,2,1},
    {1,2,3,4,0,0,0,5,6,7},
    {7,6,5,0,0,0,0,4,3,2}
}
local function get_lines(n,f)
    local ret={}
    for _=1,n do
        table.insert(ret,lines[f()])
    end
    return ret
end

return {
    load=function()
        PLY.newPlayer(1)
        local our=PLY_ALIVE[1]
        our.randomizer_spinren=randomizer(our.holeRND)
        our:pushLineList(get_lines(20,our.randomizer_spinren))
    end,
    env={
        lock=1e99,
        drop=1e99,
        infHold=true,
        eventSet='sprintEff_40',
        hook_drop=function(P)
            if P.lastPiece.row==0 then
                P:win('finish')
            end
            local up=MATH.clamp(20-P.stat.row+P.lastPiece.row,0,P.lastPiece.row)
            P:pushLineList(get_lines(up,P.randomizer_spinren))
        end
    },
    score=function(P) return {P.stat.atk/P.stat.row,P.stat.time} end,
    scoreDisp=function(D) return string.format("%.3f",D[1]).." Efficiency   "..STRING.time(D[2]) end,
    comp=function(a,b) return a[1]>b[1] or a[1]==b[1] and a[2]<b[2] end,
    getRank=function(P)
        if P.stat.row<10 then return end
        local E=P.stat.atk/P.stat.row
        return
            E>=10 and 5 or
            E>=9 and 4 or
            E>=8 and 3 or
            E>=6 and 2 or
            E>=3 and 1 or
            0
    end
}