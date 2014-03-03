package  
{
	import org.flixel.*;
	
	public class menu1 extends FlxState
	{
		[Embed(source = "../assets/img/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/img/parchment.png")] private var parchmentImg:Class;
		[Embed(source = "../assets/img/tree_alive.png")] private var treeAliveImg:Class;
		[Embed(source = "../assets/img/tree_dead.png")] private var treeDeadImg:Class;
		
		[Embed(source = "../assets/audio/track.mp3")] private var track:Class;
		
		private var background:FlxSprite;
		
		private var tree:FlxSprite;

		private var scroll1:FlxSprite;
		private var scroll2:FlxSprite;
		private var scroll3:FlxSprite;
		private var scroll4:FlxSprite;
		private var scroll5:FlxSprite;
		private var scroll6:FlxSprite;
		private var scroll7:FlxSprite;
		
		private var scrollText1:FlxText;
		private var scrollText2:FlxText;
		private var scrollText3:FlxText;
		private var scrollText4:FlxText;
		private var scrollText5:FlxText;
		private var scrollText6:FlxText;
		private var scrollText7:FlxText;
		
		private var expandScrollButton:FlxButton;
				
		override public function create():void 
		{
			FlxG.playMusic(track, 1);

			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll1 = new FlxSprite(10, 10, parchmentImg);
			scroll2 = new FlxSprite(10, 80, parchmentImg);
			scroll3 = new FlxSprite(10, 150, parchmentImg);
			scroll4 = new FlxSprite(110, 10, parchmentImg);
			scroll5 = new FlxSprite(210, 10, parchmentImg);
			scroll6 = new FlxSprite(210, 80, parchmentImg);
			scroll7 = new FlxSprite(210, 150, parchmentImg);
			add(scroll1);
			add(scroll2);
			add(scroll3);
			add(scroll4);
			add(scroll5);
			add(scroll6);
			add(scroll7);
			
			tree = new FlxSprite(110, 80, treeDeadImg);
			add(tree);
			
			scrollText1 = new FlxText(25, 18, FlxG.width, "School 1");
			scrollText1.setFormat(null, 7, 0xff000000);
			add(scrollText1);
			scrollText2 = new FlxText(25, 88, FlxG.width, "School 2");
			scrollText2.setFormat(null, 7, 0xff000000);
			add(scrollText2);
			scrollText3 = new FlxText(25, 158, FlxG.width, "School 3");
			scrollText3.setFormat(null, 7, 0xff000000);
			add(scrollText3);
			scrollText4 = new FlxText(125, 18, FlxG.width, "School 4");
			scrollText4.setFormat(null, 7, 0xff000000);
			add(scrollText4);
			scrollText5 = new FlxText(225, 18, FlxG.width, "School 5");
			scrollText5.setFormat(null, 7, 0xff000000);
			add(scrollText5);
			scrollText6 = new FlxText(225, 88, FlxG.width, "School 6");
			scrollText6.setFormat(null, 7, 0xff000000);
			add(scrollText6);
			scrollText7 = new FlxText(225, 158, FlxG.width, "School 7");
			scrollText7.setFormat(null, 7, 0xff000000);
			add(scrollText7);
			
			
			expandScrollButton = new FlxButton(20, 35, "More Info", expandScroll);
			add(expandScrollButton);
			
			
		}
		
		public function expandScroll():void
		{
			FlxG.switchState(new menu2);
		}
				
	}
	
	

}