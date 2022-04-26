/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

/**
 *
 * @author Fatec
 */
public class Data {
    private int dia;
    private int mes;
    private int ano;
    
    /* os dois public data abaixo são exemplos de sobrecarga, um 
    é parametrizado e o outro não*/
    
    public Data(){ /*este é um método construtor*/
        this.dia=1; this.mes=1; this.ano=2000;
    }

    public Data(int dia, int mes, int ano) { /*este é um método construtor*/
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }
    public String getData(){
        return getAniversario()+"/"+ano;
    }
    public String getAniversario(){
        return dia+"/"+mes;
    }
    
    public void setData(int dia, int mes, int ano){
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }
    public int getDia() {
        return dia;
    }

    public int getMes() {
        return mes;
    }

    public int getAno() {
        return ano;
    }
    public void setDia(int dia) {
        this.dia = dia;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }
}
