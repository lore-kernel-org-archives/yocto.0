Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFD85E00A5C; Wed, 22 Mar 2017 20:11:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77CAFE00A16
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 20:11:05 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id o135so28600680qke.2
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 20:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QM3hCrGFeRqIIf2QxViMIJuD4nUCW/h3QSt8dDMzeyc=;
	b=iu2l5J/PlU36Sw7eZZGkB+iYWeXZMlomKI0/43M5IBKvOVehv/4BGIWUhDMB1IVnKe
	qr6jOLKsXqVmNo0hrR2AUdMoDeJRvx8uoCCp9RY3tIL3W4RXw5XoWTMGrdVe5IjErNla
	FV6Jmx4+N/usKMYRbzxYwwXBkFdbIG+S+cYT3gCIPt4Lwru2g5bDCsPIxYIqqWlIOWQV
	bbili9WIaEjhFbaDOu/0z3o2i0Mz5HmXDwKWi9zhedkxD6fMGewxcjhw/8IDEi6Xa73g
	hEngdxIKUVjlfIcNb8YA3JRdOcPRmpnUTKK3XjkjZFSc1oct1t5fr3nPWkEPXfTUczwK
	DdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QM3hCrGFeRqIIf2QxViMIJuD4nUCW/h3QSt8dDMzeyc=;
	b=o8iB2iRrHou1GJ3rxlL0tM3mNJGUfyB2az5uQ2l7f66syM+B8sy/v9fHKS9TN9/woL
	Zv+pWT6XvHc3H83vpAMz1fItW9d4kqqsoNf2bXdBJcI2I57c7lHh2y19f1UVSs6w12os
	3Z4zMobNcFnWOT4ydkRYRyKHaJ4QMlO7bh0AZni0XzFi4hOnwIygbUCLC43JLdQWU08s
	o9iEjJX3lw1SCVF3tMdMY7DVlMkcdTL+5E/bSnKtcDwHE6ix1ShNhDJsrrtaCCDqOp6h
	kAnqwEI85XqLvr4vD2o7cjNPXbzRx44eywvkntJy8dwghTj0e5OBeByIEsfO1pvviGTi
	accQ==
X-Gm-Message-State: AFeK/H2AKBICMfVov8E8c5thC8PYK7/9B8ZsPHPSvkliK3iwfJTcrBj6gCyB4whsZ89jZp2wkZaioH8N3ghU/A==
X-Received: by 10.233.220.130 with SMTP id q124mr225293qkf.27.1490238665294;
	Wed, 22 Mar 2017 20:11:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.51.101 with HTTP; Wed, 22 Mar 2017 20:11:04 -0700 (PDT)
In-Reply-To: <1489946065-28272-2-git-send-email-ayaka@soulik.info>
References: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
	<1489946065-28272-2-git-send-email-ayaka@soulik.info>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Thu, 23 Mar 2017 11:11:04 +0800
Message-ID: <CAJrj+DPj_Kx5jAtkPqTiNOQexpvEXWjq73V11NEu=_8WLpNzxw@mail.gmail.com>
To: ayaka <ayaka@soulik.info>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] recipes-multimedia: add Rockchip MPP library
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
X-List-Received-Date: Thu, 23 Mar 2017 03:11:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c044bea468ccf054b5d3a11

--94eb2c044bea468ccf054b5d3a11
Content-Type: text/plain; charset=UTF-8

You have to add meta-rockchip prefix in every patch you send to
meta-rockchip.  Or else people may confuse with which meta you want to
apply to.
You need to send to
Romain Perier(romain.perier@gmail.com, Project leader of meta-rockchip),
Trevor Woerner (twoerner@gmail.com, Maintainer of meta-rockchip)

2017-03-20 1:54 GMT+08:00 ayaka <ayaka@soulik.info>:

> MPP means Media Process Platform. The MPP is a middleware
> for the other video encoder/decoder interface, translating
> the video information into the hardware registers.
>
> Signed-off-by: ayaka <ayaka@soulik.info>
> ---
>  recipes-multimedia/rockchip-mpp/rockchip-mpp.inc     | 20
> ++++++++++++++++++++
>  .../rockchip-mpp/rockchip-mpp_20170319.bb            | 13 +++++++++++++
>  recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb  | 14 ++++++++++++++
>  3 files changed, 47 insertions(+)
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
>  create mode 100644 recipes-multimedia/rockchip-mpp/
> rockchip-mpp_20170319.bb
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
>
> diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
> b/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
> new file mode 100644
> index 0000000..795efb8
> --- /dev/null
> +++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
> @@ -0,0 +1,20 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://readme.txt;md5=5783b0faa80f27469c4ee56334229e
> 1a"
> +
> +inherit pkgconfig cmake
> +
> +EXTRA_OECMAKE = "     \
> +    -DRKPLATFORM=ON   \
> +    -DHAVE_DRM=ON     \
> +"
> +
> +PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}"
> +FILES_${PN} = "${libdir}/lib*${SOLIBS}"
> +FILES_${PN}-dev = "${libdir}/lib*${SOLIBSDEV} ${includedir}
> ${libdir}/pkgconfig"
> +SECTION_${PN}-dev = "devel"
> +FILES_${PN}-staticdev = "${libdir}/*.a"
> +SECTION_${PN}-staticdev = "devel"
> diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170319.bb
> b/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170319.bb
> new file mode 100644
> index 0000000..00afa0f
> --- /dev/null
> +++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170319.bb
> @@ -0,0 +1,13 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +include rockchip-mpp.inc
> +
> +TAG = "release_20170319"
> +SRC_URI = "git://github.com/rockchip-linux/mpp.git;tag=${TAG};nobranch=1"
> +
> +MPP_VERSION = "1.3.1"
> +
> +PV = "${MPP_VERSION}+${TAG}"
> +
> +S = "${WORKDIR}/git"
> diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
> b/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
> new file mode 100644
> index 0000000..1befafc
> --- /dev/null
> +++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
> @@ -0,0 +1,14 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +
> +DEFAULT_PREFERENCE = "-1"
> +
> +include rockchip-mpp.inc
> +
> +SRCREV = "${AUTOREV}"
> +SRC_URI = "git://github.com/rockchip-linux/mpp.git;branch=develop"
> +
> +PV = "develop+git${SRCPV}"
> +
> +S = "${WORKDIR}/git"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c044bea468ccf054b5d3a11
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"arial, helvetica, sans-serif">You have to ad=
d meta-rockchip prefix in every patch you send to meta-rockchip.=C2=A0 Or e=
lse people may confuse with which meta you want to apply to.=C2=A0</font><d=
iv><font face=3D"arial, helvetica, sans-serif">You need to send to=C2=A0</f=
ont></div><div><font face=3D"arial, helvetica, sans-serif">Romain Perier(<a=
 href=3D"mailto:romain.perier@gmail.com">romain.perier@gmail.com</a><wbr>, =
Project=C2=A0leader of meta-rockchip),=C2=A0</font></div><div><font face=3D=
"arial, helvetica, sans-serif">Trevor Woerner (<a href=3D"mailto:twoerner@g=
mail.com">twoerner@gmail.com</a>,=C2=A0Maintainer of meta-rockchip)</font><=
br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">20=
17-03-20 1:54 GMT+08:00 ayaka <span dir=3D"ltr">&lt;<a href=3D"mailto:ayaka=
@soulik.info" target=3D"_blank">ayaka@soulik.info</a>&gt;</span>:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">MPP means Media Process Platform. The MPP is a mid=
dleware<br>
for the other video encoder/decoder interface, translating<br>
the video information into the hardware registers.<br>
<br>
Signed-off-by: ayaka &lt;<a href=3D"mailto:ayaka@soulik.info">ayaka@soulik.=
info</a>&gt;<br>
---<br>
=C2=A0recipes-multimedia/rockchip-<wbr>mpp/rockchip-mpp.inc=C2=A0 =C2=A0 =
=C2=A0| 20 ++++++++++++++++++++<br>
=C2=A0.../rockchip-mpp/<a href=3D"http://rockchip-mpp_20170319.bb" rel=3D"n=
oreferrer" target=3D"_blank">rockchip-mpp_<wbr>20170319.bb</a>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 13 +++++++++++++<br>
=C2=A0recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"http://rockchip-mpp_g=
it.bb" rel=3D"noreferrer" target=3D"_blank">rockchip-mpp_git.bb</a>=C2=A0 |=
 14 ++++++++++++++<br>
=C2=A03 files changed, 47 insertions(+)<br>
=C2=A0create mode 100644 recipes-multimedia/rockchip-<wbr>mpp/rockchip-mpp.=
inc<br>
=C2=A0create mode 100644 recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"ht=
tp://rockchip-mpp_20170319.bb" rel=3D"noreferrer" target=3D"_blank">rockchi=
p-mpp_20170319.bb</a><br>
=C2=A0create mode 100644 recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"ht=
tp://rockchip-mpp_git.bb" rel=3D"noreferrer" target=3D"_blank">rockchip-mpp=
_git.bb</a><br>
<br>
diff --git a/recipes-multimedia/rockchip-<wbr>mpp/rockchip-mpp.inc b/recipe=
s-multimedia/rockchip-<wbr>mpp/rockchip-mpp.inc<br>
new file mode 100644<br>
index 0000000..795efb8<br>
--- /dev/null<br>
+++ b/recipes-multimedia/rockchip-<wbr>mpp/rockchip-mpp.inc<br>
@@ -0,0 +1,20 @@<br>
+# Copyright (C) 2016 - 2017 Randy Li &lt;<a href=3D"mailto:ayaka@soulik.in=
fo">ayaka@soulik.info</a>&gt;<br>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2<br>
+# (see COPYING.GPLv2 for the terms)<br>
+<br>
+LICENSE =3D &quot;Apache-2.0&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://readme.txt;md5=3D<wbr>5783b0faa80f27469c=
4ee56334229e<wbr>1a&quot;<br>
+<br>
+inherit pkgconfig cmake<br>
+<br>
+EXTRA_OECMAKE =3D &quot;=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 -DRKPLATFORM=3DON=C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 -DHAVE_DRM=3DON=C2=A0 =C2=A0 =C2=A0\<br>
+&quot;<br>
+<br>
+PACKAGES =3D &quot;${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}&quot;<br>
+FILES_${PN} =3D &quot;${libdir}/lib*${SOLIBS}&quot;<br>
+FILES_${PN}-dev =3D &quot;${libdir}/lib*${SOLIBSDEV} ${includedir} ${libdi=
r}/pkgconfig&quot;<br>
+SECTION_${PN}-dev =3D &quot;devel&quot;<br>
+FILES_${PN}-staticdev =3D &quot;${libdir}/*.a&quot;<br>
+SECTION_${PN}-staticdev =3D &quot;devel&quot;<br>
diff --git a/recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"http://rockchi=
p-mpp_20170319.bb" rel=3D"noreferrer" target=3D"_blank">rockchip-mpp_201703=
19.bb</a> b/recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"http://rockchip=
-mpp_20170319.bb" rel=3D"noreferrer" target=3D"_blank">rockchip-mpp_2017031=
9.bb</a><br>
new file mode 100644<br>
index 0000000..00afa0f<br>
--- /dev/null<br>
+++ b/recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"http://rockchip-mpp_2=
0170319.bb" rel=3D"noreferrer" target=3D"_blank">rockchip-mpp_20170319.bb</=
a><br>
@@ -0,0 +1,13 @@<br>
+# Copyright (C) 2016 - 2017 Randy Li &lt;<a href=3D"mailto:ayaka@soulik.in=
fo">ayaka@soulik.info</a>&gt;<br>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2<br>
+# (see COPYING.GPLv2 for the terms)<br>
+include rockchip-mpp.inc<br>
+<br>
+TAG =3D &quot;release_20170319&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/rockchip-linux/mpp.gi=
t;tag=3D${TAG};nobranch=3D1" rel=3D"noreferrer" target=3D"_blank">github.co=
m/rockchip-<wbr>linux/mpp.git;tag=3D${TAG};<wbr>nobranch=3D1</a>&quot;<br>
+<br>
+MPP_VERSION =3D &quot;1.3.1&quot;<br>
+<br>
+PV =3D &quot;${MPP_VERSION}+${TAG}&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"http://rockchi=
p-mpp_git.bb" rel=3D"noreferrer" target=3D"_blank">rockchip-mpp_git.bb</a> =
b/recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"http://rockchip-mpp_git.b=
b" rel=3D"noreferrer" target=3D"_blank">rockchip-mpp_git.bb</a><br>
new file mode 100644<br>
index 0000000..1befafc<br>
--- /dev/null<br>
+++ b/recipes-multimedia/rockchip-<wbr>mpp/<a href=3D"http://rockchip-mpp_g=
it.bb" rel=3D"noreferrer" target=3D"_blank">rockchip-mpp_git.bb</a><br>
@@ -0,0 +1,14 @@<br>
+# Copyright (C) 2016 - 2017 Randy Li &lt;<a href=3D"mailto:ayaka@soulik.in=
fo">ayaka@soulik.info</a>&gt;<br>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2<br>
+# (see COPYING.GPLv2 for the terms)<br>
+<br>
+DEFAULT_PREFERENCE =3D &quot;-1&quot;<br>
+<br>
+include rockchip-mpp.inc<br>
+<br>
+SRCREV =3D &quot;${AUTOREV}&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/rockchip-linux/mpp.gi=
t;branch=3Ddevelop" rel=3D"noreferrer" target=3D"_blank">github.com/rockchi=
p-<wbr>linux/mpp.git;branch=3Ddevelop</a>&quot;<br>
+<br>
+PV =3D &quot;develop+git${SRCPV}&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}/git&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c044bea468ccf054b5d3a11--
