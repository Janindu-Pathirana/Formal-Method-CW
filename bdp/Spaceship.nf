Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Spaceship))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Spaceship))==(Machine(Spaceship));
  Level(Machine(Spaceship))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Spaceship)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Spaceship))==(GameStatusMechine,SpaceshipMap)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Spaceship))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Spaceship))==(?);
  List_Includes(Machine(Spaceship))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Spaceship))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Spaceship))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Spaceship))==(?);
  Context_List_Variables(Machine(Spaceship))==(?);
  Abstract_List_Variables(Machine(Spaceship))==(?);
  Local_List_Variables(Machine(Spaceship))==(visited_routes,asteroid_collisions,current_power,current_position);
  List_Variables(Machine(Spaceship))==(visited_routes,asteroid_collisions,current_power,current_position);
  External_List_Variables(Machine(Spaceship))==(visited_routes,asteroid_collisions,current_power,current_position)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Spaceship))==(?);
  Abstract_List_VisibleVariables(Machine(Spaceship))==(?);
  External_List_VisibleVariables(Machine(Spaceship))==(?);
  Expanded_List_VisibleVariables(Machine(Spaceship))==(?);
  List_VisibleVariables(Machine(Spaceship))==(?);
  Internal_List_VisibleVariables(Machine(Spaceship))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Spaceship))==(btrue);
  Gluing_List_Invariant(Machine(Spaceship))==(btrue);
  Expanded_List_Invariant(Machine(Spaceship))==(btrue);
  Abstract_List_Invariant(Machine(Spaceship))==(btrue);
  Context_List_Invariant(Machine(Spaceship))==(btrue);
  List_Invariant(Machine(Spaceship))==(current_position: space_squares & current_power: NAT & current_power<=max_power & asteroid_collisions: NAT & visited_routes: seq(space_squares))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Spaceship))==(btrue);
  Abstract_List_Assertions(Machine(Spaceship))==(btrue);
  Context_List_Assertions(Machine(Spaceship))==(btrue);
  List_Assertions(Machine(Spaceship))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Spaceship))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Spaceship))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Spaceship))==(current_position,current_power,asteroid_collisions,visited_routes:=home_base,0,0,[home_base]);
  Context_List_Initialisation(Machine(Spaceship))==(skip);
  List_Initialisation(Machine(Spaceship))==(current_position:=home_base || current_power:=0 || asteroid_collisions:=0 || visited_routes:=[home_base])
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Spaceship))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Spaceship),Machine(GameStatusMechine))==(?);
  List_Instanciated_Parameters(Machine(Spaceship),Machine(SpaceshipMap))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Spaceship))==(btrue);
  List_Constraints(Machine(Spaceship))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Spaceship))==(ResetLocation,MoveDown,MoveUp,MoveLeft,MoveRight,WarpDrive,MissionStatus,Mission_Routs);
  List_Operations(Machine(Spaceship))==(ResetLocation,MoveDown,MoveUp,MoveLeft,MoveRight,WarpDrive,MissionStatus,Mission_Routs)
END
&
THEORY ListInputX IS
  List_Input(Machine(Spaceship),ResetLocation)==(power);
  List_Input(Machine(Spaceship),MoveDown)==(?);
  List_Input(Machine(Spaceship),MoveUp)==(?);
  List_Input(Machine(Spaceship),MoveLeft)==(?);
  List_Input(Machine(Spaceship),MoveRight)==(?);
  List_Input(Machine(Spaceship),WarpDrive)==(new_position);
  List_Input(Machine(Spaceship),MissionStatus)==(?);
  List_Input(Machine(Spaceship),Mission_Routs)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Spaceship),ResetLocation)==(result);
  List_Output(Machine(Spaceship),MoveDown)==(result);
  List_Output(Machine(Spaceship),MoveUp)==(result);
  List_Output(Machine(Spaceship),MoveLeft)==(result);
  List_Output(Machine(Spaceship),MoveRight)==(result);
  List_Output(Machine(Spaceship),WarpDrive)==(result);
  List_Output(Machine(Spaceship),MissionStatus)==(status);
  List_Output(Machine(Spaceship),Mission_Routs)==(routes)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Spaceship),ResetLocation)==(result <-- ResetLocation(power));
  List_Header(Machine(Spaceship),MoveDown)==(result <-- MoveDown);
  List_Header(Machine(Spaceship),MoveUp)==(result <-- MoveUp);
  List_Header(Machine(Spaceship),MoveLeft)==(result <-- MoveLeft);
  List_Header(Machine(Spaceship),MoveRight)==(result <-- MoveRight);
  List_Header(Machine(Spaceship),WarpDrive)==(result <-- WarpDrive(new_position));
  List_Header(Machine(Spaceship),MissionStatus)==(status <-- MissionStatus);
  List_Header(Machine(Spaceship),Mission_Routs)==(routes <-- Mission_Routs)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Spaceship),ResetLocation)==(result: REPORT & power: NAT & power<=max_power);
  List_Precondition(Machine(Spaceship),MoveDown)==(result: REPORT);
  List_Precondition(Machine(Spaceship),MoveUp)==(result: REPORT);
  List_Precondition(Machine(Spaceship),MoveLeft)==(result: REPORT);
  List_Precondition(Machine(Spaceship),MoveRight)==(result: REPORT);
  List_Precondition(Machine(Spaceship),WarpDrive)==(result: REPORT & new_position: space_squares);
  List_Precondition(Machine(Spaceship),MissionStatus)==(btrue);
  List_Precondition(Machine(Spaceship),Mission_Routs)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Spaceship),Mission_Routs)==(btrue | routes:=visited_routes);
  Expanded_List_Substitution(Machine(Spaceship),MissionStatus)==(btrue | current_position = star_base ==> status:=MISSION_STATUS|->WON|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions) [] not(current_position = star_base) ==> (current_power<=0 ==> status:=MISSION_STATUS|->LOST|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions) [] not(current_power<=0) ==> status:=MISSION_STATUS|->NOT_OVER|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions)));
  Expanded_List_Substitution(Machine(Spaceship),WarpDrive)==(result: REPORT & new_position: space_squares | current_power>=warp_drive_power ==> (current_power:=current_power-warp_drive_power || (new_position: asteroids_positions ==> result:=ASTEROID_COLLISION [] not(new_position: asteroids_positions) ==> (new_position = star_base ==> current_position,result:=new_position,BASE_REACH [] not(new_position = star_base) ==> current_position,result:=new_position,SUCCESSFUL))) [] not(current_power>=warp_drive_power) ==> result:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveRight)==(result: REPORT | prj1(X_range,Y_range)(current_position)+1/:dom(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj1(X_range,Y_range)(current_position)+1/:dom(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position): asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position): asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position),current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position)) || (prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) = star_base) ==> result:=SUCCESSFUL)))));
  Expanded_List_Substitution(Machine(Spaceship),MoveLeft)==(result: REPORT | prj1(X_range,Y_range)(current_position)-1/:dom(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj1(X_range,Y_range)(current_position)-1/:dom(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position): asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position): asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position),current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position)) || (prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) = star_base) ==> result:=SUCCESSFUL)))));
  Expanded_List_Substitution(Machine(Spaceship),MoveUp)==(result: REPORT | prj2(X_range,Y_range)(current_position)+1/:ran(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj2(X_range,Y_range)(current_position)+1/:ran(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1: asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1: asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1,current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1) || (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 = star_base) ==> result:=SUCCESSFUL)))));
  Expanded_List_Substitution(Machine(Spaceship),MoveDown)==(result: REPORT | prj2(X_range,Y_range)(current_position)-1/:ran(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj2(X_range,Y_range)(current_position)-1/:ran(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1: asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1: asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1,current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1) || (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 = star_base) ==> result:=SUCCESSFUL)))));
  Expanded_List_Substitution(Machine(Spaceship),ResetLocation)==(result: REPORT & power: NAT & power<=max_power | current_position,current_power,asteroid_collisions,result:=home_base,power,0,SUCCESSFUL);
  List_Substitution(Machine(Spaceship),ResetLocation)==(current_position:=home_base || current_power:=power || asteroid_collisions:=0 || result:=SUCCESSFUL);
  List_Substitution(Machine(Spaceship),MoveDown)==(IF prj2(X_range,Y_range)(current_position)-1/:ran(space_squares) THEN result:=BOUNDARY_ERROR ELSIF current_power<normal_move_power THEN result:=INSUFFICIENT_POWER ELSIF prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1: asteroids_positions THEN current_power:=current_power-collision_power_loss || asteroid_collisions:=asteroid_collisions+1 || result:=ASTEROID_COLLISION ELSE current_position:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 || current_power:=current_power-normal_move_power || visited_routes:=visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1) || IF prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 = star_base THEN result:=BASE_REACH ELSE result:=SUCCESSFUL END END);
  List_Substitution(Machine(Spaceship),MoveUp)==(IF prj2(X_range,Y_range)(current_position)+1/:ran(space_squares) THEN result:=BOUNDARY_ERROR ELSIF current_power<normal_move_power THEN result:=INSUFFICIENT_POWER ELSIF prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1: asteroids_positions THEN current_power:=current_power-collision_power_loss || asteroid_collisions:=asteroid_collisions+1 || result:=ASTEROID_COLLISION ELSE current_position:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 || current_power:=current_power-normal_move_power || visited_routes:=visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1) || IF prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 = star_base THEN result:=BASE_REACH ELSE result:=SUCCESSFUL END END);
  List_Substitution(Machine(Spaceship),MoveLeft)==(IF prj1(X_range,Y_range)(current_position)-1/:dom(space_squares) THEN result:=BOUNDARY_ERROR ELSIF current_power<normal_move_power THEN result:=INSUFFICIENT_POWER ELSIF prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position): asteroids_positions THEN current_power:=current_power-collision_power_loss || asteroid_collisions:=asteroid_collisions+1 || result:=ASTEROID_COLLISION ELSE current_position:=prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) || current_power:=current_power-normal_move_power || visited_routes:=visited_routes<-(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position)) || IF prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) = star_base THEN result:=BASE_REACH ELSE result:=SUCCESSFUL END END);
  List_Substitution(Machine(Spaceship),MoveRight)==(IF prj1(X_range,Y_range)(current_position)+1/:dom(space_squares) THEN result:=BOUNDARY_ERROR ELSIF current_power<normal_move_power THEN result:=INSUFFICIENT_POWER ELSIF prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position): asteroids_positions THEN current_power:=current_power-collision_power_loss || asteroid_collisions:=asteroid_collisions+1 || result:=ASTEROID_COLLISION ELSE current_position:=prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) || current_power:=current_power-normal_move_power || visited_routes:=visited_routes<-(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position)) || IF prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) = star_base THEN result:=BASE_REACH ELSE result:=SUCCESSFUL END END);
  List_Substitution(Machine(Spaceship),WarpDrive)==(IF current_power>=warp_drive_power THEN current_power:=current_power-warp_drive_power || IF new_position: asteroids_positions THEN result:=ASTEROID_COLLISION ELSIF new_position = star_base THEN current_position:=new_position || result:=BASE_REACH ELSE current_position:=new_position || result:=SUCCESSFUL END ELSE result:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(Spaceship),MissionStatus)==(IF current_position = star_base THEN status:=MISSION_STATUS|->WON|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions) ELSIF current_power<=0 THEN status:=MISSION_STATUS|->LOST|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions) ELSE status:=MISSION_STATUS|->NOT_OVER|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions) END);
  List_Substitution(Machine(Spaceship),Mission_Routs)==(routes:=visited_routes)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Spaceship))==(normal_move_power,warp_drive_power,collision_power_loss,max_power);
  Inherited_List_Constants(Machine(Spaceship))==(?);
  List_Constants(Machine(Spaceship))==(normal_move_power,warp_drive_power,collision_power_loss,max_power)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Spaceship),REPORT)==({SUCCESSFUL,BASE_REACH,BOUNDARY_ERROR,ASTEROID_COLLISION,INSUFFICIENT_POWER,ERROR});
  Context_List_Enumerated(Machine(Spaceship))==(GAME_STATUS,REPORT);
  Context_List_Defered(Machine(Spaceship))==(?);
  Context_List_Sets(Machine(Spaceship))==(GAME_STATUS,REPORT);
  List_Valuable_Sets(Machine(Spaceship))==(?);
  Inherited_List_Enumerated(Machine(Spaceship))==(?);
  Inherited_List_Defered(Machine(Spaceship))==(?);
  Inherited_List_Sets(Machine(Spaceship))==(?);
  List_Enumerated(Machine(Spaceship))==(Lables);
  List_Defered(Machine(Spaceship))==(?);
  List_Sets(Machine(Spaceship))==(Lables);
  Set_Definition(Machine(Spaceship),GAME_STATUS)==({WON,LOST,NOT_OVER});
  Set_Definition(Machine(Spaceship),Lables)==({MISSION_STATUS,CURRENT_POSITION,CURRENT_POWER,ASTEROID_COLLISIONS})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Spaceship))==(?);
  Expanded_List_HiddenConstants(Machine(Spaceship))==(?);
  List_HiddenConstants(Machine(Spaceship))==(?);
  External_List_HiddenConstants(Machine(Spaceship))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Spaceship))==(btrue);
  Context_List_Properties(Machine(Spaceship))==(GAME_STATUS: FIN(INTEGER) & not(GAME_STATUS = {}) & REPORT: FIN(INTEGER) & not(REPORT = {}) & max_X: NAT1 & max_X = 12 & max_Y: NAT1 & max_Y = 7 & X_range <: NAT1 & X_range = 1..max_X & Y_range <: NAT1 & Y_range = 1..max_Y & space_squares: X_range <-> Y_range & space_squares = X_range*Y_range & home_base: space_squares & home_base = 1|->1 & star_base: space_squares & star_base = 6|->4 & asteroids_positions <: space_squares & asteroids_positions = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5});
  Inherited_List_Properties(Machine(Spaceship))==(btrue);
  List_Properties(Machine(Spaceship))==(normal_move_power: NAT & normal_move_power = 5 & warp_drive_power: NAT & warp_drive_power = 20 & collision_power_loss: NAT & collision_power_loss = 10 & max_power: NAT & max_power = 100 & Lables: FIN(INTEGER) & not(Lables = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Spaceship),Machine(SpaceshipMap))==(?);
  Seen_Context_List_Enumerated(Machine(Spaceship))==(?);
  Seen_Context_List_Invariant(Machine(Spaceship))==(btrue);
  Seen_Context_List_Assertions(Machine(Spaceship))==(btrue);
  Seen_Context_List_Properties(Machine(Spaceship))==(btrue);
  Seen_List_Constraints(Machine(Spaceship))==(btrue);
  Seen_List_Operations(Machine(Spaceship),Machine(SpaceshipMap))==(?);
  Seen_Expanded_List_Invariant(Machine(Spaceship),Machine(SpaceshipMap))==(btrue);
  Seen_Internal_List_Operations(Machine(Spaceship),Machine(GameStatusMechine))==(?);
  Seen_List_Operations(Machine(Spaceship),Machine(GameStatusMechine))==(?);
  Seen_Expanded_List_Invariant(Machine(Spaceship),Machine(GameStatusMechine))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Spaceship),ResetLocation)==(?);
  List_ANY_Var(Machine(Spaceship),MoveDown)==(?);
  List_ANY_Var(Machine(Spaceship),MoveUp)==(?);
  List_ANY_Var(Machine(Spaceship),MoveLeft)==(?);
  List_ANY_Var(Machine(Spaceship),MoveRight)==(?);
  List_ANY_Var(Machine(Spaceship),WarpDrive)==(?);
  List_ANY_Var(Machine(Spaceship),MissionStatus)==(?);
  List_ANY_Var(Machine(Spaceship),Mission_Routs)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Spaceship)) == (normal_move_power,warp_drive_power,collision_power_loss,max_power,Lables,MISSION_STATUS,CURRENT_POSITION,CURRENT_POWER,ASTEROID_COLLISIONS | ? | visited_routes,asteroid_collisions,current_power,current_position | ? | ResetLocation,MoveDown,MoveUp,MoveLeft,MoveRight,WarpDrive,MissionStatus,Mission_Routs | ? | seen(Machine(GameStatusMechine)),seen(Machine(SpaceshipMap)) | ? | Spaceship);
  List_Of_HiddenCst_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Spaceship)) == (normal_move_power,warp_drive_power,collision_power_loss,max_power);
  List_Of_VisibleVar_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Spaceship)) == (?: ?);
  List_Of_Ids(Machine(SpaceshipMap)) == (max_X,max_Y,space_squares,X_range,Y_range,asteroids_positions,home_base,star_base | ? | ? | ? | ? | ? | ? | ? | SpaceshipMap);
  List_Of_HiddenCst_Ids(Machine(SpaceshipMap)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SpaceshipMap)) == (max_X,max_Y,space_squares,X_range,Y_range,asteroids_positions,home_base,star_base);
  List_Of_VisibleVar_Ids(Machine(SpaceshipMap)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SpaceshipMap)) == (?: ?);
  List_Of_Ids(Machine(GameStatusMechine)) == (GAME_STATUS,REPORT,WON,LOST,NOT_OVER,SUCCESSFUL,BASE_REACH,BOUNDARY_ERROR,ASTEROID_COLLISION,INSUFFICIENT_POWER,ERROR | ? | ? | ? | ? | ? | ? | ? | GameStatusMechine);
  List_Of_HiddenCst_Ids(Machine(GameStatusMechine)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(GameStatusMechine)) == (?);
  List_Of_VisibleVar_Ids(Machine(GameStatusMechine)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(GameStatusMechine)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Spaceship)) == (Type(Lables) == Cst(SetOf(etype(Lables,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Spaceship)) == (Type(MISSION_STATUS) == Cst(etype(Lables,0,3));Type(CURRENT_POSITION) == Cst(etype(Lables,0,3));Type(CURRENT_POWER) == Cst(etype(Lables,0,3));Type(ASTEROID_COLLISIONS) == Cst(etype(Lables,0,3));Type(normal_move_power) == Cst(btype(INTEGER,?,?));Type(warp_drive_power) == Cst(btype(INTEGER,?,?));Type(collision_power_loss) == Cst(btype(INTEGER,?,?));Type(max_power) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Spaceship)) == (Type(visited_routes) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(asteroid_collisions) == Mvl(btype(INTEGER,?,?));Type(current_power) == Mvl(btype(INTEGER,?,?));Type(current_position) == Mvl(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Spaceship)) == (Type(Mission_Routs) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(etype(Lables,0,3)*etype(GAME_STATUS,0,2)*(etype(Lables,0,3)*(btype(INTEGER,?,?)*btype(INTEGER,?,?)))*(etype(Lables,0,3)*btype(INTEGER,?,?))*(etype(Lables,0,3)*btype(INTEGER,?,?)),No_type);Type(WarpDrive) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveRight) == Cst(etype(REPORT,?,?),No_type);Type(MoveLeft) == Cst(etype(REPORT,?,?),No_type);Type(MoveUp) == Cst(etype(REPORT,?,?),No_type);Type(MoveDown) == Cst(etype(REPORT,?,?),No_type);Type(ResetLocation) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)));
  Observers(Machine(Spaceship)) == (Type(Mission_Routs) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(etype(Lables,0,3)*etype(GAME_STATUS,0,2)*(etype(Lables,0,3)*(btype(INTEGER,?,?)*btype(INTEGER,?,?)))*(etype(Lables,0,3)*btype(INTEGER,?,?))*(etype(Lables,0,3)*btype(INTEGER,?,?)),No_type))
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
