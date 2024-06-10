page 50142 "Exam Cards"
{
    PageType = Card;
    SourceTable = "Exam Cards";

    layout
    {
        area(content)
        {
            group("Exam Details")
            {
                field("Student ID"; Rec."Student Reg. No")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }

                field("Exam Date"; Rec."Exam Date")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}