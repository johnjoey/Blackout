package  
{
	import org.flixel.*;
	
	public class HighScoresMenu extends FlxState 
	{
		[Embed(source = "../assets/img/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/img/parchment_large_clean.png")] private var parchmentLargeImg:Class;
		
		private var background:FlxSprite;
		private var scroll:FlxSprite;
		
		private var scrollTitle:FlxText;
		private var schoolText1:FlxText;
		private var schoolText2:FlxText;
		private var schoolText3:FlxText;
		private var schoolText4:FlxText;
		private var schoolText5:FlxText;
		private var schoolText6:FlxText;
		private var schoolText7:FlxText;
		
		private var backButton:FlxButton;
		
		public function HighScoresMenu() 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(20, 10, parchmentLargeImg);
			add(scroll);
			
			scrollTitle = new FlxText(50, 20, FlxG.width, "High Scores!");
			scrollTitle.setFormat(null, 10, 0xff000000);
			add(scrollTitle);
			
			schoolText1 = new FlxText(50, 50, FlxG.width, "School 1 ...................................................... 24");
			schoolText2 = new FlxText(50, 60, FlxG.width, "School 2 ...................................................... 17");
			schoolText3 = new FlxText(50, 70, FlxG.width, "School 3 ...................................................... 15");
			schoolText4 = new FlxText(50, 80, FlxG.width, "School 4 ...................................................... 13");
			schoolText5 = new FlxText(50, 90, FlxG.width, "School 5 ...................................................... 10");
			schoolText6 = new FlxText(50, 100, FlxG.width, "School 6 ...................................................... 5");
			schoolText7 = new FlxText(50, 110, FlxG.width, "School 7 ...................................................... 2");
			schoolText1.setFormat(null, 7, 0xff000000);
			schoolText2.setFormat(null, 7, 0xff000000);
			schoolText3.setFormat(null, 7, 0xff000000);
			schoolText4.setFormat(null, 7, 0xff000000);
			schoolText5.setFormat(null, 7, 0xff000000);
			schoolText6.setFormat(null, 7, 0xff000000);
			schoolText7.setFormat(null, 7, 0xff000000);
			add(schoolText1);
			add(schoolText2);
			add(schoolText3);
			add(schoolText4);
			add(schoolText5);
			add(schoolText6);
			add(schoolText7);
			
			backButton = new FlxButton(20, 215, "< Back", backToMain);
			add(backButton);
		}
		
		public function backToMain():void
		{
			FlxG.switchState(new MainMenu(2));
		}
		
	}

}