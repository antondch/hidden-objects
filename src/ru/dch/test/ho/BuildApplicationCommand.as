/**
 * User: Jessie
 * Date: 23.02.13
 * Time: 21:02
 */
package ru.dch.test.ho
{
import org.osflash.signals.Signal;
import org.robotlegs.mvcs.SignalCommand;

import ru.dch.test.ho.config.BuildConfigCommand;
import ru.dch.test.ho.display.BuildDisplayCommand;
import ru.dch.test.ho.display.alert.BuildAlertCommand;
import ru.dch.test.ho.gamedata.BuildGameDataCommand;
import ru.dch.test.ho.logger.BuildLoggerCommand;
import ru.dch.test.ho.services.BuildServicesCommand;

public class BuildApplicationCommand extends SignalCommand
{
    override public function execute():void
    {
        var restart:Signal = new Signal();
        injector.mapValue(Signal,restart,"restart");
        signalCommandMap.mapSignal(restart,StartGameCommand);

        commandMap.execute(BuildLoggerCommand);
        commandMap.execute(BuildGameDataCommand);
        commandMap.execute(BuildConfigCommand);
        commandMap.execute(BuildServicesCommand);
        commandMap.execute(BuildDisplayCommand);
        commandMap.execute(BuildAlertCommand);

        commandMap.execute(StartGameCommand);
    }
}
}
