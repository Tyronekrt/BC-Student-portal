report 50100 "fee payment report"
{
    ApplicationArea = All;
    Caption = 'fee payment report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'fee payment.RDL';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(FeePayment; "Fee Payment")
        {
            column(Amount; Amount)
            {
            }
            column(Description; Description)
            {
            }
            column(EntryNo; "Entry No.")
            {
            }
            column(StudentRegNo; "Student Reg. No")
            {
            }
            column(PaymentDate; "Payment Date")
            {
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
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
