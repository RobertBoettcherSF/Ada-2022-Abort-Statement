pragma Ada_2022;

package body Abort_Demo is

   function Abort_Long_Work return Boolean is
      Finished : Boolean := False;

      task Worker;
      task body Worker is
      begin
         delay 5.0;
         Finished := True;
      end Worker;

   begin
      delay 0.05;
      abort Worker;
      delay 0.1;
      return not Finished;
   end Abort_Long_Work;

end Abort_Demo;
