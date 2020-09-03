Subject: Error while building dahdi-linux along with Rocko Yocto #yocto #rocko #dahdi
To: yocto@lists.yoctoproject.org
From: prashantsingh@dialtronics.com
X-Originating-Location: Hyderabad, Telangana, IN (183.83.218.146)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Sep 2020 00:39:15 -0700
Message-ID: <sLmC.1599118755452256254.kq1N@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="d81J9XETahyVeTz26hJN"

--d81J9XETahyVeTz26hJN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm using Rocko yocto for my project, in this when I'm including dahdi-lin=
ux I'm getting unneeded files error.

Error logs:

ERROR: dahdi-linux-3.1.0-r0 do_package: QA Issue: dahdi-linux: Files/direc=
tories were installed but not shipped in any package:
/usr/lib
/usr/lib/hotplug
/usr/lib/hotplug/firmware
/lib/firmware
/lib/firmware/dahdi-fw-te133.bin
/lib/firmware/dahdi-fw-tc400m.bin
/lib/firmware/dahdi-fw-oct6114-256.bin
/lib/firmware/.dahdi-fw-oct6114-032-1.05.01
/lib/firmware/dahdi-fw-te436.bin
/lib/firmware/dahdi-fw-a8b.bin
/lib/firmware/.dahdi-fw-tc400m-MR6.12
/lib/firmware/.dahdi-fw-a8a-1d0017
/lib/firmware/.dahdi-fw-a8b-1f001e
/lib/firmware/.dahdi-fw-hx8-2.06
/lib/firmware/dahdi-fw-te435.bin
/lib/firmware/dahdi-fw-hx8.bin
/lib/firmware/.dahdi-fw-te436-10017
/lib/firmware/.dahdi-fw-te820-1.76
/lib/firmware/dahdi-fw-te820.bin
/lib/firmware/dahdi-fw-te134.bin
/lib/firmware/dahdi-fw-a4a.bin
/lib/firmware/.dahdi-fw-te435-13001e
/lib/firmware/dahdi-fw-a8a.bin
/lib/firmware/dahdi-fw-oct6114-128.bin
/lib/firmware/.dahdi-fw-oct6114-064-1.05.01
/lib/firmware/dahdi-fw-oct6114-064.bin
/lib/firmware/.dahdi-fw-te133-7a001e
/lib/firmware/.dahdi-fw-vpmoct032-1.12.0
/lib/firmware/.dahdi-fw-a4a-a0017
/lib/firmware/.dahdi-fw-oct6114-128-1.05.01
/lib/firmware/.dahdi-fw-oct6114-256-1.05.01
/lib/firmware/dahdi-fw-oct6114-032.bin
/lib/firmware/dahdi-fw-vpmoct032.bin
/lib/firmware/.dahdi-fw-a4b-d001e
/lib/firmware/dahdi-fw-a4b.bin
/lib/firmware/.dahdi-fw-te134-780017

**Please set FILES such that these items are packaged. Alternatively if th=
ey are unneeded, avoid installing them or delete them within do_install.**
dahdi-linux: 36 installed and not shipped files. [installed-vs-shipped]
ERROR: dahdi-linux-3.1.0-r0 do_package: Fatal QA errors found, failing tas=
k.
ERROR: dahdi-linux-3.1.0-r0 do_package: Function failed: do_package
ERROR: Logfile of failure stored in: /home/prashant/P_DIALT/RENESAS/RZ_G2E=
=
=C2=A0=C2=A0=C2=A0 /Yocto_for_experiments/rzg2_bsp/build/tmp/work/ek874-po=
ky-linux/dahdi-linux/3.1.0-r0/temp/log.do_package.9978
ERROR: Task (/home/prashant/P_DIALT/RENESAS/RZ_G2E/Yocto_for_experiments/r=
zg2_bsp/build/../meta-telephony/recipes-isdn/dahdi-linux/dahdi-linux_3.1.0.=
bb:do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4969 tasks of which 4968 didn't need to be =
rerun and 1 failed.
I've tried these method also
"https://www.yoctoproject.org/pipermail/yocto/2016-January/028127.html"
"https://stackoverflow.com/questions/49748528/yocto-files-directories-were=
-installed-but-not-shipped-in-any-package"
in **dahdi-linux_3.1.0.bb** file, then also I'm facing same issue.
please assist me to solve this.

Regard,
Prashant Singh

--d81J9XETahyVeTz26hJN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm using Rocko yocto for my project, in this when I'm inclu=
ding dahdi-linux I'm getting unneeded files error.<br /><br />Error logs:&n=
bsp;&nbsp; &nbsp;<br /><br />ERROR: dahdi-linux-3.1.0-r0 do_package: QA Iss=
ue: dahdi-linux: Files/directories were installed but not shipped in any pa=
ckage: &nbsp;<br />&nbsp; /usr/lib&nbsp;&nbsp; &nbsp;<br />&nbsp; /usr/lib/=
hotplug&nbsp;&nbsp; &nbsp;<br />&nbsp; /usr/lib/hotplug/firmware&nbsp;&nbsp=
; &nbsp;<br />&nbsp; /lib/firmware&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firm=
ware/dahdi-fw-te133.bin&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-=
fw-tc400m.bin&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-oct6114=
-256.bin&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-oct6114-032=
-1.05.01&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-te436.bin&nb=
sp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-a8b.bin&nbsp;&nbsp; &nb=
sp;<br />&nbsp; /lib/firmware/.dahdi-fw-tc400m-MR6.12&nbsp;&nbsp; &nbsp;<br=
 />&nbsp; /lib/firmware/.dahdi-fw-a8a-1d0017&nbsp;&nbsp; &nbsp;<br />&nbsp;=
 /lib/firmware/.dahdi-fw-a8b-1f001e&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/fir=
mware/.dahdi-fw-hx8-2.06&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi=
-fw-te435.bin&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-hx8.bin=
&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-te436-10017&nbsp;&n=
bsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-te820-1.76&nbsp;&nbsp; &nbs=
p;<br />&nbsp; /lib/firmware/dahdi-fw-te820.bin&nbsp;&nbsp; &nbsp;<br />&nb=
sp; /lib/firmware/dahdi-fw-te134.bin&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/fi=
rmware/dahdi-fw-a4a.bin&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi=
-fw-te435-13001e&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-a8a.=
bin&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-oct6114-128.bin&n=
bsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-oct6114-064-1.05.01&n=
bsp;&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-oct6114-064.bin&=
nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-te133-7a001e&n=
bsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-vpmoct032-1.12.0&nbsp=
;&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-a4a-a0017&nbsp;&nb=
sp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-oct6114-128-1.05.01&nb=
sp;&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-oct6114-256-1.05=
.01&nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-oct6114-032=
.bin&nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-vpmoct032.=
bin&nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/.dahdi-fw-a4b-d001e&=
nbsp;&nbsp; &nbsp;<br />&nbsp; /lib/firmware/dahdi-fw-a4b.bin<br />&nbsp; /=
lib/firmware/.dahdi-fw-te134-780017&nbsp;&nbsp; &nbsp;<br /><br />**Please =
set FILES such that these items are packaged. Alternatively if they are unn=
eeded, avoid installing them or delete them within do_install.**&nbsp;&nbsp=
;&nbsp; &nbsp;<br />dahdi-linux: 36 installed and not shipped files. [insta=
lled-vs-shipped]&nbsp;&nbsp; &nbsp;<br />ERROR: dahdi-linux-3.1.0-r0 do_pac=
kage: Fatal QA errors found, failing task.&nbsp;&nbsp; &nbsp;<br />ERROR: d=
ahdi-linux-3.1.0-r0 do_package: Function failed: do_package&nbsp;&nbsp; &nb=
sp;<br />ERROR: Logfile of failure stored in: /home/prashant/P_DIALT/RENESA=
S/RZ_G2E&nbsp;&nbsp;&nbsp; /Yocto_for_experiments/rzg2_bsp/build/tmp/work/e=
k874-poky-linux/dahdi-linux/3.1.0-r0/temp/log.do_package.9978&nbsp;&nbsp; &=
nbsp;<br />ERROR: Task (/home/prashant/P_DIALT/RENESAS/RZ_G2E/Yocto_for_exp=
eriments/rzg2_bsp/build/../meta-telephony/recipes-isdn/dahdi-linux/dahdi-li=
nux_3.1.0.bb:do_package) failed with exit code '1'&nbsp;&nbsp; &nbsp;<br />=
NOTE: Tasks Summary: Attempted 4969 tasks of which 4968 didn't need to be r=
erun and 1 failed. &nbsp;<br />&nbsp;&nbsp;&nbsp; I've tried these method a=
lso&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp;&nbsp; "https://www.yoctoproject.or=
g/pipermail/yocto/2016-January/028127.html"&nbsp;&nbsp; &nbsp;<br />&nbsp;&=
nbsp;&nbsp; "https://stackoverflow.com/questions/49748528/yocto-files-direc=
tories-were-installed-but-not-shipped-in-any-package" &nbsp;<br />&nbsp;&nb=
sp; in **dahdi-linux_3.1.0.bb** file, then also I'm facing same issue.&nbsp=
;&nbsp; &nbsp;<br />please assist me to solve this.&nbsp; &nbsp;<br /><br /=
>Regard,&nbsp;&nbsp; &nbsp;<br />Prashant Singh

--d81J9XETahyVeTz26hJN--
