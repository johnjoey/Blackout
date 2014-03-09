package  
{
	import org.flixel.*;
	
	public class VerifyMenu extends FlxState
	{
		[Embed(source = "../assets/img/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/img/parchment_large_clean.png")] private var parchmentLargeImg:Class;
		
		private var background:FlxSprite;
		private var scroll:FlxSprite;
		
		private var scrollText1:FlxText;
		
		private var backButton:FlxButton;
		
		public function VerifyMenu() 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(20, 10, parchmentLargeImg);
			add(scroll);
			
			scrollText1 = new FlxText(60, 30, FlxG.width, "Verify something...");
			scrollText1.setFormat(null, 7, 0xff000000);
			add(scrollText1);
			
			backButton = new FlxButton(20, 215, "< Back", backToMain);
			add(backButton);
		}
		
		public function backToMain():void
		{
			FlxG.switchState(new MainMenu);
		}
		
	}

}