/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

import java.util.ArrayList;

/**
 *
 * @author Fatec
 */
public class DataBase {
    public static ArrayList<Contato> getContatos(){
        ArrayList<Contato> list = new ArrayList();
        list.add(new Contato("Lorena","99100-0001", new Data(1, 1 , 2000)));
        list.add(new Contato("Fernanda","99100-0002", new Data(2, 2 , 2000)));
        list.add(new Contato("Claudinei","99100-0003", new Data(3, 3 , 2000)));
        return list;
    }
   
}
