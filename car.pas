(*
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*)
program carDemo;
uses sysutils;
type
   car = array[0..2] of longint;
var
   subaru:  car = (0, 0, 0);
procedure addWheels(var myCar:car; wheelsToAdd: longint);
   begin
      myCar[0]:=myCar[0]+wheelsToAdd;
   end;

procedure addDoors(var myCar:car; doorsToAdd: longint);
   begin
      myCar[1]:=myCar[1]+doorsToAdd;
   end;
procedure addCylinders(var myCar:car; cylindersToAdd: longint);
   begin
      myCar[2]:=myCar[2]+cylindersToAdd;
   end;
procedure deleteWheels(var myCar:car; wheelsToRemove: longint);
   begin
      myCar[0]:=myCar[0]-wheelsToRemove;
   end;
procedure deleteDoors(var myCar:car; doorsToRemove: longint);
   begin
      myCar[1]:=myCar[1]-doorsToRemove;
   end;
procedure deleteCylinders(var myCar:car; cylindersToRemove: longint);
   begin
      myCar[2]:=myCar[2]-cylindersToRemove;
   end;

function getWheels(var myCar:car): integer;
    var theWheels:integer;
    begin
        theWheels:=myCar[0];
    end;
function getDoors(var myCar:car): integer;
    var theDoors:integer;
    begin
        theDoors:=myCar[0];
    end;
function getCylinders(var myCar:car): integer;
    var theCylinders:integer;
    begin
        theCylinders:=myCar[0];
    end;
begin
   (* Use arrays for OOP *)
   writeln('Creating car.'); 
   subaru[0] := 4;
   subaru[1] := 4;
   subaru[2] := 4;
   writeln('Wheel check: ', subaru[0]);
   writeln('Door check: ', subaru[1]); 
   writeln('Cylinder check: ', subaru[2]); 
   writeln('');
   writeln('Adding wheel directly to car object.');
   subaru[0] := 5;
   writeln('Wheel check: ', subaru[0]);
   writeln('Door check: ', subaru[1]); 
   writeln('Cylinder check: ', subaru[2]); 
   writeln('');
   writeln('Removing wheel using object function.');
   deleteWheels(subaru, 1);
   writeln('Wheel check: ', subaru[0]);
   writeln('Door check: ', subaru[1]); 
   writeln('Cylinder check: ', subaru[2]); 
   writeln('');
   writeln('Double check wheels: ', getWheels(subaru));
   writeln('Double check doors: ', getDoors(subaru));
   writeln('Double check cylinders: ', getCylinders(subaru));
end.





