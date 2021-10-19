/*
--stop-time=2ms
*/

#include <stdio.h>
#include <string.h>

struct mystruct
{
	char *str;
};

struct mystruct st;

char strbuf[20];

int main(int argc,char **argv)
{
	int i=0;
	st.str="HELLO, world!\n";

	for(i=0;i<strlen(st.str);++i)
		st.str[i]=tolower(st.str[i]);

	strcpy(strbuf,"Testing: ");
	strncat(strbuf,st.str,5);
	strcat(strbuf,st.str);
	for(i=0;i<strlen(strbuf);++i)
		strbuf[i]=toupper(strbuf[i]);

	i=strlen(strbuf);
	if(i==28)
		printf("strlen: \033[32mPassed\033[0m\n");
	else
		printf("strlen: \033[31mFailed\033[0m - got %d, should be 28\n",i);

	strncpy(strbuf,"Hello, World\n",7);
	if(strcmp(strbuf,"Hello, : HELLOHELLO, WORLD!\n")==0)
		printf("strcmp: \033[32mPassed\033[0m\n");
	else
		printf("strcmp: \033[31mFailed\033[0m - got %s\n",strbuf);
	return(0);
}
