trigger ex21AccountTrigger on Account (before insert) {

    //Example 1
    /*
    System.debug('Hello World from trigger!');
    */

    
    //Example 2 - With a context variable
    /* 
    //2 records - Trigger.new - holds the 2 account record which is getting inserted
    for(Account a : Trigger.new) {
        a.Website = 'http://www.salesforce.com/';
        System.debug('I am updating description');
        //modify the records in the trigger without explicitly calling a DML insert or update operation
    } 
    */
    

}