/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 0:57
 */
package ru.dch.test.ho.services
{
import org.robotlegs.mvcs.SignalCommand;

public class BuildServicesCommand extends SignalCommand
{
    override public function execute():void
    {
        injector.mapSingleton(XMLLoadedSignal);
        signalCommandMap.mapSignalClass(XMLLoadedSignal,ParseGameDataCommand);

        injector.mapSingletonOf(IGameDataReader,XMLProxyService);
    }
}
}
