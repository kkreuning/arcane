package arcane.seq
{
	public function filter(iterable:Object, pr:Function):Array 
	{
		var result:Array = [];
		
		for each (var item:Object in iterable)
		{
			if (pr(item))
			{
				result[result.length] = item;
			}
		}
		
		return result;
	}
}