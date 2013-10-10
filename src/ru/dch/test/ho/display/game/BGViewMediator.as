/**
 * User: Jessie
 * Date: 23.02.13
 * Time: 21:07
 */
package ru.dch.test.ho.display.game
{
import org.osflash.signals.Signal;
import org.robotlegs.mvcs.Mediator;

import ru.dch.test.ho.config.GameConfigModel;

import ru.dch.test.ho.gamedata.GameDataModel;

public class BGViewMediator extends Mediator
{
    [Inject]
    public var bgView:BGView;

    [Inject]
    public var gameData:GameDataModel;

    [Inject]
    public var config:GameConfigModel;

    [Inject(name="room_bg_updated")]
    public var roomBgUpdated:Signal;

    override public function onRegister():void
    {
        roomBgUpdated.add(updateBackGround);
    }

    private function updateBackGround():void
    {
        bgView.setBackGround(config.assetsPath+gameData.roomBgUrl);
    }
}
}
