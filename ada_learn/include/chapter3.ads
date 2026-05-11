with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Streams;
with Ada.Streams.Stream_IO;

package Chapter3 is

   procedure Nested_Procedure;
   function Quadruple (I: Integer) Return Integer;

   -- input variables that can also be modified
   procedure In_Out_Param;

   -- recursive programs
   procedure Mutually_Recursive_Subprogram;

   -- Show Renaming of Functions
   procedure long_name (A_Message: String);
   procedure Show_Renaming;
   
end Chapter3;