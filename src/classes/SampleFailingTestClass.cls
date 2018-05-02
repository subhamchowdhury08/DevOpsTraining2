@isTest
public class SampleFailingTestClass {

    public static testmethod void failingTest() {
        Account acc = new Account(Name= 'fred');
        insert acc;

        Account retAcc = [select id, name, phone from Account where id=:acc.id][0];
        System.assertEquals('fred', retAcc.name); // Always fails.
    }
}