package code {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class brick extends MovieClip {
		
		var ended:Boolean; 
		
		public function brick() {
			// constructor code
			trace("brick Created"); 
			stop(); 
			ended = false; 
			addEventListener(MouseEvent.CLICK, clickBreak); 
			addEventListener(Event.ENTER_FRAME, onEnter); 
		}
		
		public function onEnter(event:Event):void
		{
			if(this.currentFrame == 13 && !ended)
			{
				trace("got to end");
				stop(); 
				ended = true; 
			}
		}
		
		public function clickBreak(event:MouseEvent):void
		{
			play(); 
		}
	}
	
}