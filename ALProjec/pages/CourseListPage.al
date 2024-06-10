page 50115 "Course List"
{
    PageType = List;
    SourceTable = Course;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Course ID"; Rec."Course ID")
                {
                }
                field("Course Name"; Rec."Course Name")
                {
                }
                field("Description"; Rec."Description")
                {
                }
                field("Credits"; Rec."Credits")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("New")
            {
                ApplicationArea = All;
                Caption = 'New Course';
                Image = New;

                trigger OnAction()
                begin
                    CreateNewRecord();
                end;
            }
        }
    }

    local procedure CreateNewRecord()
    var
        CourseRec: Record "Course";
    begin
        CourseRec.Init();
        if PAGE.RunModal(PAGE::"Course Card", CourseRec) = ACTION::OK then;
    end;
}
