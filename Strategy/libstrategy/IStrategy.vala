using GLib;

namespace libstrategy
{

  /**
   * TODO: Add documentation here.
   */
  public interface IStrategy
  {

    /**
     * TODO: Add documentation here. 
     * @param value
     * @return bool
     */
    public abstract bool acceptOffer(int value);

  }

}  // end of namespace libstrategy

