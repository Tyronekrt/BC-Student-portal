page 50101 Cuepage
{
    Caption = 'Cuepage';
    PageType = CardPart;
    SourceTable = cuetable;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                Caption = 'Number of students';

                field("No. Students"; Rec."No of Students")
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}
