table 50108 "Course Mapping"
{
    DataClassification = ToBeClassified;
    Caption = 'Course Mapping';

    fields
    {
        field(1; "Stage Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Stage Code';
        }

        field(2; "Course Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course Code';
        }
    }

    keys
    {
        key(PK; "Stage Code", "Course Code")
        {
            Clustered = true;
        }
    }
}
