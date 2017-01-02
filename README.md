Building with buildroot
------------------------
1. Clone buildroot from buildroot git (>=v2016.11)
2. Clone current repo
3. make BR2_EXTERNAL_CI40_CREATOR=</path/to/current/repo> ci40_defconfig // For setting ci40 config
4. make BR2_EXTERNAL_CI40_CREATOR=</path/to/current/repo> manuconfig // For config changes
5. make


uccp420wlan module
-------------------
1. Modprobe uccp420wlan module with/without mac_address
# modprobe uccp420wlan mac_addr=<mac_add> #ex: mac_addr=E25BB76AAB03

If mac_addr parameter is not passed it will try to use mac address from dts file.
In default dts mac_addr is not present so you would need to add that field to be
able to use it.
