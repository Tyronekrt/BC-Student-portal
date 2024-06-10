table 50114 "Enrollment"
{
    DataClassification = ToBeClassified;

    fields
    {

        field(2; "Student Reg.No"; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student"."Student Reg.No";
        }
        field(3; "Course ID"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Course;
            trigger OnValidate()
            var

                CourseID: Record Course;
            begin
                if CourseID.Get(Rec."Course ID") then
                    "Course ID" := CourseID."Course ID";
                "Course Name" := CourseID."Course Name";
                //else


            end;


        }
        field(1; "Course Name"; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = Course;
            Editable = false;

        }
        field(4; "Enrollment Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Stage Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Stage Code';
            TableRelation = "Stage".Code;
            trigger OnValidate()
            var
                StageRec: Record "Stage";
            begin
                if not StageRec.Get("Stage Code") then
                    Error('The stage code %1 does not exist.', "Stage Code");
            end;
        }
    }

    keys
    {
        key(PK; "Student Reg.No")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(Dropdown; "Student Reg.No", "Course Name", "Course ID", "Stage Code")
        {
        }
    }

}
