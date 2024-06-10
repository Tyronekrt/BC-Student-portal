// codeunit 50133 "Unit Registration Management"
// {
//     Subtype = Normal;

//     procedure RegisterUnit(StudentID: Code[20]; CourseID: Code[20]; UnitID: Code[20])
//     var
//         CourseEnrollment: Record "Enrollment";
//     begin
//         // Check if the enrollment already exists
//         if CourseEnrollment.Get(StudentID, CourseID, UnitID) then begin
//             Message('The student is already enrolled in this unit.');
//         end else begin
//             CourseEnrollment.Init();
//             CourseEnrollment."Student Reg.No" := StudentID;
//             CourseEnrollment."Course ID" := CourseID;
//             // CourseEnrollment."Unit ID" := UnitID;
//             CourseEnrollment."Enrollment Date" := Today;
//             CourseEnrollment.Insert(true);

//             Message('Unit %1 registered for Student %2 in Course %3', UnitID, StudentID, CourseID);
//         end;
//     end;
// }
codeunit 50112 SampleData
{
    trigger OnRun()
    var
        UnitRec: Record Unit;
    begin
        // Insert sample units
        UnitRec.Init();
        UnitRec."Unit Code" := 'COM 120';
        UnitRec."Stage Code" := 'Introduction to Computing';
        UnitRec.Insert();

        UnitRec.Init();
        UnitRec."Unit Code" := 'COM 121';
        UnitRec."Stage Code" := 'Data Structures';
        UnitRec.Insert();

        // Repeat for other units...
    end;
}
