Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SpaceshipMap))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SpaceshipMap))==(Machine(SpaceshipMap));
  Level(Machine(SpaceshipMap))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SpaceshipMap)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SpaceshipMap))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SpaceshipMap))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SpaceshipMap))==(?);
  List_Includes(Machine(SpaceshipMap))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SpaceshipMap))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SpaceshipMap))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SpaceshipMap))==(?);
  Context_List_Variables(Machine(SpaceshipMap))==(?);
  Abstract_List_Variables(Machine(SpaceshipMap))==(?);
  Local_List_Variables(Machine(SpaceshipMap))==(?);
  List_Variables(Machine(SpaceshipMap))==(?);
  External_List_Variables(Machine(SpaceshipMap))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SpaceshipMap))==(?);
  Abstract_List_VisibleVariables(Machine(SpaceshipMap))==(?);
  External_List_VisibleVariables(Machine(SpaceshipMap))==(?);
  Expanded_List_VisibleVariables(Machine(SpaceshipMap))==(?);
  List_VisibleVariables(Machine(SpaceshipMap))==(?);
  Internal_List_VisibleVariables(Machine(SpaceshipMap))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SpaceshipMap))==(btrue);
  Gluing_List_Invariant(Machine(SpaceshipMap))==(btrue);
  Expanded_List_Invariant(Machine(SpaceshipMap))==(btrue);
  Abstract_List_Invariant(Machine(SpaceshipMap))==(btrue);
  Context_List_Invariant(Machine(SpaceshipMap))==(btrue);
  List_Invariant(Machine(SpaceshipMap))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SpaceshipMap))==(btrue);
  Abstract_List_Assertions(Machine(SpaceshipMap))==(btrue);
  Context_List_Assertions(Machine(SpaceshipMap))==(btrue);
  List_Assertions(Machine(SpaceshipMap))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(SpaceshipMap))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(SpaceshipMap))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SpaceshipMap))==(skip);
  Context_List_Initialisation(Machine(SpaceshipMap))==(skip);
  List_Initialisation(Machine(SpaceshipMap))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SpaceshipMap))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SpaceshipMap))==(btrue);
  List_Constraints(Machine(SpaceshipMap))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SpaceshipMap))==(?);
  List_Operations(Machine(SpaceshipMap))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SpaceshipMap))==(max_X,max_Y,space_squares,X_range,Y_range,asteroids_positions,home_base,star_base);
  Inherited_List_Constants(Machine(SpaceshipMap))==(?);
  List_Constants(Machine(SpaceshipMap))==(max_X,max_Y,space_squares,X_range,Y_range,asteroids_positions,home_base,star_base)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(SpaceshipMap))==(?);
  Context_List_Defered(Machine(SpaceshipMap))==(?);
  Context_List_Sets(Machine(SpaceshipMap))==(?);
  List_Valuable_Sets(Machine(SpaceshipMap))==(?);
  Inherited_List_Enumerated(Machine(SpaceshipMap))==(?);
  Inherited_List_Defered(Machine(SpaceshipMap))==(?);
  Inherited_List_Sets(Machine(SpaceshipMap))==(?);
  List_Enumerated(Machine(SpaceshipMap))==(?);
  List_Defered(Machine(SpaceshipMap))==(?);
  List_Sets(Machine(SpaceshipMap))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SpaceshipMap))==(?);
  Expanded_List_HiddenConstants(Machine(SpaceshipMap))==(?);
  List_HiddenConstants(Machine(SpaceshipMap))==(?);
  External_List_HiddenConstants(Machine(SpaceshipMap))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SpaceshipMap))==(btrue);
  Context_List_Properties(Machine(SpaceshipMap))==(btrue);
  Inherited_List_Properties(Machine(SpaceshipMap))==(btrue);
  List_Properties(Machine(SpaceshipMap))==(max_X: NAT1 & max_X = 12 & max_Y: NAT1 & max_Y = 7 & X_range <: NAT1 & X_range = 1..max_X & Y_range <: NAT1 & Y_range = 1..max_Y & space_squares: X_range <-> Y_range & space_squares = X_range*Y_range & home_base: space_squares & home_base = 1|->1 & star_base: space_squares & star_base = 6|->4 & asteroids_positions <: space_squares & asteroids_positions = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5})
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SpaceshipMap)) == (max_X,max_Y,space_squares,X_range,Y_range,asteroids_positions,home_base,star_base | ? | ? | ? | ? | ? | ? | ? | SpaceshipMap);
  List_Of_HiddenCst_Ids(Machine(SpaceshipMap)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SpaceshipMap)) == (max_X,max_Y,space_squares,X_range,Y_range,asteroids_positions,home_base,star_base);
  List_Of_VisibleVar_Ids(Machine(SpaceshipMap)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SpaceshipMap)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(SpaceshipMap)) == (Type(max_X) == Cst(btype(INTEGER,?,?));Type(max_Y) == Cst(btype(INTEGER,?,?));Type(space_squares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(X_range) == Cst(SetOf(btype(INTEGER,"[X_range","]X_range")));Type(Y_range) == Cst(SetOf(btype(INTEGER,"[Y_range","]Y_range")));Type(asteroids_positions) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(home_base) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(star_base) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
