Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C863AE00889
	for <yocto@yoctoproject.org>; Mon, 24 Feb 2014 03:24:12 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id k14so4468938wgh.11
	for <yocto@yoctoproject.org>; Mon, 24 Feb 2014 03:24:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=SkmuDrC0ZfPv5OniirAIMHdoDPQuV6wx7JgtJy9Wjko=;
	b=G9zB2oFNNwKODtB1oohuMJMrtyLWxSyQg/wNHB4olnF3Gckn8IDbslj6eEe17YjfHt
	I6Uok2ETrl9ZWCbu4OmOeQXVMb9lyGTA+WZfQy9hPBF7gFk6VyDGZZlnpd0mto8D6qIv
	GIISHHKldHobrnRfLetnmhyww5OzhlG6oGwK27B3ACEr2DSRupzndG6kA94XY61KVyYE
	TYMf/69blT1h4T/7HEvl94i0X9y9hjgkwLIFCKFAteBHVDV78BGDtFlC8QCmBo4Ah/eB
	K6V/qSaTeu5x+UD7cgOZkn9YHXccjX3UWzI3h6tI9Bopcpr/YvHHVPHxzuy/+drQfLr1
	XPEA==
X-Gm-Message-State: ALoCoQmRxM0jqQrPaDWzAKjtF9pRDp/NYg3lty25M+lgrE9neK3J5PQd38KwUIjgy8sscButfOdb
X-Received: by 10.194.192.233 with SMTP id hj9mr18569521wjc.78.1393241050738; 
	Mon, 24 Feb 2014 03:24:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Mon, 24 Feb 2014 03:23:50 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1393240811-6739-1-git-send-email-andrei@gherzan.ro>
References: <1393240811-6739-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 24 Feb 2014 13:23:50 +0200
Message-ID: <CAK18fxHFF-ogn4S+ZcKsObNYxFf9qc+mYBAz8n=AhHJSM7sWTg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 1/1] omxplayer: Update to current remote HEAD
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
X-List-Received-Date: Mon, 24 Feb 2014 11:24:15 -0000
Content-Type: multipart/alternative; boundary=047d7bb70b2eea87eb04f325356c

--047d7bb70b2eea87eb04f325356c
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Feb 24, 2014 at 1:20 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> No need for mktemp-compatible-with-busybox.patch as the issue was
> fixed in current revision.
> omxplayer startup bash script needs pgrep so add procps to RDEPENDS.
>
> Change-Id: I1eecd332e8e51dbbf97e25ec6ed133077f137d7b
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bbb/recipes-multimedia/omxplayer/
> omxplayer_git.bb
> index 33202dc..526dc86 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -10,12 +10,11 @@ LIC_FILES_CHKSUM =
> "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>  DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
>  PR = "r3"
>
> -SRCREV = "f666a5dfbec36e2af7cd965558ac8643c86277a6"
> +SRCREV = "7af21f596378e5efeceebedff9c4a298e2d06d98"
>  SRC_URI = "git://
> github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
>
> file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
>
> file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
>             file://0003-Remove-strip-step-in-Makefile.patch \
> -           file://mktemp-compatible-with-busybox.patch \
>             file://fix-tar-command-with-DIST.patch \
>             "
>  S = "${WORKDIR}/git"
> @@ -68,4 +67,4 @@ FILES_${PN} = "${bindir}/omxplayer* \
>
>  FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
>
> -RDEPENDS_${PN} += "bash"
> +RDEPENDS_${PN} += "bash procps"
> --
> 1.8.1.4
>
>
This updated patch along with the patches from last series were merged.

-- 
*ag*

--047d7bb70b2eea87eb04f325356c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Feb 24, 2014 at 1:20 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">No need for mktemp-compatible-with-busybox.p=
atch as the issue was<br>
fixed in current revision.<br>
omxplayer startup bash script needs pgrep so add procps to RDEPENDS.<br>
<br>
Change-Id: I1eecd332e8e51dbbf97e25ec6ed133077f137d7b<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" target=
=3D"_blank">omxplayer_git.bb</a> | 5 ++---<br>
=A01 file changed, 2 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.b=
b" target=3D"_blank">omxplayer_git.bb</a> b/recipes-multimedia/omxplayer/<a=
 href=3D"http://omxplayer_git.bb" target=3D"_blank">omxplayer_git.bb</a><br=
>
index 33202dc..526dc86 100644<br>
--- a/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" targ=
et=3D"_blank">omxplayer_git.bb</a><br>
+++ b/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" targ=
et=3D"_blank">omxplayer_git.bb</a><br>
@@ -10,12 +10,11 @@ LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D94d55d5=
12a9ba36caa9b7df079bae19f&quot;<br>
=A0DEPENDS =3D &quot;libpcre libav virtual/egl boost freetype dbus&quot;<br=
>
=A0PR =3D &quot;r3&quot;<br>
<br>
-SRCREV =3D &quot;f666a5dfbec36e2af7cd965558ac8643c86277a6&quot;<br>
+SRCREV =3D &quot;7af21f596378e5efeceebedff9c4a298e2d06d98&quot;<br>
=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/popcornmix/omxplaye=
r.git;protocol=3Dgit;branch=3Dmaster" target=3D"_blank">github.com/popcornm=
ix/omxplayer.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://0001-Remove-Makefile.include-which-includes-=
hardcoded.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://0002-Libraries-and-headers-from-ffmpeg-are-i=
nstalled-in-u.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://0003-Remove-strip-step-in-Makefile.patch \<b=
r>
- =A0 =A0 =A0 =A0 =A0 file://mktemp-compatible-with-busybox.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://fix-tar-command-with-DIST.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
=A0S =3D &quot;${WORKDIR}/git&quot;<br>
@@ -68,4 +67,4 @@ FILES_${PN} =3D &quot;${bindir}/omxplayer* \<br>
<br>
=A0FILES_${PN}-dev +=3D &quot;${libdir}/omxplayer/*.so&quot;<br>
<br>
-RDEPENDS_${PN} +=3D &quot;bash&quot;<br>
+RDEPENDS_${PN} +=3D &quot;bash procps&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><div class=3D"gmail_extra"><br></div>This =
updated patch along with the patches from last series were merged.<br><div>=
<br></div>--=A0</div><div class=3D"gmail_extra"><b style=3D"color:rgb(51,51=
,51);font-family:Arial;text-align:center">ag</b>
</div></div>

--047d7bb70b2eea87eb04f325356c--
