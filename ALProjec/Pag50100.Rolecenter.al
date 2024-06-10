page 50100 Karu
{
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            group(group1)
            {
                part(Headlines; "My own headline")
                {
                    ApplicationArea = All;

                }
                part(cue; "Cuepage")
                {
                    ApplicationArea = All;
                }
            }


        }
    }


    actions
    {
        area(Sections)
        {
            group(Dashboard)
            {

                action("&Students")
                {
                    ApplicationArea = All;
                    RunObject = page "Student List";

                }
                action("&Course")
                {
                    ApplicationArea = All;
                    RunObject = page "Course list";
                }
                action("&Enrollment")
                {
                    ApplicationArea = All;
                    RunObject = page "Enrollment List";
                }

            }
            group(Financials)
            {
                action("&Fee payment")
                {
                    ApplicationArea = All;
                    RunObject = page "Fee Payment List";
                }
                action("&Fee payment report")
                {
                    ApplicationArea = All;
                    RunObject = report "fee payment report";
                }
                action("&Receipts")
                {
                    ApplicationArea = All;
                    // RunObject = "Academics list";
                }
            }
            group(Academics)
            {
                action("&Unit registration")
                {
                    ApplicationArea = All;
                    RunObject = page "Stage list";
                }

                action("&Exam cards")
                {
                    ApplicationArea = All;
                    RunObject = Report "Exam card";
                }
                action("&Provisional transcripts")
                {
                    ApplicationArea = All;
                    // RunObject = "Academics list";
                }

            }
            group("Special Exams")
            {
                action("&Supplimentary Exams")
                {
                    ApplicationArea = All;
                    // RunObject = "Library List";
                }

            }
            group("Settings")
            {
                action("&Change password")
                {
                    ApplicationArea = All;
                    //  RunObject = "Stage list";
                }

            }
            group("Periodic Activities")
            {
                action("&Lecture Evaluation")
                {
                    ApplicationArea = All;
                    // RunObject = "Library List";
                }
                action("&KarU Election")
                {
                    ApplicationArea = All;
                    // RunObject = "Library List";
                }

            }
        }
    }
}
profile Students
{
    ProfileDescription = 'sample profile';
    RoleCenter = "Karu";
    Caption = 'Students';
}

