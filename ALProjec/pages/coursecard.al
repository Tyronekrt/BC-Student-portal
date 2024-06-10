page 50116 "Course Card"
{
    PageType = Card;
    SourceTable = "Course";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group("Course Information")
            {
                field("Course ID"; Rec."Course ID")
                {
                    Editable = false;
                }
                field("Course Name"; Rec."Course Name")
                {
                    Editable = true;
                }
                field("Description"; Rec."Description")
                {
                    Editable = true;
                }
                field("Credits"; Rec."Credits")
                {
                    Editable = true;
                }
            }
            part(UnitListPart; "Unit List Part")
            {
                ApplicationArea = All;
                SubPageLink = "Course ID" = FIELD("Course ID");
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
