trigger ex24CalloutExample on Account (before insert, before update) {

    //handler class - To make a callout from a trigger, call a class method that executes asynchronously. 
    // Such a method is called a future method and is annotated with @future(callout=true)
    ex24CalloutClass.makeCallout(); 

}