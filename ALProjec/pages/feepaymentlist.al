page 50131 "Fee Payment List"
{
    PageType = List;
    SourceTable = "Fee Payment";
    Caption = 'Fee Payment List';
    CardPageId = "Fee Payment Card";
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
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

    actions
    {
        area(Processing)
        {
            action("New Payment")
            {
                ApplicationArea = All;
                Caption = 'New Payment';
                Image = New;

                trigger OnAction()
                begin
                    PAGE.RunModal(PAGE::"Fee Payment Card");
                end;
            }
        }
    }
}
