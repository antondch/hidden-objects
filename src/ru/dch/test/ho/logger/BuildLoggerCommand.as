/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 3:09
 */
package ru.dch.test.ho.logger
{
import org.robotlegs.mvcs.Command;

public class BuildLoggerCommand extends Command
{
    override public function execute():void
    {
        injector.mapSingletonOf(ILogger,Logger);
    }
}
}
