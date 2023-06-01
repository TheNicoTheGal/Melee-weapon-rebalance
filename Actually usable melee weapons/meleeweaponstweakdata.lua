Hooks:PostHook(BlackMarketTweakData, "_init_melee_weapons", "poop", function (self)
  self.melee_weapons.shawn.expire_t = 1.0
  self.melee_weapons.ballistic.expire_t = 1.0
  self.melee_weapons.wing.expire_t = 0.8
  self.melee_weapons.pitchfork.expire_t = 1.0
  self.melee_weapons.stick.expire_t = 1.2
  self.melee_weapons.fireaxe.expire_t = 1.4
  self.melee_weapons.taser.expire_t = 0.9
  
  ---do not let this go in a public versin, its the OP4 knife with shank stuff
  ---also this is the OP4 knife
  self.melee_weapons.rambo.anim_global_param = "melee_stab"
  self.melee_weapons.rambo.align_objects = {
        "a_weapon_right"
    }
  self.melee_weapons.rambo.repeat_expire_t = 0.3
  self.melee_weapons.rambo.expire_t = 1
  self.melee_weapons.rambo.stats.charge_time = 2
  
  ---bayonet
  
  self.melee_weapons.bayonet.anim_global_param = "melee_stab"
  self.melee_weapons.bayonet.align_objects = {
        "a_weapon_right"
    }
  self.melee_weapons.bayonet.repeat_expire_t = 0.3
  self.melee_weapons.bayonet.expire_t = 1
  self.melee_weapons.bayonet.stats.charge_time = 2
  self.melee_weapons.bayonet.stats.min_damage = 3
  self.melee_weapons.bayonet.stats.max_damage = 8
  self.melee_weapons.bayonet.stats.min_damage_effect = 1
  self.melee_weapons.bayonet.stats.max_damage_effect = 1
  self.melee_weapons.bayonet.stats.range = 200
  
---Gerber  
  self.melee_weapons.gerber.repeat_expire_t = 0.3
  self.melee_weapons.gerber.expire_t = 1
  self.melee_weapons.gerber.stats.charge_time = 2
  
  self.melee_weapons.gerber.anim_global_param = "melee_stab"
  self.melee_weapons.gerber.align_objects = {
        "a_weapon_right"
    }
  self.melee_weapons.gerber.repeat_expire_t = 0.3
  self.melee_weapons.gerber.expire_t = 1
  self.melee_weapons.gerber.stats.charge_time = 2
  self.melee_weapons.gerber.stats.concealment = 30
  self.melee_weapons.gerber.stats.range = 200
  

  ---testing shakeremover
for _, data in pairs(self.melee_weapons) do
  data.melee_charge_shaker = "poop_mom"
end

---table stuff for copy stats

local stats = {
  melee_fist = {
    stats = {
      range = 150,
      min_damage = 2,
	  max_damage = 4,
	  max_damage_effect = 6,
	  min_damage_effect = 4,
	  charge_time = 1,
	  concealment = 30,
    },
  },
  melee_axe = {
    stats = {
	  min_damage = 7,
	  max_damage = 45,
	  min_damage_effect = 1,
	  max_damage_effect = 1,
	  range = 250,
	  charge_time = 4,
	  expire_t = 0.6,
	  repeat_expire_t = 0.8,
	  concealment = 30,
  },
  },
    melee_machete = {
    stats = {
	  min_damage = 7,
	  max_damage = 45,
	  min_damage_effect = 1,
	  max_damage_effect = 1,
	  range = 250,
	  charge_time = 4,
	  expire_t = 0.6,
	  repeat_expire_t = 0.8,
	  concealment = 30,
  },
  },
  
    melee_stab = {
    stats = {
	  min_damage = 5,
	  max_damage = 30,
	  min_damage_effect = 1,
	  max_damage_effect = 1,
	  range = 200,
	  charge_time = 2,
	  expire_t = 1,
	  repeat_expire_t = 0.3,
	  concealment = 30,
  },
  },
  
}

for _, data in pairs(self.melee_weapons) do
  local stats = stats[data.anim_global_param]
  if stats then
    for stat_name, stat_value in pairs(stats) do
      if type(stat_value) == "table" then
        for k, v in pairs(stat_value) do
          data[stat_name][k] = v
        end
      else
        data[stat_name] = stat_value
      end
    end
  end
end

end)