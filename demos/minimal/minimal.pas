program minimal;

uses sysutils, js, class2pas, afscene;

var
  Scene : TAFScene;
  Ground: TAFBaseSceneObject;
begin
  Scene := TAFScene.Create;
  Ground := TAFBaseSceneObject.Create('box');
  Ground.object3D.position.x:=5;
  Scene.Add(Ground);
end.

