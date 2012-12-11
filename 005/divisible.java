//&>/dev/null;x="${0%.*}";[ ! "$x" -ot "$0" ]||javac $0 && java -classpath ${0%/*} ${x##*/}

public class divisible {
   public static void main(String[] args) {
      final long MAX = 20;
      find: for (long i = MAX; ; i++) {
         for(long j = 2; j <= MAX; j++) if(i % j != 0) continue find;
         System.out.println(i);
         break;
      }
   }
}