//&>/dev/null;x="${0%.*}";[ ! "$x" -ot "$0" ]||(rm -f "$x";gcc -o "$x" "$0")&&exec "$x" "$@"

#include <stdio.h>
int main()
{
   int sum=0, i, three, five;
   for(i=0;i<1000;i++)
   {
      three=i%3;
      five=i%5;
      if(three==0 || five==0)
         sum+=i;
   }
   printf("%d\n", sum);
   return 0;
}