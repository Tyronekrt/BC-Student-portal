page 50104 "My own headline"
{
    PageType = HeadlinePart;
    Caption = 'my headline';

    layout
    {
        area(Content)
        {
            field(HeadlineTxt; HeadlineTxt)
            {
                ApplicationArea = All;
                trigger OnDrilldown()
                begin
                    Hyperlink('https://karu.ac.ke/');
                end;
            }
            field(Myheadline; Myheadline)
            {
                ApplicationArea = All;

            }
        }
    }

    trigger OnOpenPage()
    begin
        Myheadline := 'Good morning';
        HeadlineTxt := '<emphasize>Hi!</emphasize> Welcome to karatina university';

    end;

    var
        HeadlineTxt: Text;
        Myheadline: Text;
}
