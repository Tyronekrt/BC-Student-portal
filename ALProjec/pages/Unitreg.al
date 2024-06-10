page 50136 "Unit Registration"
{
    PageType = List;
    SourceTable = "Unit";
    UsageCategory = Administration;
    ApplicationArea = All;
    Editable = true; // Allow inline editing on the list

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Stage Code"; Rec."Stage Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the stage code for the registration.';
                    Editable = true; // Allow editing of this field
                }
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the course ID for the registration.';
                    Editable = true; // Allow editing of this field
                }
                field("Unit ID"; Rec."Unit code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit ID for the registration.';
                    Editable = true; // Allow editing of this field
                }
                field("Unit Description"; Rec."Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit description.';
                    Editable = true; // Allow editing of this field
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the registration date.';
                    Editable = true; // Allow editing of this field
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(New)
            {
                ApplicationArea = All;
                Caption = 'New';
                Promoted = true;
                PromotedCategory = New;
                Image = New;
                ToolTip = 'Create a new unit registration.';
                trigger OnAction()
                begin
                    Rec.Init();
                    Rec.Insert(true);
                    CurrPage.Update(false);
                end;
            }

            action(Delete)
            {
                ApplicationArea = All;
                Caption = 'Delete';
                Promoted = true;
                PromotedCategory = Process;
                Image = Delete;
                ToolTip = 'Delete the selected unit registration.';
                trigger OnAction()
                begin
                    if not Rec.IsEmpty() then
                        Rec.Delete();
                    CurrPage.Update(false);
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        // Ensure the filter is set properly when the page opens
        Rec.SetRange("Stage Code", Rec."Stage Code");
    end;

    procedure SetRecFilter(SelectedRec: Record "Stage")
    begin
        Rec.SetRange("Stage Code", SelectedRec.Code);
    end;
}
