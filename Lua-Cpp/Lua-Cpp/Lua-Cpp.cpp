#include <iostream>
#include <string>
#include "lua.hpp"
using namespace std;

/*extern "C"
{
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}*/

int main(int argc , char *argv[])
{
    //创建lua句柄并初始化
    lua_State* pState = luaL_newstate();

    if (nullptr == pState)
    {
        cout << "Lua初始化失败" << endl;
        return -1;
    }

    //加载相关库文件
    luaL_openlibs(pState);

    //加载Lua文件
    if(luaL_loadfile(pState,"./LuatoCpp.lua"))
    {
        cout << "Lua文件加载失败" << endl;
    }
    else
    {
        //执行Lua文件
        if (lua_pcall(pState, 0, 0, 0))
        {
            cerr << lua_tostring(pState, -1) << endl;
        }
        else
        {
            //获取值
            lua_getglobal(pState, "mystr");

            string str = lua_tostring(pState, -1);
            cout << str << endl;

            //获取表中数据
            lua_getglobal(pState, "myTable");
            lua_getfield(pState, -1, "name");
            cout << lua_tostring(pState, -1) << endl;

            lua_getglobal(pState, "myTable");
            lua_getfield(pState, -1, "id");
            cout << lua_tostring(pState, -1) << endl;

            //调用函数
            lua_getglobal(pState, "sayhi");
            lua_pcall(pState, 0, 0, 0);

            //调用计算函数
            lua_getglobal(pState, "__add");
            lua_pushnumber(pState, 10);
            lua_pushnumber(pState, 20);

            if (lua_pcall(pState, 2, 1, 0))
            {
                cout << lua_tostring(pState, -1) << endl;
                lua_close(pState);
            }
            else
            {
                if (lua_isnumber(pState, -1))
                {
                    cout << lua_tonumber(pState, -1) << endl;
                }
            }
        }
    }

    lua_close(pState);

    system("pause");

    return 0;
}


