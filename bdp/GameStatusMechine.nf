Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(GameStatusMechine))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(GameStatusMechine))==(Machine(GameStatusMechine));
  Level(Machine(GameStatusMechine))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(GameStatusMechine)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(GameStatusMechine))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(GameStatusMechine))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(GameStatusMechine))==(?);
  List_Includes(Machine(GameStatusMechine))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(GameStatusMechine))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(GameStatusMechine))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(GameStatusMechine))==(?);
  Context_List_Variables(Machine(GameStatusMechine))==(?);
  Abstract_List_Variables(Machine(GameStatusMechine))==(?);
  Local_List_Variables(Machine(GameStatusMechine))==(?);
  List_Variables(Machine(GameStatusMechine))==(?);
  External_List_Variables(Machine(GameStatusMechine))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(GameStatusMechine))==(?);
  Abstract_List_VisibleVariables(Machine(GameStatusMechine))==(?);
  External_List_VisibleVariables(Machine(GameStatusMechine))==(?);
  Expanded_List_VisibleVariables(Machine(GameStatusMechine))==(?);
  List_VisibleVariables(Machine(GameStatusMechine))==(?);
  Internal_List_VisibleVariables(Machine(GameStatusMechine))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(GameStatusMechine))==(btrue);
  Gluing_List_Invariant(Machine(GameStatusMechine))==(btrue);
  Expanded_List_Invariant(Machine(GameStatusMechine))==(btrue);
  Abstract_List_Invariant(Machine(GameStatusMechine))==(btrue);
  Context_List_Invariant(Machine(GameStatusMechine))==(btrue);
  List_Invariant(Machine(GameStatusMechine))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(GameStatusMechine))==(btrue);
  Abstract_List_Assertions(Machine(GameStatusMechine))==(btrue);
  Context_List_Assertions(Machine(GameStatusMechine))==(btrue);
  List_Assertions(Machine(GameStatusMechine))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(GameStatusMechine))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(GameStatusMechine))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(GameStatusMechine))==(skip);
  Context_List_Initialisation(Machine(GameStatusMechine))==(skip);
  List_Initialisation(Machine(GameStatusMechine))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(GameStatusMechine))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(GameStatusMechine))==(btrue);
  List_Constraints(Machine(GameStatusMechine))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(GameStatusMechine))==(?);
  List_Operations(Machine(GameStatusMechine))==(?)
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
  List_Valuable_Constants(Machine(GameStatusMechine))==(?);
  Inherited_List_Constants(Machine(GameStatusMechine))==(?);
  List_Constants(Machine(GameStatusMechine))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(GameStatusMechine),GAME_STATUS)==({WON,LOST,NOT_OVER});
  Context_List_Enumerated(Machine(GameStatusMechine))==(?);
  Context_List_Defered(Machine(GameStatusMechine))==(?);
  Context_List_Sets(Machine(GameStatusMechine))==(?);
  List_Valuable_Sets(Machine(GameStatusMechine))==(?);
  Inherited_List_Enumerated(Machine(GameStatusMechine))==(?);
  Inherited_List_Defered(Machine(GameStatusMechine))==(?);
  Inherited_List_Sets(Machine(GameStatusMechine))==(?);
  List_Enumerated(Machine(GameStatusMechine))==(GAME_STATUS,REPORT);
  List_Defered(Machine(GameStatusMechine))==(?);
  List_Sets(Machine(GameStatusMechine))==(GAME_STATUS,REPORT);
  Set_Definition(Machine(GameStatusMechine),REPORT)==({SUCCESSFUL,BASE_REACH,BOUNDARY_ERROR,ASTEROID_COLLISION,INSUFFICIENT_POWER,ERROR})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(GameStatusMechine))==(?);
  Expanded_List_HiddenConstants(Machine(GameStatusMechine))==(?);
  List_HiddenConstants(Machine(GameStatusMechine))==(?);
  External_List_HiddenConstants(Machine(GameStatusMechine))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(GameStatusMechine))==(btrue);
  Context_List_Properties(Machine(GameStatusMechine))==(btrue);
  Inherited_List_Properties(Machine(GameStatusMechine))==(btrue);
  List_Properties(Machine(GameStatusMechine))==(GAME_STATUS: FIN(INTEGER) & not(GAME_STATUS = {}) & REPORT: FIN(INTEGER) & not(REPORT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(GameStatusMechine)) == (GAME_STATUS,REPORT,WON,LOST,NOT_OVER,SUCCESSFUL,BASE_REACH,BOUNDARY_ERROR,ASTEROID_COLLISION,INSUFFICIENT_POWER,ERROR | ? | ? | ? | ? | ? | ? | ? | GameStatusMechine);
  List_Of_HiddenCst_Ids(Machine(GameStatusMechine)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(GameStatusMechine)) == (?);
  List_Of_VisibleVar_Ids(Machine(GameStatusMechine)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(GameStatusMechine)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(GameStatusMechine)) == (Type(GAME_STATUS) == Cst(SetOf(etype(GAME_STATUS,0,2)));Type(REPORT) == Cst(SetOf(etype(REPORT,0,5))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(GameStatusMechine)) == (Type(WON) == Cst(etype(GAME_STATUS,0,2));Type(LOST) == Cst(etype(GAME_STATUS,0,2));Type(NOT_OVER) == Cst(etype(GAME_STATUS,0,2));Type(SUCCESSFUL) == Cst(etype(REPORT,0,5));Type(BASE_REACH) == Cst(etype(REPORT,0,5));Type(BOUNDARY_ERROR) == Cst(etype(REPORT,0,5));Type(ASTEROID_COLLISION) == Cst(etype(REPORT,0,5));Type(INSUFFICIENT_POWER) == Cst(etype(REPORT,0,5));Type(ERROR) == Cst(etype(REPORT,0,5)))
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
