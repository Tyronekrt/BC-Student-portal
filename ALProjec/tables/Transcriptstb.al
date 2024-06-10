table 50144 "Provisional Transcripts"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student Reg. No"; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(2; "Name"; Text[20])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Course pursuing"; Text[50])
        {
            DataClassification = CustomerContent;
        }

        field(4; "School"; Text[50])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Student Reg. No")
        {
            Clustered = true;
        }
    }
}
