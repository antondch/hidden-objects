/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 1:38
 */
package ru.dch.test.ho.config
{
import org.robotlegs.mvcs.Command;

public class BuildConfigCommand extends Command
{
    override public function execute():void
    {
        injector.mapSingleton(GameConfigModel);
    }
}
}
