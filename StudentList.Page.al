page 90101 "Student List"

{
    //page properties
    PageType = List;
    SourceTable = Student;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageID = "Student Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Student No."; Rec."Student No")
                {
                    ApplicationArea = All;

                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;

                }
                field("Student Age"; Rec.Age)
                {
                    ApplicationArea = All;

                }
                field("Class"; Rec."Class")
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}