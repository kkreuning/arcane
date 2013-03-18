package arcane.utils.number
{
	/** Round a given number to the nearest whole value. */
	public function round(x:Number):Number
	{
		// TODO: Optimize using a bit operation
		
		// Delegate to Math.round
		return Math.round(x);
	}
}