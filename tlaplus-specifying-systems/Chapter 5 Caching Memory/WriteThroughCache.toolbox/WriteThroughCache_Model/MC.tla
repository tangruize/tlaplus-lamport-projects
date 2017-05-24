---- MODULE MC ----
EXTENDS WriteThroughCache, TLC

\* CONSTANT definitions @modelParameterConstants:0InitMemInt
const_1495628290694422000 == 
{0}
----

\* CONSTANT definitions @modelParameterConstants:1Adr
const_1495628290694423000 == 
{"a1", "a2"}
----

\* CONSTANT definitions @modelParameterConstants:2QLen
const_1495628290694424000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:3Val
const_1495628290694425000 == 
{1,2}
----

\* CONSTANT definitions @modelParameterConstants:4Proc
const_1495628290694426000 == 
{"p1", "p2"}
----

\* CONSTANT definitions @modelParameterConstants:5Reply(p, d, miOld, miNew)
const_1495628290694427000(p, d, miOld, miNew) == 
/\ p \in Proc
/\ miOld \in InitMemInt
/\ miNew \in InitMemInt
/\ miNew = miOld
----

\* CONSTANT definitions @modelParameterConstants:6Send(p, d, miOld, miNew)
const_1495628290694428000(p, d, miOld, miNew) == 
/\ p \in Proc
/\ miOld \in InitMemInt
/\ miNew \in InitMemInt
/\ miNew = miOld
----

\* CONSTANT definition @modelParameterDefinitions:1
CONSTANT def_ov_1495628290694430000
----
\* CONSTANT definition @modelParameterDefinitions:2
CONSTANT def_ov_1495628290694431000
----
\* CONSTANT definition @modelParameterDefinitions:3
CONSTANT def_ov_1495628290694432000
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_1495628290694433000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1495628290694434000 ==
Coherence
----
=============================================================================
\* Modification History
\* Created Wed May 24 20:18:10 CST 2017 by ics-ant