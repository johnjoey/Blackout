package  
{
	import org.flixel.*;
	
	public class MainMenu extends FlxState
	{
		[Embed(source = "../assets/imgNew/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/imgNew/top-left.png")] private var TLContainer:Class;
		[Embed(source = "../assets/imgNew/top-middle.png")] private var TMContainer:Class;
		[Embed(source = "../assets/imgNew/top-right.png")] private var TRContainer:Class;
		[Embed(source = "../assets/imgNew/middle-left.png")] private var MLContainer:Class;
		[Embed(source = "../assets/imgNew/middle-right.png")] private var MRContainer:Class;
		[Embed(source = "../assets/imgNew/bottom-left.png")] private var BLContainer:Class;
		[Embed(source = "../assets/imgNew/bottom-right.png")] private var BRContainer:Class;
		[Embed(source = "../assets/imgNew/tree-good.png")] private var treeAliveImg:Class;
		[Embed(source = "../assets/imgNew/tree-ok.png")] private var treeSoonImg:Class;
		[Embed(source = "../assets/imgNew/tree-dead.png")] private var treeDeadImg:Class;
		[Embed(source = "../assets/imgNew/button.png")] private var buttonImg:Class;
		[Embed(source = "../assets/imgNew/button-large.png")] private var buttonLargeImg:Class;
		
		private var background:FlxSprite;
		private var tree:FlxSprite;

		private var topLeftImg:FlxSprite;
		private var topMiddleImg:FlxSprite;
		private var topRightImg:FlxSprite;
		private var middleLeftImg:FlxSprite;
		private var middleRightImg:FlxSprite;
		private var bottomLeftImg:FlxSprite;
		private var bottomRightImg:FlxSprite;
		
		private var topLeftText:FlxText;
		private var topMiddleText:FlxText;
		private var topRightText:FlxText;
		private var middleLeftText:FlxText;
		private var middleRightText:FlxText;
		private var bottomLeftText:FlxText;
		private var bottomRightText:FlxText;
		
		private var school1CuTButton:FlxButton;
		private var school1CoTButton:FlxButton;
		private var school2CuTButton:FlxButton;
		private var school2CoTButton:FlxButton;
		private var school3CuTButton:FlxButton;
		private var school3CoTButton:FlxButton;
		private var school4CuTButton:FlxButton;
		private var school4CoTButton:FlxButton;
		private var school5CuTButton:FlxButton;
		private var school5CoTButton:FlxButton;
		private var school6CuTButton:FlxButton;
		private var school6CoTButton:FlxButton;
		private var school7CuTButton:FlxButton;
		private var school7CoTButton:FlxButton;
		
		private var getNewButton:FlxButton;
		private var getNewButtonText:FlxText;
		
		private var verifyButton:FlxButton;
		private var verifyButtonText:FlxText;
		
		private var scoreButton:FlxButton;
		private var scoreButtonText:FlxText;
	
		private var treeState:int;
		
		public function MainMenu(TS:int):void
		{
			treeState = TS;
		}
		
		override public function create():void 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			topLeftImg = new FlxSprite(15, 0, TLContainer);
			topLeftImg.color = 0xffffff55;
			topMiddleImg = new FlxSprite(300, 0, TMContainer);
			topRightImg = new FlxSprite(585, 0, TRContainer);
			middleLeftImg = new FlxSprite(15, 145, MLContainer);
			middleRightImg = new FlxSprite(585, 145, MRContainer);
			bottomLeftImg = new FlxSprite(15, 290, BLContainer);
			bottomRightImg = new FlxSprite(585, 290, BRContainer);
			add(topLeftImg);
			add(topMiddleImg);
			add(topRightImg);
			add(middleLeftImg);
			add(middleRightImg);
			add(bottomLeftImg);
			add(bottomRightImg);
			
			switch(treeState) {
				case 0:
					tree = new FlxSprite(240, 90, treeDeadImg);
					break;
				case 1:
					tree = new FlxSprite(240, 90, treeSoonImg);
					break;
				case 2:
					tree = new FlxSprite(240, 90, treeAliveImg);
					break;
			}
			
			add(tree);
			
			topLeftText = new FlxText(45, 15, FlxG.width, "School 3");
			topLeftText.setFormat(null, 16, 0xff000000);
			add(topLeftText);
			var topLeftScore: FlxText = new FlxText(180, 18, FlxG.width, "Points: 40");
			topLeftScore.setFormat(null, 10, 0xff000000);
			add(topLeftScore);
			
			
			topMiddleText = new FlxText(330, 15, FlxG.width, "School 4");
			topMiddleText.setFormat(null, 16, 0xff000000);
			add(topMiddleText);
			var topMiddleScore: FlxText = new FlxText(465, 18, FlxG.width, "Points: 70");
			topMiddleScore.setFormat(null, 10, 0xff000000);
			add(topMiddleScore);
			
			topRightText = new FlxText(615, 15, FlxG.width, "School 5");
			topRightText.setFormat(null, 16, 0xff000000);
			add(topRightText);
			var topRightScore: FlxText = new FlxText(750, 18, FlxG.width, "Points: 55");
			topRightScore.setFormat(null, 10, 0xff000000);
			add(topRightScore);
			
			middleLeftText = new FlxText(45, 160, FlxG.width, "School 2");
			middleLeftText.setFormat(null, 16, 0xff000000);
			add(middleLeftText);
			var middleLeftScore: FlxText = new FlxText(180, 163, FlxG.width, "Points: 25");
			middleLeftScore.setFormat(null, 10, 0xff000000);
			add(middleLeftScore);
			
			middleRightText = new FlxText(645, 160, FlxG.width, "School 6");
			middleRightText.setFormat(null, 16, 0xff000000);
			add(middleRightText);
			var middleRightScore: FlxText = new FlxText(750, 163, FlxG.width, "Points: 10");
			middleRightScore.setFormat(null, 10, 0xff000000);
			add(middleRightScore);
			
			bottomLeftText = new FlxText(45, 305, FlxG.width, "School 1");
			bottomLeftText.setFormat(null, 16, 0xff000000);
			add(bottomLeftText);
			var bottomLeftScore: FlxText = new FlxText(180, 308, FlxG.width, "Points: 50");
			bottomLeftScore.setFormat(null, 10, 0xff000000);
			add(bottomLeftScore);
			
			bottomRightText = new FlxText(615, 305, FlxG.width, "School 7");
			bottomRightText.setFormat(null, 16, 0xff000000);
			add(bottomRightText);
			var bottomRightScore: FlxText = new FlxText(750, 308, FlxG.width, "Points: 35");
			bottomRightScore.setFormat(null, 10, 0xff000000);
			add(bottomRightScore);
			
			school1CuTButton = new FlxButton(45, 35, "Current", expandPSCuT);
			school1CuTButton.loadGraphic(buttonImg);
			add(school1CuTButton);
			school1CuTButton.label = new FlxText(0, 0, FlxG.width, "> Current Task");
			school1CuTButton.label.setFormat(null, 12, 0xff000000);
			school1CuTButton.labelOffset = new FlxPoint(20, 8);
			
			school1CoTButton = new FlxButton(45, 70, "Completed", expandPSCoT);
			school1CoTButton.loadGraphic(buttonImg);
			add(school1CoTButton);
			school1CoTButton.label = new FlxText(0, 0, FlxG.width, "> Completed Tasks");
			school1CoTButton.label.setFormat(null, 12, 0xff000000);
			school1CoTButton.labelOffset = new FlxPoint(20, 8);
			
			school2CuTButton = new FlxButton(45, 185, "Current", expandSCuT);
			school2CuTButton.loadGraphic(buttonImg);
			add(school2CuTButton);
			school2CuTButton.label = new FlxText(0, 0, FlxG.width, "> Current Task");
			school2CuTButton.label.setFormat(null, 12, 0xff000000);
			school2CuTButton.labelOffset = new FlxPoint(20, 8);
			
			school2CoTButton = new FlxButton(45, 220, "Completed", expandSCoT);
			school2CoTButton.loadGraphic(buttonImg);
			add(school2CoTButton);
			school2CoTButton.label = new FlxText(0, 0, FlxG.width, "> Completed Tasks");
			school2CoTButton.label.setFormat(null, 12, 0xff000000);
			school2CoTButton.labelOffset = new FlxPoint(20, 8);
			
			school3CuTButton = new FlxButton(45, 335, "Current", expandSCuT);
			school3CuTButton.loadGraphic(buttonImg);
			add(school3CuTButton);
			school3CuTButton.label = new FlxText(0, 0, FlxG.width, "> Current Task");
			school3CuTButton.label.setFormat(null, 12, 0xff000000);
			school3CuTButton.labelOffset = new FlxPoint(20, 8);
			
			school3CoTButton = new FlxButton(45, 370, "Completed", expandSCoT);
			school3CoTButton.loadGraphic(buttonImg);
			add(school3CoTButton);
			school3CoTButton.label = new FlxText(0, 0, FlxG.width, "> Completed Tasks");
			school3CoTButton.label.setFormat(null, 12, 0xff000000);
			school3CoTButton.labelOffset = new FlxPoint(20, 8);
			
			school4CuTButton = new FlxButton(330, 35, "Current", expandSCuT);
			school4CuTButton.loadGraphic(buttonImg);
			add(school4CuTButton);
			school4CuTButton.label = new FlxText(0, 0, FlxG.width, "> Current Task");
			school4CuTButton.label.setFormat(null, 12, 0xff000000);
			school4CuTButton.labelOffset = new FlxPoint(20, 8);
			
			school4CoTButton = new FlxButton(330, 70, "Completed", expandSCoT);
			school4CoTButton.loadGraphic(buttonImg);
			add(school4CoTButton);
			school4CoTButton.label = new FlxText(0, 0, FlxG.width, "> Completed Tasks");
			school4CoTButton.label.setFormat(null, 12, 0xff000000);
			school4CoTButton.labelOffset = new FlxPoint(20, 8);
			
			school5CuTButton = new FlxButton(625, 35, "Current", expandSCuT);
			school5CuTButton.loadGraphic(buttonImg);
			add(school5CuTButton);
			school5CuTButton.label = new FlxText(0, 0, FlxG.width, "> Current Task");
			school5CuTButton.label.setFormat(null, 12, 0xff000000);
			school5CuTButton.labelOffset = new FlxPoint(20, 8);
			
			school5CoTButton = new FlxButton(625, 70, "Completed", expandSCoT);
			school5CoTButton.loadGraphic(buttonImg);
			add(school5CoTButton);
			school5CoTButton.label = new FlxText(0, 0, FlxG.width, "> Completed Tasks");
			school5CoTButton.label.setFormat(null, 12, 0xff000000);
			school5CoTButton.labelOffset = new FlxPoint(20, 8);
			
			school6CuTButton = new FlxButton(625, 185, "Current", expandSCuT);
			school6CuTButton.loadGraphic(buttonImg);
			add(school6CuTButton);
			school6CuTButton.label = new FlxText(0, 0, FlxG.width, "> Current Task");
			school6CuTButton.label.setFormat(null, 12, 0xff000000);
			school6CuTButton.labelOffset = new FlxPoint(20, 8);
			
			school6CoTButton = new FlxButton(625, 220, "Completed", expandSCoT);
			school6CoTButton.loadGraphic(buttonImg);
			add(school6CoTButton);
			school6CoTButton.label = new FlxText(0, 0, FlxG.width, "> Completed Tasks");
			school6CoTButton.label.setFormat(null, 12, 0xff000000);
			school6CoTButton.labelOffset = new FlxPoint(20, 8);
			
			school7CuTButton = new FlxButton(625, 335, "Current", expandSCuT);
			school7CuTButton.loadGraphic(buttonImg);
			add(school7CuTButton);
			school7CuTButton.label = new FlxText(0, 0, FlxG.width, "> Current Task");
			school7CuTButton.label.setFormat(null, 12, 0xff000000);
			school7CuTButton.labelOffset = new FlxPoint(20, 8);
			
			school7CoTButton = new FlxButton(625, 370, "Completed", expandSCoT);
			school7CoTButton.loadGraphic(buttonImg);
			add(school7CoTButton);
			school7CoTButton.label = new FlxText(0, 0, FlxG.width, "> Completed Tasks");
			school7CoTButton.label.setFormat(null, 12, 0xff000000);
			school7CoTButton.labelOffset = new FlxPoint(20, 8);
			
			//-------------
			
			getNewButton = new FlxButton(15, 430, "Get New", newActivity);
			getNewButton.loadGraphic(buttonLargeImg);
			getNewButtonText = new FlxText(0, 0, FlxG.width, "Get New Task...");
			getNewButtonText.setFormat(null, 16, 0xff000000);
			getNewButton.label = getNewButtonText;
			getNewButton.labelOffset = new FlxPoint(45, 10);
			
			verifyButton = new FlxButton(300, 430, "Verify", verify);
			verifyButton.loadGraphic(buttonLargeImg);
			verifyButtonText = new FlxText(0, 0, FlxG.width, "Verify Task...");
			verifyButtonText.setFormat(null, 16, 0xff000000);
			verifyButton.label = verifyButtonText;
			verifyButton.labelOffset = new FlxPoint(55, 10);
			
			scoreButton = new FlxButton(585, 430, "Leaderboard", highScores);
			scoreButton.loadGraphic(buttonLargeImg);
			scoreButtonText = new FlxText(0, 0, FlxG.width, "View Leaderboard...");
			scoreButtonText.setFormat(null, 16, 0xff000000);
			scoreButton.label = scoreButtonText;
			scoreButton.labelOffset = new FlxPoint(25, 10);
			
			add(getNewButton);
			add(verifyButton);
			add(scoreButton);			
			
			/*stuff that isn't visisble yet*/
			/*
			scroll1_level2 = new FlxSprite(8, 8, TLContainer);
			closeScrollButton1_level2 = new FlxButton(18, 23, "Close", closeLevel2Scroll);
			
			scrollText1_level2 = new FlxText(10, 10, FlxG.width, "Additional Info:");
			scrollText1_level2.setFormat(null, 7, 0xff000000);
			
			add(scroll1_level2);
			add(closeScrollButton1_level2);
			add(scrollText1_level2);
			
			closeLevel2Scroll();
			*/
		}
		
		override public function update():void
		{
			super.update();
		}
	
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
		
		public function expandPSCuT():void {
			FlxG.switchState(new CurrentTaskMenu);
		}
		
		public function expandPSCoT():void {
			//Display completed tasks
		}
		
		public function expandSCuT():void {
			//FlxG.switchState(new HighScoresMenu);
		}
		
		public function expandSCoT():void {
			//Display completed tasks
		}
	}
}