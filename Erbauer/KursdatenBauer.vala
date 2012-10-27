using GLib;

/**
 * TODO: Add documentation here.
 * // Abstrakter Erbauer
 */
public abstract class KursdatenBauer
{

   public abstract void schreibeKursdaten( string wkn,  string name,  string kurs,  string stueckzahl);

   public abstract void initialisiereSchreiben();
 
   public abstract void beendeSchreiben();
  
}

