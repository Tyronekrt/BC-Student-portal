table 50111 "Unit table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Unit Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Unit Code")
        {
            Clustered = true;
        }
    }
}
