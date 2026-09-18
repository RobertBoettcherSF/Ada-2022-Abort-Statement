--  Ada 2022 topic: abort statement.
pragma Ada_2022;

package Abort_Demo is

   --  Start a long-running task, abort it, return True if it did not
   --  finish the long work (i.e. abort took effect).
   function Abort_Long_Work return Boolean;

end Abort_Demo;
