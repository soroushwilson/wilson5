local data = load_data(_config.moderation.data)
local function run(msg, matches)
       group_link = data[tostring(idgroup)]['settings']['set_link']
    if matches[1] == 'version' then 
  return '===============\n️Support Group Link:\n'..group_link..'🔱'
end
  patterns = {
    "^!version$"
  },
  run = run
}
--[[shared by @appsvg]]
