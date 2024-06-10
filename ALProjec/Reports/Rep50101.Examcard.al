report 50101 "Exam Card"
{
    ApplicationArea = All;
    Caption = 'Exam Card';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Exam Card.RDL';

    dataset
    {
        dataitem(UnitRegistration; "Unit Registration")
        {
            column(StudentNo; "Student Reg.No")
            {
            }

            column(UnitID; "Unit ID")
            {
            }


            dataitem(Student; "Student")
            {
                DataItemLink = "Student Reg.No" = field("Student Reg.No");

                column(StudentName; Name)
                {
                }
                column(Image; Image)
                {

                }
            }

            dataitem(Unit; "Unit")
            {
                DataItemLink = "Unit Code" = field("Unit ID");

                column(UnitName; Name)
                {
                }
                column(CourseID; "Course ID")
                {
                }
            }

            dataitem(Stage; "Stage")
            {
                DataItemLink = "Code" = field("Stage Code");

                column(StageDescription; Description)
                {
                }

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(StageCodeFilter; Stage.Code)
                    // {
                    //     ApplicationArea = All;
                    //     ToolTip = 'Filter by Stage Code';
                    // }

                    // field(UnitCodeFilter; Unit."Unit Code")
                    // {
                    //     ApplicationArea = All;
                    //     ToolTip = 'Filter by Unit Code';
                    // }
                }
            }
        }

        actions
        {
        }
    }

    // trigger OnPreReport()
    // begin
    //     // Initialize any data or variables if necessary
    // end;

    // trigger OnPostReport()
    // begin
    //     // Finalize any processes if necessary
    // end;
}
