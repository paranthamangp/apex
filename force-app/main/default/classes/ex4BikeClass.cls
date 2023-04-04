/**
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* One or two sentence summary of this class.
*
* Additional information about this class should be added here, if available. Add a single line
* break between the summary and the additional info.  Use as many lines as necessary.
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Paranthaman       <paranthaman@engineer.com>
* @modifiedBy     Developer2        <developer2@engineer.com>
* @maintainedBy   Paranthaman       <paranthaman@engineer.com>
* @version        1.0
* @created        YYYY-MM-DD
* @modified       YYYY-MM-DD
* @systemLayer    Invocation | Service | Utility | Selector | Domain | Test
* @see            ????
* @see            ????
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* vX.X            paranthaman@engineer.com
* YYYY-MM-DD      Explanation of the change.  Multiple lines can be used to explain the change, but
*                 each line should be indented till left aligned with the previous description text.
*
* vX.X            paranthaman@engineer.com
* YYYY-MM-DD      Each change to this file should be documented by incrementing the version number,
*                 and adding a new entry to this @changes list. Note that there is a single blank
*                 line between each @changes entry.
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/

public with sharing class ex4BikeClass {
    /*constructor */
    public ex4BikeClass() {

    }

    public String modelNumber;
    public Integer numberInStock;

    /*method */
    public void updateStock(Integer justSold) {                    //Method definition
        numberInStock = numberInStock - justSold;
    }
}