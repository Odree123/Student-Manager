table 90103 Class
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Class Code"; Code[50])
        {
            DataClassification = CustomerContent;

        }
        field(2; "Class Name"; Text[100])
        {
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(PK; "Class Code")
        {
            Clustered = true;
        }
    }

    // fieldgroups
    // {
    //     // Add changes to field groups here
    // }

    // var
    //     myInt: Integer;

    // trigger OnInsert()
    // begin

    // end;

    // trigger OnModify()
    // begin

    // end;

    // trigger OnDelete()
    // begin

    // end;

    // trigger OnRename()
    // begin

    // end;

}