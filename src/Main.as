package  
{
	import org.flixel.*;
	
	[SWF(width="1280", height="720", backgroundColor="#FFFFFF")]
	[Frame(factoryClass = "Preloader")]
	
	public class Main extends FlxGame
	{
		
		public function Main() 
		{
			super(1280, 720, StartScreen, 1);
		}
		
	}

}