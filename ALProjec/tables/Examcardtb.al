table 50141 "Exam Cards"
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

        field(3; "Exam Date"; Date)
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
