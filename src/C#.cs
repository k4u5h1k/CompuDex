// This is an example of C#

using System;
using System.IO;

class Program
{
  static void Main(string[] args)
  {
    int[] a = new int[2];
    for(int i=0;i<2;i++) {
  	    Console.Write("Enter number : ");
  	    a[i] = Convert.ToInt32(Console.ReadLine());
    }
    Console.Write("Enter operator : ");
    
    char c = (char) Console.ReadLine()[0];
    bool invalid = false;
    int result = 0;
    
    if(c=='+') {
        result = a[0]+a[1]; 
    } else if(c=='-') {
        result = (a[0]>a[1])?(a[0]-a[1]):(a[1]-a[0]);
    } else if(c=='*') {
        result = a[0]*a[1];
    } else if(c=='/') {
        result = a[0]/a[1];
    } else {
        invalid = true;
        Console.WriteLine("The operator has not been included");
    }
    
    if(!invalid) {
        File.WriteAllText("output.txt" , Convert.ToString(result));
    }
  }
}

/* 
* 1. For windows the steps given here to download and install C#
*	    https://www.w3schools.com/cs/cs_getstarted.asp
* 2. For linux, refer to 
*       https://askubuntu.com/a/1100539
*/
