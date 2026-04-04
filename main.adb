with Ada.Numerics.Aux;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   -- basic loop
   procedure Hello is
   begin
      for I in 1 .. 3 loop
         Put_Line ("Hello, world!");
      end loop;
   end Hello;

   -- for loop with input
   procedure World is
      N : Integer;
   begin
      Put ("Enter an Integer: ");
      Get (N);
      for I in 1 .. N loop
         Put_Line ("Number: " & Integer'Image (I));
      end loop;
   end World;

   -- Reverse Function
   procedure Dlrow is
      N : Integer := 2;
   begin
      for I in Reverse 1 .. N loop
         Put_Line ("Number Reversed: " & Integer'Image (I));
      end loop;
   end Dlrow;

   -- Infinte Loop
   procedure Infinite_Loop is
      loop_count: Integer := 0;
   begin
      loop
         Put_Line("Infinite Loop Count: " & Integer'Image (loop_count));
         loop_count := loop_count + 1;
         exit when loop_count = 2;
      end loop;
   end Infinite_Loop;

   -- While Loop
   procedure While_Loop is 
      loop_count: Integer := 0;
   begin
      while loop_count <= 2 loop
         Put_Line("While Loop Count: " & Integer'Image (loop_count));
         loop_count := loop_count + 1;
      end loop;
   end While_Loop;

   -- Case Statement
   procedure Case_Statement is
      case_input: Integer;
   begin
      Put ("Degree of Angle: ");
      Get (case_input);
      case case_input is
         when 1 .. 89 =>
            Put_Line ("The angle is acute!");
         when 90 =>
            Put_Line ("The angle is right!");
         when 91 .. 179 =>
            Put_Line ("The angle is obtuse!");
         when others =>
            Put_Line ("Not an angle");
      end case;
   end Case_Statement;

   -- Declare Statement
   procedure Declare_Variable is
   begin
      declare
         declare_var : Integer := 5;
      begin
         Put_Line ("The Variable is " & Integer'Image(declare_var));
      end;
   end Declare_Variable;
begin
   Hello;
   World;
   Dlrow;
   Infinite_Loop;
   While_Loop;
   Case_Statement;
   Declare_Variable;
   Put_Line ("Main Program Finished");
end Main;
