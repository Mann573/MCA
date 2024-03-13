import java.util.Scanner;

public class demo
{
public static void main(String args[])
 {
   Scanner input = new Scanner(System.in);
   System.out.print("Enter your name: ");
   String a = input.nextLine();
   System.out.println(a);
   

   
   System.out.print("Enter your name: ");
   String u_name=input.next();
   System.out.println("Your name is "+u_name);

  //  System.out.print("\nEnter age: ");
  //  int age=input.nextInt();
  //  System.out.print("Value entered: "+age);

   input.close();
 }
}