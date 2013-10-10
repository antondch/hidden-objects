/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 0:50
 */
package ru.dch.test.ho.services
{
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.net.URLLoader;
import flash.net.URLRequest;

import ru.dch.test.ho.logger.ILogger;


public class XMLProxyService implements IGameDataReader
{
    [Inject]
    public var xmlLoaded:XMLLoadedSignal;
    [Inject]
    public var logger:ILogger;

    public function getData(urlRequest:URLRequest):void
    {
        var urlLoader:URLLoader = new URLLoader(urlRequest);
        urlLoader.addEventListener(Event.COMPLETE, urlLoader_completeHandler);
        urlLoader.addEventListener(IOErrorEvent.IO_ERROR, urlLoader_ioErrorHandler);
    }

    private function urlLoader_completeHandler(event:Event):void
    {
        var xml:XML = new XML(URLLoader(event.target).data);
        xmlLoaded.dispatch(xml);
    }

    private function urlLoader_ioErrorHandler(event:IOErrorEvent):void
    {
        logger.error(this, "error loading xml file", event.text);
    }
}
}
