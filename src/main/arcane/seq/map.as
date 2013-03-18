package arcane.seq
{
	public function map(iterable:Object, fn:Function):Array
	{
		var result:Array = [];
		
		for each (var item:Object in iterable)
		{
			result[result.length] = fn(item);
		}
		
		return result;
	}	
}