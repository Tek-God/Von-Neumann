Mod To-Do:
-Update mod description to give idea of gameplay
-Update intro text
-Version indicator in-game?
-Tutorial button in top left?
-Disable player based items (armor, guns, etc)
-Unlock nightvision for godmode without armor when researched?
-Improve 'disallowed action' texts: e.g. "Thuro tried to pick up inserter" -> "Thuro tried to pick up inserter but that is not allowed, use robots!"
-More toolbars to deal with ghost on toolbar issue?
-Maybe give player some basic decon BPs (tree/rock only, ground item only) as starter?
-Prevent player trying to ghost unique items: repaired lab, chest, assemblers, electricity generator
-When items are spilled, don't say player tried to pick them up?
-Scenario ends if main structure is destroyed?

Interesting notes:
-Once a roboport is placed, robots will try to service the area even before it has power (e.g. pick up decon marked items)


-Give players 1 roboport and 5 logic&construction robots with each research, they could just be spilled on ground

-Spread out tutorial buildings
-Biters drop computers because they are competing AIs
-Can we make invisible players?
-Can god players see through fog-of-war? Can I control fog-of-war?

-Give error messages to players making error
-Each research gives more robot/ports
-Disabled research prevents future research?

-Make railbot construction cost energy

-Give way to locate Railbot
-Disable recipes

0.17.75:
- Added filtering support for several common Lua events.

0.17.69:
- Added LuaStyle::rich_text_setting read/write for labels, text boxes, and text fields.
- Added LuaPlayer::request_translation().


grey belts


/c rendering.draw_circle{target={32,0},surface="nauvis",radius=0.1,color={0,1,0},width=1,filled=false,draw_on_ground=false}

/c rendering.draw_polygon{vertices={{target={32,0}},{target={0,32}},{target={32,32}}},surface="nauvis",color={0,0,1}}

/c rendering.draw_line{from={0,0},to={32,32},surface="nauvis",color={0,0,1},width=1}


Angels Petrochem Incompatibility.
https://mods.factorio.com/mod/vonNeumann/discussion/5de1b62f082e2b000b9923c8


data.raw["character-corpse"]["character-corpse"].time_to_live





















/c game.surfaces["nauvis"].spill_item_stack({0,0},{name="roboport", count=20},false,"player",false)
/c game.surfaces["nauvis"].spill_item_stack({0,0},{name="roboport", count=20},false,"player",false)

/c game.print(serpent.block(vonn.acceptable_inventory))

/c vonn.acceptable_inventory["rail"]=true
/c vonn.acceptable_inventory["speed-module"]=true
/c vonn.acceptable_inventory["productivity-module"]=true
/c vonn.acceptable_inventory["effectivity-module"]=true

/c local friendly_units = game.player.surface.find_entities_filtered({force = "player", name="railbot"})
game.print(#friendly_units)
friendly_units[1].set_command{type = defines.command.go_to_location,destination = game.player.position,}
game.print(friendly_units[1].force.name)


/c game.surfaces["nauvis"].spill_item_stack({0,0},{name="automation-science-pack", count=600},false,"player",false)
 game.surfaces["nauvis"].spill_item_stack({0,0},{name="lab", count=4},false,"player",false)
 game.surfaces["nauvis"].spill_item_stack({0,0},{name="inserter", count=4},false,"player",false)

/c for i,t in pairs(game.player.force.technologies) do log(t.name .. "  " .. tostring(t.enabled) .. tostring(t.visible_when_disabled) .. tostring(t.researched) .. t.level ) end


/c for i,t in pairs(game.player.force.technologies) do t.visible_when_disabled=true end


/c game.player.surface.create_entity{name="atomic-rocket",position={0,0},target={350,0},speed=0.01,max_range=2000}

/c game.player.surface.create_entity{name="poison-capsule",position={0,0},target=game.player.selected,speed=0.0001,max_range=2000}

/c game.player.surface.create_entity{name="fire-flame",position={0,20},initial_ground_flame_count=50}

/c game.player.surface.create_entity{name="fire-flame",position=game.player.selected.position,initial_ground_flame_count=254} game.player.selected.die()

/c game.forces['player'].recipes["derpy-artillery-ammo"].enabled = true
/c game.forces['player'].recipes["derpy-artillery"].enabled = true


/c game.player.character = game.player.surface.create_entity{name="vonn",position={0,0},force="player"}


/c rendering.draw_circle{target={32,0},surface="nauvis",radius=0.1,color={0,1,0},width=1,filled=false,draw_on_ground=false}

/c rendering.draw_polygon{vertices={{target={32,0}},{target={0,32}},{target={32,32}}},surface="nauvis",color={0,0,1}}

/c game.player.force.research_all_technologies()


I'm I doing something wrong? I'm using `rendering.draw_line` to draw vertical and horizontal lines. The vertical lines have 0.9 alpha color, and the horizontal lines have 0.1 alpha color, but the white lines don't appear to be respecting alpha setting, but the black lines are.
When using alpha on color, alpha for white and black should act the same? AKA `{0,0,0,0.1}` and `{1,1,1,0.1}` should both be nearly invisible, correct?



local handler = require("event_handler")
handler.add_lib(require("freeplay"))
handler.add_lib(require("silo-script"))



/c t=game.forces[1].find_chart_tags(game.surfaces[1] ) for _,i in pairs(t) do i.destroy() end


