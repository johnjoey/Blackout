package  
{
	import org.flixel.*;
	
	public class VerifyMenu extends FlxState
	{
		[Embed(source = "../assets/imgNew/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/imgNew/layers.png")] private var layeredPaperImg:Class;
		[Embed(source = "../assets/imgNew/button-tall.png")] private var buttonTallImg:Class;
		[Embed(source = "../assets/imgNew/button.png")] private var buttonImg:Class;
		[Embed(source = "../assets/imgNew/placeholder.png")] private var notFoundImage:Class;
		
		private var background:FlxSprite;
		private var scroll:FlxSprite;
		private var notFoundImg:FlxSprite;
		
		private var scrollText1:FlxText;
		private var descriptionText:FlxText;
		private var descTitle:FlxText;
		private var reportTitle:FlxText;
		private var report:FlxText;
		
		private var backButton:FlxButton;
		private var acceptButton:FlxButton;
		private var declineButton:FlxButton;
		
		public function VerifyMenu() 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(50, 50, layeredPaperImg);
			add(scroll);
			
			scrollText1 = new FlxText(90, 70, FlxG.width, "Verify Task Submitted By: School 5");
			scrollText1.setFormat(null, 28, 0xff000000);
			add(scrollText1);
			
			descTitle = new FlxText(160, 120, FlxG.width, "Description Of Task");
			descTitle.setFormat(null, 20, 0xff555555);
			add(descTitle);
			
			descriptionText = new FlxText(160, 150, FlxG.width, "The task was to spend some time collecting litter around \nthe school. Evidence of this would be submitted as a \npicture of the activity and report describing the activity.");
			descriptionText.setFormat(null, 12, 0xff000000);
			add(descriptionText);
			
			reportTitle = new FlxText(300, 220, FlxG.width, "Report:");
			reportTitle.setFormat(null, 20, 0xff555555);
			add(reportTitle);
			
			report = new FlxText(300, 250, FlxG.width, "We spent fifteen minutes picking \nup litter in the playground on \nMonday. Non recyclable rubbish \nwas put in the bin and...");
			report.setFormat(null, 12, 0xff000000);
			add(report);
			
			acceptButton = new FlxButton(570, 195, "Accept", backToMain);
			acceptButton.color = 0xff00ff00;
			acceptButton.loadGraphic(buttonTallImg);
			acceptButton.label = new FlxText(0, 0, FlxG.width, "Accept");
			acceptButton.label.setFormat(null, 24, 0xff000000);
			acceptButton.labelOffset = new FlxPoint(50, 25);
			add(acceptButton);
			
			declineButton = new FlxButton(570, 280, "Decline", backToMain);
			declineButton.color = 0xff0000;
			declineButton.loadGraphic(buttonTallImg);
			declineButton.label = new FlxText(0, 0, FlxG.width, "Decline");
			declineButton.label.setFormat(null, 24, 0xff000000);
			declineButton.labelOffset = new FlxPoint(45, 25);
			add(declineButton);
			
			backButton = new FlxButton(580, 370, "< Back", backToMain);
			backButton.loadGraphic(buttonImg);
			backButton.label = new FlxText(0, 0, FlxG.width, "Back");
			backButton.label.setFormat(null, 16, 0xff000000);
			backButton.labelOffset = new FlxPoint(70, 5);
			add(backButton);
			
			notFoundImg = new FlxSprite(100, 210, notFoundImage);
			add(notFoundImg);
		}
		
		public function backToMain():void
		{
			FlxG.switchState(new MainMenu(1));
		}
		
	}

}