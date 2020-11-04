package com.basic;

public class BankDemo {
    public static void main(String[] args) throws com.basic.InsufficientFundsException {
        com.basic.CheckingAccount c = new com.basic.CheckingAccount(101);
        System.out.println("Depositing $500...");
        c.deposit(500.00);
        System.out.println("\nWithdrawing $100...");
        c.withdraw(100.00);
        System.out.println("\nWithdrawing $600...");
        c.withdraw(600.00);
    }
}
