with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with chapter2; use chapter2;
with chapter3; use chapter3;
with Chapter4; use Chapter4;
with Parent.Child; use Parent.Child;
with Parent.Child.Grandchild; use Parent.Child.Grandchild;
with Parent.Child2; use Parent.Child2;
with chapter5; use chapter5;

procedure Main is
   test_num : Integer;
begin
   Chapter2.print_last_int;
   chapter2.Hello;
   chapter2.World;
   chapter2.Dlrow;
   chapter2.Infinite_Loop;
   chapter2.While_Loop;
   chapter2.Case_Statement;
   chapter2.Declare_Variable;
   Chapter2.Add_Input(5,4,test_num);
   Put_Line ("Add_Input Output: " & Integer'Image(test_num));

   -- Chapter 3
   Chapter3.Nested_Procedure;
   test_num := Chapter3.Quadruple (2);
   Put_Line ("Quadruple: " & Integer'Image(test_num));
   Chapter3.In_Out_Param;
   Chapter3.Mutually_Recursive_Subprogram;
   Chapter3.Show_Renaming;

   -- Chapter 4
   Put_Line(chapter4.Weeked.Mon);
   Put_Line (Get_First_Of_Week);
   Put_Line (Get_Second_Of_Week);
   Put_Line (Get_Last_Of_Week);

   -- Chapter 5
   chapter5.Integer_Type;

   Put_Line ("Main Program Finished");
end Main;
