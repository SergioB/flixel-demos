package;

import flixel.util.FlxRandom;
import flixel.effects.particles.FlxParticle;

class Fire extends FlxParticle
{
	public function new()
	{
		super();
		
		loadGraphic("assets/fire.png", true);
		addAnimation("burn", [0, 1, 2, 3, 4, 5, 6, 7], 15, false);
		scale.set(2, 2);
		exists = false;
	}
	
	override public function update():Void
	{
		if (finished)
		{
			exists = false;
		}
	}
	
	override public function onEmit():Void
	{
		play("burn", true);
		
		if (angularVelocity == 0)
		{
			angle = 0;
		}
	}
}