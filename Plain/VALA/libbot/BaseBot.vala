using GLib;

namespace libbot
{

  /**
   * TODO: Add documentation here.
   */
  public class BaseBot
  {

    /**
     * TODO: Add documentation here.
     */
    private int mPoints;
	
    /**
     * TODO: Add documentation here. 
     * @param value
     * @return bool
    */
 public  virtual bool acceptOffer(int value)
    {
      return true; 
    }

    /**
     * TODO: Add documentation here. 
     * @return int
     */
    public int getPoints()
    {
      return mPoints;
    }
 

    /**
     * TODO: Add documentation here. 
     * @param value
     * @return 
     */
    protected void addPoints(int value)
    {
      mPoints += value;
    }

    
  }

}  // end of namespace libbot

