/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;


public class lotteryServer {
      public static void main(String args[]){
        try{

            Registry reg= LocateRegistry.createRegistry(1088);
            lotteryImpl loto=new lotteryImpl();
            reg.rebind("lotoService", loto);
      
            System.out.println("Server Running ...");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
