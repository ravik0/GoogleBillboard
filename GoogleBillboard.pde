public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
  for(int i = 5; i < e.length(); i++) {
    boolean joy = isPrime(Double.parseDouble(e.substring(i,i+10))); //tests to see if prime or not
    if (joy == true) {
      System.out.println(e.substring(i,i+10)); //returns value in a print
      break; //stops for loop so we don't break the system
    }
  }
}   
public boolean isPrime(double dNum)  
{   
  double k = Math.sqrt(Math.abs(dNum));
  if (dNum/-1 > 0 || dNum == 1) {
    return false; //would've been easier to do if (dNum < 2) but in writing this I forgot that we don't consider 1 a prime, so here we are.
  }
  for (int i = 2; i <= k; i++) {
    if (dNum%i == 0) {
      return false; //if you can divide the number by any other number, it's not prime
    }
  }
  return true; //can't divide? is prime. 
  //just writing notes so I know what I did.
} 