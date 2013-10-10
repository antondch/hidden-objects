/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 2:34
 */
package ru.dch.test.ho.gamedata
{
import org.robotlegs.mvcs.SignalCommand;

import ru.dch.test.ho.display.ShowAlertCommand;

public class CheckGameOverCommand extends SignalCommand
{
    [Inject]
    public var gameData:GameDataModel;


    override public function execute():void
    {
        if(gameData.hiddenObjects.length==0)
        {
            commandMap.execute(ShowAlertCommand,"Поздравляем, вы выиграли!");
        }
    }
}
}
