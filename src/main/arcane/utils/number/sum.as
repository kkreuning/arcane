package arcane.utils.number
{
	import arcane.seq.reduce;

	/** Calculates the sum of an iterable containing numbers. */
	public function sum(iterable:Object):Number
	{
		return reduce(iterable, add, 0) as Number;
	}
}