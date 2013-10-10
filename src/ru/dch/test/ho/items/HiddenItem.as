/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 1:02
 */
package ru.dch.test.ho.items
{
import flash.display.Loader;
import flash.geom.Point;
import flash.net.URLRequest;

public class HiddenItem extends Loader
{
    private var _caption:String;
    private var _places:Vector.<Point>;
    private var _imageUrl:String;

    public function HiddenItem(caption:String,imageUrl:String, places:Vector.<Point>)
    {
        this._caption = caption;
        this._imageUrl = imageUrl;
        this._places = places;

        load(new URLRequest(imageUrl));
    }

    public function get caption():String
    {
        return _caption;
    }

    public function get places():Vector.<Point>
    {
        return _places;
    }

    public function get imageUrl():String
    {
        return _imageUrl;
    }
}
}
