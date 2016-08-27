local function run(msg, matches)
local receiver = get_receiver(msg)
if matches[1] == 'kickme' then
local hash = 'kick:'..msg.to.id..':'..msg.from.id
     redis:set(hash, "waite")
   send_document(receiver, "./photo/kickme.webp", ok_cb, false)
    
    end

    if msg.text then
  local hash = 'kick:'..msg.to.id..':'..msg.from.id
      if msg.text:match("^yes$") and redis:get(hash) == "waite" then
    redis:set(hash, "ok")
  elseif msg.text:match("^no$") and redis:get(hash) == "waite" then
 
  send_document(receiver, "./photo/cancell.webp", ok_cb, false)
    redis:del(hash, true)

  end
end
  local hash = 'kick:'..msg.to.id..':'..msg.from.id
   if redis:get(hash) then
        if redis:get(hash) == "ok" then
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false)
         return '❌کاربر مورد نظر بنابر درخواست خود از گروه ('..msg.to.title..') اخراج شد'
        end
      end
    end
  


return {
  patterns = {
  "^[!/#]kickme$",
"^yes$",
  "^no$"
  },
  run = run,
}
