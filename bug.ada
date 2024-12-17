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
   Result : Boolean;
begin
   Put_Line("Enter an integer:");
   Get(Num); -- This will raise Constraint_Error if input is too large for Integer
   Result := Check_Range(Num);
   if Result then
      Put_Line("Number is greater than 10");
   else
      Put_Line("Number is not greater than 10");
   end if;
exception
   when Constraint_Error =>
      Put_Line("Input value is out of range for Integer");
end Main;
```