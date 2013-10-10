/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 1:28
 */
package ru.dch.test.ho
{
import flash.net.URLRequest;

import org.robotlegs.mvcs.Command;

import ru.dch.test.ho.config.GameConfigModel;

import ru.dch.test.ho.services.IGameDataReader;

public class StartGameCommand extends Command
{
    [Inject]
    public var dataReader:IGameDataReader;
    [Inject]
    public var gameConfig:GameConfigModel;

    override public function execute():void
    {
        var xmlUrl:URLRequest = new URLRequest(gameConfig.xmlLocation);
        dataReader.getData(xmlUrl);
    }
}
}
