table 90100 Student
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Student No"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Student No';

        }
        field(2; "Student Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Student Name';

        }
        field(3; Age; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Age';

            trigger OnValidate()
            begin
                if age < 1 then
                    Error('Age cannot be less than 1');
            end;

        }
        field(4; "Class"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Class';
            TableRelation = Class."Class Code";//this field is related to class code field in class table

        }
    }

    keys
    {
        key(Key1; "Student No")//means student no is primary key
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