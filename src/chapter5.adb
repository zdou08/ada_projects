package body chapter5 is   
   procedure Integer_Type is
      type My_Int is range -1 .. 5;
   begin
      for I in My_Int loop
         Put(My_Int'Image(I) & ", ");
      end loop;
      New_Line;
   end Integer_Type;
end chapter5;