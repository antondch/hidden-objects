/**
 * User: Jessie
 * Date: 23.02.13
 * Time: 21:05
 */
package ru.dch.test.ho.display.game
{
import flash.display.Loader;
import flash.net.URLRequest;

public class BGView extends Loader
{
    public function setBackGround(url:String):void
    {
        load(new URLRequest(url));
    }
}
}
