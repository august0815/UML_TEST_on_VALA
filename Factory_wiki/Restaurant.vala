using GLib;

public abstract class Restaurant
{

  protected Mahlzeit* mahlzeit
  {
    get
    {
      return m_mahlzeit;
    }
    set
    {
      m_mahlzeit = value;
    }
  }
  private Mahlzeit* m_mahlzeit;

  public void liefereMahlzeit()
  {
  // Diese Methode benutzt die Factory-Methode.
    nimmBestellungAuf();
    bereiteMahlzeitZu(); // Aufruf der Factory-Methode
    serviereMahlzeit();
  }
  protected abstract  void bereiteMahlzeitZu();

  protected abstract void nimmBestellungAuf();
  
  protected abstract void serviereMahlzeit();
 
}

