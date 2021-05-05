/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.rmi.Naming;
import java.util.Scanner;

public class lotoClient {
    public static void main(String args[]){
        try{
            Lottery loto = (Lottery) Naming.lookup("rmi://localhost:1088/lotoService");
            
            System.out.println("#######################\nUser Type\n1. Company Admin\n2. Coustomer\n#######################");
            System.out.print("Enter your choice: ");
            Scanner scanner=new Scanner(System.in);
            char c;
            c = (char)scanner.nextInt();
            switch(c){
                case 1: 
                    loto.login();
                    break;
                case 2: 
                    loto.users();
                    break;
                default:
                    System.out.println("Invalid Input.....");
                    break;
            }
           
           
        }catch(Exception e){
            e.printStackTrace();
        }

            
    }

}
