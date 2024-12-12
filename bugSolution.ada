```ada
with Ada.Text_IO; use Ada.Text_IO;
procedure Example is
   type My_Array is array (1..10) of Integer;
   type My_Array_Access is access My_Array;
   A : My_Array_Access := new My_Array'(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array_Access := A; -- Now points to the same array
begin
   A.all(5) := 0; -- Modify the array through the access type
   Put_Line("B(5) = " & Integer'Image(B.all(5))); -- Observe changes reflected in B
end Example;
```