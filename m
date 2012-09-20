Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33452E004AB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 05:26:06 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so2033461qcs.35
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 05:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MCkwV2tNUJQk19T9DVTppNjUnlPE4j8hCwYRBuxWi1E=;
	b=qUNPLZPnzAgehAx52hs2KMLFDLiPCpRIRZ2IVgELOXKLz1Jpyr7211O3+a2dDmnJTo
	qDJl858/4vPWni13dxpOh8n4EXObZkJKzYyKK4KCpxePUyDpFGyjIv8xFZd+5XEUwiA9
	HrF8L+lgmlrTm7hSIUjAUzVEcDoUvqQ6NavvK3EB/NP0eNv1biveK7GenTvlRJRH4tSH
	96YDuqfKgx0ki9AEwrdVfpfAH+ZpNhCwixB5QgRRM9ITvXp/qiXHLdr4mAj+xOo3hmle
	E/boaCWTYTSwwCGf08ZTLycfyjiszzoyTj7OEDU+PoDHsFy/3M+kYcUiiEwu737087Qc
	B2wQ==
MIME-Version: 1.0
Received: by 10.229.107.19 with SMTP id z19mr1025031qco.154.1348143963166;
	Thu, 20 Sep 2012 05:26:03 -0700 (PDT)
Received: by 10.224.174.19 with HTTP; Thu, 20 Sep 2012 05:26:03 -0700 (PDT)
Date: Thu, 20 Sep 2012 13:26:03 +0100
Message-ID: <CAB3sqtYTWOy4YyFRn70Krs5aFCZW+5A=RC4Z32NqDr74vaAngw@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: yocto@yoctoproject.org
Subject: bitbake check out from svn
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Sep 2012 12:26:06 -0000
Content-Type: multipart/alternative; boundary=002354471a3c07d6e504ca213a69

--002354471a3c07d6e504ca213a69
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I'm writing a recipe to checkout files from local svn. Here is my URI:

SRC_URI =3D
"svn://svn.ad-group.adh/svn/dev_repos/Generation3_app;module=3Dtrunk;protoc=
ol=3Dhttp"

bitbake fails to fetch the source from this location and gives the bellow
error message.

Looks like bitbake is not replacing svn with http hence it's not querying a
correct address.

Why bitbake is not reading the protocol parameter and construct the
correct address?


NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 1577 of 2240 (ID: 4,
/home/telsherbiny/work/fsl/sources/meta-adh-console/recipes-web/web-browser=
/
web-browser_8.5.bb, do_fetch)
NOTE: package web-browser-8.5-r1: task do_fetch: Started
ERROR: Function failed: Fetcher failure: Fetch command export
HOME=3D"/home/telsherbiny"; export SSH_AGENT_PID=3D"2398"; export
SSH_AUTH_SOCK=3D"/tmp/keyring-suRHPa/ssh"; export
GIT_CONFIG=3D"/home/telsherbiny/work/fsl/build/tmp/sysroots/i686-linux/etc/=
gitconfig";
export
PATH=3D"/home/telsherbiny/work/fsl/build/tmp/sysroots/i686-linux/usr/bin/ar=
mv7a-vfp-neon-poky-linux-gnueabi:/home/telsherbiny/work/fsl/build/tmp/sysro=
ots/imx6qsabrelite/usr/bin/crossscripts:/home/telsherbiny/work/fsl/build/tm=
p/sysroots/i686-linux/usr/sbin:/home/telsherbiny/work/fsl/build/tmp/sysroot=
s/i686-linux/usr/bin:/home/telsherbiny/work/fsl/build/tmp/sysroots/i686-lin=
ux/sbin:/home/telsherbiny/work/fsl/build/tmp/sysroots/i686-linux//bin:/home=
/telsherbiny/work/fsl/sources/poky/scripts:/home/telsherbiny/work/fsl/sourc=
es/poky/bitbake/bin/:/home/telsherbiny/bin:/usr/local/sbin:/usr/local/bin:/=
usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/openocd/bin:/opt/arm-elf/bin:/=
opt/arm-elf-insight/bin:/opt/sh-elf/bin:/opt/insight.sh-elf/bin:/usr/local/=
cwSDK/cwvx/bin:/opt/arm-elf-insight/bin:/opt/android-sdk-linux_x86/platform=
-tools/:/home/telsherbiny/work/fsl/sources/poky/scripts";
LANG=3DC LC_ALL=3DC /usr/bin/env svn info
 svn://svn.ad-group.adh/svn/dev_repos/Generation3_app/trunk/ could not be
run:
None
ERROR: Logfile of failure stored in:
/home/telsherbiny/work/fsl/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueab=
i/web-browser-8.5-r1/temp/log.do_fetch.14696


Thanks

--002354471a3c07d6e504ca213a69
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m writing a recipe to checkout files from local svn. Here is my URI:<=
div><br></div><div>SRC_URI =3D &quot;svn://svn.ad-group.adh/svn/dev_repos/G=
eneration3_app;module=3Dtrunk;protocol=3Dhttp&quot;</div><div><br></div><di=
v>bitbake fails to fetch the source from this location and gives the bellow=
 error message.</div>
<div><br></div><div>Looks like bitbake is not replacing svn with http hence=
 it&#39;s not=A0querying=A0a correct address.</div><div><br></div><div>Why =
bitbake is not reading the protocol parameter and=A0construct=A0the correct=
=A0address?</div>
<div>=A0</div><div><br></div><div><div>NOTE: Preparing runqueue</div><div>N=
OTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue Tasks</div=
><div>NOTE: Running task 1577 of 2240 (ID: 4, /home/telsherbiny/work/fsl/so=
urces/meta-adh-console/recipes-web/web-browser/<a href=3D"http://web-browse=
r_8.5.bb">web-browser_8.5.bb</a>, do_fetch)</div>
<div>NOTE: package web-browser-8.5-r1: task do_fetch: Started</div><div>ERR=
OR: Function failed: Fetcher failure: Fetch command export HOME=3D&quot;/ho=
me/telsherbiny&quot;; export SSH_AGENT_PID=3D&quot;2398&quot;; export SSH_A=
UTH_SOCK=3D&quot;/tmp/keyring-suRHPa/ssh&quot;; export GIT_CONFIG=3D&quot;/=
home/telsherbiny/work/fsl/build/tmp/sysroots/i686-linux/etc/gitconfig&quot;=
; export PATH=3D&quot;/home/telsherbiny/work/fsl/build/tmp/sysroots/i686-li=
nux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi:/home/telsherbiny/work/fsl/b=
uild/tmp/sysroots/imx6qsabrelite/usr/bin/crossscripts:/home/telsherbiny/wor=
k/fsl/build/tmp/sysroots/i686-linux/usr/sbin:/home/telsherbiny/work/fsl/bui=
ld/tmp/sysroots/i686-linux/usr/bin:/home/telsherbiny/work/fsl/build/tmp/sys=
roots/i686-linux/sbin:/home/telsherbiny/work/fsl/build/tmp/sysroots/i686-li=
nux//bin:/home/telsherbiny/work/fsl/sources/poky/scripts:/home/telsherbiny/=
work/fsl/sources/poky/bitbake/bin/:/home/telsherbiny/bin:/usr/local/sbin:/u=
sr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/openocd/bin:/opt=
/arm-elf/bin:/opt/arm-elf-insight/bin:/opt/sh-elf/bin:/opt/insight.sh-elf/b=
in:/usr/local/cwSDK/cwvx/bin:/opt/arm-elf-insight/bin:/opt/android-sdk-linu=
x_x86/platform-tools/:/home/telsherbiny/work/fsl/sources/poky/scripts&quot;=
; LANG=3DC LC_ALL=3DC /usr/bin/env svn info =A0svn://svn.ad-group.adh/svn/d=
ev_repos/Generation3_app/trunk/ could not be run:</div>
<div>None</div><div>ERROR: Logfile of failure stored in: /home/telsherbiny/=
work/fsl/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/web-browser-8.5-=
r1/temp/log.do_fetch.14696</div></div><div><br></div><div><br></div><div>
Thanks</div>

--002354471a3c07d6e504ca213a69--
