page 50141 "Stage List"
{
    PageType = List;

    SourceTable = "Stage";
    Caption = 'Stage List';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Stage Code"; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the stage.';
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the stage.';
                }
            }

            // Add a part to display the units
            part(UnitListPart; "Unit List Part")
            {
                ApplicationArea = All;
                SubPageLink = "Stage Code" = FIELD(Code);
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
                ToolTip = 'Create a new stage record.';

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
                ToolTip = 'Delete the selected stage record.';

                trigger OnAction()
                begin
                    if not Rec.IsEmpty() then
                        Rec.Delete();
                    CurrPage.Update(false);
                end;
            }

            action("Register units")
            {
                Caption = 'Register Units';
                Image = "1099Form";
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                var
                    UnitPage: Page "Unit Registration";
                begin
                    UnitPage.SetRecFilter(Rec); // Pass the current record filter
                    UnitPage.RunModal();
                end;
            }
        }
    }
}
