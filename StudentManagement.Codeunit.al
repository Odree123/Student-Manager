codeunit 90105 "Student Management"
{
    var
        Student: Record Student;

    // procedure ShowStudent()
    // begin
    //     Student.Get('S001');
    //     Message('Student :%1', Student."Student Name");
    // end;

    // procedure ShowFirstStudent()
    // begin
    //     if Student.FindFirst() then
    //         Message('Student :%1', Student."Student Name")
    //     else
    //         Message('No Student Found');
    // end;

    // procedure ShowAllStudents()
    // begin
    //     if Student.FindSet() then
    //         repeat
    //             Message('Student:%1', Student."Student Name");
    //         until Student.Next() = 0;
    // end;

    // procedure ShowG1Student()
    // begin

    //     Student.SetRange(Class, 'G1');
    //     if Student.FindSet() then
    //         repeat
    //             Message('Student:%1', Student."Student Name");
    //         until Student.Next() = 0
    //     else
    //         Message('No Student Found in G1');

    // end;

    // procedure ShowAdultStudents()
    // begin
    //     Student.SetFilter(Age, '>18');
    //     if Student.FindSet() then
    //         repeat
    //             Message('%1 is an adult.', student."Student Name");
    //         until Student.Next() = 0
    //     else
    //         Message('No adult student found.');
    // end;

    // procedure ShowG1StudentsAbove10()
    // begin
    //     Student.SetRange(Class, 'G1');
    //     Student.SetFilter(Age, '>10');
    //     if Student.FindSet() then
    //         repeat
    //             Message('Student:%1 Age:%2',
    //              Student."Student Name",
    //              Student.Age);
    //         until Student.Next() = 0
    //     else
    //         Message('No G1 student found above age 10.');
    // end;

    procedure IsAdult(Age: Integer): Boolean
    begin
        exit(Age > 18);
    end;

    procedure ChangeStudentClass(StudentNo: Code[20]; NewClass: Code[20])
    begin
        Student.Get(StudentNo);
        Student.Validate(Class, NewClass);
        Student.Modify();
    end;
}