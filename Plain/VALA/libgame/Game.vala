using GLib;

using libbot;

namespace libgame
{

  /**
   * TODO: Add documentation here.
   */
  public class Game
  {

    /**
     * TODO: Add documentation here. 
     * @param strategy
     * @return bool
     */
    public bool start(string strategy)
    {
      //TODO: Test
     var botP = new BaseBot () ;

    // Je nach Strategie erstellen wir einen anderen Bot.
    if (  strategy  ==("accept")  )
    { stdout.printf( "ACCEPT STRATEGIE." );
        botP = new AcceptBot();
    } 
    else if (  strategy== ("decline") )
    { stdout.printf( "NO_ACCEPT STRATEGIE." );
        botP = new DeclineBot();
    }
    else if (  strategy == ("variable") )
    { stdout.printf( "VARIABLE STRATEGIE" );
        botP = new VariableBot();
    }
 
    bool retValue = false;
	// Wurde ein Bot erstellt? mit try
   
        // Bot ist verfuegbar, Strategie ist also gueltig.
        retValue = true;

        string input;
        int value = 0;
        do {
            // Eingabe vom Benutzer lesen
            input = readInput();

            // Eingabe in Zahl wandeln
            value = parseInput( input );
			
            if ( 0 <= value && value <= 1000 )
            {  
                if ( botP.acceptOffer(value))
                {
                    stdout.printf("Bot nimmt Angebot an." );
                }
                else
                {
                   stdout.printf( "Bot lehnt Angebot ab." );
                }
            }
            // wiederhole, bis Wert ungueltig ist
        } while ( 0 <= value && value <= 1000 );

        // Das Spiel ist zu Ende, wir geben die Punkte aus.
        stdout.printf("Gesammelte Punkte: %d \n" , botP.getPoints() );
   
      return retValue; 
    }

    /**
     * TODO: Add documentation here. 
     * @return string
     */
    private string readInput()
    {
        stdout.printf( "\nZahl eingeben :");
      string input = stdin.read_line();
      return input; 
    }

    /**
     * TODO: Add documentation here. 
     * @param input
     * @return int
     */
    private int parseInput(string input)
    {
      int number = int.parse(input);
      return number; 
    }


  }

}  // end of namespace libgame

