/* Game
 * Author: Janindu Pathirana
 * Creation date: 2023-11-20
 */
MACHINE
    Game

INCLUDES Spaceship

PROMOTES
    MoveUp ,
    MoveDown ,
    MoveLeft ,
    MoveRight ,
    ResetLocation ,
    Mission_Routs

SEES
    SpaceshipMap , GameStatusMechine

SETS
    DRECTIONS = { UP , DOWN , LEFT , RIGHT }

ABSTRACT_VARIABLES
    game_status

INVARIANT
    game_status : GAME_STATUS

INITIALISATION
    game_status := NOT_OVER

OPERATIONS

    result <-- StartGame ( power ) =
    PRE
        result : REPORT &
        power : NAT & power <= max_power
    THEN
        result <-- ResetLocation ( power )
    END ;

//    result <-- NewGame(power) = 
//    PRE
//        result : REPORT &
//        power : NAT & power <= max_power
//    THEN
//        current_position := home_base ||
//        current_power := power ||
//        asteroid_collisions := 0 ||
//        result := SUCCESSFUL
//    END;

    result <-- MoveSpaceship ( direction ) =
    PRE
        result : REPORT  &
        direction : DRECTIONS
    THEN
        CASE direction OF
          EITHER
            UP THEN
             result <--  MoveUp
          OR
            DOWN THEN
               result <-- MoveDown
          OR
            LEFT THEN
               result <-- MoveLeft
          OR
            RIGHT THEN
              result <-- MoveRight
           ELSE
               result := ERROR
        END

    END
END ;

result <-- WarpSpaceship ( new_position ) =
    PRE
        result : REPORT &
        new_position : space_squares
    THEN
        result <-- WarpDrive ( new_position )
    END ;

status <-- CheckGameStatus =
    BEGIN
        status <-- MissionStatus
    END ;

routes <-- getVisitedRoutes =
    BEGIN
        routes <-- Mission_Routs
    END

END
