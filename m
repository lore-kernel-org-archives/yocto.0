Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86567E00A3C; Thu, 13 Aug 2015 19:01:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp21.services.sfr.fr (smtp21.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 137AEE00767
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 19:00:57 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.73.186.131])
	by msfrf2102.sfr.fr (SMTP Server) with ESMTP id 697487000275;
	Fri, 14 Aug 2015 04:00:55 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-73-186-131.EMOME-IP.hinet.net
	[42.73.186.131])	(using TLSv1
	with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2102.sfr.fr (SMTP Server) with ESMTP id E56B17000091;
	Fri, 14 Aug 2015 04:00:52 +0200 (CEST)
X-SFR-UUID: 20150814020052939.E56B17000091@msfrf2102.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Fri, 14 Aug 2015 04:00:53 +0100
X-PGP-Universal: processed;	by hjo-pc on Fri, 14 Aug 2015 04:00:53 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>, yocto@yoctoproject.org
References: <1439512858-19957-1-git-send-email-raj.khem@gmail.com>
	<1439512858-19957-3-git-send-email-raj.khem@gmail.com>
In-Reply-To: <1439512858-19957-3-git-send-email-raj.khem@gmail.com>
Date: Fri, 14 Aug 2015 04:00:45 +0200
Message-ID: <002201d0d635$0ce48ce0$26ada6a0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEgIkczEoKDnTwdO1s6DuMdP3lhtANZk/vDn1FXapA=
Subject: Re: ***SPAM*** [meta-raspberrypi][PATCH 3/4] userland: Adjust include	location for pthreads-headers
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
X-List-Received-Date: Fri, 14 Aug 2015 02:01:04 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Khem,

I have submitted a patch similar to this one, but yours is more elegant =
in
the way it provides the patch - you do a sed in the install_append, =
while I
was just literally providing a patch file, which is bigger.
So I personally would vote for this one.

I have one question, though: for me, only modifying the #include
"vcos_platform.h" and #include "vcos_platform_types.h" was enough to =
make it
work for everything I tested.
What is the part that requires also modifying #include =
"vcos_futex_mutex.h"?

Best regards,

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Khem Raj
Sent: vendredi 14 ao=FBt 2015 02:41
To: yocto@yoctoproject.org
Subject: ***SPAM*** [yocto] [meta-raspberrypi][PATCH 3/4] userland: =
Adjust
include location for pthreads-headers

vcos headers include headers like "vcos_platform.h" "vcos_futex_mutex.h"
"vcos_platform_types.h" and these headers are different based on
platform/OSes. e.g. OS targets that support pthreads these headers =
should
come from pthreads/ folder but not for others. So one would add right -I
option for every package that accesses them directly or indirectly. so =
if a
software does #include <EGL/egl.h> then it will break

| In file included from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberryp=
i2/
usr/include/interface/vcos/vcos_assert.h:149:0,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberryp=
i2/
usr/include/interface/vcos/vcos.h:114,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberryp=
i2/
usr/include/interface/vmcs_host/vc_dispmanx.h:33,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberryp=
i2/
usr/include/EGL/eglplatform.h:110,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberryp=
i2/
usr/include/EGL/egl.h:36,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp=
-ne
on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/../shared/=
pla
tform.h:29,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp=
-ne
on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/window.h:3=
3,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp=
-ne
on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/eventdemo.=
c:4
0:
|
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberryp=
i2/
usr/include/interface/vcos/vcos_types.h:38:33:
fatal error: vcos_platform_types.h: No such file or directory
|  #include "vcos_platform_types.h"
|                                  ^
| compilation terminated.

This is wrong, it should not happen since doing simple #include =
<EGL/egl.h>
should not demand manual addition of some internal paths tobe added to =
-I
flags.

This patch fixes the headers which refer to headers inside pthreads/ =
folder
to prefix them with pthreads/ so we dont have to specify additional =
paths

This fixes weston on rpi and I believe there are more patches now to

recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
recipes-multimedia/omxplayer/omxplayer_git.bb

which can be removed as well

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-graphics/userland/userland_git.bb
b/recipes-graphics/userland/userland_git.bb
index 6c7200c..188237a 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -37,6 +37,14 @@ PACKAGECONFIG[wayland] =3D =
"-DBUILD_WAYLAND=3DTRUE,,wayland,"
=20
 CFLAGS_append =3D " -fPIC"
=20
+do_install_append () {
+	for f in `find ${D}${includedir}/interface/vcos/ -name "*.h"`; do
+		sed -i 's/include "vcos_platform.h"/include
"pthreads\/vcos_platform.h"/g' ${f}
+		sed -i 's/include "vcos_futex_mutex.h"/include
"pthreads\/vcos_futex_mutex.h"/g' ${f}
+		sed -i 's/include "vcos_platform_types.h"/include
"pthreads\/vcos_platform_types.h"/g' ${f}
+	done
+}
+
 # Shared libs from userland package  build aren't versioned, so we need =
 #
to force the .so files into the runtime package (and keep them  # out of
-dev package).
--
2.1.4

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


