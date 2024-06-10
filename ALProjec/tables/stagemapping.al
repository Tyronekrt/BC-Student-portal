table 50109 "Stage Mapping"
{
    DataClassification = ToBeClassified;
    Caption = 'Stage Mapping';

    fields
    {
        field(1; "Stage Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Stage Code';
        }

        field(2; "Related Stage Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Related Stage Code';
        }
    }

    keys
    {
        key(PK; "Stage Code", "Related Stage Code")
        {
            Clustered = true;
        }
    }
}
