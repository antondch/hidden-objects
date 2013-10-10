/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 3:25
 */
package ru.dch.test.ho.display.alert
{
import org.robotlegs.mvcs.Command;

public class BuildAlertCommand extends Command
{
    override public function execute():void
    {
        injector.mapSingleton(GameOverAlert);
        mediatorMap.mapView(GameOverAlert, GameOverAlertMediator, null, false, false);
    }
}
}
