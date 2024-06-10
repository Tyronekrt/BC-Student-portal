page 50121 "Student List"
{
    PageType = List;
    SourceTable = "Student";
    UsageCategory = Administration;
    ApplicationArea = All;
    CardPageId = "Student Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Student Reg.No"; Rec."Student Reg.No")
                {
                }
                field("Name"; Rec."Name")
                {
                }
                // field("Last Name"; Rec."Last Name")
                // {
                // }
                field("Email"; Rec."Email")
                {
                }
                field("Phone"; Rec."Phone")
                {
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
                Caption = 'New Student';
                Image = New;

                trigger OnAction()
                begin
                    CreateNewRecord();
                end;
            }
        }
    }

    local procedure CreateNewRecord()
    var
        StudentRec: Record "Student";
    begin
        StudentRec.Init();
        if PAGE.RunModal(PAGE::"Student Card", StudentRec) = ACTION::OK then begin
            StudentRec.Insert();
        end;
    end;
}
