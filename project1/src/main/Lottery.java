package main;

import java.rmi.Remote; 
import java.rmi.RemoteException; 
import java.util.ArrayList;

public interface Lottery extends Remote {
    public void login() throws RemoteException;
    public void users() throws RemoteException; 
}
