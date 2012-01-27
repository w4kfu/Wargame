#include <stdio.h>

void vuln(char *arg)
{
  char buf[20];

  strcpy(buf, arg);
}

int main(int argc, char **argv)
{
  if (argc != 2)
    {
      printf("Usage : %s <lol>\n", argv[0]);
      return (-1);
    }
  vuln(argv[1]);
  return (0);
}
