/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package payrollapp;

/**
 *
 * @author Ryu
 */
public class PayrollApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                payroll.view.FormLogin login = new payroll.view.FormLogin();
                login.setVisible(true);
            }
        });
    }
    }
