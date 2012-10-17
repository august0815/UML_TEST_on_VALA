using GLib;

using libbot;

namespace libstrategy
{

  /**
   * TODO: Add documentation here.
   */
  public class VariableStrategy : Bot,IStrategy
  {
    /**
     * TODO: Add documentation here.
     */
    private int mNumAcceptInRow = 0;

    /**
     * TODO: Add documentation here.
     */
    private int mNumDeclineInRow = 0;

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

    return retValue; 
    }
  }
}  // end of namespace libstrategy

