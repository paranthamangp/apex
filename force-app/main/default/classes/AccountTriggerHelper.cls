Public Class AccountTriggerHelper
{
    Public Static void BeforeInsertLogic(list<account> newAccount)
    {
        for(Account Acc:newAccount) //for(Account Acc:list<account>) 
        {
            if(Acc.BillingCity == 'Chennai')
            {
                Acc.BillingCountry = 'India';
            }
        }
    }
    Public Static void afterInsertLogic(list<account> newAccount)
    {
        list<contact> conlist= new list<contact>();
            for(Account Acc:newAccount)
            {
                Contact con= new contact();
                con.firstname=Acc.Name;
                con.Lastname='Kumar';
                con.AccountID = Acc.id;
                conlist.add(con);
            }
            insert conlist;
    }
}