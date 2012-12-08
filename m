Return-Path: <vidal.develone@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF0DEE003DA
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 06:15:41 -0800 (PST)
Received: by mail-ie0-f175.google.com with SMTP id qd14so4071698ieb.6
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 06:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=AuXVpTnth6GmivYMyU9HSA4Q4c6QEbq/DZ8Y0KeV8Rs=;
	b=Yv3xihkiosAiAm6Dp4gwiq5HMrjlB7EpNUzQbjm2GuW0WXQtV5NNckhexf9uZMaw1x
	fJkzD2id7AKn8951nOX7KHkIU2kTz8WoHc8WnVz1g6TTobUcHBNzAIxOGaJ+nd1UXvlV
	OZhoNEh0zCmBcaonbHFCrrcRdHFE5UfQw21VItFr2JUVBBxlPxlU5p/za1hIsfg73pfL
	BhAvf9iVBjfgm6Z3pgZdg8mXHCXDoJUxz3Z15eLpVrg+mhsyhsq7q0F7ONzXIYxq5od9
	qhWJZCgS8CDZGweyqmZmYwtMh1O6nGVPSXduhk8nlooI+8cY9cBF4g7u0SjGbshf1jel
	18bA==
MIME-Version: 1.0
Received: by 10.50.6.169 with SMTP id c9mr1992442iga.24.1354976141068; Sat, 08
	Dec 2012 06:15:41 -0800 (PST)
Received: by 10.64.40.132 with HTTP; Sat, 8 Dec 2012 06:15:40 -0800 (PST)
Date: Sat, 8 Dec 2012 07:15:40 -0700
Message-ID: <CANwz6nwfqaMyCv5LDe_pJ60J2f9N46qdiNieHLNFZSwuRBf7tw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard not booting to SATO interface
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
X-List-Received-Date: Sat, 08 Dec 2012 14:15:41 -0000
Content-Type: multipart/alternative; boundary=e89a8f64671791479004d057f772

--e89a8f64671791479004d057f772
Content-Type: text/plain; charset=ISO-8859-1

Hello
This is the first time that I have created and MMC for the beagleboard on a
RHELx86_64 6.3.  The beagleboard boots and the YOCTO display comes up but
never goes to the SATO display.


WARNING: Host distribution "Red Hat Enterprise Linux Workstation release
6.3 (Santiago)" has not been validated with this version of the build
system; you may possibly experience unexpected failures. It is recommended
that you use a tested distribution.

Build Configuration:
BB_VERSION        = "1.17.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "RedHatEnterpriseWorkstation-6.3"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121208"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "master:c607095894cab60493ddfc4b967b0325e1c313b4"

NOTE: recipe core-image-sato-sdk-1.0-r0: task do_rootfs: Succeeded
NOTE: Running noexec task 6235 of 6235 (ID: 11,
/home/vidal/poky/meta/recipes-sato/images/core-image-sato-sdk.bb, do_build)
NOTE: Tasks Summary: Attempted 6235 tasks of which 5220 didn't need to be
rerun and all succeeded.

The Xorg.log is okay up to the end where the following shows the error.
[2058343.877]     ABI class: X.Org XInput driver, version 18.0
[2058343.877] (EE) No drivers available.
[2058343.877]
Fatal server error:
[2058343.878] no screens found
[2058343.878] (EE)
Please consult the The X.Org Foundation support
     at http://wiki.x.org
 for help.
[2058343.879] (EE) Please also check the log file at "/var/log/Xorg.0.log"
for additional information.
[2058343.879] (EE)
[2058343.890] Server terminated with error (1). Closing log file.

Networking is working Okay.
Any help will be welcomed.
Thanks

--e89a8f64671791479004d057f772
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello<br>This is the first time that I have created and MMC for the beagleb=
oard on a RHELx86_64 6.3.=A0 The beagleboard boots and the YOCTO display co=
mes up but never goes to the SATO display. <br><br><br>WARNING: Host distri=
bution &quot;Red Hat Enterprise Linux Workstation release 6.3 (Santiago)&qu=
ot; has not been validated with this version of the build system; you may p=
ossibly experience unexpected failures. It is recommended that you use a te=
sted distribution.<br>
<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.17.=
0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<b=
r>NATIVELSBSTRING=A0=A0 =3D &quot;RedHatEnterpriseWorkstation-6.3&quot;<br>=
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.3+snapshot-20121208&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =
=3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;vfp-neon&quot;<br>
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=
=A0=A0 <br>meta-yocto-bsp=A0=A0=A0 =3D &quot;master:c607095894cab60493ddfc4=
b967b0325e1c313b4&quot;<br><br>NOTE: recipe core-image-sato-sdk-1.0-r0: tas=
k do_rootfs: Succeeded<br>NOTE: Running noexec task 6235 of 6235 (ID: 11, /=
home/vidal/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato-=
sdk.bb">core-image-sato-sdk.bb</a>, do_build)<br>
NOTE: Tasks Summary: Attempted 6235 tasks of which 5220 didn&#39;t need to =
be rerun and all succeeded.<br><br>The Xorg.log is okay up to the end where=
 the following shows the error.<br>[2058343.877] =A0=A0=A0 ABI class: X.Org=
 XInput driver, version 18.0<br>
[2058343.877] (EE) No drivers available.<br>[2058343.877] <br>Fatal server =
error:<br>[2058343.878] no screens found<br>[2058343.878] (EE) <br>Please c=
onsult the The X.Org Foundation support <br>=A0=A0=A0 =A0at <a href=3D"http=
://wiki.x.org">http://wiki.x.org</a><br>
=A0for help. <br>[2058343.879] (EE) Please also check the log file at &quot=
;/var/log/Xorg.0.log&quot; for additional information.<br>[2058343.879] (EE=
) <br>[2058343.890] Server terminated with error (1). Closing log file.<br>
<br>Networking is working Okay.<br>Any help will be welcomed.<br>Thanks<br>=
<br>

--e89a8f64671791479004d057f772--
