package  
{
	import org.flixel.*;
	
	public class GetNewMenu extends FlxState
	{
		[Embed(source = "../assets/imgNew/background.png")] private var BgImg:Class;
		[Embed(source = "../assets/imgNew/layers.png")] private var layeredPaperImg:Class;
		[Embed(source = "../assets/imgNew/button-tall.png")] private var buttonTallImg:Class;
		//[Embed(source = "../assets/Colored Crayons.ttf", fontFamily = "NES", embedAsCFF = "false")]	public var FontNES:String
		
		private var background:FlxSprite;
		private var scroll:FlxSprite;
		private var notFoundImg:FlxSprite;
		
		private var index:int;
		
		private var scrollText1:FlxText;
		private var scrollText2:FlxText;
		private var scrollText3:FlxText;
		private var scrollText4:FlxText;
		
		private var tasks:Array = new Array(" - Clean up all of the litter in the playground.",
											" - Convince 5 shop owners to keep their doors closed.",
											" - Use no plasic bags for the next 7 days.");
		
		private var taskInfo:Array = new Array("Plastic and metal take an extremely long time to decompose, \nrecycling technologies can turn the waste into something useful. \nCrisp packets and biscuit wrappers are commonly dropped, \nleaving the place looking a mess, but also potentially \nharmful to any wildlife in that area.",
											   "Having warm customers on a cold day is important for keeping \nin business. Having the door constantly open makes it more inviting, \nHowever, the heat lost to the outside is not only expensive, \nbut also wasteful. Saving the owner money and helping \nthe environment is as simple as closing the door.",
											   "To help reduce the number of plastic bags being made in the world, \nnatural material bags have been created by most supermarkets. \nDo your part with the bag provided to help cut down the number of \nwasted plastic ones that are thrown away each day.");
		
		private var pointsValue:Array = new Array("10",
												  "30",
												  "35");
		
		private var acceptButton:FlxButton;
		private var declineButton:FlxButton;
		private var backButton:FlxButton;
		
		override public function create():void 
		{
			background = new FlxSprite(0, 0, BgImg);
			add(background);
			
			scroll = new FlxSprite(50, 50, layeredPaperImg);
			add(scroll);
			
			scrollText1 = new FlxText(90, 70, FlxG.width, "Your task, if you choose to accept it...");
			scrollText1.setFormat(null, 28, 0x000000);
			add(scrollText1);
			
			index = randomiseIndex();
			
			scrollText2 = new FlxText(130, 120, FlxG.width, getTaskText());
			scrollText2.setFormat(null, 20, 0x000000);
			add(scrollText2);
			
			scrollText3 = new FlxText(160, 160, FlxG.width, getTaskInfoText());
			scrollText3.setFormat(null, 14, 0x000000);
			add(scrollText3);
			
			scrollText4 = new FlxText(160, 270, FlxG.width, ("Worth: " + getPointsValue() + " points."));
			scrollText4.setFormat(null, 20, 0x000000);
			add(scrollText4);
			
			acceptButton = new FlxButton(150, 310, "Accept", acceptPressed);
			acceptButton.color = 0xff00ff00;
			acceptButton.loadGraphic(buttonTallImg);
			acceptButton.label = new FlxText(0, 0, FlxG.width, "Accept");
			acceptButton.label.setFormat(null, 24, 0xff000000);
			acceptButton.labelOffset = new FlxPoint(50, 25);
			add(acceptButton);
			
			declineButton = new FlxButton(365, 310, "Decline", declinePressed);
			declineButton.color = 0xff0000;
			declineButton.loadGraphic(buttonTallImg);
			declineButton.label = new FlxText(0, 0, FlxG.width, "Decline");
			declineButton.label.setFormat(null, 24, 0xff000000);
			declineButton.labelOffset = new FlxPoint(45, 25);
			add(declineButton);
			
			backButton = new FlxButton(580, 310, "< Back", backToMain);
			backButton.loadGraphic(buttonTallImg);
			backButton.label = new FlxText(0, 0, FlxG.width, "Back");
			backButton.label.setFormat(null, 24, 0xff000000);
			backButton.labelOffset = new FlxPoint(50, 25);
			add(backButton);
		}
		
		public function randomiseIndex():int {
			var tempIndex:int = index;
			while(tempIndex == index){
				tempIndex = Math.floor(Math.random() * tasks.length);
			}
			return tempIndex;
		}
		
		public function getTaskText():String {
			return tasks[index];
		}
		
		public function getTaskInfoText():String {
			return taskInfo[index];
		}
		
		public function getPointsValue():String {
			return pointsValue[index];
		}
		
		public function acceptPressed():void {
			FlxG.switchState(new MainMenu(2));
		}
		
		public function declinePressed():void {
			index = randomiseIndex();
			scrollText2.text = getTaskText();
			scrollText3.text = getTaskInfoText();
			scrollText4.text = "Worth: " + getPointsValue() + " points.";
		}
		
		public function backToMain():void {
			FlxG.switchState(new MainMenu(2));
		}
	}

}