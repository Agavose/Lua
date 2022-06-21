#include <iostream>
#include <string>
#include "lua.hpp"
using namespace std;

lua_State* L;//C++与Lua通信机制

int Average(lua_State* L)
{
	//lua_gettop去除栈顶的索引值，此时栈顶索引值大小等于栈内元素个数
	int n = lua_gettop(L);
	double sum = 0;
	//使用循环计算栈内所有元素，通过lua_tonumber取出栈内值
	for(int i = 1 ; i <= n; ++i)
	{
		sum += lua_tonumber(L, i);
	}
	//将计算后的值压入栈中
	lua_pushnumber(L, sum / n);
	lua_pushnumber(L, sum);
	//告诉lua主程序返回两个值
	return 2;
}

int main()
{
	L = luaL_newstate();
	luaL_openlibs(L);
	//lua_register函数把lua函数与c++函数进行绑定
	//先用lua_pushcfunction把c++中定义的函数压入栈中，然后lua_setglobal设置栈顶的元素对应的值
	//此时lua函数与栈顶c++函数建立引用关系
	lua_register(L, "average", Average);
	//加载并执行lua
	luaL_dofile(L, "1.lua");
	lua_close(L);
	cout << "Please enter to exit..." << endl;
	return 0;
}