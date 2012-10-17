using GLib;

using libstrategy;

namespace libbot
{
  /**
   * TODO: Add documentation here.
   */
  public  class Bot: GLib.Object
  {
     /* Fields */  
    /**
     * TODO: Add documentation here.
     */
    private int mPoints =0 ;
	
	 /**
     * TODO: Add documentation here.
     */
    private IStrategy* mStrategyP ;
    
    /* Constructor */
	public int Bot(){
	     mPoints =0;
		return 0;
		}
	public void sBot(IStrategy st){
		mStrategyP = st;
	}
	          
    /* Method */      	
    /**
     * TODO: Add documentation here. 
     * @param value
     * @return bool
     */
    public virtual bool acceptOffer(int value){
	bool retValue = false;

    // Ist ueberhaupt eine Strategie definiert.
   // if ( mStrategyP )
   // {
        retValue = mStrategyP->acceptOffer( value );
   // }

    if ( retValue )
    {
        // Wenn wir das Angebot annehmen, speichern
        // wir, wie viele Punkte wir erhalten haben.
        mPoints += value;
    }
    
    return retValue;
}
  

	// Gibt die gesammelten Punkte zurueck.
	public int getPoints(){
		return mPoints;
		}
    } 
}  // end of namespace libbot

