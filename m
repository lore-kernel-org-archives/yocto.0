Return-Path: <arunkr.linux@gmail.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDCCFE00747
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 23:42:13 -0700 (PDT)
Received: by mail-vb0-f43.google.com with SMTP id h11so1032524vbh.16
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 23:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zn5U/JMTKDr7XqP1KiXWjKifpFCYZmkjdQdmUYpKnV4=;
	b=ZdzPEn6y8F+kTh2wdrEKaXbSCnVjH7uOYG5kbUwFyBEcwnFo3DMInRmU0Rh2oJvG6r
	Q1Rm2MDM+m5H1OP6FFNFFx7Mbrnnctnfnd0qVx7WwpQDfqTeU+nKDCZ746DBf3GYgf0r
	o/fuJt61uPANA0jnTP6/aP0nbKkxEpWaOEvo3EYW/5bNuvya+WYJFnnvNEOfO26nVAkw
	4AXDHGhqhXUittqetVoaQ+fBEE2Dnb00za0GmC9ba8uH4tsFH/1e/yCPBQZhJJFMXtJO
	+ucJ9FupsiX0TehYuMtUsL3CfoRhDnjHZH4jbgrS30CocvkxYDc9Q1RHZcnCh9w94Nnv
	7y7Q==
MIME-Version: 1.0
X-Received: by 10.58.152.3 with SMTP id uu3mr6830348veb.16.1377844932339; Thu,
	29 Aug 2013 23:42:12 -0700 (PDT)
Received: by 10.58.198.167 with HTTP; Thu, 29 Aug 2013 23:42:12 -0700 (PDT)
Date: Fri, 30 Aug 2013 12:12:12 +0530
Message-ID: <CABG0-3wCYaJ2Xxt3djtpBrgAW3BBAwU3BcpqewDBQ8GHoM=4vw@mail.gmail.com>
From: arun kumar <arunkr.linux@gmail.com>
To: yocto@yoctoproject.org
Subject: build stuck at cloning GIT Repo.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Aug 2013 06:42:14 -0000
Content-Type: multipart/alternative; boundary=047d7b86f532bf6c4104e524853a

--047d7b86f532bf6c4104e524853a
Content-Type: text/plain; charset=ISO-8859-1

My YOcto Project build, The first build is stuck here

--------------------------------------------------------------------------------------------------
Loading cache: 100%
|#################################################################################################################|
ETA: 00:00:00
Loaded 1181 entries from dependency cache.

Build Configuration:
BB_VERSION = "1.19.1"
BUILD_SYS = "x86_64-linux"
NATIVELSBSTRING = "openSUSE-project-12.3"
TARGET_SYS = "arm-poky-linux-gnueabi"
MACHINE = "qemuarm"
DISTRO = "poky"
DISTRO_VERSION = "1.4+snapshot-20130827"
TUNE_FEATURES = "armv5 thumb dsp"
TARGET_FPU = "soft"
meta
meta-yocto
meta-yocto-bsp = "master:b2ff1add530b1fec2fb7f385227a03db47015c37"

NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for runtime libasound-module-bluez
(bluez4, bluez5)
NOTE: consider defining a PREFERRED_PROVIDER entry to match
libasound-module-bluez
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
Currently 1 running tasks (1587 of 5917):
*0: linux-yocto-3.8.13+gitAUTOINC+e7f42a416a_aa76cc2840-r4.2 do_fetch (pid
2006)*
*
--------------------------------------------------------------------------------------------------------------
*
**
and has been so for the past 4-5 Tries, The size of the GIT2 Directory
seems to increase for sometine,
The maximum it has gone is 681 MB after which it stopped growing in size, i
checked wether my Internet was down, but it was all fine as i started an
OpenWRT build along with it and it was downloading its packages smoothly.

Is there some problem with the GIT server on the Project Side or my ISP ?
How can i know?

--047d7b86f532bf6c4104e524853a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My YOcto Project build, The first build is stuck here=
</div><div>=A0</div><div>--------------------------------------------------=
------------------------------------------------</div><div>Loading cache: 1=
00%    |###################################################################=
##############################################|    ETA:  00:00:00<br>
    Loaded 1181 entries from dependency cache.<br><br>    Build Configurati=
on:<br>    BB_VERSION        =3D &quot;1.19.1&quot;<br>    BUILD_SYS       =
  =3D &quot;x86_64-linux&quot;<br>    NATIVELSBSTRING   =3D &quot;openSUSE-=
project-12.3&quot;<br>
    TARGET_SYS        =3D &quot;arm-poky-linux-gnueabi&quot;<br>    MACHINE=
           =3D &quot;qemuarm&quot;<br>    DISTRO            =3D &quot;poky&=
quot;<br>    DISTRO_VERSION    =3D &quot;1.4+snapshot-20130827&quot;<br>   =
 TUNE_FEATURES     =3D &quot;armv5 thumb dsp&quot;<br>
    TARGET_FPU        =3D &quot;soft&quot;<br>    meta              <br>   =
 meta-yocto        <br>    meta-yocto-bsp    =3D    &quot;master:b2ff1add53=
0b1fec2fb7f385227a03db47015c37&quot;<br><br>    NOTE: Resolving any missing=
 task queue dependencies<br>
    NOTE: multiple providers are available for runtime    libasound-module-=
bluez (bluez4, bluez5)<br>    NOTE: consider defining a PREFERRED_PROVIDER =
entry to match    libasound-module-bluez<br>    NOTE: Preparing runqueue<br=
>
    NOTE: Executing SetScene Tasks<br>    NOTE: Executing RunQueue Tasks<br=
>    Currently 1 running tasks (1587 of 5917):<br><b>0: linux-yocto-3.8.13+=
gitAUTOINC+e7f42a416a_aa76cc2840-r4.2      do_fetch (pid 2006)</b></div>
<div><strong>--------------------------------------------------------------=
------------------------------------------------</strong></div><div><strong=
></strong>=A0</div><div>and has been so for the past 4-5 Tries, The size of=
 the GIT2 Directory seems to increase for sometine,</div>
<div>The maximum it has gone is 681 MB after which it stopped growing in si=
ze, i checked wether my Internet was down, but it was all fine as i started=
 an OpenWRT build along with it and it was downloading its packages smoothl=
y.</div>
<div>=A0</div><div>Is there some problem with the GIT server on the Project=
 Side or my ISP ? </div><div>How can i know?</div></div>

--047d7b86f532bf6c4104e524853a--
