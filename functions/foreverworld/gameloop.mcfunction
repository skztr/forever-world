function foreverworld:init/chamber if @a[score_fwinit_min=1,score_fwinit=1,m=spectator,x=0,y=4,z=-29999900,r=0]

# always respawn into the holding chamber
spawnpoint @a 0 4 -29999900
function foreverworld:ondeath if @a[score_fwdied_min=1]
