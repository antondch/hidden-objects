/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 1:50
 */
package ru.dch.test.ho.services
{
import flash.geom.Point;

import org.robotlegs.mvcs.SignalCommand;

import ru.dch.test.ho.config.GameConfigModel;

import ru.dch.test.ho.gamedata.GameDataModel;
import ru.dch.test.ho.items.HiddenItem;
import ru.dch.test.ho.logger.ILogger;

public class ParseGameDataCommand extends SignalCommand
{
    [Inject]
    public var xml:XML;
    [Inject]
    public var gameData:GameDataModel;
    [Inject]
    public var gameConfig:GameConfigModel;
    [Inject]
    public var logger:ILogger;

    override public function execute():void
    {
        var items:Vector.<HiddenItem> = new Vector.<HiddenItem>();

        gameData.roomBgUrl = xml.attribute("bg");

        for each(var item:XML in xml.*)
        {
            var places:Vector.<Point> = new Vector.<Point>();
            for each(var place:XML in item.*)
            {
                places.push(new Point(place.attribute("x"), place.attribute("y")));
            }
            var hiddenItem:HiddenItem = new HiddenItem(item.attribute("caption"), gameConfig.assetsPath+item.attribute("image"), places);
            items.push(hiddenItem);
        }

        gameData.hiddenObjects = items;
    }
}
}
