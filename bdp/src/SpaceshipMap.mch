/* SpaceshipMap
 * Author: Janindu Pathirana
 * Creation date: 2023-11-20
 */
MACHINE
    SpaceshipMap


CONCRETE_CONSTANTS
    max_X ,
    max_Y ,
    space_squares ,
    X_range ,
    Y_range ,
    asteroids_positions ,
    home_base ,
    star_base


PROPERTIES
    max_X : NAT1 & max_X = 12 &
    max_Y : NAT1 & max_Y = 7 &
    X_range <: NAT1 & X_range = 1 .. max_X &
    Y_range <: NAT1 & Y_range = 1 .. max_Y &
    space_squares : X_range <-> Y_range &
    space_squares = X_range * Y_range
    &
    home_base : space_squares & home_base = ( 1 |-> 1 ) &
    star_base : space_squares & star_base = ( 6 |-> 4 )
    &
    asteroids_positions <: space_squares &
    asteroids_positions = { 3 |-> 2 , 3 |-> 5 , 5 |-> 4 , 6 |-> 7 , 7 |-> 1 , 7 |-> 5 , 7 |-> 7 , 8 |-> 3 , 10 |-> 6 , 11 |-> 2 , 12 |-> 5 }

END
