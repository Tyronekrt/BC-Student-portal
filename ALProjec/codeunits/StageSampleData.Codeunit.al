// codeunit 50142 "Stage Sample Data"
// {
//     Subtype = Install;

//     trigger OnRun()
//     var
//         Stage: Record "Stage";
//     begin
//         // Sample data
//         Stage.Init();
//         Stage.Code := 'Y1S1';
//         Stage.Description := 'Year 1, Semester 1';
//         Stage.Insert();

//         Stage.Init();
//         Stage.Code := 'Y1S2';
//         Stage.Description := 'Year 1, Semester 2';
//         Stage.Insert();

//         Stage.Init();
//         Stage.Code := 'Y2S1';
//         Stage.Description := 'Year 2, Semester 1';
//         Stage.Insert();

//         Stage.Init();
//         Stage.Code := 'Y2S2';
//         Stage.Description := 'Year 2, Semester 2';
//         Stage.Insert();

//         Stage.Init();
//         Stage.Code := 'Y3S1';
//         Stage.Description := 'Year 3, Semester 1';
//         Stage.Insert();

//         Stage.Init();
//         Stage.Code := 'Y3S2';
//         Stage.Description := 'Year 3, Semester 2';
//         Stage.Insert();

//         Stage.Init();
//         Stage.Code := 'Y4S1';
//         Stage.Description := 'Year 4, Semester 1';
//         Stage.Insert();

//         Stage.Init();
//         Stage.Code := 'Y4S2';
//         Stage.Description := 'Year 4, Semester 2';
//         Stage.Insert();
//     end;
// }
