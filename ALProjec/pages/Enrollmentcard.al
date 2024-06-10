page 50112 "Enrollment Card"
{
    PageType = Card;
    SourceTable = "Enrollment";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group("Enrollment Information")
            {
                field("Course Name"; Rec."Course Name")
                {
                    Editable = false;
                }
                field("Student ID"; Rec."Student Reg.No")
                {
                    ApplicationArea = All;

                    Editable = true;
                }
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;

                    Editable = true;
                }
                field("Enrollment Date"; Rec."Enrollment Date")
                {
                    Editable = true;
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
        area(Processing)
        {
            action("OK")
            {
                ApplicationArea = All;
                Caption = 'OK';
                Image = Action;

                trigger OnAction()
                begin

                    EXIT;
                end;
            }
            action("Cancel")
            {
                ApplicationArea = All;
                Caption = 'Cancel';
                Image = Cancel;

                trigger OnAction()
                begin
                    EXIT;
                end;
            }
        }
    }
}
