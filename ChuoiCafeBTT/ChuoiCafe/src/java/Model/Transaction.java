/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Harque
 */

public class Transaction {
    private int tID;
    private String cusname;
    private int pID;
    private int quanti;
    private String date;

    public Transaction() {
    }

    public Transaction(int tID, String cusname, int pID, int quanti, String date) {
        this.tID = tID;
        this.cusname = cusname;
        this.pID = pID;
        this.quanti = quanti;
        this.date = date;
    }

    public int gettID() {
        return tID;
    }

    public void settID(int tID) {
        this.tID = tID;
    }

    public String getCusname() {
        return cusname;
    }

    public void setCusname(String cusname) {
        this.cusname = cusname;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getQuanti() {
        return quanti;
    }

    public void setQuanti(int quanti) {
        this.quanti = quanti;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Transaction{" +
                "tID=" + tID +
                ", cusname='" + cusname + '\'' +
                ", pID=" + pID +
                ", quanti=" + quanti +
                ", date=" + date +
                '}';
    }
}

