package arcane.fn
{
	public function negate(fn:Function):Function
	{
		return function (...args):Boolean
		{
			return !fn.apply(null, args);
		}
	}
}