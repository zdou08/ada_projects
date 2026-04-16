package body Chapter3 is

   procedure Nested_Procedure is
      A: Integer := 5;
      procedure Display (B: in Integer) is
         C: Integer;
      begin
         C := B * 2;
         Put_Line("Display: " & Integer'Image(C));
      end Display;
   begin
      Display (A);
   end Nested_Procedure;

   function Quadruple (I: Integer) return Integer is
      function Double (I: Integer) return Integer is
      begin
         return I * 2;
      end Double;

      Res : Integer;
   begin
      Res := Double (Double (I));
      return Res;
   end Quadruple;

   procedure In_Out_Param is
      procedure Swap (A, B : in out Integer) is 
         Tmp: Integer;
      begin
         Tmp := A;
         A := B;
         B := Tmp;
      end Swap;

      A : Integer := 12;
      B : Integer := 44;
   begin
      Swap (A,B);
      Put_Line ("A: " & Integer'Image(A));
      Put_Line ("B: " & Integer'Image(B));
   end In_Out_Param;

   procedure Mutually_Recursive_Subprogram is
      procedure Compute_A (V: Natural);
      procedure Compute_B (V: Natural) is
      begin
         if V > 5 then
            Compute_A (V - 1);
         end if;
      end Compute_B;

      procedure Compute_A (V: Natural) is 
      begin 
         if V > 2 then
            Compute_B (V - 1);
         end if;
      end Compute_A;
   begin
      Compute_A (15);
   end Mutually_Recursive_Subprogram;

   procedure long_name (A_Message: String) is
   begin
      Put_Line (A_Message);
   end long_name;

   procedure Show_Renaming is
      procedure Show (S : String) renames long_name;
   begin
      Show ("Renamed!!");
   end Show_Renaming;

end Chapter3;