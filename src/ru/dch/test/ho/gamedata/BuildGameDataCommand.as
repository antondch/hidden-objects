/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 1:21
 */
package ru.dch.test.ho.gamedata
{
import org.osflash.signals.ISignal;
import org.osflash.signals.Signal;
import org.robotlegs.mvcs.SignalCommand;

public class BuildGameDataCommand extends SignalCommand
{
    override public function execute():void
    {
        var modelUpdatedSignal:ISignal = new Signal();
        injector.mapValue(Signal,modelUpdatedSignal,"game_data_updated");
        signalCommandMap.mapSignal(modelUpdatedSignal,CheckGameOverCommand);

        var roomBgUpdatedSignal:ISignal = new Signal();
        injector.mapValue(Signal,roomBgUpdatedSignal,"room_bg_updated");

        injector.mapSingleton(GameDataModel);
    }
}
}
