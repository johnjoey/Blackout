package  
{
	import org.flixel.*;
	
	public class menu2 extends FlxState
	{
		[Embed(source = "../assets/img/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/img/parchment_large.png")] private var parchmentLargeImg:Class;
		
		private var background:FlxSprite;

		private var scroll:FlxSprite;
		
		override public function create():void 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(20, 10, parchmentLargeImg);
			add(scroll);
		}
		
	}

}