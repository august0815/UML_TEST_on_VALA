using GLib;


namespace libbot
{

  /**
   * TODO: Add documentation here.
   */
  public class AcceptBot : BaseBot
  {

      /**
     * TODO: Add documentation here. 
     * @param value
     * @return bool
     */
    public override bool acceptOffer(int value)
    {
   	addPoints(value);
	return true;
     
    }

  
  }

}  // end of namespace libbot

