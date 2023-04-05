trigger ex22ContextExample on Account (before insert, after insert,before update,after update, after delete) {


    //requirement 1 - Update website field before insert
    //requirement 2 - update phone number field before update

    /* 
    if (Trigger.isInsert) {

        if (Trigger.isBefore) {
            // Process before insert
                System.debug('This comment is from before insert trigger');
        } else if (Trigger.isAfter) {
            // Process after insert
                System.debug('This comment is from after insert trigger');
        }       
    }
    else if (Trigger.isDelete) {
        // Process after delete
        System.debug('This comment is from delete trigger');
    }

    */

    // Similar context variables
    
    /* Context Variable	Usage
    isInsert	    Returns true if the trigger was fired due to an insert operation
    isUpdate	    Returns true if the trigger was fired due to an update operation
    isDelete	    Returns true if the trigger was fired due to a delete operation
    isBefore	    Returns true if the trigger has been fired before any record was saved
    isAfter	        Returns true if the trigger was fired after all records have been saved
    isUndelete	    Returns true if the trigger was fired after a record has been recovered from the Recycle Bin
    new	            Returns a list of new versions of the sObject records
    newMap	        Returns a map of IDs to the new versions of the sObject records
    old	            Returns a list of old versions of the sObject records
    oldMap	        Returns map of IDs to the old versions of the sObject records
    size	        Returns the total number of records in a trigger invocation, both old and new 
    operationType   Returns an enum of type System.TriggerOperation corresponding to the current operation.
                        Possible values of the System.TriggerOperation enum are: 
                        BEFORE_INSERT, BEFORE_UPDATE, BEFORE_DELETE, AFTER_INSERT, AFTER_UPDATE, AFTER_DELETE, 
                        and AFTER_UNDELETE. If you vary your programming logic based on different trigger types, 
                        consider using the switch statement with different permutations of unique trigger execution
                        enum states.
    */

}