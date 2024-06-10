table 50119 "Student"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student Reg.No"; Code[20])
        {
            DataClassification = CustomerContent;


        }

        field(4; "Email"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(5; "Phone"; Text[20])
        {
            DataClassification = CustomerContent;
        }
        field(6; Image; Blob)
        {
            DataClassification = ToBeClassified;
            Caption = 'Image';
        }

        field(7; "Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(8; "DOB"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(9; "YOS"; Code[2])
        {
            DataClassification = CustomerContent;
        }
        field(10; "Grade"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(11; "County Residence"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(12; "Gender"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        // Add more fields as necessary
        field(13; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            TableRelation = "Fee Payment";
            trigger OnValidate()
            var
                CoursePayment: Record "Fee Payment";
            begin
                if CoursePayment.Get(Rec."Amount") then
                    "Amount" := CoursePayment."Amount";
                //else
                // Handle the case where the record is not found if needed
            end;


        }
        field(14; "Fee report"; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(15; "Academic transcripts"; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(16; "Course name"; Text[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Course;
            trigger OnValidate()
            var

                CourseID: Record Course;
            begin
                if CourseID.Get(Rec."Course Name") then
                    "Course Name" := CourseID."Course Name";
                "Course Name" := CourseID."Course Name";
                //else


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
}
