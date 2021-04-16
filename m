Subject: #yocto #bitbake #gatesgarth #qca9377
To: yocto@lists.yoctoproject.org
From: jovanalukovic0@gmail.com
X-Originating-Location: Crkvenac, Pomoravlje, RS (93.86.229.96)
X-Originating-Platform: Linux Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 16 Apr 2021 05:46:45 -0700
Message-ID: <CzFv.1618577205602752374.Mm6j@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IRPU6luHPcEZVQDQwKfG"

--IRPU6luHPcEZVQDQwKfG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to include qca9377 module in my image (yocto-gatesgarth). I am=
 using command=C2=A0 bitbake imx-image-full, and i added two lines in my lo=
cal.conf file: MACHINE_FEATURES +=3D " qca9377"
IMAGE_INSTALL_append +=3D " kernel-module-qca9377", but i get constantly t=
he same mistake:
ERROR: kernel-module-qca9377-3.1-r0 do_compile: oe_runmake failed
ERROR: kernel-module-qca9377-3.1-r0 do_compile: Execution of '/home/jovana=
/Projects/imx-yocto-bsp-gates/build-xwayland/tmp/work/imx7ulpevk-poky-linux=
-gnueabi/kernel-module-qca9377/3.1-r0/temp/run.do_compile.25256' failed wit=
h exit code 1:
make -C /home/jovana/Projects/imx-yocto-bsp-gates/build-xwayland/tmp/work-=
shared/imx7ulpevk/kernel-source M=3D/home/jovana/Projects/imx-yocto-bsp-gat=
es/build-xwayland/tmp/work/imx7ulpevk-poky-linux-gnueabi/kernel-module-qca9=
377/3.1-r0/git modules WLAN_ROOT=3D/home/jovana/Projects/imx-yocto-bsp-gate=
s/build-xwayland/tmp/work/imx7ulpevk-poky-linux-gnueabi/kernel-module-qca93=
77/3.1-r0/git MODNAME?=3Dwlan CONFIG_QCA_WIFI_ISOC=3D0 CONFIG_QCA_WIFI_2_0=
=3D1 CONFIG_QCA_CLD_WLAN=3Dm WLAN_OPEN_SOURCE=3D1
make[1]: Entering directory '/home/jovana/Projects/imx-yocto-bsp-gates/bui=
ld-xwayland/tmp/work-shared/imx7ulpevk/kernel-source'
make[2]: Entering directory '/home/jovana/Projects/imx-yocto-bsp-gates/bui=
ld-xwayland/tmp/work-shared/imx7ulpevk/kernel-build-artifacts'
and this is just a part of whole group of mistakes. There are a lot of mis=
takes, for examples:
cc1: some warnings being treated as errors
| /home/jovana/Projects/imx-yocto-bsp-gates/build-xwayland/tmp/work-shared=
/imx7ulpevk/kernel-source/scripts/Makefile.build:279: recipe for target '/h=
ome/jovana/Projects/imx-yocto-bsp-gates/build-xwayland/tmp/work/imx7ulpevk-=
poky-linux-gnueabi/kernel-module-qca9377/3.1-r0/git/CORE/HDD/src/wlan_hdd_o=
emdata.o' failed
| make[3]: *** [/home/jovana/Projects/imx-yocto-bsp-gates/build-xwayland/t=
mp/work/imx7ulpevk-poky-linux-gnueabi/kernel-module-qca9377/3.1-r0/git/CORE=
/HDD/src/wlan_hdd_oemdata.o] Error 1
| /home/jovana/Projects/imx-yocto-bsp-gates/build-xwayland/tmp/work-shared=
/imx7ulpevk/kernel-source/scripts/Makefile.build:279: recipe for target '/h=
ome/jovana/Projects/imx-yocto-bsp-gates/build-xwayland/tmp/work/imx7ulpevk-=
poky-linux-gnueabi/kernel-module-qca9377/3.1-r0/git/CORE/HDD/src/wlan_hdd_e=
arly_suspend.o' failed.
Do you have eny ideas what can i do? Do i miss something for my compiling?

Best regards and thanks a lot!

--IRPU6luHPcEZVQDQwKfG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I am trying to include qca9377 module in my image (yocto-gatesgart=
h). I am using command&nbsp; bitbake imx-image-full, and i added two lines =
in my local.conf file: MACHINE_FEATURES +=3D " qca9377"<br />IMAGE_INSTALL_=
append +=3D " kernel-module-qca9377", but i get constantly the same mistake=
:<br />ERROR: kernel-module-qca9377-3.1-r0 do_compile: oe_runmake failed<br=
 />ERROR: kernel-module-qca9377-3.1-r0 do_compile: Execution of '/home/jova=
na/Projects/imx-yocto-bsp-gates/build-xwayland/tmp/work/imx7ulpevk-poky-lin=
ux-gnueabi/kernel-module-qca9377/3.1-r0/temp/run.do_compile.25256' failed w=
ith exit code 1:<br />make -C /home/jovana/Projects/imx-yocto-bsp-gates/bui=
ld-xwayland/tmp/work-shared/imx7ulpevk/kernel-source M=3D/home/jovana/Proje=
cts/imx-yocto-bsp-gates/build-xwayland/tmp/work/imx7ulpevk-poky-linux-gnuea=
bi/kernel-module-qca9377/3.1-r0/git modules WLAN_ROOT=3D/home/jovana/Projec=
ts/imx-yocto-bsp-gates/build-xwayland/tmp/work/imx7ulpevk-poky-linux-gnueab=
i/kernel-module-qca9377/3.1-r0/git MODNAME?=3Dwlan CONFIG_QCA_WIFI_ISOC=3D0=
 CONFIG_QCA_WIFI_2_0=3D1 CONFIG_QCA_CLD_WLAN=3Dm WLAN_OPEN_SOURCE=3D1 &nbsp=
;<br />make[1]: Entering directory '/home/jovana/Projects/imx-yocto-bsp-gat=
es/build-xwayland/tmp/work-shared/imx7ulpevk/kernel-source'<br />make[2]: E=
ntering directory '/home/jovana/Projects/imx-yocto-bsp-gates/build-xwayland=
/tmp/work-shared/imx7ulpevk/kernel-build-artifacts'<br />and this is just a=
 part of whole group of mistakes. There are a lot of mistakes, for examples=
:<br />cc1: some warnings being treated as errors<br />| /home/jovana/Proje=
cts/imx-yocto-bsp-gates/build-xwayland/tmp/work-shared/imx7ulpevk/kernel-so=
urce/scripts/Makefile.build:279: recipe for target '/home/jovana/Projects/i=
mx-yocto-bsp-gates/build-xwayland/tmp/work/imx7ulpevk-poky-linux-gnueabi/ke=
rnel-module-qca9377/3.1-r0/git/CORE/HDD/src/wlan_hdd_oemdata.o' failed<br /=
>| make[3]: *** [/home/jovana/Projects/imx-yocto-bsp-gates/build-xwayland/t=
mp/work/imx7ulpevk-poky-linux-gnueabi/kernel-module-qca9377/3.1-r0/git/CORE=
/HDD/src/wlan_hdd_oemdata.o] Error 1<br />| /home/jovana/Projects/imx-yocto=
-bsp-gates/build-xwayland/tmp/work-shared/imx7ulpevk/kernel-source/scripts/=
Makefile.build:279: recipe for target '/home/jovana/Projects/imx-yocto-bsp-=
gates/build-xwayland/tmp/work/imx7ulpevk-poky-linux-gnueabi/kernel-module-q=
ca9377/3.1-r0/git/CORE/HDD/src/wlan_hdd_early_suspend.o' failed.<br />Do yo=
u have eny ideas what can i do? Do i miss something for my compiling?<br />=
<br />Best regards and thanks a lot!

--IRPU6luHPcEZVQDQwKfG--
