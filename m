Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906BBC433FE
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 12:50:21 +0000 (UTC)
Subject: freecell-solver fetch issue 
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (157.48.134.75)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Feb 2022 04:50:20 -0800
Message-ID: <xiVX.1644583820851020529.t8hh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5ZYTa1rfBoyIzl3RtUC2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 12:50:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56157

--5ZYTa1rfBoyIzl3RtUC2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am trying to install the Freecell-solver package. I am facing a problem f=
etcher issue. Can anybody know how to fix this issue? please guide me.

WARNING: /home/integration-team/kde2/meta-qt5-extra/recipes-kde/packagegrou=
ps/kde-games.bb:do_build is tainted from a forced run=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | ETA:=C2=A0 0:00:00
Initialising tasks: 100% |#################################################=
###########################################################################=
########| Time: 0:00:01
Sstate summary: Wanted 12 Found 0 Missed 12 Current 1387 (0% match, 99% com=
plete)
NOTE: Executing Tasks
WARNING: freecell-solver-5.24.0-r0 do_fetch: Failed to fetch URL http://fc-=
solve.shlomifish.org/downloads/fc-solve/freecell-solver-5.24.0.tar.xz, atte=
mpting MIRRORS if available
ERROR: freecell-solver-5.24.0-r0 do_fetch: Fetcher failure: Fetch command e=
xport PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/=
run/user/1001/bus"; export PATH=3D"/home/integration-team/kde2/build/tmp-gl=
ibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/u=
sr/bin/perl-native:/home/integration-team/kde2/build/tmp-glibc/work/riscv64=
-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/usr/bin/python3-n=
ative:/home/integration-team/kde2/openembedded-core/scripts:/home/integrati=
on-team/kde2/build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r=
0/recipe-sysroot-native/usr/bin/riscv64-oe-linux:/home/integration-team/kde=
2/build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sy=
sroot/usr/bin/crossscripts:/home/integration-team/kde2/build/tmp-glibc/work=
/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/usr/sbin:=
/home/integration-team/kde2/build/tmp-glibc/work/riscv64-oe-linux/freecell-=
solver/5.24.0-r0/recipe-sysroot-native/usr/bin:/home/integration-team/kde2/=
exaleap-build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/rec=
ipe-sysroot-native/sbin:/home/integration-team/kde2/build/tmp-glibc/work/ri=
scv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/bin:/home/in=
tegration-team/kde2/bitbake/bin:/home/integration-team/kde2/build/tmp-glibc=
/hosttools"; export HOME=3D"/home/integration-team"; /usr/bin/env wget -t 2=
 -T 30 --passive-ftp --no-check-certificate -P /home/integration-team/kde2/=
build/downloads 'http://fc-solve.shlomifish.org/downloads/fc-solve/freecell=
-solver-5.24.0.tar.xz' --progress=3Ddot -v failed with exit code 8, no outp=
ut
ERROR: freecell-solver-5.24.0-r0 do_fetch: Fetcher failure for URL: 'http:/=
/fc-solve.shlomifish.org/downloads/fc-solve/freecell-solver-5.24.0.tar.xz'.=
 Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/integration-team/kde2/build/tmp-=
glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/temp/log.do_fetch.223=
94
ERROR: Task (/home/integration-team/kde2/meta-qt5-extra/recipes-support/shl=
omif/freecell-solver.bb:do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4421 tasks of which 4420 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
/home/integration-team/kde2/meta-qt5-extra/recipes-support/shlomif/freecell=
-solver.bb:do_fetch
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--
Regards,
Sateesh

--5ZYTa1rfBoyIzl3RtUC2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I am t=
rying to install the Freecell-solver package. I am facing a problem fetcher=
 issue. Can anybody know how to fix this issue? please guide me.<br /><br /=
>
<div>WARNING: /home/integration-team/kde2/meta-qt5-extra/recipes-kde/packag=
egroups/kde-games.bb:do_build is tainted from a forced run&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | ETA:&nbsp; 0:00:00</div>
<div>Initialising tasks: 100% |############################################=
###########################################################################=
#############| Time: 0:00:01</div>
<div>Sstate summary: Wanted 12 Found 0 Missed 12 Current 1387 (0% match, 99=
% complete)</div>
<div>NOTE: Executing Tasks</div>
<div>WARNING: freecell-solver-5.24.0-r0 do_fetch: Failed to fetch URL http:=
//fc-solve.shlomifish.org/downloads/fc-solve/freecell-solver-5.24.0.tar.xz,=
 attempting MIRRORS if available</div>
<div>ERROR: freecell-solver-5.24.0-r0 do_fetch: Fetcher failure: Fetch comm=
and export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:pat=
h=3D/run/user/1001/bus"; export PATH=3D"/home/integration-team/kde2/build/t=
mp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-nat=
ive/usr/bin/perl-native:/home/integration-team/kde2/build/tmp-glibc/work/ri=
scv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/usr/bin/pyth=
on3-native:/home/integration-team/kde2/openembedded-core/scripts:/home/inte=
gration-team/kde2/build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.2=
4.0-r0/recipe-sysroot-native/usr/bin/riscv64-oe-linux:/home/integration-tea=
m/kde2/build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/reci=
pe-sysroot/usr/bin/crossscripts:/home/integration-team/kde2/build/tmp-glibc=
/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/usr/=
sbin:/home/integration-team/kde2/build/tmp-glibc/work/riscv64-oe-linux/free=
cell-solver/5.24.0-r0/recipe-sysroot-native/usr/bin:/home/integration-team/=
kde2/exaleap-build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r=
0/recipe-sysroot-native/sbin:/home/integration-team/kde2/build/tmp-glibc/wo=
rk/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/bin:/ho=
me/integration-team/kde2/bitbake/bin:/home/integration-team/kde2/build/tmp-=
glibc/hosttools"; export HOME=3D"/home/integration-team"; /usr/bin/env wget=
 -t 2 -T 30 --passive-ftp --no-check-certificate -P /home/integration-team/=
kde2/build/downloads 'http://fc-solve.shlomifish.org/downloads/fc-solve/fre=
ecell-solver-5.24.0.tar.xz' --progress=3Ddot -v failed with exit code 8, no=
 output</div>
<div>ERROR: freecell-solver-5.24.0-r0 do_fetch: Fetcher failure for URL: 'h=
ttp://fc-solve.shlomifish.org/downloads/fc-solve/freecell-solver-5.24.0.tar=
.xz'. Unable to fetch URL from any source.</div>
<div>ERROR: Logfile of failure stored in: /home/integration-team/kde2/build=
/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/temp/log.do_fetc=
h.22394</div>
<div>ERROR: Task (/home/integration-team/kde2/meta-qt5-extra/recipes-suppor=
t/shlomif/freecell-solver.bb:do_fetch) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 4421 tasks of which 4420 didn't need to=
 be rerun and 1 failed.</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /home/integration-team/kde2/meta-qt5-extra/recipes-support/shlo=
mif/freecell-solver.bb:do_fetch</div>
<div>Summary: There were 2 WARNING messages shown.</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.</div>
<div>&nbsp;</div>
<br />-- <br />Regards,<br />Sateesh

--5ZYTa1rfBoyIzl3RtUC2--

