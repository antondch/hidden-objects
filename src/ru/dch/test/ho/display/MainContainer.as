/**
 * User: Jessie
 * Date: 23.02.13
 * Time: 20:58
 */
package ru.dch.test.ho.display
{
import mx.controls.Alert;
import mx.core.UIComponent;

public class MainContainer extends UIComponent
{
    public function alert(text:String):void
    {
        Alert.show(text);
    }
}
}
