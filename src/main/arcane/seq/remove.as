package arcane.seq
{
	import arcane.fn.negate;
	
	public function remove(iterable:Object, pr:Function):Array 
	{
		return filter(iterable, negate(pr));
	}
}