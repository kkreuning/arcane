package arcane.utils.number
{
	/** Snap a given number to the nearest step. Allows for offsetting from an optional origin value. */
	public function snap(n:Number, step:Number = 1, origin:Number = 0):Number
	{
		return origin + (round(n / step) * step);
	}
}