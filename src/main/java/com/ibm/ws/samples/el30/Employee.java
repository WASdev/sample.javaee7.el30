
/*
 * COPYRIGHT LICENSE: This information contains sample code provided in source
 * code form. You may copy, modify, and distribute these sample programs in any 
 * form without payment to IBM for the purposes of developing, using, marketing 
 * or distributing application programs conforming to the application programming 
 * interface for the operating platform for which the sample code is written. 
 * 
 * Notwithstanding anything to the contrary, IBM PROVIDES THE SAMPLE SOURCE CODE 
 * ON AN "AS IS" BASIS AND IBM DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, 
 * BUT NOT LIMITED TO, ANY IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, 
 * SATISFACTORY QUALITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE, AND ANY WARRANTY OR 
 * CONDITION OF NON-INFRINGEMENT. IBM SHALL NOT BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR
 * OPERATION OF THE SAMPLE SOURCE CODE. IBM HAS NO OBLIGATION TO PROVIDE
 * MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS OR MODIFICATIONS TO THE SAMPLE
 * SOURCE CODE.
 * 
 * (C) Copyright IBM Corp. 2015.
 * 
 * All Rights Reserved. Licensed Materials - Property of IBM.  
 */

package com.ibm.ws.samples.el30;

import javax.el.LambdaExpression;

public class Employee {

    String firstname;
    String lastname;
    int age;
    String name;

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = getFirstname() + getLastname();
    }

    public Employee() {
        // Default constructor.
    }

    public Employee(String name) {
        this.setFirstname(name);
        this.setName(name);
    }

    public Employee(String name, String fn, String ln) {

        this.setName(name);
        this.setFirstname(fn);
        this.setLastname(ln);

    }

    public Employee(String name, String fn, String ln, int Age) {

        this.setName(name);
        this.setFirstname(fn);
        this.setLastname(ln);
        this.setAge(Age);

    }

    public String sanitizeNames(LambdaExpression expression) {

        System.out.println("expression: " + expression);
        //ELProcessor elp = new ELProcessor();
        Boolean result = (Boolean) expression.invoke(this);
        System.out.println(" RESULT: " + result.toString());

        if (result) {
            return "NAME MATCHES: " + this.firstname;
        } else {
            return "NAME DOES NOT MATCH";
        }

    }

}
