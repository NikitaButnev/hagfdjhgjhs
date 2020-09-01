package laba1;
import java.util.Scanner;

class MathSolve
{
    void SumMas(int n, int[] massiv,int option)
    {
        int summ = 0;
        int i = 0;
        if(option == 1)
        {
           for(i=0;i<n;i++)
            {
                summ +=massiv[i];
            } 
        }
        else if(option == 2)
        {
            while(i != n)
            {
                summ +=massiv[i];
                i++;
            }
        }
        else if(option == 3)
        {
            do
            {
                summ +=massiv[i];
                i++;
            }
            while(i != n);
        }
    }
    int getRandomNumber(){
        int x = (int)Math.random() * 10;
        return x;
    }
    void GarmRyad(int size)
    {
        if(size >0)
        {
            int S = 1/size;
            GarmRyad(size-1);
        }
    }
    void Factorial(int number)
    {
        int fact = 0;
        for(int i=0;i<number;i++)
        {
            if(i==1)
            {
                fact+=i;
            }
            fact = fact*i;
        }
    }
    void MassivTest(int n)
    {
        int []massiv = new int[n];
        for(int i = 0; i<n; i++)
        {
            massiv[i] = getRandomNumber();
        }
        
    }
}
public class Laba1 {
    public static void main(String[] args) {
       
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int []numbers = new int[n];
       for(int i = 0;i<n;i++)
       {
           numbers[i] = in.nextInt();
       }
       for(int i = 0;i<n;i++)
       {
           System.out.println(numbers[i]);
       }
       MathSolve test;
       test.SumMas(n, numbers, 1);
       test.GarmRyad(10);
       test.Factorial(n);
    }  
}
