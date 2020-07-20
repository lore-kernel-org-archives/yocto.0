Subject: Offline Build #yocto
To: yocto@lists.yoctoproject.org
From: "Amrun Nisha.R" <amrunnishar@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (103.232.224.219)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 19 Jul 2020 23:05:07 -0700
Message-ID: <O27O.1595225107952785470.PzJ1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="g6tWFZwAmOJOUMnUSZ72"

--g6tWFZwAmOJOUMnUSZ72
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I want to create a offline build using yocto.

I have sources and downloads packages directory in which i can able to cre=
ate a successful bitbake. I have transferred those files to another system =
and tried to build them in offline but it is not working. During Bitbake, I=
 got the below error.

ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_unpack: Fetc=
her failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION_=
BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-g7k0CS09Dd,guid=3D12ec7c389f454edf=
56e65e9a5f1271ce"; export SSH_AGENT_PID=3D"1474"; export SSH_AUTH_SOCK=3D"/=
tmp/ssh-uwTL38C6OxLZ/agent.1310"; export PATH=3D"/home/admin/Platform_Build=
/yocto/sources/poky/scripts/native-intercept:/home/admin/Platform_Build/yoc=
to/sources/poky/scripts:/home/admin/Platform_Build/yocto/build/tmp/work/x86=
_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroo=
t-native/usr/bin/x86_64-linux:/home/admin/Platform_Build/yocto/build/tmp/wo=
rk/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-=
sysroot-native/usr/bin:/home/admin/Platform_Build/yocto/build/tmp/work/x86_=
64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot=
-native/usr/sbin:/home/admin/Platform_Build/yocto/build/tmp/work/x86_64-lin=
ux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot-nativ=
e/usr/bin:/home/admin/Platform_Build/yocto/build/tmp/work/x86_64-linux/gnu-=
config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot-native/sbin:=
/home/admin/Platform_Build/yocto/build/tmp/work/x86_64-linux/gnu-config-nat=
ive/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot-native/bin:/home/admin=
/Platform_Build/yocto/sources/poky/bitbake/bin:/home/admin/Platform_Build/y=
octo/build/tmp/hosttools"; export HOME=3D"/home/admin"; git -c core.fsyncob=
jectfiles=3D0 clone -s -n /home/admin/Platform_Build/pltswcode/Yocto/Linux/=
downloads//git2/git.savannah.gnu.org.config.git/ /home/admin/Platform_Build=
/yocto/build/tmp/work/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b5=
76fa87c1-r0/git/ failed with exit code 128, output:
fatal: repository '/home/admin/Platform_Build/pltswcode/Yocto/Linux/downlo=
ads//git2/git.savannah.gnu.org.config.git/' does not exist

ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_unpack: Func=
tion failed: base_do_unpack
ERROR: Logfile of failure stored in: /home/admin/Platform_Build/yocto/buil=
d/tmp/work/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0=
/temp/log.do_unpack.619
ERROR: Task (virtual:native:/home/admin/Platform_Build/yocto/sources/poky/=
meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_unpack) failed with e=
xit code '1'
NOTE: Tasks Summary: Attempted 68 tasks of which 63 didn't need to be reru=
n and 1 failed.

Summary: 1 task failed:
virtual:native:/home/admin/Platform_Build/yocto/sources/poky/meta/recipes-=
devtools/gnu-config/gnu-config_git.bb:do_unpack
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.

I want to know :
1. Why the bitbake command is not taking the downloads directory as it is =
?
2. Is there any other way to create the offline build without downloading =
the yocto packages?

--g6tWFZwAmOJOUMnUSZ72
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I want to create a offline build using yocto.&nbsp;<br /><br />I have sourc=
es and downloads packages directory in which i can able to create a success=
ful bitbake. I have transferred those files to another system and tried to =
build them in offline but it is not working. During Bitbake, I got the belo=
w error.
<div>&nbsp;</div>
<div>ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_unpack:=
 Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SES=
SION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-g7k0CS09Dd,guid=3D12ec7c389f4=
54edf56e65e9a5f1271ce"; export SSH_AGENT_PID=3D"1474"; export SSH_AUTH_SOCK=
=
=3D"/tmp/ssh-uwTL38C6OxLZ/agent.1310"; export PATH=3D"/home/admin/Platform=
_Build/yocto/sources/poky/scripts/native-intercept:/home/admin/Platform_Bui=
ld/yocto/sources/poky/scripts:/home/admin/Platform_Build/yocto/build/tmp/wo=
rk/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-=
sysroot-native/usr/bin/x86_64-linux:/home/admin/Platform_Build/yocto/build/=
tmp/work/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/r=
ecipe-sysroot-native/usr/bin:/home/admin/Platform_Build/yocto/build/tmp/wor=
k/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-s=
ysroot-native/usr/sbin:/home/admin/Platform_Build/yocto/build/tmp/work/x86_=
64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot=
-native/usr/bin:/home/admin/Platform_Build/yocto/build/tmp/work/x86_64-linu=
x/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot-native=
/sbin:/home/admin/Platform_Build/yocto/build/tmp/work/x86_64-linux/gnu-conf=
ig-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot-native/bin:/home=
/admin/Platform_Build/yocto/sources/poky/bitbake/bin:/home/admin/Platform_B=
uild/yocto/build/tmp/hosttools"; export HOME=3D"/home/admin"; git -c core.f=
syncobjectfiles=3D0 clone -s -n /home/admin/Platform_Build/pltswcode/Yocto/=
Linux/downloads//git2/git.savannah.gnu.org.config.git/ /home/admin/Platform=
_Build/yocto/build/tmp/work/x86_64-linux/gnu-config-native/20150728+gitAUTO=
INC+b576fa87c1-r0/git/ failed with exit code 128, output:</div>
<div>fatal: repository '/home/admin/Platform_Build/pltswcode/Yocto/Linux/d=
ownloads//git2/git.savannah.gnu.org.config.git/' does not exist</div>
<div>&nbsp;</div>
<div>ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_unpack:=
 Function failed: base_do_unpack</div>
<div>ERROR: Logfile of failure stored in: /home/admin/Platform_Build/yocto=
/build/tmp/work/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87=
c1-r0/temp/log.do_unpack.619</div>
<div>ERROR: Task (virtual:native:/home/admin/Platform_Build/yocto/sources/=
poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_unpack) failed w=
ith exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 68 tasks of which 63 didn't need to be=
 rerun and 1 failed.</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; virtual:native:/home/admin/Platform_Build/yocto/sources/poky/m=
eta/recipes-devtools/gnu-config/gnu-config_git.bb:do_unpack</div>
<div>Summary: There was 1 WARNING message shown.</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.<br /><br />I want to know :<br />1. Why the bitbake command is not t=
aking the downloads directory as it is ?<br />2. Is there any other way to =
create the offline build without downloading the yocto packages?</div>
<div>&nbsp;</div>

--g6tWFZwAmOJOUMnUSZ72--
