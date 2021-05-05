/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.rmi.server.UnicastRemoteObject;
import java.rmi.RemoteException; 


public class lotteryImpl extends UnicastRemoteObject implements Lottery{
    public lotteryImpl()throws RemoteException{
        super(); 
    }
   
    public void login() throws RemoteException{
        login l= new login();
        l.setVisible(true);
    }
    public void users() throws RemoteException{
        user users= new user();
        users.setVisible(true);
    }
    
}
