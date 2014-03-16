package  
{
	import flash.text.TextField;
	import org.flixel.*;
	import org.flixel.system.input.Input;
	
	public class StartScreen extends FlxState 
	{
		[Embed(source = "../assets/audio/track.mp3")] private var track:Class;
		
		override public function create():void 
		{
			FlxG.playMusic(track, 1);
			
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
		
		public function StartScreen() 
		{
			super();
		}
		
		public function startGame():void
		{
			FlxG.switchState(new MainMenu(0));
		}
		
	}

}