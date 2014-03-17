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
		
		private var scrollText1:FlxText;
		private var scrollText2:FlxText;
		private var scrollText3:FlxText;
		private var scrollText4:FlxText;
		private var scrollText5:FlxText;
		private var scrollText6:FlxText;
		
		private var backButton:FlxButton;
		
		public function HighScoresMenu() 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(50, 50, layeredPaperImg);
			add(scroll);
			
			scrollText1 = new FlxText(90, 70, FlxG.width, "High Scores!");
			scrollText1.setFormat(null, 28, 0xff000000);
			add(scrollText1);
			
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