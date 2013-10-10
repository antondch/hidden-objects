/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 1:50
 */
package ru.dch.test.ho.display.game
{
import org.robotlegs.mvcs.SignalCommand;

import ru.dch.test.ho.gamedata.GameDataModel;

import ru.dch.test.ho.items.HiddenItem;

public class RemoveItemCommand extends SignalCommand
{
    [Inject]
    public var item:HiddenItem;
    [Inject]
    public var gameData:GameDataModel;

    override public function execute():void
    {
        gameData.hiddenObjects.splice(gameData.hiddenObjects.indexOf(item),1);
        gameData.gameDataUpdated.dispatch();
        trace(gameData.hiddenObjects.length);
    }
}
}
