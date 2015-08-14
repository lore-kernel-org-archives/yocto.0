Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCAF1E00A3C; Thu, 13 Aug 2015 19:56:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68F95E00767
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 19:56:47 -0700 (PDT)
Received: by pacgr6 with SMTP id gr6so50048150pac.2
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 19:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=2DgRogd5xajd1QPVT9TssSoV6cUqQ6AMEags8F/pBjk=;
	b=oEZfcX/Xaw0fri3nWR2+kLge6zK/ABFKT65+9BtN9OXz+1/jSoJ3tt7oIS0Le2136a
	3+cNSGoglmzYtYt1lMrwkHXJIuFJYvaZHLScki8k6xgxmakpAHGG+5TB8IFfzMqrOHrf
	hQhQ/XDPXdQIcMplXq6JFFbLDC8n0uGpL/NdEcenBj/u+HzkUJTNf1Vv7bFE5cMcxw4q
	LQJe7aGuYBnonMGQ4omFI+/Jux2JS2T/bKqP2DLHaVyUnG+gIEn6Gn6o/NGlTq+35RKK
	0ae8N3GKMGevLkbK9QYU27+DVv++AP2bwrwUYc0zFfdUQVJP6X3dM//xxz/p/nBUPAte
	mUqg==
X-Received: by 10.68.231.133 with SMTP id tg5mr84519292pbc.138.1439521007094; 
	Thu, 13 Aug 2015 19:56:47 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:a116:c80f:d4b:9e91?
	([2601:646:8601:4580:a116:c80f:d4b:9e91])
	by smtp.gmail.com with ESMTPSA id
	u10sm4153285pdp.85.2015.08.13.19.56.46
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Aug 2015 19:56:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <002201d0d635$0ce48ce0$26ada6a0$@neuf.fr>
Date: Thu, 13 Aug 2015 19:56:46 -0700
Message-Id: <E7B4565D-D1C3-44F1-8E01-60BA0BF73D89@gmail.com>
References: <1439512858-19957-1-git-send-email-raj.khem@gmail.com>
	<1439512858-19957-3-git-send-email-raj.khem@gmail.com>
	<002201d0d635$0ce48ce0$26ada6a0$@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.2104)
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
X-List-Received-Date: Fri, 14 Aug 2015 02:56:52 -0000
X-Groupsio-MsgNum: 26103
Content-Type: multipart/signed;
	boundary="Apple-Mail=_853F8A93-7E7B-4A62-9C27-46A17AD3E022";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_853F8A93-7E7B-4A62-9C27-46A17AD3E022
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Aug 13, 2015, at 7:00 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> Hi Khem,
>=20
> I have submitted a patch similar to this one, but yours is more =
elegant in
> the way it provides the patch - you do a sed in the install_append, =
while I
> was just literally providing a patch file, which is bigger.
> So I personally would vote for this one.
>=20
> I have one question, though: for me, only modifying the #include
> "vcos_platform.h" and #include "vcos_platform_types.h" was enough to =
make it
> work for everything I tested.
> What is the part that requires also modifying #include =
"vcos_futex_mutex.h=94?

Just look at the includes, they logically won=92t work so I went ahead =
and changed all locations
of the reference to files under threads/ folder, which is complete fix =
then.

>=20
> Best regards,
>=20
> Herve
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Khem Raj
> Sent: vendredi 14 ao=FBt 2015 02:41
> To: yocto@yoctoproject.org
> Subject: ***SPAM*** [yocto] [meta-raspberrypi][PATCH 3/4] userland: =
Adjust
> include location for pthreads-headers
>=20
> vcos headers include headers like "vcos_platform.h" =
"vcos_futex_mutex.h"
> "vcos_platform_types.h" and these headers are different based on
> platform/OSes. e.g. OS targets that support pthreads these headers =
should
> come from pthreads/ folder but not for others. So one would add right =
-I
> option for every package that accesses them directly or indirectly. so =
if a
> software does #include <EGL/egl.h> then it will break
>=20
> | In file included from
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi=
2/
> usr/include/interface/vcos/vcos_assert.h:149:0,
> |                  from
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi=
2/
> usr/include/interface/vcos/vcos.h:114,
> |                  from
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi=
2/
> usr/include/interface/vmcs_host/vc_dispmanx.h:33,
> |                  from
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi=
2/
> usr/include/EGL/eglplatform.h:110,
> |                  from
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi=
2/
> usr/include/EGL/egl.h:36,
> |                  from
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-=
ne
> =
on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/../shared/p=
la
> tform.h:29,
> |                  from
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-=
ne
> =
on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/window.h:33=
,
> |                  from
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-=
ne
> =
on-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/eventdemo.c=
:4
> 0:
> |
> =
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi=
2/
> usr/include/interface/vcos/vcos_types.h:38:33:
> fatal error: vcos_platform_types.h: No such file or directory
> |  #include "vcos_platform_types.h"
> |                                  ^
> | compilation terminated.
>=20
> This is wrong, it should not happen since doing simple #include =
<EGL/egl.h>
> should not demand manual addition of some internal paths tobe added to =
-I
> flags.
>=20
> This patch fixes the headers which refer to headers inside pthreads/ =
folder
> to prefix them with pthreads/ so we dont have to specify additional =
paths
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
> @@ -37,6 +37,14 @@ PACKAGECONFIG[wayland] =3D =
"-DBUILD_WAYLAND=3DTRUE,,wayland,"
>=20
> CFLAGS_append =3D " -fPIC"
>=20
> +do_install_append () {
> +	for f in `find ${D}${includedir}/interface/vcos/ -name "*.h"`; =
do
> +		sed -i 's/include "vcos_platform.h"/include
> "pthreads\/vcos_platform.h"/g' ${f}
> +		sed -i 's/include "vcos_futex_mutex.h"/include
> "pthreads\/vcos_futex_mutex.h"/g' ${f}
> +		sed -i 's/include "vcos_platform_types.h"/include
> "pthreads\/vcos_platform_types.h"/g' ${f}
> +	done
> +}
> +
> # Shared libs from userland package  build aren't versioned, so we =
need  #
> to force the .so files into the runtime package (and keep them  # out =
of
> -dev package).
> --
> 2.1.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20


--Apple-Mail=_853F8A93-7E7B-4A62-9C27-46A17AD3E022
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXNWO4ACgkQuwUzVZGdMxQU+ACcCvIXZGdNetBwURE/46w+Yhvd
tXIAn3HQybdcGBfuilrnPHZfNuuxqMin
=sPVn
-----END PGP SIGNATURE-----

--Apple-Mail=_853F8A93-7E7B-4A62-9C27-46A17AD3E022--
