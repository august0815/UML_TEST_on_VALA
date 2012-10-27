using GLib;



class Fabrik: GLib.Object {

    public static int main(string[] args) {
		
        Pizzeria daToni= new Pizzeria();
		daToni.liefereMahlzeit();
 
		Rostwurstbude brunosImbiss=new Rostwurstbude();
		brunosImbiss.liefereMahlzeit();

        return 0;
    }
}



