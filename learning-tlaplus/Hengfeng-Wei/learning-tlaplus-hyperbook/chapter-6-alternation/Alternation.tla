----------------------------- MODULE Alternation -----------------------------
EXTENDS Integers, Sequences

Put(s) == Append(s, "widget")
Get(s) == Tail(s)

(***************************************************************************
--algorithm Alternate {
  variable b = 0, box = <<>>;
  
  process ( Producer = 0 )
    { p1: while ( TRUE )
          { await b = 0;
            box := Put(box);
            b := 1
          }
    }
    
  fair process ( Consumer = 1 )
    { p1: while ( TRUE )
          { await b = 1;
            box := Get(box);
            b := 0
          }
    }
}
 ***************************************************************************) 
\* BEGIN TRANSLATION
\* Label p1 of process Producer at line 12 col 11 changed to p1_
VARIABLES b, box

vars == << b, box >>

ProcSet == {0} \cup {1}

Init == (* Global variables *)
        /\ b = 0
        /\ box = <<>>

Producer == /\ b = 0
            /\ box' = Put(box)
            /\ b' = 1

Consumer == /\ b = 1
            /\ box' = Get(box)
            /\ b' = 0

Next == Producer \/ Consumer

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Consumer)

\* END TRANSLATION
============================================================================== 
