package  
{
	import org.flixel.*;
	
	public class MainMenu extends FlxState
	{
		[Embed(source = "../assets/img/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/img/parchment_clean.png")] private var parchmentImg:Class;
		[Embed(source = "../assets/img/tree_alive.png")] private var treeAliveImg:Class;
		[Embed(source = "../assets/img/tree_dead.png")] private var treeDeadImg:Class;
		
		
		private var background:FlxSprite;
		
		private var tree:FlxSprite;

		private var scroll1:FlxSprite;
		private var scroll2:FlxSprite;
		private var scroll3:FlxSprite;
		private var scroll4:FlxSprite;
		private var scroll5:FlxSprite;
		private var scroll6:FlxSprite;
		private var scroll7:FlxSprite;
		
		private var scroll1_level2:FlxSprite;
		
		private var scrollText1:FlxText;
		private var scrollText2:FlxText;
		private var scrollText3:FlxText;
		private var scrollText4:FlxText;
		private var scrollText5:FlxText;
		private var scrollText6:FlxText;
		private var scrollText7:FlxText;
		
		private var expandScrollButton1:FlxButton;
		
		private var closeScrollButton1_level2:FlxButton;
		
		private var getNewButton:FlxButton;
		private var verifyButton:FlxButton;
		private var scoreButton:FlxButton;
		
				
		override public function create():void 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll1 = new FlxSprite(5, 5, parchmentImg);
			scroll2 = new FlxSprite(5, 75, parchmentImg);
			scroll3 = new FlxSprite(5, 145, parchmentImg);
			scroll4 = new FlxSprite(110, 5, parchmentImg);
			scroll5 = new FlxSprite(215, 5, parchmentImg);
			scroll6 = new FlxSprite(215, 75, parchmentImg);
			scroll7 = new FlxSprite(215, 145, parchmentImg);
			add(scroll1);
			add(scroll2);
			add(scroll3);
			add(scroll4);
			add(scroll5);
			add(scroll6);
			add(scroll7);
			
			tree = new FlxSprite(115, 80, treeDeadImg);
			add(tree);
			
			scrollText1 = new FlxText(25, 13, FlxG.width, "School 1");
			scrollText1.setFormat(null, 7, 0xff000000);
			add(scrollText1);
			scrollText2 = new FlxText(25, 83, FlxG.width, "School 2");
			scrollText2.setFormat(null, 7, 0xff000000);
			add(scrollText2);
			scrollText3 = new FlxText(25, 153, FlxG.width, "School 3");
			scrollText3.setFormat(null, 7, 0xff000000);
			add(scrollText3);
			scrollText4 = new FlxText(125, 13, FlxG.width, "School 4");
			scrollText4.setFormat(null, 7, 0xff000000);
			add(scrollText4);
			scrollText5 = new FlxText(225, 13, FlxG.width, "School 5");
			scrollText5.setFormat(null, 7, 0xff000000);
			add(scrollText5);
			scrollText6 = new FlxText(225, 83, FlxG.width, "School 6");
			scrollText6.setFormat(null, 7, 0xff000000);
			add(scrollText6);
			scrollText7 = new FlxText(225, 153, FlxG.width, "School 7");
			scrollText7.setFormat(null, 7, 0xff000000);
			add(scrollText7);
			
			expandScrollButton1 = new FlxButton(18, 30, "Expand", addLevel2Scroll);
			add(expandScrollButton1);
			
			getNewButton = new FlxButton(20, 215, "Get New", newActivity);
			verifyButton = new FlxButton(120, 215, "Verify", verify);
			scoreButton = new FlxButton(220, 215, "Leaderboard", highScores);
			add(getNewButton);
			add(verifyButton);
			add(scoreButton);
		}
		/*
		override public function update():void
		{
			
		}
		*/
		public function newActivity():void
		{
			FlxG.switchState(new GetNewMenu);
		}
		
		public function verify():void
		{
			FlxG.switchState(new VerifyMenu);
		}
		
		public function highScores():void
		{
			FlxG.switchState(new HighScoresMenu);
		}
		
		public function addLevel2Scroll():void
		{
			scroll1_level2 = new FlxSprite(20, 7, parchmentImg);
			add(scroll1_level2);
			
			closeScrollButton1_level2 = new FlxButton(15, 27, "Close", closeLevel2Scroll);
			add(closeScrollButton1_level2);
		}
		
		public function closeLevel2Scroll():void
		{
			scroll1_level2.exists = false;

			closeScrollButton1_level2.exists = false;
		}
				
	}
	
	

}