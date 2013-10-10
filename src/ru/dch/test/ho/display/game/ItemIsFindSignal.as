/**
 * User: Jessie
 * Date: 26.02.13
 * Time: 1:48
 */
package ru.dch.test.ho.display.game
{
import org.osflash.signals.Signal;

import ru.dch.test.ho.items.HiddenItem;

public class ItemIsFindSignal extends Signal
{
    public function ItemIsFindSignal()
    {
        super(HiddenItem);
    }
}
}
