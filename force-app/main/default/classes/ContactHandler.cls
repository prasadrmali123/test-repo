public with sharing class ContactHandler {
    public ContactHandler() {
        System.debug('ContactHandler Constructor Called');
    }
    
    public ContactHandler(String name, Integer age) {
        System.debug('Hi..'+name+' Your age is '+age);
    }
    
    public ContactHandler(Integer amount, String name) {
        System.debug('You have to Pay '+amount+' $ Please Pay '+name);
    }
    //he[[o]]
    
    public static void createAccount(String fName, String lName){
        Account acc = new Account();
        acc.name = 'Ranu Swarge';
        acc.Industry = 'Media';
        acc.Phone = '8010022462';
        Insert acc;
        system.debug('Account Id : '+acc.Id);
        
        Contact con = new Contact();
        con.FirstName = fName;
        con.LastName = lName;
        con.AccountId = acc.Id;
        Insert con;
        system.debug('Contact Id : '+con.Id);
        
    }

}