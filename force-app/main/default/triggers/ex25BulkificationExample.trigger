trigger ex25BulkificationExample on Account(before insert) {

    /*
    //EXAMPLE 1 - BULKIFY USING FOR LOOP
    //NON BULKIFIED CODE
    Account a = Trigger.new[0];
    a.Description = 'New description';

    //BULKIFIED CODE - using for and context variable
    for(Account a : Trigger.new) {
        a.Description = 'New description';
    }

    */


    
    /*
    //EXAMPLE 2- BULKIFY SOQL
    //1000 account records

    // NON BULKIFIED CODE
    for(Account a : Trigger.new) {
        // Get child records for each account
        // Inefficient SOQL query as it runs once for each account!
        Opportunity[] opps = [SELECT Id,Name,CloseDate 
                             FROM Opportunity WHERE AccountId=:a.Id ];
        // Do some other processing
    }


    // BULKIFIED CODE - Perform SOQL query once.  
    // Get the related opportunities for the accounts in this trigger.
    List<Opportunity> relatedOpps = [SELECT Id,Name,CloseDate FROM Opportunity
        WHERE AccountId IN :Trigger.new];
    // Iterate over the related opportunities    
    for(Opportunity opp : relatedOpps) { 
        // Do some other processing
        opp.description='UpdatedDescription';
    }

    // Perform SOQL query once.    
    // Get the related opportunities for the accounts in this trigger, and iterate over those records.
    // more efficient than previous list declaration
    for(Opportunity opp : [SELECT Id,Name,CloseDate FROM Opportunity
        WHERE AccountId IN :Trigger.new]) {
        // Do some other processing
    }

    //Triggers execute on batches of 200 records at a time. So if 400 records cause a trigger to fire, the trigger fires twice, once for each 200 records. 
    //For this reason, you don’t get the benefit of SOQL for loop record batching in triggers, because triggers batch up records as well. 
    //The SOQL for loop is called twice in this example, but a standalone SOQL query would also be called twice. However, the SOQL for loop still looks more elegant than iterating over a collection variable!

    */

}