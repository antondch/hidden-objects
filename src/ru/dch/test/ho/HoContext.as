/**
 * User: Jessie
 * Date: 23.02.13
 * Time: 20:51
 */
package ru.dch.test.ho
{
import flash.display.DisplayObjectContainer;

import org.robotlegs.mvcs.SignalContext;

public class HoContext extends SignalContext
{
    override public function HoContext(view:DisplayObjectContainer,auto:Boolean):void
    {
        super(view,auto);
    }
    override public function startup():void
    {
          commandMap.execute(BuildApplicationCommand);
    }
}
}
