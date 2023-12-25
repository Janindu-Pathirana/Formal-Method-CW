Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Game))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Game))==(Machine(Game));
  Level(Machine(Game))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Game)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Game))==(SpaceshipMap,GameStatusMechine)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Game))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Game))==(Spaceship);
  List_Includes(Machine(Game))==(Spaceship)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Game))==(MoveUp,MoveDown,MoveLeft,MoveRight,ResetLocation,Mission_Routs)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Game))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Game))==(?);
  Context_List_Variables(Machine(Game))==(?);
  Abstract_List_Variables(Machine(Game))==(?);
  Local_List_Variables(Machine(Game))==(game_status);
  List_Variables(Machine(Game))==(game_status,visited_routes,asteroid_collisions,current_power,current_position);
  External_List_Variables(Machine(Game))==(game_status,visited_routes,asteroid_collisions,current_power,current_position)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Game))==(?);
  Abstract_List_VisibleVariables(Machine(Game))==(?);
  External_List_VisibleVariables(Machine(Game))==(?);
  Expanded_List_VisibleVariables(Machine(Game))==(?);
  List_VisibleVariables(Machine(Game))==(?);
  Internal_List_VisibleVariables(Machine(Game))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Game))==(btrue);
  Gluing_List_Invariant(Machine(Game))==(btrue);
  Abstract_List_Invariant(Machine(Game))==(btrue);
  Expanded_List_Invariant(Machine(Game))==(current_position: space_squares & current_power: NAT & current_power<=max_power & asteroid_collisions: NAT & visited_routes: seq(space_squares));
  Context_List_Invariant(Machine(Game))==(btrue);
  List_Invariant(Machine(Game))==(game_status: GAME_STATUS)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Game))==(btrue);
  Expanded_List_Assertions(Machine(Game))==(btrue);
  Context_List_Assertions(Machine(Game))==(btrue);
  List_Assertions(Machine(Game))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Game))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Game))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Game))==(current_position,current_power,asteroid_collisions,visited_routes:=home_base,0,0,[home_base];game_status:=NOT_OVER);
  Context_List_Initialisation(Machine(Game))==(skip);
  List_Initialisation(Machine(Game))==(game_status:=NOT_OVER)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Game))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Game),Machine(Spaceship))==(?);
  List_Instanciated_Parameters(Machine(Game),Machine(SpaceshipMap))==(?);
  List_Instanciated_Parameters(Machine(Game),Machine(GameStatusMechine))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Game),Machine(Spaceship))==(btrue);
  List_Context_Constraints(Machine(Game))==(btrue);
  List_Constraints(Machine(Game))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Game))==(StartGame,MoveSpaceship,WarpSpaceship,CheckGameStatus,getVisitedRoutes,ResetLocation,MoveDown,MoveUp,MoveLeft,MoveRight,Mission_Routs);
  List_Operations(Machine(Game))==(StartGame,MoveSpaceship,WarpSpaceship,CheckGameStatus,getVisitedRoutes,ResetLocation,MoveDown,MoveUp,MoveLeft,MoveRight,Mission_Routs)
END
&
THEORY ListInputX IS
  List_Input(Machine(Game),Mission_Routs)==(?);
  List_Input(Machine(Game),MoveRight)==(?);
  List_Input(Machine(Game),MoveLeft)==(?);
  List_Input(Machine(Game),MoveUp)==(?);
  List_Input(Machine(Game),MoveDown)==(?);
  List_Input(Machine(Game),ResetLocation)==(power);
  List_Input(Machine(Game),StartGame)==(power);
  List_Input(Machine(Game),MoveSpaceship)==(direction);
  List_Input(Machine(Game),WarpSpaceship)==(new_position);
  List_Input(Machine(Game),CheckGameStatus)==(?);
  List_Input(Machine(Game),getVisitedRoutes)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Game),Mission_Routs)==(routes);
  List_Output(Machine(Game),MoveRight)==(result);
  List_Output(Machine(Game),MoveLeft)==(result);
  List_Output(Machine(Game),MoveUp)==(result);
  List_Output(Machine(Game),MoveDown)==(result);
  List_Output(Machine(Game),ResetLocation)==(result);
  List_Output(Machine(Game),StartGame)==(result);
  List_Output(Machine(Game),MoveSpaceship)==(result);
  List_Output(Machine(Game),WarpSpaceship)==(result);
  List_Output(Machine(Game),CheckGameStatus)==(status);
  List_Output(Machine(Game),getVisitedRoutes)==(routes)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Game),Mission_Routs)==(routes <-- Mission_Routs);
  List_Header(Machine(Game),MoveRight)==(result <-- MoveRight);
  List_Header(Machine(Game),MoveLeft)==(result <-- MoveLeft);
  List_Header(Machine(Game),MoveUp)==(result <-- MoveUp);
  List_Header(Machine(Game),MoveDown)==(result <-- MoveDown);
  List_Header(Machine(Game),ResetLocation)==(result <-- ResetLocation(power));
  List_Header(Machine(Game),StartGame)==(result <-- StartGame(power));
  List_Header(Machine(Game),MoveSpaceship)==(result <-- MoveSpaceship(direction));
  List_Header(Machine(Game),WarpSpaceship)==(result <-- WarpSpaceship(new_position));
  List_Header(Machine(Game),CheckGameStatus)==(status <-- CheckGameStatus);
  List_Header(Machine(Game),getVisitedRoutes)==(routes <-- getVisitedRoutes)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Game),Mission_Routs)==(btrue);
  List_Precondition(Machine(Game),Mission_Routs)==(btrue);
  Own_Precondition(Machine(Game),MoveRight)==(result: REPORT);
  List_Precondition(Machine(Game),MoveRight)==(result: REPORT);
  Own_Precondition(Machine(Game),MoveLeft)==(result: REPORT);
  List_Precondition(Machine(Game),MoveLeft)==(result: REPORT);
  Own_Precondition(Machine(Game),MoveUp)==(result: REPORT);
  List_Precondition(Machine(Game),MoveUp)==(result: REPORT);
  Own_Precondition(Machine(Game),MoveDown)==(result: REPORT);
  List_Precondition(Machine(Game),MoveDown)==(result: REPORT);
  Own_Precondition(Machine(Game),ResetLocation)==(result: REPORT & power: NAT & power<=max_power);
  List_Precondition(Machine(Game),ResetLocation)==(result: REPORT & power: NAT & power<=max_power);
  List_Precondition(Machine(Game),StartGame)==(result: REPORT & power: NAT & power<=max_power);
  List_Precondition(Machine(Game),MoveSpaceship)==(result: REPORT & direction: DRECTIONS);
  List_Precondition(Machine(Game),WarpSpaceship)==(result: REPORT & new_position: space_squares);
  List_Precondition(Machine(Game),CheckGameStatus)==(btrue);
  List_Precondition(Machine(Game),getVisitedRoutes)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Game),getVisitedRoutes)==(btrue | routes:=visited_routes);
  Expanded_List_Substitution(Machine(Game),CheckGameStatus)==(btrue | current_position = star_base ==> status:=MISSION_STATUS|->WON|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions) [] not(current_position = star_base) ==> (current_power<=0 ==> status:=MISSION_STATUS|->LOST|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions) [] not(current_power<=0) ==> status:=MISSION_STATUS|->NOT_OVER|->(CURRENT_POSITION|->current_position)|->(CURRENT_POWER|->current_power)|->(ASTEROID_COLLISIONS|->asteroid_collisions)));
  Expanded_List_Substitution(Machine(Game),WarpSpaceship)==(result: REPORT & new_position: space_squares | current_power>=warp_drive_power ==> (current_power:=current_power-warp_drive_power || (new_position: asteroids_positions ==> result:=ASTEROID_COLLISION [] not(new_position: asteroids_positions) ==> (new_position = star_base ==> current_position,result:=new_position,BASE_REACH [] not(new_position = star_base) ==> current_position,result:=new_position,SUCCESSFUL))) [] not(current_power>=warp_drive_power) ==> result:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(Game),MoveSpaceship)==(result: REPORT & direction: DRECTIONS | not(direction = RIGHT) & not(direction = LEFT) & not(direction = DOWN) & direction = UP ==> (result: REPORT | prj2(X_range,Y_range)(current_position)+1/:ran(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj2(X_range,Y_range)(current_position)+1/:ran(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1: asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1: asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1,current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1) || (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 = star_base) ==> result:=SUCCESSFUL))))) [] not(direction = UP) & not(direction = RIGHT) & not(direction = LEFT) & direction = DOWN ==> (result: REPORT | prj2(X_range,Y_range)(current_position)-1/:ran(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj2(X_range,Y_range)(current_position)-1/:ran(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1: asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1: asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1,current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1) || (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 = star_base) ==> result:=SUCCESSFUL))))) [] not(direction = UP) & not(direction = DOWN) & not(direction = RIGHT) & direction = LEFT ==> (result: REPORT | prj1(X_range,Y_range)(current_position)-1/:dom(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj1(X_range,Y_range)(current_position)-1/:dom(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position): asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position): asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position),current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position)) || (prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) = star_base) ==> result:=SUCCESSFUL))))) [] not(direction = UP) & not(direction = DOWN) & not(direction = LEFT) & direction = RIGHT ==> (result: REPORT | prj1(X_range,Y_range)(current_position)+1/:dom(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj1(X_range,Y_range)(current_position)+1/:dom(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position): asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position): asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position),current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position)) || (prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) = star_base) ==> result:=SUCCESSFUL))))) [] not(direction = UP) & not(direction = DOWN) & not(direction = LEFT) & not(direction = RIGHT) ==> result:=ERROR);
  Expanded_List_Substitution(Machine(Game),StartGame)==(result: REPORT & power: NAT & power<=max_power | current_position,current_power,asteroid_collisions,result:=home_base,power,0,SUCCESSFUL);
  List_Substitution(Machine(Game),Mission_Routs)==(routes:=visited_routes);
  Expanded_List_Substitution(Machine(Game),Mission_Routs)==(btrue | routes:=visited_routes);
  List_Substitution(Machine(Game),MoveRight)==(IF prj1(X_range,Y_range)(current_position)+1/:dom(space_squares) THEN result:=BOUNDARY_ERROR ELSIF current_power<normal_move_power THEN result:=INSUFFICIENT_POWER ELSIF prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position): asteroids_positions THEN current_power:=current_power-collision_power_loss || asteroid_collisions:=asteroid_collisions+1 || result:=ASTEROID_COLLISION ELSE current_position:=prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) || current_power:=current_power-normal_move_power || visited_routes:=visited_routes<-(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position)) || IF prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) = star_base THEN result:=BASE_REACH ELSE result:=SUCCESSFUL END END);
  Expanded_List_Substitution(Machine(Game),MoveRight)==(result: REPORT | prj1(X_range,Y_range)(current_position)+1/:dom(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj1(X_range,Y_range)(current_position)+1/:dom(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position): asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position): asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position),current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position)) || (prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)+1|->prj2(X_range,Y_range)(current_position) = star_base) ==> result:=SUCCESSFUL)))));
  List_Substitution(Machine(Game),MoveLeft)==(IF prj1(X_range,Y_range)(current_position)-1/:dom(space_squares) THEN result:=BOUNDARY_ERROR ELSIF current_power<normal_move_power THEN result:=INSUFFICIENT_POWER ELSIF prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position): asteroids_positions THEN current_power:=current_power-collision_power_loss || asteroid_collisions:=asteroid_collisions+1 || result:=ASTEROID_COLLISION ELSE current_position:=prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) || current_power:=current_power-normal_move_power || visited_routes:=visited_routes<-(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position)) || IF prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) = star_base THEN result:=BASE_REACH ELSE result:=SUCCESSFUL END END);
  Expanded_List_Substitution(Machine(Game),MoveLeft)==(result: REPORT | prj1(X_range,Y_range)(current_position)-1/:dom(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj1(X_range,Y_range)(current_position)-1/:dom(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position): asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position): asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position),current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position)) || (prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)-1|->prj2(X_range,Y_range)(current_position) = star_base) ==> result:=SUCCESSFUL)))));
  List_Substitution(Machine(Game),MoveUp)==(IF prj2(X_range,Y_range)(current_position)+1/:ran(space_squares) THEN result:=BOUNDARY_ERROR ELSIF current_power<normal_move_power THEN result:=INSUFFICIENT_POWER ELSIF prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1: asteroids_positions THEN current_power:=current_power-collision_power_loss || asteroid_collisions:=asteroid_collisions+1 || result:=ASTEROID_COLLISION ELSE current_position:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 || current_power:=current_power-normal_move_power || visited_routes:=visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1) || IF prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 = star_base THEN result:=BASE_REACH ELSE result:=SUCCESSFUL END END);
  Expanded_List_Substitution(Machine(Game),MoveUp)==(result: REPORT | prj2(X_range,Y_range)(current_position)+1/:ran(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj2(X_range,Y_range)(current_position)+1/:ran(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1: asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1: asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1,current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1) || (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)+1 = star_base) ==> result:=SUCCESSFUL)))));
  List_Substitution(Machine(Game),MoveDown)==(IF prj2(X_range,Y_range)(current_position)-1/:ran(space_squares) THEN result:=BOUNDARY_ERROR ELSIF current_power<normal_move_power THEN result:=INSUFFICIENT_POWER ELSIF prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1: asteroids_positions THEN current_power:=current_power-collision_power_loss || asteroid_collisions:=asteroid_collisions+1 || result:=ASTEROID_COLLISION ELSE current_position:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 || current_power:=current_power-normal_move_power || visited_routes:=visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1) || IF prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 = star_base THEN result:=BASE_REACH ELSE result:=SUCCESSFUL END END);
  Expanded_List_Substitution(Machine(Game),MoveDown)==(result: REPORT | prj2(X_range,Y_range)(current_position)-1/:ran(space_squares) ==> result:=BOUNDARY_ERROR [] not(prj2(X_range,Y_range)(current_position)-1/:ran(space_squares)) ==> (current_power<normal_move_power ==> result:=INSUFFICIENT_POWER [] not(current_power<normal_move_power) ==> (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1: asteroids_positions ==> current_power,asteroid_collisions,result:=current_power-collision_power_loss,asteroid_collisions+1,ASTEROID_COLLISION [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1: asteroids_positions) ==> (current_position,current_power,visited_routes:=prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1,current_power-normal_move_power,visited_routes<-(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1) || (prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 = star_base ==> result:=BASE_REACH [] not(prj1(X_range,Y_range)(current_position)|->prj2(X_range,Y_range)(current_position)-1 = star_base) ==> result:=SUCCESSFUL)))));
  List_Substitution(Machine(Game),ResetLocation)==(current_position:=home_base || current_power:=power || asteroid_collisions:=0 || result:=SUCCESSFUL);
  Expanded_List_Substitution(Machine(Game),ResetLocation)==(result: REPORT & power: NAT & power<=max_power | current_position,current_power,asteroid_collisions,result:=home_base,power,0,SUCCESSFUL);
  List_Substitution(Machine(Game),StartGame)==(result <-- ResetLocation(power));
  List_Substitution(Machine(Game),MoveSpaceship)==(CASE direction OF EITHER UP THEN result <-- MoveUp OR DOWN THEN result <-- MoveDown OR LEFT THEN result <-- MoveLeft OR RIGHT THEN result <-- MoveRight ELSE result:=ERROR END END);
  List_Substitution(Machine(Game),WarpSpaceship)==(result <-- WarpDrive(new_position));
  List_Substitution(Machine(Game),CheckGameStatus)==(status <-- MissionStatus);
  List_Substitution(Machine(Game),getVisitedRoutes)==(routes <-- Mission_Routs)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Game))==(normal_move_power,warp_drive_power,collision_power_loss,max_power);
  Inherited_List_Constants(Machine(Game))==(normal_move_power,warp_drive_power,collision_power_loss,max_power);
  List_Constants(Machine(Game))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Game),Lables)==({MISSION_STATUS,CURRENT_POSITION,CURRENT_POWER,ASTEROID_COLLISIONS});
  Context_List_Enumerated(Machine(Game))==(GAME_STATUS,REPORT);
  Context_List_Defered(Machine(Game))==(?);
  Context_List_Sets(Machine(Game))==(GAME_STATUS,REPORT);
  List_Valuable_Sets(Machine(Game))==(?);
  Inherited_List_Enumerated(Machine(Game))==(Lables);
  Inherited_List_Defered(Machine(Game))==(?);
  Inherited_List_Sets(Machine(Game))==(Lables);
  List_Enumerated(Machine(Game))==(DRECTIONS);
  List_Defered(Machine(Game))==(?);
  List_Sets(Machine(Game))==(DRECTIONS);
  Set_Definition(Machine(Game),REPORT)==({SUCCESSFUL,BASE_REACH,BOUNDARY_ERROR,ASTEROID_COLLISION,INSUFFICIENT_POWER,ERROR});
  Set_Definition(Machine(Game),GAME_STATUS)==({WON,LOST,NOT_OVER});
  Set_Definition(Machine(Game),DRECTIONS)==({UP,DOWN,LEFT,RIGHT})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Game))==(?);
  Expanded_List_HiddenConstants(Machine(Game))==(?);
  List_HiddenConstants(Machine(Game))==(?);
  External_List_HiddenConstants(Machine(Game))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Game))==(btrue);
  Context_List_Properties(Machine(Game))==(max_X: NAT1 & max_X = 12 & max_Y: NAT1 & max_Y = 7 & X_range <: NAT1 & X_range = 1..max_X & Y_range <: NAT1 & Y_range = 1..max_Y & space_squares: X_range <-> Y_range & space_squares = X_range*Y_range & home_base: space_squares & home_base = 1|->1 & star_base: space_squares & star_base = 6|->4 & asteroids_positions <: space_squares & asteroids_positions = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5} & GAME_STATUS: FIN(INTEGER) & not(GAME_STATUS = {}) & REPORT: FIN(INTEGER) & not(REPORT = {}));
  Inherited_List_Properties(Machine(Game))==(normal_move_power: NAT & normal_move_power = 5 & warp_drive_power: NAT & warp_drive_power = 20 & collision_power_loss: NAT & collision_power_loss = 10 & max_power: NAT & max_power = 100 & Lables: FIN(INTEGER) & not(Lables = {}));
  List_Properties(Machine(Game))==(DRECTIONS: FIN(INTEGER) & not(DRECTIONS = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Game),Machine(GameStatusMechine))==(?);
  Seen_Context_List_Enumerated(Machine(Game))==(?);
  Seen_Context_List_Invariant(Machine(Game))==(btrue);
  Seen_Context_List_Assertions(Machine(Game))==(btrue);
  Seen_Context_List_Properties(Machine(Game))==(btrue);
  Seen_List_Constraints(Machine(Game))==(btrue);
  Seen_List_Operations(Machine(Game),Machine(GameStatusMechine))==(?);
  Seen_Expanded_List_Invariant(Machine(Game),Machine(GameStatusMechine))==(btrue);
  Seen_Internal_List_Operations(Machine(Game),Machine(SpaceshipMap))==(?);
  Seen_List_Operations(Machine(Game),Machine(SpaceshipMap))==(?);
  Seen_Expanded_List_Invariant(Machine(Game),Machine(SpaceshipMap))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Game),Mission_Routs)==(?);
  List_ANY_Var(Machine(Game),MoveRight)==(?);
  List_ANY_Var(Machine(Game),MoveLeft)==(?);
  List_ANY_Var(Machine(Game),MoveUp)==(?);
  List_ANY_Var(Machine(Game),MoveDown)==(?);
  List_ANY_Var(Machine(Game),ResetLocation)==(?);
  List_ANY_Var(Machine(Game),StartGame)==(?);
  List_ANY_Var(Machine(Game),MoveSpaceship)==(?);
  List_ANY_Var(Machine(Game),WarpSpaceship)==(?);
  List_ANY_Var(Machine(Game),CheckGameStatus)==(?);
  List_ANY_Var(Machine(Game),getVisitedRoutes)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Game)) == (DRECTIONS,UP,DOWN,LEFT,RIGHT | normal_move_power,warp_drive_power,collision_power_loss,max_power,Lables,MISSION_STATUS,CURRENT_POSITION,CURRENT_POWER,ASTEROID_COLLISIONS | game_status | V,visited_routes,asteroid_collisions,current_power,current_position | StartGame,MoveSpaceship,WarpSpaceship,CheckGameStatus,getVisitedRoutes | MoveUp,MoveDown,MoveLeft,MoveRight,ResetLocation,Mission_Routs | seen(Machine(SpaceshipMap)),seen(Machine(GameStatusMechine)),included(Machine(Spaceship)) | ? | Game);
  List_Of_HiddenCst_Ids(Machine(Game)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Game)) == (normal_move_power,warp_drive_power,collision_power_loss,max_power);
  List_Of_VisibleVar_Ids(Machine(Game)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game)) == (seen(Machine(GameStatusMechine)): (GAME_STATUS,REPORT,WON,LOST,NOT_OVER,SUCCESSFUL,BASE_REACH,BOUNDARY_ERROR,ASTEROID_COLLISION,INSUFFICIENT_POWER,ERROR | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(SpaceshipMap)): (max_X,max_Y,space_squares,X_range,Y_range,asteroids_positions,home_base,star_base | ? | ? | ? | ? | ? | ? | ? | ?));
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
  Sets(Machine(Game)) == (Type(Lables) == Cst(SetOf(etype(Lables,0,3)));Type(DRECTIONS) == Cst(SetOf(etype(DRECTIONS,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Game)) == (Type(max_power) == Cst(btype(INTEGER,?,?));Type(collision_power_loss) == Cst(btype(INTEGER,?,?));Type(warp_drive_power) == Cst(btype(INTEGER,?,?));Type(normal_move_power) == Cst(btype(INTEGER,?,?));Type(ASTEROID_COLLISIONS) == Cst(etype(Lables,0,3));Type(CURRENT_POWER) == Cst(etype(Lables,0,3));Type(CURRENT_POSITION) == Cst(etype(Lables,0,3));Type(MISSION_STATUS) == Cst(etype(Lables,0,3));Type(UP) == Cst(etype(DRECTIONS,0,3));Type(DOWN) == Cst(etype(DRECTIONS,0,3));Type(LEFT) == Cst(etype(DRECTIONS,0,3));Type(RIGHT) == Cst(etype(DRECTIONS,0,3)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Game)) == (Type(current_position) == Mvl(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(current_power) == Mvl(btype(INTEGER,?,?));Type(asteroid_collisions) == Mvl(btype(INTEGER,?,?));Type(visited_routes) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(game_status) == Mvl(etype(GAME_STATUS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Game)) == (Type(MoveUp) == Cst(etype(REPORT,?,?),No_type);Type(MoveDown) == Cst(etype(REPORT,?,?),No_type);Type(MoveLeft) == Cst(etype(REPORT,?,?),No_type);Type(MoveRight) == Cst(etype(REPORT,?,?),No_type);Type(ResetLocation) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?));Type(Mission_Routs) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(getVisitedRoutes) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(CheckGameStatus) == Cst(etype(Lables,0,3)*etype(GAME_STATUS,0,2)*(etype(Lables,0,3)*(btype(INTEGER,?,?)*btype(INTEGER,?,?)))*(etype(Lables,0,3)*btype(INTEGER,?,?))*(etype(Lables,0,3)*btype(INTEGER,?,?)),No_type);Type(WarpSpaceship) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveSpaceship) == Cst(etype(REPORT,?,?),etype(DRECTIONS,?,?));Type(StartGame) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)));
  Observers(Machine(Game)) == (Type(Mission_Routs) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(getVisitedRoutes) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(CheckGameStatus) == Cst(etype(Lables,0,3)*etype(GAME_STATUS,0,2)*(etype(Lables,0,3)*(btype(INTEGER,?,?)*btype(INTEGER,?,?)))*(etype(Lables,0,3)*btype(INTEGER,?,?))*(etype(Lables,0,3)*btype(INTEGER,?,?)),No_type);Type(WarpSpaceship) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveSpaceship) == Cst(etype(REPORT,?,?),etype(DRECTIONS,?,?));Type(StartGame) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)))
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
