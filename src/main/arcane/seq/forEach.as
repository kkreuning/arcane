package arcane.seq
{
	public function forEach(iterable:Object, fn:Function):void
	{
		for each (var item:Object in iterable)
		{
			fn(item);
		}
	}
}