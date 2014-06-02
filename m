Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCEA6E00B0B; Mon,  2 Jun 2014 03:30:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vaduva.jan.alexandru[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B045EE009C1
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:30:51 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id z12so4937779wgg.24
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fmIlFaIVVbE25QGuaiazqw5nn2ZbatJWvMy4Q1yqKmI=;
	b=pq24jYgi2CxzK3jCyqraP+QTMtMuBJ3SNf1uAcNYu29fABUCxNthLghitqLBwlaoi5
	GQ49veMJXy0BFfKgVvk0wT44wPfXj1e7NDatgebRWzkPsn0RlcZwe4V6Wu+AV+k3SivL
	SNBhr88RpwNOJmtLjfotJFxupIrfq6ZwppdQ/jVQG8MxPjEn70ctkFYUdFu6iqy5HoHX
	juDOmW5LP8yTn6FvRnnW1v8nSNgoCUegrSSokWsmK+XXUuJ7JzvvL4OBng31ZwGET9I8
	JlV15WZ29JSJ4ZXAUYT1OfYvzsBdRjVlkFKxqL4rQDX6UgOEPPIzxnPIIsFNVU61LMtI
	Qepg==
MIME-Version: 1.0
X-Received: by 10.180.36.212 with SMTP id s20mr21238115wij.18.1401705050825;
	Mon, 02 Jun 2014 03:30:50 -0700 (PDT)
Received: by 10.194.133.1 with HTTP; Mon, 2 Jun 2014 03:30:50 -0700 (PDT)
In-Reply-To: <25eecdf05ee2d0268d06082d2b904f43c503898e.1401703109.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>
	<25eecdf05ee2d0268d06082d2b904f43c503898e.1401703109.git.ajlennon@dynamicdevices.co.uk>
Date: Mon, 2 Jun 2014 13:30:50 +0300
Message-ID: <CABwVrCpw7pNvkK71noXVvF8ySiLT4zeOiiMLw12=0VFfYOt=-g@mail.gmail.com>
From: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 1/1] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Mon, 02 Jun 2014 10:30:59 -0000
Content-Type: multipart/alternative; boundary=e89a8f6473c5a2682504fad7e312

--e89a8f6473c5a2682504fad7e312
Content-Type: text/plain; charset=UTF-8

It looks ok to me.
Waiting for a push on remote.

I like the suggestion regarding SRC_URI format but I would have suggested
it to be another patch.
The reason would be that when someone wants to do a revert to the change
the suggestion would still remain,
but this is only a personal preference.

Good work once again, you really did me a service.


Thank you,
Alex


On Mon, Jun 2, 2014 at 1:04 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

> libmmal_vc_client.so makes use of __attribute__(constructor) to ensure
> that supplier components (e.g. camera) are loaded when the static library
> is loaded.
>
> raspivid, and possibly other applications, link against
> libmmal_vc_client.so, causing the ctor to execute, but there is no needed
> dependency.
>
> Some build environments (e.g. Yocto/OpenEmbedded) pass the
> '--no-as-needed' linker flag which removes the dependency on
> libmmal_vc_client and thus components are not r
>
> In this situation raspivid then gives an error of the form
>
>   root@raspberrypi:~# raspivid -o test
>   mmal: mmal_component_create_core: could not find component
> 'vc.ril.camera'
>   mmal: Failed to create camera component
>   mmal: main: Failed to create camera component
>   mmal: Failed to run camera app. Please check for firmware updates
>
> For further details see:
> https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html
>
> Change-Id: I7d6b3751d043f2d79ea06f2d1205e7430f6e926d
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>  recipes-graphics/userland/userland_git.bb | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb
> b/recipes-graphics/userland/userland_git.bb
> index a348090..95e038b 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -11,14 +11,18 @@ PROVIDES = "virtual/libgles2 \
>              virtual/egl"
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> +SRCBRANCH = "master"
> +SRCFORK = "raspberrypi"
>  SRCREV = "eccb81050afd177da1923404b366c6226f29bfe0"
> -SRC_URI = "git://
> github.com/raspberrypi/userland.git;protocol=git;branch=master \
> +
> +SRC_URI = "git://
> github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
>            "
> +
>  S = "${WORKDIR}/git"
>
>  inherit cmake
>
> -EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release"
> +EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release
> -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
>
>  # The compiled binaries don't provide sonames.
>  SOLIBS = "${SOLIBSDEV}"
> @@ -29,10 +33,10 @@ do_install_append() {
>      rm -rf ${D}/opt
>  }
>
> +
>  FILES_${PN} += "${libdir}/*${SOLIBS}"
>  FILES_${PN}-dev = "${includedir} \
>                     ${prefix}/src"
>  FILES_${PN}-doc += "${datadir}/install"
>
>  PACKAGE_ARCH = "${MACHINE_ARCH}"
> -
> --
> 2.0.0
>
>

--e89a8f6473c5a2682504fad7e312
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>It looks ok to me.<br></div>Waiti=
ng for a push on remote.<br><br></div>I like the suggestion regarding SRC_U=
RI format but I would have suggested it to be another patch.<br></div>The r=
eason would be that when someone wants to do a revert to the change the sug=
gestion would still remain, <br>
but this is only a personal preference.<br><br></div>Good work once again, =
you really did me a service.<br><br><br></div><div>Thank you,<br></div>Alex=
<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On =
Mon, Jun 2, 2014 at 1:04 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D=
"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicde=
vices.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">libmmal_vc_client.so makes use of __attribut=
e__(constructor) to ensure that supplier components (e.g. camera) are loade=
d when the static library is loaded.<br>

<br>
raspivid, and possibly other applications, link against libmmal_vc_client.s=
o, causing the ctor to execute, but there is no needed dependency.<br>
<br>
Some build environments (e.g. Yocto/OpenEmbedded) pass the &#39;--no-as-nee=
ded&#39; linker flag which removes the dependency on libmmal_vc_client and =
thus components are not r<br>
<br>
In this situation raspivid then gives an error of the form<br>
<br>
=C2=A0 root@raspberrypi:~# raspivid -o test<br>
=C2=A0 mmal: mmal_component_create_core: could not find component &#39;vc.r=
il.camera&#39;<br>
=C2=A0 mmal: Failed to create camera component<br>
=C2=A0 mmal: main: Failed to create camera component<br>
=C2=A0 mmal: Failed to run camera app. Please check for firmware updates<br=
>
<br>
For further details see: <a href=3D"https://lists.yoctoproject.org/pipermai=
l/yocto/2014-June/019933.html" target=3D"_blank">https://lists.yoctoproject=
.org/pipermail/yocto/2014-June/019933.html</a><br>
<br>
Change-Id: I7d6b3751d043f2d79ea06f2d1205e7430f6e926d<br>
Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.=
co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;<br>
---<br>
<div class=3D"">=C2=A0recipes-graphics/userland/<a href=3D"http://userland_=
git.bb" target=3D"_blank">userland_git.bb</a> | 10 +++++++---<br>
=C2=A01 file changed, 7 insertions(+), 3 deletions(-)<br>
<br>
</div>diff --git a/recipes-graphics/userland/<a href=3D"http://userland_git=
.bb" target=3D"_blank">userland_git.bb</a> b/recipes-graphics/userland/<a h=
ref=3D"http://userland_git.bb" target=3D"_blank">userland_git.bb</a><br>
index a348090..95e038b 100644<br>
--- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
+++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
@@ -11,14 +11,18 @@ PROVIDES =3D &quot;virtual/libgles2 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0virtual/egl&quot;<br>
=C2=A0COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
<br>
+SRCBRANCH =3D &quot;master&quot;<br>
+SRCFORK =3D &quot;raspberrypi&quot;<br>
=C2=A0SRCREV =3D &quot;eccb81050afd177da1923404b366c6226f29bfe0&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/userland.=
git;protocol=3Dgit;branch=3Dmaster" target=3D"_blank">github.com/raspberryp=
i/userland.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
+<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/${SRCFORK}/userland.g=
it;protocol=3Dgit;branch=3D${SRCBRANCH}" target=3D"_blank">github.com/${SRC=
FORK}/userland.git;protocol=3Dgit;branch=3D${SRCBRANCH}</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
=C2=A0inherit cmake<br>
<br>
-EXTRA_OECMAKE =3D &quot;-DCMAKE_BUILD_TYPE=3DRelease&quot;<br>
+EXTRA_OECMAKE =3D &quot;-DCMAKE_BUILD_TYPE=3DRelease -DCMAKE_EXE_LINKER_FL=
AGS=3D&#39;-Wl,--no-as-needed&#39;&quot;<br>
<br>
=C2=A0# The compiled binaries don&#39;t provide sonames.<br>
=C2=A0SOLIBS =3D &quot;${SOLIBSDEV}&quot;<br>
@@ -29,10 +33,10 @@ do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0rm -rf ${D}/opt<br>
=C2=A0}<br>
<br>
+<br>
=C2=A0FILES_${PN} +=3D &quot;${libdir}/*${SOLIBS}&quot;<br>
=C2=A0FILES_${PN}-dev =3D &quot;${includedir} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${pre=
fix}/src&quot;<br>
=C2=A0FILES_${PN}-doc +=3D &quot;${datadir}/install&quot;<br>
<br>
=C2=A0PACKAGE_ARCH =3D &quot;${MACHINE_ARCH}&quot;<br>
-<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.0.0<br>
<br>
</font></span></blockquote></div><br></div>

--e89a8f6473c5a2682504fad7e312--
