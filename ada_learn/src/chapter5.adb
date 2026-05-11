package body chapter5 is  

   procedure Integer_Type is
      type My_Int is range -1 .. 5;
   begin
      for I in My_Int loop
         Put(My_Int'Image(I) & ", ");
      end loop;
      New_Line;
   end Integer_Type;

   procedure Modular_Int is
      type Mod_Int is mod 2 ** 5;

      A : constant Mod_Int := 20;
      B : constant Mod_Int := 31;
      C : constant Mod_Int := A + B;
   begin 
      Put_Line ("Mod: " & Mod_Int'Image(C));
   end Modular_Int;

   procedure Enumeration_Example is 
      type Days is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   begin
      for I in Days loop
         case I is
            when Saturday .. Sunday =>
               Put_Line ("Weekend!");
            when Monday .. Friday =>
               Put_Line ("Today is: " & Days'Image(I));
               Put_Line ("Tomorrow is: " & Days'Image(Days'Succ(I)));
         end case;
      end loop;
   end Enumeration_Example;

   procedure Floating_Point is 
      A : constant Float := 2.5;
   begin
      Put_Line ("Float = " & Float'Image(A));
   end Floating_Point;

procedure Custom_Floating_Types is
   type T3  is digits 3;
   type T18 is digits 18;

   C1 : constant := 1.0e-4;

   A : constant T3  := 1.0 + C1;
   B : constant T18 := 1.0 + C1;
begin
   Put_Line ("The value of A is "
             & T3'Image (A));
   Put_Line ("The value of B is "
             & T18'Image (B));
end Custom_Floating_Types;

end chapter5;