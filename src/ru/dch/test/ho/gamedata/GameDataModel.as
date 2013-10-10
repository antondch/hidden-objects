/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 1:00
 */
package ru.dch.test.ho.gamedata
{
import org.osflash.signals.Signal;

import ru.dch.test.ho.items.HiddenItem;

public class GameDataModel
{
    [Inject(name="room_bg_updated")]
    public var roomBgUpdated:Signal;

    [Inject(name="game_data_updated")]
    public var gameDataUpdated:Signal;

    private var _roomBgUrl:String;

    private var _hiddenObjects:Vector.<HiddenItem>;

    public function get hiddenObjects():Vector.<HiddenItem>
    {
        return _hiddenObjects;
    }

    public function set hiddenObjects(value:Vector.<HiddenItem>):void
    {
        _hiddenObjects = value;
        gameDataUpdated.dispatch();
    }

    public function get roomBgUrl():String
    {
        return _roomBgUrl;
    }

    public function set roomBgUrl(value:String):void
    {
        _roomBgUrl = value;
        roomBgUpdated.dispatch();
    }
}
}
