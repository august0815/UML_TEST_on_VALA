using GLib;


namespace libbot
{

  /**
   * TODO: Add documentation here.
   */
  public class VariableBot : BaseBot
  {

    /**
     * TODO: Add documentation here.
     */
    private int mNumAcceptInRow = 0;


    /**
     * TODO: Add documentation here.
     */
    private int mNumDeclineInRow = 0;




    /**
     * TODO: Add documentation here. 
     * @param value
     * @return bool
     */
    public override bool acceptOffer(int value)
    {
         bool retValue = false;

    if ( mNumAcceptInRow >= 3 )
    {
        // Immer annehmen, wenn dreimal angenommen wurde.
        retValue = true;
    }
    else if ( mNumDeclineInRow >= 3 )
    {
        // Immer ablehnen, wenn dreimal abgelehnt wurde.
        retValue = false;
    }
    else
    {
        if ( value >= 200 )
        {
            retValue = true;

            // Wir merken uns, wie oft wir ein großes Angebot
            // angenommen haben.
            if ( value > 700 )
            {
                mNumAcceptInRow++;
            }
            else
            {
                mNumAcceptInRow = 0;
            }
            mNumDeclineInRow = 0;
        }
        else
        {
            // Wert ist zu klein, das merken wir uns
            retValue = false;
            mNumDeclineInRow++;
            mNumAcceptInRow = 0;
        }
    }

    if ( retValue )
    {
        // Wenn wir das Angebot annehmen, speichern
        // wir, wie viele Punkte wir erhalten haben.
        addPoints(value);
    }

    return retValue; 
    }

    
  }

}  // end of namespace libbot

