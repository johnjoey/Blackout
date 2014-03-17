package  
{
	import org.flixel.*;
	
	public class HighScoresMenu extends FlxState 
	{
		[Embed(source = "../assets/imgNew/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/imgNew/layers.png")] private var layeredPaperImg:Class;
		[Embed(source = "../assets/imgNew/button-tall.png")] private var buttonTallImg:Class;
		
		private var background:FlxSprite;
		private var scroll:FlxSprite;
		
<<<<<<< HEAD
		private var scrollText1:FlxText;
		private var scrollText2:FlxText;
		private var scrollText3:FlxText;
		private var scrollText4:FlxText;
		private var scrollText5:FlxText;
		private var scrollText6:FlxText;
=======
		private var scrollTitle:FlxText;
		private var schoolText1:FlxText;
		private var schoolText2:FlxText;
		private var schoolText3:FlxText;
		private var schoolText4:FlxText;
		private var schoolText5:FlxText;
		private var schoolText6:FlxText;
		private var schoolText7:FlxText;
>>>>>>> b346bb70d359962afa691fd756336de416c72ab5
		
		private var backButton:FlxButton;
		
		public function HighScoresMenu() 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(50, 50, layeredPaperImg);
			add(scroll);
			
<<<<<<< HEAD
			scrollText1 = new FlxText(90, 70, FlxG.width, "High Scores!");
			scrollText1.setFormat(null, 28, 0xff000000);
			add(scrollText1);
=======
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
>>>>>>> b346bb70d359962afa691fd756336de416c72ab5
			
			scrollText2 = new FlxText(160, 150, FlxG.width, "School 4 - 70 points - 2014");
			scrollText2.setFormat(null, 20, 0xff000000);
			add(scrollText2);
			
			scrollText3 = new FlxText(160, 180, FlxG.width, "School 2 - 65 points - 2012");
			scrollText3.setFormat(null, 20, 0xff000000);
			add(scrollText3);
			
			scrollText4 = new FlxText(160, 210, FlxG.width, "School 7 - 65 points - 2013");
			scrollText4.setFormat(null, 20, 0xff000000);
			add(scrollText4);
			
			scrollText5 = new FlxText(160, 240, FlxG.width, "School 5 - 55 points - 2014");
			scrollText5.setFormat(null, 20, 0xff000000);
			add(scrollText5);
			
			scrollText5 = new FlxText(160, 270, FlxG.width, "School 4 - 50 points - 2013");
			scrollText5.setFormat(null, 20, 0xff000000);
			add(scrollText5);
			
			scrollText6 = new FlxText(160, 300, FlxG.width, "School 1 - 50 points - 2014");
			scrollText6.setFormat(null, 20, 0xff000000);
			add(scrollText6);
			
			backButton = new FlxButton(580, 330, "< Back", backToMain);
			backButton.loadGraphic(buttonTallImg);
			backButton.label = new FlxText(0, 0, FlxG.width, "Back");
			backButton.label.setFormat(null, 24, 0xff000000);
			backButton.labelOffset = new FlxPoint(60, 25);
			add(backButton);
		}
		
		public function backToMain():void
		{
			FlxG.switchState(new MainMenu(2));
		}
		
	}

}