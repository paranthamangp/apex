public with sharing class ex28CheckRecursive {

    //static variable to maintain the state throughout transaction
    private static boolean run = true;

    //will return true only during first time run
    public static boolean runOnce(){
        if(run){
            run=false;
            return true;
        }else{
            return run;
        }
    }
}