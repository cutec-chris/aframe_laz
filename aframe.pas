unit aframe;

{$mode objfpc}{$H+}
{$modeswitch externalclass}

interface

uses
  js,web;

type
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

