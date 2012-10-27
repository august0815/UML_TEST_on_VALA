using GLib;


/**
 * TODO: Add documentation here.
 * // Konkreter Erbauer für XML-Dateien
 */
public class XMLKursdatenBauer :  KursdatenBauer 
{
   public override void schreibeKursdaten( string wkn,  string name,  string kurs,  string stueckzahl)
  {
	stdout.printf ("\t<Aktie>\n");
    stdout.printf ( "\t\t<WKN>%s</WKN>\n",wkn);
    stdout.printf ( "\t\t<Name>%s</Name>\n",name);
    stdout.printf ( "\t\t<Kurs>%s</Kurs>\n",kurs);
    stdout.printf ( "\t\t<Stueckzahl>%s</Stueckzahl>\n",stueckzahl);
    stdout.printf ( "\t</Aktie>\n");
  }
  
  public override void initialisiereSchreiben() {
    stdout.printf ( "<Aktienkurse>\n");
  }
 
  public override void beendeSchreiben() {
    stdout.printf ("</Aktienkurse>\n");
  }


}

