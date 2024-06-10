page 50132 "Fee Payment Card"
{
    PageType = Card;
    SourceTable = "Fee Payment";
    Caption = 'Fee Payment Card';

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Reg. No"; Rec."Student Reg. No")
                {
                    ApplicationArea = All;
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ApplicationArea = All;
                }
                field("Amount"; Rec."Amount")
                {
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
