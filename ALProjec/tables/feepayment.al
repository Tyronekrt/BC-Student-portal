table 50130 "Fee Payment"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
        }
        field(2; "Student Reg. No"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Student."Student Reg.No";
            // trigger OnValidate()
            // var
            //     myInt: Integer;
            // begin
            //    "Student Reg. No" 
            // end;

        }
        field(3; "Payment Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(4; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(5; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
