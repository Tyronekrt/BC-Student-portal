page 50120 "Student Card"
{
    Caption = 'Student Card';
    PageType = Card;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Registration Number"; Rec."Student Reg.No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration Number field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field(YOS; Rec.YOS)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Year of Study field.';
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Grade field.';
                }
                field("County Residence"; Rec."County Residence")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the County Residence field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email of the student';
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the phone number of the student';
                }
            }
            group("Other details")
            {
                Caption = 'Other details';

                field("Fee Amount"; Rec."Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount of fees paid';
                    Editable = false;
                }
                field("Fee report"; Rec."Fee report")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the fee receipts';
                }
                field("Academic transcripts"; Rec."Academic transcripts")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the fee receipts';
                }
                field("Course name"; Rec."Course name")
                {
                    ApplicationArea = All;
                    TableRelation = Course."Course Name";
                    ToolTip = 'Specifies the fee receipts';
                }
            }
        }
    }


}
