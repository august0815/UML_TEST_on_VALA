using GLib;

public class Rostwurst : Mahlzeit
{
  public Rostwurst(string beilage)
  {
      stdout.printf ( "Rostwurst gebraten.\n" );
    if(beilage.length==0) {
      stdout.printf ( "Serviert mit %s" , beilage );
    }
  }

}

