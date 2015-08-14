Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B44DCE00A3C; Thu, 13 Aug 2015 20:16:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.12 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp22.services.sfr.fr (smtp22.services.sfr.fr [93.17.128.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 198F1E00767
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 20:16:02 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.73.186.131])
	by msfrf2212.sfr.fr (SMTP Server) with ESMTP id ED2337000097;
	Fri, 14 Aug 2015 05:15:59 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-73-186-131.EMOME-IP.hinet.net
	[42.73.186.131])	(using TLSv1
	with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2212.sfr.fr (SMTP Server) with ESMTP id 154C87000082;
	Fri, 14 Aug 2015 05:15:56 +0200 (CEST)
X-SFR-UUID: 20150814031557873.154C87000082@msfrf2212.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Fri, 14 Aug 2015 05:15:57 +0100
X-PGP-Universal: processed;	by hjo-pc on Fri, 14 Aug 2015 05:15:57 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>
References: <1439512858-19957-1-git-send-email-raj.khem@gmail.com>
	<1439512858-19957-3-git-send-email-raj.khem@gmail.com>
	<002201d0d635$0ce48ce0$26ada6a0$@neuf.fr>
	<E7B4565D-D1C3-44F1-8E01-60BA0BF73D89@gmail.com>
In-Reply-To: <E7B4565D-D1C3-44F1-8E01-60BA0BF73D89@gmail.com>
Date: Fri, 14 Aug 2015 05:15:50 +0200
Message-ID: <002901d0d63f$89b8ae90$9d2a0bb0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEgIkczEoKDnTwdO1s6DuMdP3lhtANZk/vDAmdwav4CIvSQdp8tGS8A
Cc: yocto@yoctoproject.org
Subject: Re: ***SPAM*** [meta-raspberrypi][PATCH 3/4] userland: Adjust include location for pthreads-headers
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
X-List-Received-Date: Fri, 14 Aug 2015 03:16:07 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Khem,

It's OK to me to change all of them, but for the EGL detection just the
vcos_platform[_types].h are mandatory to fix...
I've tested that with my patch - which just provides those 2 - on =
several
packages, and it works fine with only those it seems.

There seems to be some apparently "non-consistent" include policies in
userland, but Alex raised my attention to the fact that it seems to be a
"feature", and a potentially contentious issue - at least, in the past.

Best regards,

Herve

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]=20
Sent: vendredi 14 ao=FBt 2015 04:57
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org; Andrei Gherzan <andrei@gherzan.ro>;
petter@technux.se; Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Subject: Re: ***SPAM*** [yocto] [meta-raspberrypi][PATCH 3/4] userland:
Adjust include location for pthreads-headers


> On Aug 13, 2015, at 7:00 PM, Herve Jourdain <herve.jourdain@neuf.fr>
wrote:
>=20
> Hi Khem,
>=20
> I have submitted a patch similar to this one, but yours is more=20
> elegant in the way it provides the patch - you do a sed in the=20
> install_append, while I was just literally providing a patch file, =
which
is bigger.
> So I personally would vote for this one.
>=20
> I have one question, though: for me, only modifying the #include=20
> "vcos_platform.h" and #include "vcos_platform_types.h" was enough to=20
> make it work for everything I tested.
> What is the part that requires also modifying #include
"vcos_futex_mutex.h=94?

Just look at the includes, they logically won=92t work so I went ahead =
and
changed all locations of the reference to files under threads/ folder, =
which
is complete fix then.

>=20
> Best regards,
>=20
> Herve
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org=20
> [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Khem Raj
> Sent: vendredi 14 ao=FBt 2015 02:41
> To: yocto@yoctoproject.org
> Subject: ***SPAM*** [yocto] [meta-raspberrypi][PATCH 3/4] userland:=20
> Adjust include location for pthreads-headers
>=20
> vcos headers include headers like "vcos_platform.h" =
"vcos_futex_mutex.h"
> "vcos_platform_types.h" and these headers are different based on=20
> platform/OSes. e.g. OS targets that support pthreads these headers=20
> should come from pthreads/ folder but not for others. So one would add =

> right -I option for every package that accesses them directly or=20
> indirectly. so if a software does #include <EGL/egl.h> then it will=20
> break
>=20
> | In file included from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspber
> rypi2/ usr/include/interface/vcos/vcos_assert.h:149:0,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspber
> rypi2/ usr/include/interface/vcos/vcos.h:114,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspber
> rypi2/ usr/include/interface/vmcs_host/vc_dispmanx.h:33,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspber
> rypi2/
> usr/include/EGL/eglplatform.h:110,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspber
> rypi2/
> usr/include/EGL/egl.h:36,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-
> vfp-ne=20
> on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/../shar
> ed/pla
> tform.h:29,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-
> vfp-ne=20
> on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/window.
> h:33,
> |                  from
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-
> vfp-ne
> on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/eventde
> mo.c:4
> 0:
> |
> /mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspber
> rypi2/
> usr/include/interface/vcos/vcos_types.h:38:33:
> fatal error: vcos_platform_types.h: No such file or directory
> |  #include "vcos_platform_types.h"
> |                                  ^
> | compilation terminated.
>=20
> This is wrong, it should not happen since doing simple #include=20
> <EGL/egl.h> should not demand manual addition of some internal paths=20
> tobe added to -I flags.
>=20
> This patch fixes the headers which refer to headers inside pthreads/=20
> folder to prefix them with pthreads/ so we dont have to specify=20
> additional paths
>=20
> This fixes weston on rpi and I believe there are more patches now to
>=20
> recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> recipes-multimedia/omxplayer/omxplayer_git.bb
>=20
> which can be removed as well
>=20
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
> recipes-graphics/userland/userland_git.bb | 8 ++++++++
> 1 file changed, 8 insertions(+)
>=20
> diff --git a/recipes-graphics/userland/userland_git.bb
> b/recipes-graphics/userland/userland_git.bb
> index 6c7200c..188237a 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -37,6 +37,14 @@ PACKAGECONFIG[wayland] =3D
"-DBUILD_WAYLAND=3DTRUE,,wayland,"
>=20
> CFLAGS_append =3D " -fPIC"
>=20
> +do_install_append () {
> +	for f in `find ${D}${includedir}/interface/vcos/ -name "*.h"`; do
> +		sed -i 's/include "vcos_platform.h"/include
> "pthreads\/vcos_platform.h"/g' ${f}
> +		sed -i 's/include "vcos_futex_mutex.h"/include
> "pthreads\/vcos_futex_mutex.h"/g' ${f}
> +		sed -i 's/include "vcos_platform_types.h"/include
> "pthreads\/vcos_platform_types.h"/g' ${f}
> +	done
> +}
> +
> # Shared libs from userland package  build aren't versioned, so we=20
> need  # to force the .so files into the runtime package (and keep them =
=20
> # out of -dev package).
> --
> 2.1.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20


