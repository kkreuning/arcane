package arcane.seq
{
	public function reduce(iterable:Object, fn:Function, memo:* = undefined):*
	{
		for each (var item:Object in iterable)
		{
			memo = (memo ? fn(memo, item) : item); 
		}
		
		return memo;
	}	
}