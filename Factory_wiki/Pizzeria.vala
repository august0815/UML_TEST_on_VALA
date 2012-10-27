using GLib;


/**
 * TODO: Add documentation here.
 */
public class Pizzeria : Restaurant
{
  protected override void bereiteMahlzeitZu()
  {
     var mahlzeit = new Pizza();
  }

 protected override void nimmBestellungAuf()
  {
     stdout.printf ( "Ihre Bestellung bitte!\n" );
  }
   protected override void serviereMahlzeit()
  {
     stdout.printf ("Hier Ihre Mahlzeit. Guten Appetit!\n" );
  }
  //endregion


}

