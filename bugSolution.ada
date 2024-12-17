```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num > 10 then
      return True;
   else
      return False;
   end if;
exception
   when others =>
      return False; -- Handle any unexpected exceptions
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer;
   Result : Boolean;
begin
   Put_Line("Enter an integer:");
   begin
      Get(Num);
   exception
      when Constraint_Error =>
         Put_Line("Input value is out of range for Integer");
         return; -- Exit gracefully
   end;
   Result := Check_Range(Num);
   if Result then
      Put_Line("Number is greater than 10");
   else
      Put_Line("Number is not greater than 10");
   end if;
exception
   when others =>
      Put_Line("An unexpected error occurred");
end Main;
```