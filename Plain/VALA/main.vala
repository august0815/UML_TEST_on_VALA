using GLib;
using libgame;

public class Main {
  public static int main (  string[] argv ) {
	
	if (argv.length > 1)
    { 
         //Erstelle Spiel
        Game game= new Game();
        game.start( argv[1]); 
       
	}
	else
	{  stdout.printf("Please select strategie ... \n->accept\n->decline\n->variabel\n  ");
		}
   
        
    return 0;
  }
}

 

 

