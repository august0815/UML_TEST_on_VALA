using GLib;


/**
 * TODO: Add documentation here.
 */
public class Rostwurstbude : Restaurant
{

  public override void bereiteMahlzeitZu()
  { 
   var mahlzeit = new Rostwurst("Pommes und Ketchup");
  }
  
 public override void nimmBestellungAuf()
  {
    stdout.printf ( "Ihre Bestellung bitte!\n" );
  }
   public override void serviereMahlzeit()
  {
     stdout.printf ("Hier Ihre Mahlzeit. Guten Appetit!\n" );
  }

  //endregion


}

