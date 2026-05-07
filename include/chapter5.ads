with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Streams;
with Ada.Streams.Stream_IO;
package chapter5 is

   -- Put range limits on variable types
   procedure Integer_Type;

   -- Type Modular aka unsigned integer types
   -- Mod when max reached rolls back to zero
   procedure Modular_Int;

   -- Enumerations
   procedure Enumeration_Example;

   -- Floating Point Types
   procedure Floating_Point;

   -- Precision of types
   procedure Custom_Floating_Types;

end chapter5;