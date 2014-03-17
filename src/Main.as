package  
{
	import org.flixel.*;
	
	[SWF(width="845", height="475", backgroundColor="#FFFFFF")]
	[Frame(factoryClass = "Preloader")]
	
	public class Main extends FlxGame
	{
		public function Main() 
		{
			super(845, 475, StartScreen, 1);
		}
	}

}