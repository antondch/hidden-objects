/**
 * User: Jessie
 * Date: 24.02.13
 * Time: 3:04
 */
package ru.dch.test.ho.logger
{
public class Logger implements ILogger
{
    public function log(...rest):void
    {
        trace("Log:", rest);
    }

    public function error(...rest):void
    {
        trace("ERROR:", rest);
    }
}
}
