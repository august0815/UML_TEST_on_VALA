using GLib;


/**
 * TODO: Add documentation here.
 * // Konkreter Erbauer für CSV-Dateien
 */
public class CSVKursdatenBauer : KursdatenBauer
{
 
 public override void schreibeKursdaten( string wkn,  string name,  string kurs,  string stueckzahl)
  {
	// Hier entsteht das Produkt, der Einfachheit halber auf die
	// Standardausgabe geschrieben. (Es könnte auch in einen Stream
	// geschrieben werden, der im Konstruktor übergeben wird.)
	stdout.printf ( "%s;",wkn);
    stdout.printf ( "%s;",name);
    stdout.printf ( "%s;",kurs);
    stdout.printf ( "%s;",stueckzahl);
    
  }
  public override void initialisiereSchreiben() {
  
  }
 
  public override void beendeSchreiben() {
  
  }

}

