table 50117 "Course"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course ID"; Text[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Course Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Description"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Credits"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Stage Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Stage Code';
        }
    }
    fieldgroups
    {
        fieldgroup(Details; "Course ID", "Course Name")
        {
        }
    }
    // keys
    // {
    //     key(PK; "Course ID")
    //     {
    //         Clustered = true;
    //     }
    // }
}
