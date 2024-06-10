table 50101 cuetable
{
    Caption = 'Activities';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[50])
        {
            Caption = 'primary key';
        }
        field(2; "No of Students"; Integer)
        {
            Caption = 'No of students';
            FieldClass = FlowField;
            CalcFormula = count(Student);
        }
    }


    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }
}
