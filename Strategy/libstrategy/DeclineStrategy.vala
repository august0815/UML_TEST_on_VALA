using GLib;

using libbot;

namespace libstrategy
{

  /**
   * TODO: Add documentation here.
   */
  public class DeclineStrategy :  Bot,IStrategy
  {
    public override bool acceptOffer(int value)
    {
      //TODO: Test
      return false; 
    }
  }
}  // end of namespace libstrategy

