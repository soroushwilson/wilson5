do

function run(msg, matches)
local reply_id = msg['id']
local url = "http://uupload.ir/files/1o3y_photo_2016-07-21_20-25-35.jpg"
local receiver = get_receiver(msg)
local file = download_to_file(url)
local text = '🔖 نام :\n'..msg.from.first_name..''..msg.from.last_name..'\n🎫 نام کاربری:\n'..msg.from.username..'\n💡 آیدی:\n'..msg.from.id..'\n⏳ آخرین بازدید : \nنا مشخص'
if matches[1] == 'res' then
send_photo2(receiver, file, text, rmtmp_cb, cb_extra)
end
end
return {
patterns = {
    "^[/#!]([Rr]es)$",
    "^[/#!]([Rr]es) (.*)$"
},
run = run
}

end
