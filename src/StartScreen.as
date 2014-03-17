package  
{
	import flash.text.TextField;
	import org.flixel.*;
	import org.flixel.system.input.Input;
	
	public class StartScreen extends FlxState 
	{
		[Embed(source = "../assets/audio/track.mp3")] private var track:Class;
		[Embed(source = "../assets/imgNew/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/imgNew/logo.png")] private var logoImg:Class;
		[Embed(source = "../assets/imgNew/button-large.png")] private var buttonLargeImg:Class;
		[Embed(source = "../assets/imgNew/button-inputbox.png")] private var inputBoxImg:Class;
		
		private var background:FlxSprite;
		private var logo:FlxSprite;
		private var usernameInputBox:FlxSprite;
		private var passwordInputBox:FlxSprite;
		
		override public function create():void 
		{
			FlxG.playMusic(track, 1);
			background = new FlxSprite(0, 0, BgImg);
			logo = new FlxSprite(450, 5, logoImg);
			add(background);
			add(logo);
			FlxG.mouse.show();
			
			var usernameText:FlxText = new FlxText(22, 15, FlxG.width, "Username:");
			usernameText.setFormat(null, 16, 0xff000000);
			add(usernameText);
			usernameInputBox = new FlxSprite(130, 8, inputBoxImg);
			add(usernameInputBox);
			var usernameText2:FlxText = new FlxText(140, 19, FlxG.width, "School3");
			usernameText2.setFormat(null, 12, 0xff000000);
			add(usernameText2);
			
			var passwordText:FlxText = new FlxText(22, 52, FlxG.width, "Password:");
			passwordText.setFormat(null, 16, 0xff000000);
			add(passwordText);
			passwordInputBox = new FlxSprite(130, 42, inputBoxImg);
			add(passwordInputBox);
			var passwordText2:FlxText = new FlxText(140, 54, FlxG.width, "*******");
			passwordText2.setFormat(null, 12, 0xff000000);
			add(passwordText2);
			
			var startButton:FlxButton;
			startButton = new FlxButton(20, 85, "Login", startGame);
			startButton.loadGraphic(buttonLargeImg);
			startButton.label = new FlxText(0, 0, FlxG.width, "Login");
			startButton.label.setFormat(null, 16, 0xff000000);
			startButton.labelOffset = new FlxPoint(100, 10);
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