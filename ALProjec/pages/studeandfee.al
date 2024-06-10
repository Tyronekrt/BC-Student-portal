page 50134 "Karu Student Portal"
{
    PageType = card;
    SourceTable = "Student"; // Assuming this table holds the student records
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Karu Student Portal';

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field("Reg. No"; Rec."Student Reg.No")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
                // Add other student fields as needed
            }

            part(FeePaymentList; "Fee Payment List")
            {
                ApplicationArea = All;
                SubPageLink = "Student Reg. No" = field("Student Reg.No");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("New Fee Payment")
            {
                ApplicationArea = All;
                Caption = 'New Fee Payment';
                Image = New;

                trigger OnAction()
                var
                    FeePaymentRec: Record "Fee Payment";
                begin
                    FeePaymentRec.Init();
                    FeePaymentRec."Student Reg. No" := Rec."Student Reg.No";
                    PAGE.RunModal(PAGE::"Fee Payment Card", FeePaymentRec);
                end;

            }
        }
    }
}
