#include <iostream>
#include <string>
#include "lua.hpp"
using namespace std;

lua_State* L;//C++��Luaͨ�Ż���

int Average(lua_State* L)
{
	//lua_gettopȥ��ջ��������ֵ����ʱջ������ֵ��С����ջ��Ԫ�ظ���
	int n = lua_gettop(L);
	double sum = 0;
	//ʹ��ѭ������ջ������Ԫ�أ�ͨ��lua_tonumberȡ��ջ��ֵ
	for(int i = 1 ; i <= n; ++i)
	{
		sum += lua_tonumber(L, i);
	}
	//��������ֵѹ��ջ��
	lua_pushnumber(L, sum / n);
	lua_pushnumber(L, sum);
	//����lua�����򷵻�����ֵ
	return 2;
}

int main()
{
	L = luaL_newstate();
	luaL_openlibs(L);
	//lua_register������lua������c++�������а�
	//����lua_pushcfunction��c++�ж���ĺ���ѹ��ջ�У�Ȼ��lua_setglobal����ջ����Ԫ�ض�Ӧ��ֵ
	//��ʱlua������ջ��c++�����������ù�ϵ
	lua_register(L, "average", Average);
	//���ز�ִ��lua
	luaL_dofile(L, "1.lua");
	lua_close(L);
	cout << "Please enter to exit..." << endl;
	return 0;
}