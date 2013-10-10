/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 0:48
 */
package ru.dch.test.ho.display.game
{
import flash.events.MouseEvent;

import org.osflash.signals.Signal;
import org.robotlegs.mvcs.Mediator;

import ru.dch.test.ho.config.GameConfigModel;

import ru.dch.test.ho.gamedata.GameDataModel;
import ru.dch.test.ho.items.HiddenItem;

public class GameViewMediator extends Mediator
{
    [Inject]
    public var gameView:GameView;
    [Inject]
    public var gameData:GameDataModel;
    [Inject]
    public var gameConfig:GameConfigModel;
    [Inject(name="game_data_updated")]
    public var gameDataUpdated:Signal;
    [Inject]
    public var itemIsFind:ItemIsFindSignal;

    override public function onRegister():void
    {
        gameDataUpdated.add(updateHiddenObjects);
    }

    public function updateHiddenObjects():void
    {
        for (var i:int = gameView.numChildren; i > 0; i--)
        {
            if (gameData.hiddenObjects.indexOf(gameView.getChildAt(i-1)) < 0)
            {
                gameView.removeChildAt(i - 1);
            }
        }

        for each(var item:HiddenItem in gameData.hiddenObjects)
        {
            if (!gameView.contains(item))
            {
                var placeIndex:int = Math.floor(Math.random() * (item.places.length));
                item.x = item.places[placeIndex].x;
                item.y = item.places[placeIndex].y;
                gameView.addChild(item);
                item.addEventListener(MouseEvent.CLICK, item_clickHandler);
            }
        }
    }

    private function item_clickHandler(event:MouseEvent):void
    {
        event.target.removeEventListener(MouseEvent.CLICK, item_clickHandler);
        itemIsFind.dispatch(event.target);
    }
}
}
