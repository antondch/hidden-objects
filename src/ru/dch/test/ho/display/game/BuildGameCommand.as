/**
 * User: Jessie
 * Date: 23.02.13
 * Time: 21:06
 */
package ru.dch.test.ho.display.game
{
import org.robotlegs.mvcs.SignalCommand;

import ru.dch.test.ho.config.GameConfigModel;

import ru.dch.test.ho.display.MainContainer;

public class BuildGameCommand extends SignalCommand
{
    [Inject]
    public var mainContainer:MainContainer;
    [Inject]
    public var gameConfig:GameConfigModel;

    override public function execute():void
    {
        injector.mapSingleton(ItemIsFindSignal);
        signalCommandMap.mapSignalClass(ItemIsFindSignal, RemoveItemCommand);

        injector.mapSingleton(BGView);
        mediatorMap.mapView(BGView, BGViewMediator);

        injector.mapSingleton(GameView);
        mediatorMap.mapView(GameView, GameViewMediator);

        injector.mapSingleton(HiddenItemsTextArea);
        mediatorMap.mapView(HiddenItemsTextArea, HiddenItemsTextAreaMediator);

        var bg:BGView = injector.getInstance(BGView);
        mainContainer.addChild(bg);

        mainContainer.addChild(injector.getInstance(GameView));

        var textArea:HiddenItemsTextArea = injector.getInstance(HiddenItemsTextArea);
        textArea.width = gameConfig.gameWidth;
        textArea.height = 100;
        textArea.y = gameConfig.gameHeight - textArea.height;
        mainContainer.addChild(textArea);
    }
}
}

