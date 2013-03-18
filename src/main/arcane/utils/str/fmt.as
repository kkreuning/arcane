package arcane.utils.str
{
	/** Formats a given string with given replacements.
	 *
	 * Unreplaced tokens will be left in as is.
	 * 
	 * The default replacement pattern is {\w+?}
	 * 
	 * Examples:
	 * 
	 * fmt('hello {what}', {what: 'world'});	// hello world
	 * fmt('to {0}, or not te {1}', ['be', 'be']);	// to be or not to be
	 */
	public function fmt(str:String, replacements:Object, pattern:RegExp = null):String
	{
		// Internal function used by String.replace
		const replace:Function = function(match:String, ...captures):String
		{
			const key:Object = captures[0];
			
			if (key in replacements)
			{
				return replacements[key];
			}
			
			// In case of no replacement, fallback so the match is left in place
			return match;
		};
		
		return str.replace(pattern || PATTERN, replace);
	}
}

// Alphanumeric characters and underscores surrounded by braces, braces are not captured
const PATTERN:RegExp = /{(\w+?)}/g;