package led;

class Level {
	public var identifier : String;
	public var pxWid : Int;
	public var pxHei : Int;
	var _layers : Array<Layer>;

	public function new(json:led.JsonTypes.LevelJson) {
		identifier = json.identifier;
		pxWid = json.pxWid;
		pxHei = json.pxHei;
		_layers = [];
		for(json in json.layerInstances)
			_layers.push( _instanciateLayer(json) );
	}

	function _instanciateLayer(json:led.JsonTypes.LayerInstJson) : led.Layer {
		return null; // overriden from the Macros
	}
}
