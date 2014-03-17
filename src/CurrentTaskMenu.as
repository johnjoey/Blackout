package  
{
	import org.flixel.*;
	
	public class CurrentTaskMenu extends FlxState
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
		
		private var completeButton:FlxButton;
		private var backButton:FlxButton;
		
		public function CurrentTaskMenu() 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(50, 50, layeredPaperImg);
			add(scroll);
			
			scrollText1 = new FlxText(90, 70, FlxG.width, "Your current task is...");
			scrollText1.setFormat(null, 28, 0xff000000);
			add(scrollText1);
			
			scrollText2 = new FlxText(140, 120, FlxG.width, " - Recycle 10 bottles.");
			scrollText2.setFormat(null, 24, 0xff000000);
			add(scrollText2);
			
			scrollText3 = new FlxText(160, 200, FlxG.width, "Description");
			scrollText3.setFormat(null, 28, 0xff000000);
			add(scrollText3);
			
			scrollText4 = new FlxText(160, 240, FlxG.width, "Collect empty bottles that you see, \nbut do not touch broken ones! \n ...");
			scrollText4.setFormat(null, 20, 0xff000000);
			add(scrollText4);
			
			completeButton = new FlxButton(580, 70, "< Back", backToMain);
			completeButton.color = 0xff00ff00;
			completeButton.loadGraphic(buttonTallImg);
			completeButton.label = new FlxText(0, 0, FlxG.width, "Complete");
			completeButton.label.setFormat(null, 24, 0xff000000);
			completeButton.labelOffset = new FlxPoint(30, 25);
			add(completeButton);
			
			backButton = new FlxButton(580, 330, "< Back", backToMain);
			backButton.loadGraphic(buttonTallImg);
			backButton.label = new FlxText(0, 0, FlxG.width, "Back");
			backButton.label.setFormat(null, 24, 0xff000000);
			backButton.labelOffset = new FlxPoint(60, 25);
			add(backButton);
		}
		
		public function backToMain():void
		{
			FlxG.switchState(new MainMenu(0));
		}
	}

}