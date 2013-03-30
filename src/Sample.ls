package
{
    import cocos2d.Cocos2DGame;
    import cocos2d.CCSprite;
    import cocos2d.ScaleMode;
    import Loom.Animation.Tween;
    import Loom.Animation.EaseType;

    import UI.Label;

    public class Sample extends Cocos2DGame
    {
        override public function run():void
        {
            // Comment out this line to turn off automatic scaling.
            layer.scaleMode = ScaleMode.LETTERBOX;

            super.run();

            // Setup anything else, like UI, or game objects.
            var bg = CCSprite.createFromFile("assets/bg.png")
            bg.x = 240;
            bg.y = 160;
            bg.scale = 0.5;
            layer.addChild(bg);
            
            var sprite = CCSprite.createFromFile("assets/logo.png");
            sprite.x = 240;
            sprite.y = 120;
            layer.addChild(sprite);

            var label = new Label("assets/Curse-hd.fnt");
            label.text = "Hello Loom!";
            label.x = 240;
            label.y = 240;
            layer.addChild(label);

            layer.onTouchBegan = function(id:int, x:int, y:int){
                Tween.to(sprite, 1, {"x" : x, "y" : y, "ease" : EaseType.EASE_OUT_ELASTIC});
            }
        }
    }
}