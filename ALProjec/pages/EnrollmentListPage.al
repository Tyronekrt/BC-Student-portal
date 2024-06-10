page 50113 "Enrollment List"
{
    PageType = List;
    SourceTable = "Enrollment";
    UsageCategory = Administration;
    ApplicationArea = All;
    CardPageId = "Enrollment Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Course Name"; Rec."Course Name")
                {
                }
                field("Student ID"; Rec."Student Reg.No")
                {
                    ApplicationArea = All;
                    Lookup = true;
                    Editable = false;
                }
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;
                    Lookup = true;
                    Editable = false;
                }
                field("Enrollment Date"; Rec."Enrollment Date")
                {
                }
                field("Stage Code"; Rec."Stage Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the stage code for the enrollment.';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("New")
            {
                ApplicationArea = All;
                Caption = 'New Enrollment';
                Image = New;

                trigger OnAction()
                begin
                    CreateNewRecord();
                    CurrPage.Editable := true;
                    Rec.Insert(true);
                    CurrPage.Update();
                end;
            }
            action(RegisterUnit)
            {
                ApplicationArea = All;
                Caption = 'Register Unit';

                trigger OnAction()
                var
                    UnitRegMgt: Codeunit "SampleData";
                begin
                    // UnitRegMgt.RegisterUnit(Rec."Student Reg.No", Rec."Course ID", Rec."Course ID");

                    // Add registration logic here
                    //Message('Unit Registered for Student %1 in Course %2', Rec."Student Reg.No", Rec."Student Reg.No");
                end;
            }
        }
    }

    local procedure CreateNewRecord()
    var
        EnrollmentRec: Record "Enrollment";
    begin
        EnrollmentRec.Init();
        if PAGE.RunModal(PAGE::"Enrollment Card", EnrollmentRec) = ACTION::OK then begin
            EnrollmentRec.Insert();
        end;
    end;
}
