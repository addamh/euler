//&>/dev/null;x="${0%.*}";[ ! "$x" -ot "$0" ]||javac $0 && java -classpath ${0%/*} ${x##*/}

public class collatz {
  public static void main(String[] args) {
    int p;
    long a = 0;
    long b = 0;
    long c;
       
    for (int i =0;i<1000000;i++){
      p=1;
      c=i;
           
      while(c>1){
        if(c%2==0){
          c=c/2;
          p++;  
        } else {
          c=3*c+1;
          p++; 
        }
      }
      if(p>a){
        a=p;
        b=i;
      }
    }
    // Debug output
    // System.out.println(a+" -> "+b);
    System.out.println(b);
  }
}