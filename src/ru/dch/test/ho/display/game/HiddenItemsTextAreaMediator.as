/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 2:08
 */
package ru.dch.test.ho.display.game
{
import org.osflash.signals.Signal;
import org.robotlegs.mvcs.Mediator;

import ru.dch.test.ho.gamedata.GameDataModel;

public class HiddenItemsTextAreaMediator extends Mediator
{
    [Inject]
    public var textArea:HiddenItemsTextArea;
    [Inject]
    public var gameData:GameDataModel;
    [Inject(name="game_data_updated")]
    public var gameDataUpdated:Signal;

    override public function onRegister():void
    {
        gameDataUpdated.add(setText);
        setText();
    }

    private function setText():void
    {
        textArea.text = "";

        for (var i:int = 0; i < gameData.hiddenObjects.length; i++)
        {
            textArea.appendText(gameData.hiddenObjects[i].caption+'\n');
        }
    }
}
}
