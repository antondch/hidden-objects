/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 3:14
 */
package ru.dch.test.ho.display.alert
{
import flash.events.MouseEvent;

import org.osflash.signals.Signal;

import org.robotlegs.mvcs.Mediator;

public class GameOverAlertMediator extends Mediator
{
    [Inject]
    public var alertView:GameOverAlert;
    [Inject(name="restart")]
    public var restartSignal:Signal;

    override public function onRegister():void
    {
        alertView.closeButton.addEventListener(MouseEvent.CLICK, clickHandler);
        alertView.restartBtn.addEventListener(MouseEvent.CLICK, clickHandler);
    }

    override public function onRemove():void
    {
        alertView.closeButton.removeEventListener(MouseEvent.CLICK, clickHandler);
        alertView.restartBtn.removeEventListener(MouseEvent.CLICK, clickHandler);
    }

    private function clickHandler(event:MouseEvent):void
    {
        restartSignal.dispatch();
        mediatorMap.removeMediatorByView(alertView);
    }
}
}
