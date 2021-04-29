// This is an example of Java language

import java.util.Scanner;
import java.io.FileWriter;
import java.io.IOException;

public class Java {
	public static void main(String[] args) throws IOException
	{
		Scanner in = new Scanner(System.in);

		int[] a = new int[2];
		for(int i=0; i<2; i++) {
			System.out.print("Enter number : ");
			a[i] = in.nextInt();
		}

		System.out.print("Enter operator : ");
		char op = in.next().charAt(0);
		boolean invalid = false;
		int result = 0;
		if(op=='+')
			result = a[0]+a[1];
		else if(op=='-')
			result = a[0]-a[1];
		else {
			System.out.println("This operator is not included yet");
			invalid = true;
		}

		if(!invalid) {
			FileWriter f = new FileWriter("output.txt");
			f.write(Integer.toString(result));
			f.close();
		}
	}
}

/* 
 * Usage : 
 * 1. Install JDK on your system and ensure that the bin
 * 	directory that contains the compiler is in your 
 * 	env path.
 * 2. Run the command :
 * 	java Java.java
 *
 * */
