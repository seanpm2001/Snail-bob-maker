// Start of script
// Import LIBrary section
import flash.utils.Timer;
import flash.events.TimerEvent;
import flash.events.MouseEvent;
// Startup text
var startupText:String = "Snail Bob Maker Startup";
var startupText2:String = "Booting in Legacy mode (ActionScript 2.0 - Pre-Adobe");
// Output startup text
trace(startupText);
trace(startupText2);
// Game score
var scoreMax = 300;
var scoreMin = 1;
var score = 300;
// Game score function
function gameScore {
	var timer:Timer = new Timer(30000,0);
	timer.addEventListener(TimerEvent.TIMER,fGo);
	timer.start();
	function fGo(evt:TimerEvent)
	{
		timer.removeEventListener(TimerEvent.TIMER,fGo);
		gotoAndStop(2);
	}
	symbol_mc.addEventListener(MouseEvent.MOUSE_OVER,fStop);
	symbol_mc.addEventListener(MouseEvent.MOUSE_OUT,fReset);
	function fStop(evt:MouseEvent)
	{
		timer.removeEventListener(TimerEvent.TIMER,fGo);
	}
	function fReset(evt:MouseEvent)
	{
		timer.reset();
		timer.start();
		timer.addEventListener(TimerEvent.TIMER,fGo);
	}
	var timerScore:int(timer / 100);
}
// Source: https://community.adobe.com/t5/animate/time-in-actionscript/td-p/3350631?page=1
// Quit
var quitText:String = "Quitting Snail Bob Maker";
trace(quitText)
stop;
/* File info
* File type: ActionScript 2 script (*.as)
* File version: 1 (Friday, September 11th 2020 at 2:43 pm)
* Line count: 61
*/
/* Notice:
* I am new to ActionScript, and I may never fully develop the skillset, as the language is becoming obsolete
* I am using the language for legacy purposes, and I will provide an alternate way of playing this game
*/
/* NOTICE:
* Adobe Flash end of life:
* On December 31st 2020, Adobe will end support for Adobe Flash. Adobe Flash has been discontinued in favor of other technologies such as HTML5
* Many web browsers have already started to end support, including Mozilla Firefox, Google Chrome, Apple Safari, Microsoft Edge, etc.
* Adobe Flash has been in decline since 2010. The announcement of the end of life came from Adobe in July of 2017.
*/
// End of script
