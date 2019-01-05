unit aframe;

{$mode objfpc}{$H+}
{$modeswitch externalclass}

interface

uses
  js,web,threejs;

type
  TJSAEntinity = Class external name 'a-entinity' (TJSElement)
  Public
    created : boolean;
    computedMixinStr : string;
    hasLoaded : boolean;
    isNode : boolean;
    mixinEls : TJSObject;
    mixinObservers : TJSObject;
    components : TJSObject;
    initializingComponents : TJSObject;
    componentsToUpdate : TJSObject;
    isEntity : boolean;
    isPlaying : boolean;
    object3D : TJSobject3D;
    object3DMap : TJSObject;
    parentEl : TJSObject;
    rotationObj : TJSObject;
    states : TJSObject;
    detached : boolean;
    attached : boolean;
    sceneEl : TJSObject;
    attachedToParent : boolean;
  end;

  TJSAFRAME = Class external name 'AFRAME'
  Public
    function AComponent(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    components : TJSObject;
    geometries : TJSObject;
    function registerComponent(arg1: JSValue;arg2: JSValue) : JSValue;
    function registerElement(arg1: JSValue;arg2: JSValue) : JSValue;
    function registerGeometry(arg1: JSValue;arg2: JSValue) : JSValue;
    function registerPrimitive(arg1: JSValue;arg2: JSValue) : JSValue;
    function registerShader(arg1: JSValue;arg2: JSValue) : JSValue;
    function registerSystem(arg1: JSValue;arg2: JSValue) : JSValue;
    primitives : TJSObject;
    scenes : TJSObject;
    schema : TJSObject;
    shaders : TJSObject;
    systems : TJSObject;
    THREE : TJSObject;
    TWEEN : TJSObject;
    utils : TJSObject;
    version : string;
  end;

var
  AFRAME : TJSAFRAME external name 'AFRAME';

implementation

end.

