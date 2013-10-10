/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 2:38
 */
package ru.dch.test.ho.display
{
import mx.managers.PopUpManager;

import org.robotlegs.mvcs.Command;

import ru.dch.test.ho.display.alert.GameOverAlert;

public class ShowAlertCommand extends Command
{
    [Inject]
    public var mainContainer:MainContainer;
    [Inject]
    public var text:String;
    [Inject]
    public var alertView:GameOverAlert;

    override public function execute():void
    {
        PopUpManager.addPopUp(alertView,mainContainer,true);
        PopUpManager.centerPopUp(alertView);
        mediatorMap.createMediator(alertView);
    }
}
}
