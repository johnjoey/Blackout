package  
{
	import org.flixel.*;
	
	public class MenuState extends FlxState 
	{
		override public function create():void 
		{
			FlxG.mouse.show();
			
			var title:FlxText;
			title = new FlxText(0, 16, FlxG.width, "Blackout");
			title.setFormat (null, 16, 0xFFFFFFFF, "center");
			add(title);
			
			var startButton:FlxButton;
			startButton = new FlxButton(120, 100, "Start Game", startGame);
			add(startButton);
		}
		
		override public function update():void
		{
			super.update();
		}
		
		public function MenuState() 
		{
			super();
		}
		
		public function startGame():void
		{
			FlxG.switchState(new menu1);
		}
		
	}

}