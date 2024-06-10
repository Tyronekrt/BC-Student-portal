
table 50145 "Unit"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Name"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit name';
        }

        field(2; "Unit code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit code';
        }

        field(3; "Stage Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Stage Code';
            TableRelation = "Stage".Code;
        }

        field(4; "Course ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course ID';
            TableRelation = "Course"."Course ID";
        }

        field(5; "Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Registration Date';
        }

        field(6; "Description"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK; "Unit code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Details; "Unit code", "Name")
        {
        }
    }
}
