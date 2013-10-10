/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 1:35
 */
package ru.dch.test.ho.config
{
public class GameConfigModel
{
    //TODO: set this value via flashVars parser.
    private var _xmlLocation:String = "./gameData.xml"
    private var _assetsPath:String = "./assets/"
    private var _gameHeight:int = 731;
    private var _gameWidth:int = 866;

    public function get xmlLocation():String
    {
        return _xmlLocation;
    }

    public function get assetsPath():String
    {
        return _assetsPath;
    }

    public function get gameHeight():int
    {
        return _gameHeight;
    }

    public function get gameWidth():int
    {
        return _gameWidth;
    }
}
}
