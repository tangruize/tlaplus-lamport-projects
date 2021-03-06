---- MODULE MC ----
EXTENDS XJupiterH, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b
----

\* MV CONSTANT definitions Client
const_154650510898154000 == 
{c1, c2}
----

\* MV CONSTANT definitions Char
const_154650510898155000 == 
{a, b}
----

\* SYMMETRY definition
symm_154650510898156000 == 
Permutations(const_154650510898155000)
----

\* CONSTANT definitions @modelParameterConstants:2InitState
const_154650510898157000 == 
<<>>
----

\* CONSTANT definitions @modelParameterConstants:4Msg
const_154650510898158000 == 
Cop
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_154650510898160000 ==
SpecH
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_154650510898161000 ==
WLSpec
----
=============================================================================
\* Modification History
\* Created Thu Jan 03 16:45:08 CST 2019 by hengxin
