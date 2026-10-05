page 90102 "Student Card"
//page properties
{
    PageType = Card;
    SourceTable = Student;
    ApplicationArea = All;
    UsageCategory = None;
    layout
    {
        area(content)
        {
            group(General)
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

    actions//defining actions for the page
    {
        area(processing)//actions will be shown in the processing area of the page
        //procesing =actions that perform something
        {
            // action(ShowStudent)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Show Student';

            //     trigger OnAction()
            //     begin
            //         Rec.TestField("Student Name");
            //         Message('Student:%1', Rec."Student Name")
            //     end;
            // }
            // action(GetStudent)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Get Student';
            //     trigger OnAction()
            //     var
            //         StudentManagement: Codeunit "Student Management";//Giving the page access to the codeunit so that we can call the function from the codeunit
            //     begin
            //         StudentManagement.ShowStudent();
            //     end;
            // }
            // action(FindFirstStudent)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Show First Student';
            //     trigger OnAction()
            //     var
            //         StudentManagement: Codeunit "Student Management";
            //     begin
            //         StudentManagement.ShowFirstStudent();
            //     end;
            // }
            // action(ShowAllStudents)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Show All Students';
            //     trigger OnAction()
            //     var
            //         StudentManagement: Codeunit "Student Management";
            //     begin
            //         StudentManagement.ShowAllStudents();
            //     end;
            // }
            // action(ShowG1Students)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Show G1 Students';
            //     trigger OnAction()
            //     var
            //         StudentManagement: Codeunit "Student Management";
            //     begin
            //         StudentManagement.ShowG1Student();
            //     end;
            // }
            // action(ShowAdultStudents)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Show Adult Students';
            //     trigger OnAction()
            //     var
            //         StudentManagement: Codeunit "Student Management";
            //     begin
            //         StudentManagement.ShowAdultStudents();
            //     end;
            // }
            // action(ShowG1StudentsAbove10)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Show G1 Students Above 10';
            //     trigger OnAction()
            //     var
            //         StudentManagement: Codeunit "Student Management";
            //     begin
            //         StudentManagement.ShowG1StudentsAbove10();
            //     end;
            // }
            action(CheckAdult)
            {
                ApplicationArea = All;
                Caption = 'Check if Adult';
                trigger OnAction()
                var
                    StudentManagement: Codeunit "Student Management";
                begin
                    if StudentManagement.IsAdult(Rec.Age) then
                        Message('%1 is an adult.', Rec."Student Name")
                    else
                        Message('%1 is not an adult.', Rec."Student Name");
                end;

            }
            action(ChangeStudentClass)
            {
                ApplicationArea = All;
                Caption = 'Change Student Class';
                trigger OnAction()
                var
                    StudentManagement: Codeunit "Student Management";
                begin
                    StudentManagement.ChangeStudentClass(Rec."Student No", 'G2');
                    CurrPage.Update();
                    Message('Student  class changed to G2.');
                end;
            }
        }
    }
}
