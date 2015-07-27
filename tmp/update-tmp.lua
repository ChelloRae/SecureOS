local fs = require("filesystem")
local shell = require("shell")

if not fs.exists("/tmp/update-tmp.cfg") then
  u = io.open("/etc/update.cfg", "r")
     textu = u:read()
      u:close()
else
  u = io.open("/tmp/update-tmp.cfg", "r")
   textu = u:read()
    u:close()
end

shell.execute("wget -fq https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/tmp/depreciated.dat /tmp/depreciated.dat \n")
print("Checking for depreciated packages.")

local function depreciated()
  local env = {}
  local config = loadfile("/tmp/depreciated.dat", nil, env)
  if config then
    pcall(config)
  end
  return env.depreciated
end

local depreciated = depreciated()

for i = 1, #depreciated do
  os.remove(shell.resolve(depreciated[i]))

end

shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/boot/z_login.lua /boot/z_login.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/root/sudo.lua /root/sudo.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/logout.lua /bin/logout.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/df.lua /bin/df.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/adduser.lua /bin/adduser.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/deluser.lua /bin/deluser.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/lib/sha256.lua /lib/sha256.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/lib/auth.lua /lib/auth.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/init.lua /init.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/.osprop /.osprop \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/etc/motd /etc/motd \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/usr/man/update /usr/man/update \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/usr/man/adduser /usr/man/adduser \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/usr/man/deluser /usr/man/deluser \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/usr/man/passwd /usr/man/passwd \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/update.lua /bin/update.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/boot/94_shell.lua /boot/94_shell.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/root/blacklist.dat /root/blacklist.dat \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/passwd.lua /bin/passwd.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/usr/misc/greetings.txt /usr/misc/greetings.txt \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/lib/filesystem.lua /lib/filesystem.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/edit.lua /bin/edit.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/flash.lua /bin/flash.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/shutdown.lua /bin/shutdown.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/root/su.lua /root/su.lua \n")
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/sh.lua /bin/sh.lua \n")
os.sleep(1.5)

-- Template = shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/<path>/<script> /<dest path>/<dest script> \n")
