Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EDE8E009B1; Sun,  6 Nov 2016 02:57:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71A54E0095F
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 02:57:15 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id p190so11374490wmp.1
	for <yocto@yoctoproject.org>; Sun, 06 Nov 2016 02:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3si/2Thby6pPttmb1LSY8wn4HS10P2Dv4p9vUiWhHCQ=;
	b=k6FiJp5rMr8TdJqO7/WP9jXEtlBxm+xAmels72mMyHB/Xwyy4fTG5fF92/Y4Fo/ftB
	+pv7YTbRqGf8Y8lr68gQMIOYMP0LY3AAaLW2vSmEI2KUx1On5CsfqifJb071GdAGcC5Y
	7ZAUy8mkSAzN1Uz3+WW1sL2Ob+8OEfzX74zQEf6n+XFILeYKyQuf6vOQlY/Z+4vd8FOw
	1GvX04KOEKYNqBngAyiwvEoFaoL+z5fsBqFTlm78xbYf+CRoT0qIvvh3tPQCwune8u4i
	YdO726WBHjVheWfRjlgY//o7yS+ua5MSMUw7VOwMob1fTqZJUIGFgSe9Oj9HgaMMEIfO
	NfRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3si/2Thby6pPttmb1LSY8wn4HS10P2Dv4p9vUiWhHCQ=;
	b=UQIfjrkvAAOM5JKGLw1v+gBFYjde9OWaalyto6/Z2iXrkotqU4A6dDzJ+Y2x4kWauA
	95AH4j9Gfgkv6+WFPREGDQXlAR/YALJv2jUrFGSUeLRoVZnQ8nQIZAqUA48dykURqVqb
	jXIYJ7A/okcDD7+2zZCt6cxDdK4YWmEbcvVmOiGW0vwRI3p3GtdG7veD0L8+bOs92t65
	UCCD5fwtm4ZQByQom4QH3eyGa2Ed9jrcDv0JBiwcA6WqXvSlNIg/sls4N+BNHEjUBWSP
	b/hNOkmqplrmwd8jbGvbw3rNikrHCt/7y1opEVyQQNvxWCutCvp1pQD7/O/rMcViilI9
	r7jA==
X-Gm-Message-State: ABUngve2wV21Ah1ZL1vOgzzSJWiV0ri+5zEJTMMZNeQzdJ9z2sRPq0jEc21LcEG9CR91uGwuBYfAAssGQd+6KQ==
X-Received: by 10.28.109.87 with SMTP id i84mr2191127wmc.100.1478429834204;
	Sun, 06 Nov 2016 02:57:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.210.203 with HTTP; Sun, 6 Nov 2016 02:57:13 -0800 (PST)
X-Originating-IP: [62.74.6.152]
Received: by 10.28.210.203 with HTTP; Sun, 6 Nov 2016 02:57:13 -0800 (PST)
In-Reply-To: <20161106072515.3505-2-raj.khem@gmail.com>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<20161106072515.3505-2-raj.khem@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 6 Nov 2016 10:57:13 +0000
Message-ID: <CAK18fxEb5Ej7jVQPJoU1S_wusnmu_GBZMQ-KBWBAMPt3Mv_=zw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Bump to latest and add ASNEEDED = ""
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
X-List-Received-Date: Sun, 06 Nov 2016 10:57:18 -0000
Content-Type: multipart/alternative; boundary=001a1147dc9817ee1805409fc5b1

--001a1147dc9817ee1805409fc5b1
Content-Type: text/plain; charset=UTF-8

On 6 Nov 2016 09:34, "Khem Raj" <raj.khem@gmail.com> wrote:
>
> ASNEEDED does not work with userland libraries as
> noted in see
> https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html
>
> Helps with running kodi using gles2

Some work on kodi. This is nice.

>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../userland/0003-wayland-Add-Wayland-example.patch        | 14
+++++++-------
>  recipes-graphics/userland/userland_git.bb                  |  4 +++-
>  2 files changed, 10 insertions(+), 8 deletions(-)
>
> diff --git
a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> index 49a7872..98f18c8 100644
> ---
a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> +++
b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> @@ -1,4 +1,4 @@
> -From 7f52662a4d1965988ee5ada28ce3525c38ebf164 Mon Sep 17 00:00:00 2001
> +From 6ee44bd040bf8e8abf9c5a7be7f6ea4b82d5671a Mon Sep 17 00:00:00 2001
>  From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
>  Date: Tue, 1 Oct 2013 13:19:20 +0200
>  Subject: [PATCH 03/13] wayland: Add Wayland example
> @@ -844,23 +844,23 @@ index 0000000..1a7bfc4
>  +}
>  +
>  diff --git a/host_applications/linux/apps/hello_pi/rebuild.sh
b/host_applications/linux/apps/hello_pi/rebuild.sh
> -index fa4539e..37120ac 100755
> +index 8225dd5..0be6ce7 100755
>  --- a/host_applications/linux/apps/hello_pi/rebuild.sh
>  +++ b/host_applications/linux/apps/hello_pi/rebuild.sh
> -@@ -13,6 +13,7 @@ make -C hello_jpeg clean
> - make -C hello_videocube clean
> +@@ -14,6 +14,7 @@ make -C hello_videocube clean
>   make -C hello_teapot clean
>   make -C hello_fft clean
> + make -C hello_mmal_encode clean
>  +make -C hello_wayland clean
>
>   make -C libs/ilclient
>   make -C libs/vgfont
> -@@ -29,4 +30,4 @@ make -C hello_jpeg
> - make -C hello_videocube
> +@@ -31,4 +32,4 @@ make -C hello_videocube
>   make -C hello_teapot
>   make -C hello_fft
> + make -C hello_mmal_encode
>  -
>  +make -C hello_wayland
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland_git.bb
b/recipes-graphics/userland/userland_git.bb
> index 7558851..84d6854 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>
>  SRCBRANCH = "master"
>  SRCFORK = "raspberrypi"
> -SRCREV = "2852d9ff5a9038021f1c22d95e8a9e3aad09893f"
> +SRCREV = "100f8bb3e74e29d04fb99857183cc34aaa712e3f"
>
>  SRC_URI = "\
>      git://
github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
> @@ -38,6 +38,8 @@ S = "${WORKDIR}/git"
>
>  inherit cmake pkgconfig
>
> +ASNEEDED = ""
> +
>  EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release
-DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed' \
>                   -DVMCS_INSTALL_PREFIX=${exec_prefix} \
>  "
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a1147dc9817ee1805409fc5b1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On 6 Nov 2016 09:34, &quot;Khem Raj&quot; &lt;<a href=3D"mai=
lto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; ASNEEDED does not work with userland libraries as<br>
&gt; noted in see<br>
&gt; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-June/01=
9933.html">https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.=
html</a><br>
&gt;<br>
&gt; Helps with running kodi using gles2</p>
<p dir=3D"ltr">Some work on kodi. This is nice.</p>
<p dir=3D"ltr">&gt;<br>
&gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.=
khem@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0.../userland/0003-wayland-Add-Wayland-example.patch=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 | 14 +++++++-------<br>
&gt; =C2=A0recipes-graphics/userland/<a href=3D"http://userland_git.bb">use=
rland_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 4 +++-<br>
&gt; =C2=A02 files changed, 10 insertions(+), 8 deletions(-)<br>
&gt;<br>
&gt; diff --git a/recipes-graphics/userland/userland/0003-wayland-Add-Wayla=
nd-example.patch b/recipes-graphics/userland/userland/0003-wayland-Add-Wayl=
and-example.patch<br>
&gt; index 49a7872..98f18c8 100644<br>
&gt; --- a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-exam=
ple.patch<br>
&gt; +++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-exam=
ple.patch<br>
&gt; @@ -1,4 +1,4 @@<br>
&gt; -From 7f52662a4d1965988ee5ada28ce3525c38ebf164 Mon Sep 17 00:00:00 200=
1<br>
&gt; +From 6ee44bd040bf8e8abf9c5a7be7f6ea4b82d5671a Mon Sep 17 00:00:00 200=
1<br>
&gt; =C2=A0From: Tomeu Vizoso &lt;<a href=3D"mailto:tomeu.vizoso@collabora.=
com">tomeu.vizoso@collabora.com</a>&gt;<br>
&gt; =C2=A0Date: Tue, 1 Oct 2013 13:19:20 +0200<br>
&gt; =C2=A0Subject: [PATCH 03/13] wayland: Add Wayland example<br>
&gt; @@ -844,23 +844,23 @@ index 0000000..1a7bfc4<br>
&gt; =C2=A0+}<br>
&gt; =C2=A0+<br>
&gt; =C2=A0diff --git a/host_applications/linux/apps/hello_pi/rebuild.sh b/=
host_applications/linux/apps/hello_pi/rebuild.sh<br>
&gt; -index fa4539e..37120ac 100755<br>
&gt; +index 8225dd5..0be6ce7 100755<br>
&gt; =C2=A0--- a/host_applications/linux/apps/hello_pi/rebuild.sh<br>
&gt; =C2=A0+++ b/host_applications/linux/apps/hello_pi/rebuild.sh<br>
&gt; -@@ -13,6 +13,7 @@ make -C hello_jpeg clean<br>
&gt; - make -C hello_videocube clean<br>
&gt; +@@ -14,6 +14,7 @@ make -C hello_videocube clean<br>
&gt; =C2=A0 make -C hello_teapot clean<br>
&gt; =C2=A0 make -C hello_fft clean<br>
&gt; + make -C hello_mmal_encode clean<br>
&gt; =C2=A0+make -C hello_wayland clean<br>
&gt;<br>
&gt; =C2=A0 make -C libs/ilclient<br>
&gt; =C2=A0 make -C libs/vgfont<br>
&gt; -@@ -29,4 +30,4 @@ make -C hello_jpeg<br>
&gt; - make -C hello_videocube<br>
&gt; +@@ -31,4 +32,4 @@ make -C hello_videocube<br>
&gt; =C2=A0 make -C hello_teapot<br>
&gt; =C2=A0 make -C hello_fft<br>
&gt; + make -C hello_mmal_encode<br>
&gt; =C2=A0-<br>
&gt; =C2=A0+make -C hello_wayland<br>
&gt; =C2=A0--<br>
&gt; -2.10.0<br>
&gt; +2.10.2<br>
&gt;<br>
&gt; diff --git a/recipes-graphics/userland/<a href=3D"http://userland_git.=
bb">userland_git.bb</a> b/recipes-graphics/userland/<a href=3D"http://userl=
and_git.bb">userland_git.bb</a><br>
&gt; index 7558851..84d6854 100644<br>
&gt; --- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb">use=
rland_git.bb</a><br>
&gt; +++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb">use=
rland_git.bb</a><br>
&gt; @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
&gt;<br>
&gt; =C2=A0SRCBRANCH =3D &quot;master&quot;<br>
&gt; =C2=A0SRCFORK =3D &quot;raspberrypi&quot;<br>
&gt; -SRCREV =3D &quot;2852d9ff5a9038021f1c22d95e8a9e3aad09893f&quot;<br>
&gt; +SRCREV =3D &quot;100f8bb3e74e29d04fb99857183cc34aaa712e3f&quot;<br>
&gt;<br>
&gt; =C2=A0SRC_URI =3D &quot;\<br>
&gt; =C2=A0 =C2=A0 =C2=A0git://<a href=3D"http://github.com/${SRCFORK}/user=
land.git;protocol=3Dgit;branch=3D${SRCBRANCH}">github.com/${SRCFORK}/userla=
nd.git;protocol=3Dgit;branch=3D${SRCBRANCH}</a> \<br>
&gt; @@ -38,6 +38,8 @@ S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt; =C2=A0inherit cmake pkgconfig<br>
&gt;<br>
&gt; +ASNEEDED =3D &quot;&quot;<br>
&gt; +<br>
&gt; =C2=A0EXTRA_OECMAKE =3D &quot;-DCMAKE_BUILD_TYPE=3DRelease -DCMAKE_EXE=
_LINKER_FLAGS=3D&#39;-Wl,--no-as-needed&#39; \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -DVMCS_=
INSTALL_PREFIX=3D${exec_prefix} \<br>
&gt; =C2=A0&quot;<br>
&gt; --<br>
&gt; 2.10.2<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br></p>

--001a1147dc9817ee1805409fc5b1--
