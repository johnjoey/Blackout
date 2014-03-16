package  
{
	import org.flixel.*;
	
	public class GetNewMenu extends FlxState
	{
		[Embed(source = "../assets/img/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/img/parchment_large_clean.png")] private var parchmentLargeImg:Class;
			
		private var background:FlxSprite;
		private var scroll:FlxSprite;
		private var notFoundImg:FlxSprite;
		
		private var scrollText1:FlxText;
		private var scrollText2:FlxText;
		private var randomText:String;
		
		private var backButton:FlxButton;
		
		override public function create():void 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(20, 10, parchmentLargeImg);
			add(scroll);
			
			scrollText1 = new FlxText(60, 30, FlxG.width, "Your task, if you choose to accept it...");
			scrollText1.setFormat(null, 16, 0xfffffff);
			add(scrollText1);
			
			var randomText:String;
			randomText = getRandomTaskText;
			scrollText2 = new FlxText(60, 60, FlxG.width, randomText);
			scrollText2.setFormat(null, 16, 0xffffffff);
			add(scrollText2);
			
			backButton = new FlxButton(20, 215, "< Back", backToMain);
			add(backButton);
			
			
			
			
		}
		
		public function backToMain():void
		{
			FlxG.switchState(new MainMenu(2));
		}
		
		public function getRandomTaskText():String
		{
			return "Testing";
		}
	}

}