--Content/Assets/Lua/extentions/main\view
--Plugins/Lua/frameworkext/lmvc/view
--Plugins/Lua/frameworkext/lmvc/ui/adapter/

-- names={"Sam","Paul","Lee"}
-- grades={Sam=5,Paul=9,Lee=3}
-- table.sort(names, function (n1,n2)
--     return grades[n1]>grades[n2]
-- end)

-- for k,v in ipairs(names)do
--     print(v)
-- end

-- function sortbygrade(name,grades)
--     table.sort(name,function (n1,n2)
--         return grades[n1]>grades[n2]
--     end)
-- end

-- local function fact(n)
--     if n == 0 then return 1
--     else return n*fact(n-1)
--     end
-- end

-- print(fact(6))

-- function room1()
--     local move = io.read()
--     if move =="down"then return room2()
--         elseif move=="left" then return room4()
--         else
--             print("invalid commend")
--             return room1()
--         end
-- end

-- function room2()
--     local  move = io.read()
--     if move =="up" then return room1()
--         elseif move =="left" then return room3()
--         else
--             print("invalid commend")
--             return room2()
--         end
-- end

-- function room3()
--     local move =io.read()
--     if move=="right"then return room2()
--         elseif move=="up" then return room4()
--         else
--             print("invalid commend")
--             return room3()
--         end
-- end

-- function room4()
--     local move =io.read()
--     if move=="down"then return room3()
--         elseif move == "right" then return room1()
--         else
--             print("invalid commend")
--         end
-- end


-- room1()

-- co=coroutine.create(function()
--     for i=1,10 do
--         print("nice",i)
--         coroutine.yield()
--     end
-- end)

-- print(co)
-- print(coroutine.status(co))
-- coroutine.resume(co)
-- print(coroutine.status(co))
-- coroutine.resume(co)

-- mt = {}
-- for i =1,N do
--     mt[i]={}
--     for j=1,M do
--         mt[i][j]=0
--     end
-- end

--print("one line\nnext line\n\"in quotes\",'in quotes'")
--print('a backlash inside quotes:\'\\\'')
--print("a simpler way:'\\'")

-- line = io.read()
-- n = tonumber(line)
-- if n == nil then
--     error(line.."is not a valid number")
-- else
--     print(n*2)
-- end

-- days = {"Sunday","Monday","Tuesday","Wednesday","Thursday"
-- ,"Thursday","Friday","Saturday"}
-- print(days[3])

-- w = {x=0,y=0,label="console"}
-- x = {math.sin(0),math.sin(1),math.sin(2)}
-- w[1] = "another field"
-- x.f = w
-- print(w["x"])
-- print(w[1])
-- print(x.f[1])
-- w.x = nil
-- print(w[x])

-- list = nil
-- for line in io.lines() do
--     list = {next=list,value=line}
-- end

-- l = list
-- while l do
--     print(l.value)
--     l = l.next
-- end


-- ployline = {color="blue",thickness=2,npoint=4,
-- {x=0,  y=0},
-- {x=-10,y=0},
-- {x=-19,y=1},
-- {x=0,  y=1}
-- }

-- print(ployline[3].x)


-- opnames = {["+"] = "add",["-"] = "sub"}
-- i = 20 ;s = "-"
-- a = {[i+0] = s,[i+1] = s..s,[i+2]=s..s..s}
-- print(opnames[s])
-- print(a[22])

-- x = 10
-- local i = 1
-- while i<=x do
--     local x = i*2
--     print(x)
--     i = i + 1
-- end

-- if i > 20 then
--     local x
--     x =20
--     print(x + 2)
--     else
--     print(x)
-- end
-- print(x)

-- for i = 10,0,-1 do
--     print (i)
--     found = i
-- end
-- print(found)


-- days = {"Sunday","Monday","Tuesday","Wednesday","Thursday"
-- ,"Thursday","Friday","Saturday"}

-- revDays = {}
-- for i,v in ipairs(days)do
--     revDays[v]=i
-- end

-- for k,v in ipairs(revDays)do
--     print(k,v)
-- end

-- s,e = string.find("hello Lua users","Lua")
-- print(s,e)

-- function maximum(a)
--     local mi = 1
--     local m = a[mi]
--     print(m,mi)
--     for i,v in ipairs(a)do
--         if v>m then
--             mi = i
--             m = v
--         end
--     end
--     return m,mi
-- end
-- ccc={1,42,63,21,11}
-- print(ccc[3])
-- print(maximum(ccc))

-- f=string.find
-- a={"hello","hel"}
-- print(f(table.unpack(a)))

-- function select(n,...)
--     return arg[n]
-- end

-- print(string.find("hello hello","hel"))
-- print(select(1,string.find("hello hello","hel")))
-- print(select(2,string.find("hello hello","hel")))


-- function  select (n, ...)
--     local arg = {...}
--     return arg[n]
-- end

-- print(string.find("hello hello", " hel"))
-- print(select(1, string.find("hello hello", " hel")))

-- function newCounter()
--     local i = 0
--     return function ()
--         i = i+1
--         return i
--     end
-- end

-- c1=newCounter()
-- print(c1())
-- print(c1())

-- local fact
-- fact = function(n)
--     if n == 0 then
--         return 1
--     else
--         return n*fact(n-1)
--     end
-- end

-- print(fact(3))

--迷宫4个房间
-- function room1()
--     local move = io.read()
--     if move == "down"then
--         return room2()
--     elseif move == "left" then
--         return room4()
--     else
--         print("invalid move")
--         return room1()
--     end
-- end

-- function room2()
--     local move = io.read()
--     if move =="up"then
--         return room1()
--     elseif move == "left" then
--         return room3()
--     else
--         print("invalid move")
--         return room2()
--     end
-- end

-- function room3()
--     local move = io.read()
--     if move == "up"then
--         return room4()
--     elseif move == "right" then
--         return room2()
--     else
--         print("invalid move")
--         return room3()
--     end
-- end

-- function room4()
--     local move = io.read()
--     if move == "right"then
--         return room1()
--     elseif move == "down" then
--         return room3()
--     else
--         print("invalid move")
--         return room4()
--     end
-- end

-- room3()


-- function list_iter(t)
--     local i = 0
--     local n = #t
--     return function ()
--         i = i+1
--         if i<=n then return t[i] end
--      end
-- end

-- t = {10,20,30}
-- for element in list_iter(t) do
--     print(element)
-- end

-- function  allwords()
--     local line = io.read()
--     local pos = 1
--     return function ()
--         while line do
--             local s,e =string.find(line,"%w+",pos)
--             if s  then
--                 pos = e+1
--                 return string.sub(line,s,e)
--             else
--                 line = io.read()
--                 pos = 1
--             end
--         end
--         return nil
--     end
-- end

-- a = {"one","two","three"}
-- for i,v in ipairs(a) do
--     print(i,v)
-- end

-- local iterator
-- function allwords()
--     local state = {line = io.read(),pos = 1}
--     return iterator,state
-- end

-- function iterator (state)
--     while state.line do
--         local s,e = string.find(state.line,"%w+",state.pos)
--         if s then
--             state.pos = e+1
--             return string.sub(state.line,s,e)
--         else
--             state.line = io.read()
--             state.pos = 1
--         end
--     end
--     return nil
-- end

-- co = coroutine.create(function()
-- print("hi")
-- end)
-- print(co)
-- print(coroutine.status(co))
-- coroutine.resume(co)
-- print(coroutine.status(co))


-- co = coroutine.create(function()
--     for i = 1,10 do
--        print("co",i)
--        coroutine.yield()
--     end
-- end)

-- coroutine.resume(co)
-- print(coroutine.status(co))

-- a = {}
-- for i = 1,5 do
--     a[i] = 0
-- end

-- for i,v in pairs(a) do
--     print(v
-- end

-- j=2
-- for i = 2,10 do
--     for j = 2,(i/j),2 do
--         if(j > (i/j))then
--         print(j)
--       end
--         if(j > (i/j))then
--         print("i="..i)
--         end
--     end
-- end



-- a = 53
-- if(a == 10)
-- then
--     print("a=",a)
-- elseif (a == 20) then
--     print("a=",a)
--     elseif (a ==30) then
--         print("a=",a)
--         else
--             print("No Match")
-- end

-- local result
-- local max
-- function max(num1,num2)
--     if(num1>num2)
--     then
--         result = num1
--     else
--         result = num2
--     end
--     return result
-- end

-- print(max(5,9))
-- print(max(1,3))

-- local myprint
-- local add
-- local result
-- myprint = function (param)
--     print("this is print function--",param)
-- end

-- function add(num1,num2,functionPrint)
--     result = num1+num2
--     functionPrint(result)
-- end
-- myprint(10)
-- add(20,50,myprint)


-- local maximum
-- function maximum(a)
--     local mi = 1
--     local m = a[mi]
--     for i,v in ipairs(a) do
--         if v>m then
--             mi = i
--             m = v
--         end
--     end
--     return m,mi
-- end

-- c={54,61,84,12}
-- s,e=maximum(c)
-- print(s,e)


--多返回值函数赋值，仅有逗号后的函数返回值会展开
-- function add()
--     return 1,0
-- end

-- a,b,c,d=add(),add()
-- print(a,b,c,d)


-- local average
-- local result
-- function average(...)
--     result = 0
--     local arg = {...}
--     for i,v in ipairs(arg) do
--         result = result+v
--     end
--     return result/#arg
-- end

-- print(average(6,8,4,2,3,5))


-- local f
-- local a
-- function f(...)
--     a = select(2,...)
--     print(a)
--     print(select(2,...))
-- end

-- f(5,6,3,5,8,4)

-- tab = {}
-- tab[1]=1
-- tab[2]=2
-- tab[3]=nil
-- tab[4]=3

-- print(#tab)

-- local isapple = false
-- print(isapple and "apple" or "null")

-- a = 20;b = 10;c = 15; d = 5
-- e = (a+b)*c/d
-- print(e)
-- e = ((a+b)*c)/d
-- print(e)
-- e = a + (b*c)/d
-- print(e)

-- array = {}
-- maxRows = 3
-- maxColumns = 3
-- for rows = 1,maxColumns do
--     for cols = 1,maxColumns
--     do
--         array[rows*maxColumns+cols]=rows*cols
--     end
-- end
-- for rows = 1 ,maxRows do
--     for cols = 1,maxColumns do
--         print(array[rows*maxColumns+cols])
--     end
-- end

-- function iter(a,i)
--     i=i+1
--     local v=a[i]
--     if v then
--         return i,v
--     end
-- end

-- function ipairs(a)
--     return iter,a,0
-- end

-- array = {"hello","world","Lua","language"}

-- function elementIterator(collection)
--     local index = 0
--     local count = #collection
--     return function()
--         index = index+1
--         if index <= count
--         then
--             return collection[index]
--         end
--     end
-- end

-- for element in elementIterator(array)
-- do
--     print(element)
-- end


-- mytable = {}
-- print(type(mytable))

-- mytable[1]="Lua"
-- mytable["wow"]="modeify"
-- print(mytable[1])
-- print(mytable["wow"])

-- altertable = mytable --二者指向同一内存
-- altertable["wow"] = "aftermodeify"
-- print(mytable["wow"])

-- altertable = nil
-- print("Now altertable = ",altertable)
-- print("Now mytable = ",mytable)

-- print(mytable["wow"])

-- mytable = nil
-- print("Now mytable = ",mytable)

-- fruits = {"banana","orange","apple"}
-- print(table.concat(fruits))
-- print(table.concat(fruits,"-"))
-- print(table.concat(fruits,"^",2,3))

-- fruits = {"banana","orange","apple"}
-- table.insert(fruits,"mongo")
-- print(fruits[4])
-- table.insert(fruits,2,"berry")
-- print(fruits[2])
-- print(fruits[3])
-- table.remove(fruits)
-- print(fruits[5])

-- fruits = {"banana","orange","apple"}
-- for k,v in ipairs(fruits) do
--     print(k,v)
-- end
-- table.sort(fruits)
-- for k,v in ipairs(fruits) do
--     print(k,v)
-- end


-- table = {1,2,3,4,5,6,7,8,8,1,9}
-- function table_unqiue(t)
--     local check = {}
--     local n = {}
--     for key , value in pairs(t) do
--         if not check[value] then
--             n[key] = value
--             check[value] = value
--         end
--     end
--     return n
-- end
-- print(table[9])

-- for k,v in pairs(table_unqiue(table))do
--     print('value is',v)
-- end


-- require("module")
-- print(module.constant)
-- module.func3()





-- mytable = {}

-- mymetatable = {}

-- setmetatable(mytable,mymetatable)    --<-->mytable = setmetatable({},{})

-- getmetatable(mytable)

-- Other = {foo = 3}
-- T = setmetatable({},{__index = Other})
-- print(T.foo)
-- print(T.bar)

-- mytable = setmetatable({key1 = "value1"},{__index = function(mytable,key)
--     if key == "key2" then
--         return "metatablevalue"
--     else
--         return nil
--     end
-- end})
-- print(mytable.key1,mytable.key2)




-- mymetatable = {}
-- mytable = setmetatable({key1 = "value1"},{__newindex = mymetatable})

-- print(mytable.key1)

-- mytable.newkey = "NewValue2"
-- print(mytable.newkey,mymetatable.newkey)

-- mytable.key1 = "NewValue1"
-- print(mytable.key1,mymetatable.key1)



-- function table_maxn(t)
--     local mn = 0
--     for k,v in pairs(t) do
--         if mn < k then
--             mn = k
--         end
--     end
--     return mn
-- end

-- mytable = setmetatable({1,2,3},{__add = function(mytable,newtable)
--     for i = 1,table_maxn(newtable) do
--         table.insert(mytable,table_maxn(mytable)+1,newtable[i])
--     end
--         return mytable
-- end
-- })

-- secondtable = {4,5,6}

-- mytable = mytable+secondtable
--     for k,v in ipairs(mytable) do
--     print(k,v)
-- end



-- function table_maxn(t)
--     local mn = 0
--     for k,v in pairs(t) do
--         if mn < k then
--             mn = k
--         end
--     end
--     return mn
-- end

-- mytable = setmetatable({10},{
--     __call = function(mytable,newtable)
--         sum = 0
--         for i = 1,table_maxn(mytable) do
--             sum = sum + mytable[i]
--         end
--         for i = 1,table_maxn(newtable) do
--             sum = sum + newtable[i]
--         end
--         return sum
--     end
-- })

-- newtable = {12,31,75}
-- print(mytable(newtable))




-- mytable = setmetatable({10,20,30},{
--     __tostring = function(mytable)
--         sum = 0
--         for k,v in pairs(mytable) do
--             sum = sum + v
--         end
--         return "Sum of the table ="..sum
--     end
-- })
-- print(mytable)


-- text = {}
-- text.defaultValue = {size = 14,content = "hello"}
-- text.mt = {}

-- function text.new(a)
--     setmetatable(a,text.mt)
--     return a
-- end

-- text.mt.__index = function(table,key)
--     return text.defaultValue[key]
-- end

-- local x =text.new{content = "bye"}
-- print(x.size)