page 90104 "Class List"
{
    PageType = List;
    SourceTable = Class;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageID = "Class Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Class Code"; Rec."Class Code")
                {
                    ApplicationArea = All;

                }
                field("Class Name"; Rec."Class Name")
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}