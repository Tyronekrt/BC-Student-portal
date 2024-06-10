page 50140 "Unit List Part"
{
    PageType = ListPart;
    SourceTable = Unit;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Unit Code"; Rec."Unit code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the unit.';
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the unit.';
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the unit.';
                }

                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the registration date of the unit.';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(RegisterUnit)
            {
                ApplicationArea = All;
                Caption = 'Register Unit';
                ToolTip = 'Registers the selected unit for the course.';

                trigger OnAction()
                var
                    RegistrationRec: Record "Unit Registration";
                begin
                    RegistrationRec.Init();
                    RegistrationRec."Course ID" := Rec."Course ID";
                    RegistrationRec."Unit ID" := Rec."Unit code";
                    RegistrationRec.Insert();
                    Message('Unit %1 has been registered for Course %2.', Rec."Unit code", Rec."Course ID");
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        // Code to filter the units based on the course code if needed
    end;

    procedure SetRecFilter(CourseMappingRec: Record "Course Mapping")
    begin
        CurrPage.SetTableView(CourseMappingRec);
    end;
}
