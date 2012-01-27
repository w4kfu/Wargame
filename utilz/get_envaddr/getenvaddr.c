#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	main(int argc, char *argv[])
{
  char	*ptr = NULL;

  if (argc != 2)
    {
      printf("Usage: %s <ENV_VAR>\n", argv[0]);
      return (1);
    }

  ptr = getenv(argv[1]);
  if (!ptr)
    {
      printf("%s is NULL\n", argv[1]);
      return (1);
    }
  printf("%s is at %p\n", argv[1], ptr);
  return (0);
}
