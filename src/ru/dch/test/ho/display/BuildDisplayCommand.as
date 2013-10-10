/**
 * User: Jessie
 * Date: 23.02.13
 * Time: 20:59
 */
package ru.dch.test.ho.display
{
import org.robotlegs.mvcs.Command;

import ru.dch.test.ho.config.GameConfigModel;

import ru.dch.test.ho.display.game.BuildGameCommand;

public class BuildDisplayCommand extends Command
{
    [Inject]
    public var config:GameConfigModel;
    override public function execute():void
    {
        injector.mapSingleton(MainContainer);
        var mainContainer:MainContainer = injector.getInstance(MainContainer);
        mainContainer.width = config.gameWidth;
        mainContainer.height = config.gameHeight;
        contextView.addChild(mainContainer);

        commandMap.execute(BuildGameCommand);
    }
}
}
