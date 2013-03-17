/**
 *
 * Copyright 2012(C) by Piotr Kucharski.
 * email: suspendmode@gmail.com
 * mobile: +48 791 630 277
 *
 * All rights reserved. Any use, copying, modification, distribution and selling of this software and it's documentation
 * for any purposes without authors' written permission is hereby prohibited.
 *
 */
package
{
	import flash.display.Sprite;
	
	import starling.core.Starling;
	import starling.display.Stage;
	
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.api.LogLevel;
	import robotlegs.bender.framework.impl.Context;
	import robotlegs.extensions.starling.StarlingExtension;

	/**
	 *
	 * @author suspendmode@gmail.com
	 *
	 */
	public class starling_extension_example extends Sprite
	{
		///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

		private var context:IContext;

		public function starling_extension_example()
		{
			context=new Context();
			context.install(StarlingExtension);
			context.install(MVCSBundle);
            context.configure(new ContextView(this));
			context.logLevel=LogLevel.DEBUG;
			context.initialize(onInitialize);
		}

		private function onInitialize():void
		{
			var starling:Starling=context.injector.getInstance(Starling);			
			trace(starling);
		}

		///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	}
}
