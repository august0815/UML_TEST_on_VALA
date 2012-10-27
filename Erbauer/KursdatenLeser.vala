using GLib;

/**
 * TODO: Add documentation here.
 * // Direktor
 */
public class KursdatenLeser
{
  private KursdatenBauer _kursdatenBauer;

 public void setKursdatenBauer(KursdatenBauer kb)
  {
     _kursdatenBauer = kb;
  }
  public void parseUndSchreibeKursdaten()
  {
    _kursdatenBauer.initialisiereSchreiben();
    // lies Zeile für Zeile von STDIN und zerlege in geeignete Teile
    // noch nicht fertig
    //while( ! std::cin.eof() ) {
       string wkn, name, kurs, stueckzahl;
       wkn=stdin.read_line ();
       name=stdin.read_line ();
       kurs=stdin.read_line ();
       stueckzahl=stdin.read_line ();
      // if( wkn.length==0 ) { break; }
       _kursdatenBauer.schreibeKursdaten(wkn, name, kurs, stueckzahl);
    // }
    _kursdatenBauer.beendeSchreiben();
  }

 

}

