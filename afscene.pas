unit afscene;

{$mode objfpc}{$H+}

interface

uses
  aframe,web,js, threejs;

type
  TAFBaseSceneObject = class;

  { TAFScene }

  TAFScene = class
  private
    FDom : TJSElement;
  public
    constructor Create;
    procedure Add(Element : TAFBaseSceneObject);
  end;

  { TAfElement }

  { TAFBaseSceneObject }

  TAFBaseSceneObject = class
  private
    FDom : TJSAEntinity;
    function GetThreeJSObject: TJSobject3D;
  public
    constructor Create(typ: string);
    property object3D : TJSobject3D read GetThreeJSObject;
    procedure Add(Element : TAFBaseSceneObject);
  end;

implementation

{ TAfElement }

function TAFBaseSceneObject.GetThreeJSObject: TJSobject3D;
begin
  Result := FDom.object3D;
end;

constructor TAFBaseSceneObject.Create(typ: string);
begin
  FDom := TJSAEntinity(document.createElement('a-'+typ));
end;

procedure TAFBaseSceneObject.Add(Element: TAFBaseSceneObject);
begin
  FDom.appendChild(Element.FDom);
end;

{ TAFScene }

constructor TAFScene.Create;
begin
  FDom := document.createElement('a-scene');
  Document.body.appendChild(FDom);
end;

procedure TAFScene.Add(Element: TAFBaseSceneObject);
begin
  FDom.appendChild(Element.FDom);
end;

end.

