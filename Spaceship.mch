/* Spaceship
 * Author: Janindu Pathirana
 * Creation date: 2023-11-20
 */
MACHINE
    Spaceship   
    
SEES
    GameStatusMechine,SpaceshipMap

SETS
    Lables = {MISSION_STATUS,CURRENT_POSITION,CURRENT_POWER,ASTEROID_COLLISIONS}
    
CONSTANTS
    normal_move_power,
    warp_drive_power,
    collision_power_loss,
    max_power
    
    
PROPERTIES
    normal_move_power : NAT & normal_move_power = 5 &
    warp_drive_power : NAT & warp_drive_power = 20 &
    collision_power_loss : NAT & collision_power_loss = 10 &
    max_power : NAT & max_power = 100
    
    
VARIABLES
    current_position,
    current_power,
    asteroid_collisions,
    visited_routes
    
    
INVARIANT
    current_position : space_squares &
    current_power : NAT & current_power <= max_power &
    asteroid_collisions : NAT &
    visited_routes : seq(space_squares)
    
    
INITIALISATION
    current_position := home_base ||
    current_power := 0 ||
    asteroid_collisions := 0 || 
    visited_routes := [home_base]

    
OPERATIONS
    result <-- ResetLocation(power) = 
    PRE
        result : REPORT &
        power : NAT & power <= max_power
    THEN
        current_position := home_base ||
        current_power := power ||
        asteroid_collisions := 0 ||
        result := SUCCESSFUL
    END;
    
    result <-- MoveDown = 
    PRE
        result : REPORT
    THEN
        IF prj2(X_range, Y_range)(current_position) - 1 /: ran(space_squares) THEN
            result := BOUNDARY_ERROR
         
         ELSIF current_power < normal_move_power THEN
             result := INSUFFICIENT_POWER
            
            
        ELSIF (prj1(X_range, Y_range)(current_position) |-> (prj2(X_range, Y_range)(current_position) - 1) : asteroids_positions) THEN
            current_power := current_power - collision_power_loss ||
            asteroid_collisions := asteroid_collisions + 1 ||
            result := ASTEROID_COLLISION
            
        ELSE
            current_position := prj1(X_range, Y_range)(current_position) |-> (prj2(X_range, Y_range)(current_position) - 1) ||
            current_power := current_power - normal_move_power ||
            
            visited_routes := visited_routes <- ( prj1(X_range, Y_range)(current_position) |-> (prj2(X_range, Y_range)(current_position) - 1)  ) ||
            

            IF prj1(X_range, Y_range)(current_position) |-> (prj2(X_range, Y_range)(current_position) - 1)  = star_base THEN
                result := BASE_REACH
            ELSE
                result := SUCCESSFUL
            END
            
        END
    END;
    
    result <-- MoveUp = 
    PRE
        result : REPORT
    THEN
        IF prj2(X_range, Y_range)(current_position) + 1 /: ran(space_squares) THEN
            result := BOUNDARY_ERROR
                  
         ELSIF current_power < normal_move_power THEN
             result := INSUFFICIENT_POWER
            
        ELSIF (prj1(X_range, Y_range)(current_position) |-> (prj2(X_range, Y_range)(current_position) + 1) : asteroids_positions) THEN
            current_power := current_power - collision_power_loss ||
            asteroid_collisions := asteroid_collisions + 1 ||
            result := ASTEROID_COLLISION
        
        ELSE
            current_position := prj1(X_range, Y_range)(current_position) |-> (prj2(X_range, Y_range)(current_position) + 1) ||
            current_power := current_power - normal_move_power ||
            
             visited_routes := visited_routes <- ( prj1(X_range, Y_range)(current_position) |-> (prj2(X_range, Y_range)(current_position) + 1)  ) ||
            
             IF prj1(X_range, Y_range)(current_position) |-> (prj2(X_range, Y_range)(current_position) + 1) = star_base THEN
                result := BASE_REACH
            ELSE
                result := SUCCESSFUL
            END
            
        END
    END;
    
    result <-- MoveLeft = 
    PRE
        result : REPORT
    THEN
        IF prj1(X_range, Y_range)(current_position) - 1 /: dom(space_squares) THEN
            result := BOUNDARY_ERROR
            
         ELSIF current_power < normal_move_power THEN
             result := INSUFFICIENT_POWER
            
        ELSIF ((prj1(X_range, Y_range)(current_position) - 1) |-> prj2(X_range, Y_range)(current_position) : asteroids_positions) THEN
            current_power := current_power - collision_power_loss ||
            asteroid_collisions := asteroid_collisions + 1 ||
            result := ASTEROID_COLLISION
        
        ELSE
            current_position := (prj1(X_range, Y_range)(current_position) - 1) |-> prj2(X_range, Y_range)(current_position) ||
            current_power := current_power - normal_move_power ||
            
            visited_routes := visited_routes <- ( (prj1(X_range, Y_range)(current_position) - 1) |-> prj2(X_range, Y_range)(current_position) ) ||
            
            IF (prj1(X_range, Y_range)(current_position) - 1) |-> prj2(X_range, Y_range)(current_position)  = star_base THEN
                result := BASE_REACH
            ELSE
                result := SUCCESSFUL
            END
            
        END
    END;
    
    result <-- MoveRight = 
    PRE
        result : REPORT
    THEN
        IF prj1(X_range, Y_range)(current_position) + 1 /: dom(space_squares) THEN
            result := BOUNDARY_ERROR
            
         ELSIF current_power < normal_move_power THEN
             result := INSUFFICIENT_POWER
            
        ELSIF ((prj1(X_range, Y_range)(current_position) + 1) |-> prj2(X_range, Y_range)(current_position) : asteroids_positions) THEN
            current_power := current_power - collision_power_loss ||
            asteroid_collisions := asteroid_collisions + 1 ||
            result := ASTEROID_COLLISION       
        
        ELSE
            current_position := (prj1(X_range, Y_range)(current_position) + 1) |-> prj2(X_range, Y_range)(current_position) ||
            current_power := current_power - normal_move_power ||
            
            visited_routes := visited_routes <- ( (prj1(X_range, Y_range)(current_position) + 1) |-> prj2(X_range, Y_range)(current_position) ) ||
           
            IF (prj1(X_range, Y_range)(current_position) + 1) |-> prj2(X_range, Y_range)(current_position)  = star_base THEN
                result := BASE_REACH
            ELSE
                result := SUCCESSFUL
            END
            
        END
    END;
    
    result <-- WarpDrive(new_position) = 
    PRE
        result : REPORT &
        new_position : space_squares
    THEN

        IF current_power  >= warp_drive_power THEN
            
             current_power := current_power - warp_drive_power ||
             
            IF new_position : asteroids_positions THEN
                result := ASTEROID_COLLISION
            ELSIF new_position = star_base THEN
                current_position := new_position ||
                result := BASE_REACH
            ELSE
                current_position := new_position ||
                result := SUCCESSFUL
            END
            
        ELSE
            result := INSUFFICIENT_POWER
        END
    END;

    status <-- MissionStatus = 
    BEGIN
        IF current_position = star_base THEN
            
            status := ((MISSION_STATUS|->WON) |-> (CURRENT_POSITION|->current_position) |-> (CURRENT_POWER |-> current_power) |-> (ASTEROID_COLLISIONS |-> asteroid_collisions))
            
        ELSIF current_power <= 0 THEN
            
            status := ((MISSION_STATUS|->LOST) |-> (CURRENT_POSITION|->current_position) |-> (CURRENT_POWER |-> current_power) |-> (ASTEROID_COLLISIONS |-> asteroid_collisions))

        ELSE
            
            status := ((MISSION_STATUS|->NOT_OVER) |-> (CURRENT_POSITION|->current_position) |-> (CURRENT_POWER |-> current_power) |-> (ASTEROID_COLLISIONS |-> asteroid_collisions))
            
        END
    END;
    
    routes <-- Mission_Routs = 
    BEGIN
        routes := visited_routes
    END
    
END