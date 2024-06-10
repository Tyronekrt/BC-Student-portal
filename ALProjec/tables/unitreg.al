table 50131 "Unit Registration"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Stage Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Stage Code';
            TableRelation = "Stage".Code;
        }

        field(2; "Course ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course ID';
            TableRelation = "Course"."Course ID";
        }

        field(3; "Unit ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit ID';
            //  TableRelation = "Unit"."Unit code";
        }

        field(4; "Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Registration Date';
        }
        field(6; "Unit Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit description';
        }
        field(7; "Student Reg.No"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Registration Number';
            TableRelation = Student."Student Reg.No";
        }
        // Add more fields as needed for registration details
    }

    keys
    {
        key(PK; "Stage Code", "Course ID", "Unit ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Details; "Stage Code", "Course ID", "Unit ID", "Registration Date", "Unit Description")
        {
        }
    }
}
