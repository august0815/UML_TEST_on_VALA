using GLib;


/**
 * TODO: Add documentation here.
 * Klient
 */
 
class Erbauer: GLib.Object {

    public static int main(string[] args) {
		//CSVKursdatenBauer csvKursdatenBauer=new CSVKursdatenBauer();
		XMLKursdatenBauer xmlKursdatenBauer=new XMLKursdatenBauer();
		KursdatenLeser    kursdatenLeser=new KursdatenLeser();
 
		kursdatenLeser.setKursdatenBauer( xmlKursdatenBauer );
		// oder
		//kursdatenLeser.setKursdatenBauer( csvKursdatenBauer );
		kursdatenLeser.parseUndSchreibeKursdaten();
    return 0;
    }
}



