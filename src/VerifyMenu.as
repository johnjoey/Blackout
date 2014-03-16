package  
{
	import org.flixel.*;
	
	public class VerifyMenu extends FlxState
	{
		[Embed(source = "../assets/img/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/img/parchment_large_clean.png")] private var parchmentLargeImg:Class;
		[Embed(source = "../assets/img/placeholder.png")] private var notFoundImage:Class;
		
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
			
			scroll = new FlxSprite(20, 10, parchmentLargeImg);
			add(scroll);
			
			scrollText1 = new FlxText(40, 20, FlxG.width, "Verify Task Submitted By: School 5");
			scrollText1.setFormat(null, 10, 0xff000000);
			add(scrollText1);
			
			descTitle = new FlxText(40, 40, 240, "Description Of Task");
			descTitle.setFormat(null, 9, 0xff555555);
			add(descTitle);
			
			descriptionText = new FlxText(40, 50, 240, "The task was to spend some time collecting litter around the school. Evidence of this would be submitted as a picture of the activity and report describing the activity.");
			descriptionText.setFormat(null, 7, 0xff000000);
			add(descriptionText);
			
			reportTitle = new FlxText(150, 90, 240, "Report:");
			reportTitle.setFormat(null, 9, 0xff555555);
			add(reportTitle);
			
			report = new FlxText(150, 100, 120, "We spent fifteen minutes picking up litter in the playground on Monday. Non recyclable rubbish was put in the bin and...");
			report.setFormat(null, 7, 0xff000000);
			add(report);
			
			acceptButton = new FlxButton(150, 148, "Accept", backToMain);
			acceptButton.color = 0xff00ff00;			
			add(acceptButton);
			
			declineButton = new FlxButton(150, 170, "Decline", backToMain);
			declineButton.color = 0xffff0000;
			add(declineButton);
		
			backButton = new FlxButton(20, 215, "< Back", backToMain);
			add(backButton);
			
			notFoundImg = new FlxSprite(40, 90, notFoundImage);
			add(notFoundImg);
		}
		
		public function backToMain():void
		{
			FlxG.switchState(new MainMenu(1));
		}
		
	}

}