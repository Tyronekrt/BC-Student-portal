// codeunit 50104 "Unit Populate"
// {
//     Subtype = Test;

//     procedure PopulateUnitsForY1S2()
//     var
//         StageRec: Record "Stage";
//         CourseRec: Record "Course";
//         UnitRec: Record "Unit";
//         UnitNames: Array[8] of Text[30]; // Adjusted the text size to 30
//         i: Integer;
//     begin
//         // Assign unit names for Y1S2
//         UnitNames[1] := 'Com 121';
//         UnitNames[2] := 'Com 122';
//         UnitNames[3] := 'Com 123';
//         UnitNames[4] := 'Com 124';
//         UnitNames[5] := 'Com 125';
//         UnitNames[6] := 'Com 126';
//         UnitNames[7] := 'Com 127';
//         UnitNames[8] := 'Com 128';

//         // Find Y3S2 stage
//         if StageRec.Get('Y1S2') then begin
//             // Find Computer Science course
//             if CourseRec.Get('P101') then begin
//                 // Insert units for Y3S2 of Computer Science course
//                 for i := 1 to 8 do begin
//                     UnitRec.Init();
//                     UnitRec."Unit code" := 'GenerateUnitCode'; // You need to define a function to generate a unique unit ID
//                     UnitRec."Stage Code" := StageRec.Code;
//                     UnitRec."Stage Code" := CourseRec."Course ID";
//                     UnitRec.Name := UnitNames[i];
//                     UnitRec.Insert();
//                 end;
//             end;
//         end;
//     end;

//     // Define any helper functions here
// }
