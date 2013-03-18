package arcane.utils.number
{
	/** Clamp a given number between the given min and max values. */
	public function clamp(n:Number, min:Number, max:Number):Number
	{
		if (n < min)
			return min;
		
		if (n > max)
			return max;
		
		return n;
	}
}