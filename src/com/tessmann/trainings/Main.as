package com.tessmann.trainings
{
	import flash.desktop.NativeApplication;
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.text.TextField;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.DEACTIVATE, deactivate);
			
			// touch or gesture?
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			
			// entry point
			
			// new to AIR? please read *carefully* the readme.txt files!
			
			var s:Sprite = new Sprite();
			s.graphics.clear();
			s.graphics.beginFill(0x0000FF);
			s.graphics.drawRect(0, 0, 200, 200);
			s.graphics.endFill();
			
			s.x = s.y = 100;
			
			addChild(s);
			
			var t:TextField = new TextField();
			t.width = 200;
			t.height = 32;
			t.text = "This is a test1";
			t.x = 100;
			t.y = 68;
			
			addChild(t);
		}
		
		private function deactivate(e:Event):void 
		{
			// make sure the app behaves well (or exits) when in background
			//NativeApplication.nativeApplication.exit();
		}
		
	}
	
}