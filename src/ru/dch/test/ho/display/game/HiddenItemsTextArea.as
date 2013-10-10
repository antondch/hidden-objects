/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 2:06
 */
package ru.dch.test.ho.display.game
{
import spark.components.TextArea;

public class HiddenItemsTextArea extends TextArea
{
    [PostConstruct]
    public function init():void
    {
        this.editable = false;
        this.setStyle("contentBackgroundAlpha",0);
    }
}
}
