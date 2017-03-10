Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 072DEE00A1E; Fri, 10 Mar 2017 08:02:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8470E00A0C
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 08:02:11 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id t189so13905570wmt.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 08:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vVpImJZDMCH6FXpOopkohZSJVZMByWDFRWF7hSgl86c=;
	b=JW1A1WQIcG+kEaoEd/4QIt000vbiqiCtoAqbZoUOVH4POT+VZLdRGYVJbG0KbcJixX
	ruNaoZebdItFEVUzb0wxxZXfiBEHM98VrnvyFYGvVx31qymo4DEbifPKOQfcWHUfvWE4
	YijnmxQjCl1fRIynv2Mah/p9MAUHLF/43yStTFGT8h3AkW8YoCIbVg/IJ+itBo0FO8Tl
	WjzlTbJUpbvYXlTrk6EEAVo0xuLGLT0ka2o04Abu4ZWNVgZMc1cAnxlyPTl/NihBYMjI
	In78q05nwzXGCEZGs1Gmity4DGixmgnbLPfAjv9ybtHDDSmwsTho0iTG3Qa5nISgkJix
	O3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vVpImJZDMCH6FXpOopkohZSJVZMByWDFRWF7hSgl86c=;
	b=l4CsjOb3ZIP7tJs0zo8Tq56p1fPo8C+2J9+UoRhfHt5GrIaTzemxPPSS4Yyy1e1Cdq
	o9MgUh2n3vJzjL6jClSDRwbzdsbjINadThhID8ekBS07mPnwLyjqaDhx550UQdsOC3PV
	7d+vWEjmSaibBBnDr2MR9KaropDk8TtPDaRYrwM2uE+O+SPLqY1OtUaMUkYdRClURMQy
	SElV2/g/hMZJZkI8V0uGMhjP4ZbSudIsN/94OPFEw8Itp5Wsgbby1RwRXY5sPosE9OTC
	Yj3oTQiYGyuJ0gKaZ680aGaPpBGo/8YxUQDxMlfbt8I7BqHxflzzKYRY8pmTB8bdLT5A
	Upkw==
X-Gm-Message-State: AFeK/H14fcquWDHT06TIov/Lol3bowzqvDTXS3MkJp9EQXSytrRMYUqxG4eJysfcUEuBIR1M9a1ICmGzC0XZVg==
X-Received: by 10.28.232.13 with SMTP id f13mr2568432wmh.141.1489161730920;
	Fri, 10 Mar 2017 08:02:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.171.81 with HTTP; Fri, 10 Mar 2017 08:02:10 -0800 (PST)
In-Reply-To: <1488857648-12633-1-git-send-email-jacob-chen@iotwrt.com>
References: <1488857648-12633-1-git-send-email-jacob-chen@iotwrt.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Fri, 10 Mar 2017 17:02:10 +0100
Message-ID: <CABgxDoLqW9vCrMYss0b=-1rTe2yBQSjG8MG+850YCXwV9XfP0w@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: Romain Perier <romain.perier@collabora.com>, yocto@yoctoproject.org,
	Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][PATCH v2] recipes-graphics: mali-userspace: add
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
X-List-Received-Date: Fri, 10 Mar 2017 16:02:18 -0000
Content-Type: multipart/alternative; boundary=001a11477984fc1737054a627b9c

--001a11477984fc1737054a627b9c
Content-Type: text/plain; charset=UTF-8

Hey,

Could you :
1/ change your short commit message to something like "recipes-graphics:
Add recipe for mali-userspace". Just "add" does not make sense to me.
2/ Improve your long commit message.
3/ Add the license to your recipe :)
4/ Change the name of the recipe, call it... rockchip-mali (like in
meta-sunxi) or something different, because mali_userspace is not user
friendly really. What is userspace ?
5/ Fix description and summary => that's mali GL and/or GLES libraries for
Rockchip SoCs for a family of Mali GPU

Thanks !

2017-03-07 4:34 GMT+01:00 Jacob Chen <jacob-chen@iotwrt.com>:

> Do some modifying according to meta-sunxi
>
> * add COMPATIBLE_MACHINE statement
> * detect hard-float
> * combine to one bb file
>
> The difference is it depend on mesa to provide dev-package rather than
> offer it
> by itself, which can save some time to solve the compile errors.
>
> Change-Id: If81c363d4cfb11ade08b6c7cfcbfbe56e9d8824b
> ---
>  .../mali-userspace/mali-userspace_git.bb           | 83
> ++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 recipes-graphics/mali-userspace/mali-userspace_git.bb
>
> diff --git a/recipes-graphics/mali-userspace/mali-userspace_git.bb
> b/recipes-graphics/mali-userspace/mali-userspace_git.bb
> new file mode 100644
> index 0000000..787f79d
> --- /dev/null
> +++ b/recipes-graphics/mali-userspace/mali-userspace_git.bb
> @@ -0,0 +1,83 @@
> +SUMMARY = "Userspace mali driver"
> +DESCRIPTION = "Userspace mali driver"
> +LICENSE = "CLOSED"
> +SECTION = "libs"
> +
> +COMPATIBLE_MACHINE = "(rk3036|rk3288|rk3399)"
> +
> +# There's only hardfp version available
> +python __anonymous() {
> +    tunes = d.getVar("TUNE_FEATURES", True)
> +    if not tunes:
> +        return
> +    if "callconvention-hard" not in tunes:
> +        pkgn = d.getVar("PN", True)
> +        pkgv = d.getVar("PV", True)
> +        raise bb.parse.SkipPackage("%s-%s ONLY supports hardfp mode for
> now" % (pkgn, pkgv))
> +}
> +
> +DEPENDS = "libdrm mesa"
> +
> +PROVIDES += "virtual/egl virtual/libgles1 virtual/libgles2
> virtual/libopencl libgbm"
> +PROVIDES += "${@bb.utils.contains("DISTRO_FEATURES", "wayland", "
> virtual/libwayland-egl", " ", d)}"
> +
> +S = "${WORKDIR}/git"
> +
> +SRC_URI = "git://github.com/rockchip-linux/libmali.git;branch=rockchip;"
> +SRCREV_pn-${PN} = "${AUTOREV}"
> +
> +INSANE_SKIP_${PN} = "already-stripped ldflags dev-so"
> +
> +INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> +INHIBIT_PACKAGE_STRIP = "1"
> +
> +USE_X11 = "${@bb.utils.contains("DISTRO_FEATURES", "x11", "yes", "no",
> d)}"
> +USE_WL = "${@bb.utils.contains("DISTRO_FEATURES", "wayland", "yes",
> "no", d)}"
> +
> +MALI_X11_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r13p0-r0p0.so"
> +MALI_WAYLAND_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r13p0-r0p0-wayland.so
> "
> +MALI_GBM_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r13p0-r0p0-gbm.so
> "
> +
> +MALI_X11_rk3036 = "arm-linux-gnueabihf/libmali-utgard-r6p0.so"
> +
> +MALI_X11_rk3399 = "aarch64-linux-gnu/libmali-midgard-4th-r9p0.so"
> +
> +do_configure[noexec] = "1"
> +do_compile[noexec] = "1"
> +
> +do_install () {
> +       # Create MALI manifest
> +       install -m 755 -d ${D}/${libdir}
> +       if [ "${USE_X11}" = "yes" ]; then
> +               install ${S}/lib/${MALI_X11} ${D}/${libdir}/libmali.so
> +       elif [ "${USE_WL}" = "yes" ]; then
> +               install ${S}/lib/${MALI_WAYLAND} ${D}/${libdir}/libmali.so
> +       else
> +               install ${S}/lib/${MALI_GBM} ${D}/${libdir}/libmali.so
> +       fi
> +
> +       ln -sf libmali.so ${D}/${libdir}/libEGL.so
> +       ln -sf libmali.so ${D}/${libdir}/libEGL.so.1
> +       ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.so
> +       ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.so.1
> +       ln -sf libmali.so ${D}/${libdir}/libGLESv2.so
> +       ln -sf libmali.so ${D}/${libdir}/libGLESv2.so.2
> +       ln -sf libmali.so ${D}/${libdir}/libOpenCL.so
> +       ln -sf libmali.so ${D}/${libdir}/libOpenCL.so.1
> +       ln -sf libmali.so ${D}/${libdir}/libgbm.so
> +       ln -sf libmali.so ${D}/${libdir}/libgbm.so.1
> +
> +       if [ "${USE_WL}" = "yes" ]; then
> +               ln -sf libmali.so ${D}/${libdir}/libwayland-egl.so
> +       fi
> +}
> +
> +PACKAGES = "${PN}"
> +FILES_${PN} += "${libdir}/*.so"
> +
> +RREPLACES_${PN} = "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2
> libgbm"
> +RCONFLICTS_${PN} = "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2
> libgbm"
> +
> +# Workaround: libmali.so provided by rk having no SONAME field in it
> +# so add it to fix rdepends problems
> +RPROVIDES_${PN} += "libwayland-egl.so libgbm.so libGLESv1_CM.so
> libGLESv2.so libEGL.so libOpenCL.so"
> --
> 2.7.4
>
>

--001a11477984fc1737054a627b9c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hey,<br><br></div>Could you :<br>1/ ch=
ange your short commit message to something like &quot;recipes-graphics: Ad=
d recipe for mali-userspace&quot;. Just &quot;add&quot; does not make sense=
 to me.<br></div><div>2/ Improve your long commit message.<br></div>3/ Add =
the license to your recipe :)<br></div><div>4/ Change the name of the recip=
e, call it... rockchip-mali (like in meta-sunxi) or something different, be=
cause mali_userspace is not user friendly really. What is userspace ? <br><=
/div>5/ Fix description and summary =3D&gt; that&#39;s mali GL and/or GLES =
libraries for Rockchip SoCs for a family of Mali GPU<br><br></div>Thanks !<=
br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-03-=
07 4:34 GMT+01:00 Jacob Chen <span dir=3D"ltr">&lt;<a href=3D"mailto:jacob-=
chen@iotwrt.com" target=3D"_blank">jacob-chen@iotwrt.com</a>&gt;</span>:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Do some modifying according to meta-sunxi<b=
r>
<br>
* add COMPATIBLE_MACHINE statement<br>
* detect hard-float<br>
* combine to one bb file<br>
<br>
The difference is it depend on mesa to provide dev-package rather than offe=
r it<br>
by itself, which can save some time to solve the compile errors.<br>
<br>
Change-Id: If81c363d4cfb11ade08b6c7cfcbfb<wbr>e56e9d8824b<br>
---<br>
=C2=A0.../mali-userspace/<a href=3D"http://mali-userspace_git.bb" rel=3D"no=
referrer" target=3D"_blank">mali-<wbr>userspace_git.bb</a>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 83 ++++++++++++++++++++++<br>
=C2=A01 file changed, 83 insertions(+)<br>
=C2=A0create mode 100644 recipes-graphics/mali-<wbr>userspace/<a href=3D"ht=
tp://mali-userspace_git.bb" rel=3D"noreferrer" target=3D"_blank">mali-users=
pace_git.<wbr>bb</a><br>
<br>
diff --git a/recipes-graphics/mali-<wbr>userspace/<a href=3D"http://mali-us=
erspace_git.bb" rel=3D"noreferrer" target=3D"_blank">mali-userspace_git.<wb=
r>bb</a> b/recipes-graphics/mali-<wbr>userspace/<a href=3D"http://mali-user=
space_git.bb" rel=3D"noreferrer" target=3D"_blank">mali-userspace_git.<wbr>=
bb</a><br>
new file mode 100644<br>
index 0000000..787f79d<br>
--- /dev/null<br>
+++ b/recipes-graphics/mali-<wbr>userspace/<a href=3D"http://mali-userspace=
_git.bb" rel=3D"noreferrer" target=3D"_blank">mali-userspace_git.<wbr>bb</a=
><br>
@@ -0,0 +1,83 @@<br>
+SUMMARY =3D &quot;Userspace mali driver&quot;<br>
+DESCRIPTION =3D &quot;Userspace mali driver&quot;<br>
+LICENSE =3D &quot;CLOSED&quot;<br>
+SECTION =3D &quot;libs&quot;<br>
+<br>
+COMPATIBLE_MACHINE =3D &quot;(rk3036|rk3288|rk3399)&quot;<br>
+<br>
+# There&#39;s only hardfp version available<br>
+python __anonymous() {<br>
+=C2=A0 =C2=A0 tunes =3D d.getVar(&quot;TUNE_FEATURES&quot;, True)<br>
+=C2=A0 =C2=A0 if not tunes:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
+=C2=A0 =C2=A0 if &quot;callconvention-hard&quot; not in tunes:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 pkgn =3D d.getVar(&quot;PN&quot;, True)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 pkgv =3D d.getVar(&quot;PV&quot;, True)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise bb.parse.SkipPackage(&quot;%s-%s ONLY su=
pports hardfp mode for now&quot; % (pkgn, pkgv))<br>
+}<br>
+<br>
+DEPENDS =3D &quot;libdrm mesa&quot;<br>
+<br>
+PROVIDES +=3D &quot;virtual/egl virtual/libgles1 virtual/libgles2 virtual/=
libopencl libgbm&quot;<br>
+PROVIDES +=3D &quot;${@bb.utils.contains(&quot;DISTRO_<wbr>FEATURES&quot;,=
 &quot;wayland&quot;, &quot; virtual/libwayland-egl&quot;, &quot; &quot;, d=
)}&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}/git&quot;<br>
+<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/rockchip-linux/libmal=
i.git;branch=3Drockchip" rel=3D"noreferrer" target=3D"_blank">github.com/ro=
ckchip-<wbr>linux/libmali.git;branch=3D<wbr>rockchip</a>;&quot;<br>
+SRCREV_pn-${PN} =3D &quot;${AUTOREV}&quot;<br>
+<br>
+INSANE_SKIP_${PN} =3D &quot;already-stripped ldflags dev-so&quot;<br>
+<br>
+INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
+INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br>
+<br>
+USE_X11 =3D &quot;${@bb.utils.contains(&quot;DISTRO_<wbr>FEATURES&quot;, &=
quot;x11&quot;, &quot;yes&quot;, &quot;no&quot;, d)}&quot;<br>
+USE_WL =3D &quot;${@bb.utils.contains(&quot;DISTRO_<wbr>FEATURES&quot;, &q=
uot;wayland&quot;, &quot;yes&quot;, &quot;no&quot;, d)}&quot;<br>
+<br>
+MALI_X11_rk3288 =3D &quot;arm-linux-gnueabihf/libmali-<wbr>midgard-r13p0-r=
0p0.so&quot;<br>
+MALI_WAYLAND_rk3288 =3D &quot;arm-linux-gnueabihf/libmali-<wbr>midgard-r13=
p0-r0p0-wayland.so &quot;<br>
+MALI_GBM_rk3288 =3D &quot;arm-linux-gnueabihf/libmali-<wbr>midgard-r13p0-r=
0p0-gbm.so &quot;<br>
+<br>
+MALI_X11_rk3036 =3D &quot;arm-linux-gnueabihf/libmali-<wbr>utgard-r6p0.so&=
quot;<br>
+<br>
+MALI_X11_rk3399 =3D &quot;aarch64-linux-gnu/libmali-<wbr>midgard-4th-r9p0.=
so&quot;<br>
+<br>
+do_configure[noexec] =3D &quot;1&quot;<br>
+do_compile[noexec] =3D &quot;1&quot;<br>
+<br>
+do_install () {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create MALI manifest<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 755 -d ${D}/${libdir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;${USE_X11}&quot; =3D &quot;yes&quot;=
 ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install ${S}/lib/${=
MALI_X11} ${D}/${libdir}/libmali.so<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0elif [ &quot;${USE_WL}&quot; =3D &quot;yes&quot=
; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install ${S}/lib/${=
MALI_WAYLAND} ${D}/${libdir}/libmali.so<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install ${S}/lib/${=
MALI_GBM} ${D}/${libdir}/libmali.so<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libEGL.so<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libEGL.so.1<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.s=
o<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.<=
wbr>so.1<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libGLESv2.so<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libGLESv2.so.2=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libOpenCL.so<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libOpenCL.so.1=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libgbm.so<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libgbm.so.1<br=
>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;${USE_WL}&quot; =3D &quot;yes&quot; =
]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so $=
{D}/${libdir}/libwayland-egl.<wbr>so<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
+}<br>
+<br>
+PACKAGES =3D &quot;${PN}&quot;<br>
+FILES_${PN} +=3D &quot;${libdir}/*.so&quot;<br>
+<br>
+RREPLACES_${PN} =3D &quot;libegl libgles1 libglesv1-cm1 libgles2 libglesv2=
-2 libgbm&quot;<br>
+RCONFLICTS_${PN} =3D &quot;libegl libgles1 libglesv1-cm1 libgles2 libglesv=
2-2 libgbm&quot;<br>
+<br>
+# Workaround: libmali.so provided by rk having no SONAME field in it<br>
+# so add it to fix rdepends problems<br>
+RPROVIDES_${PN} +=3D &quot;libwayland-egl.so libgbm.so libGLESv1_CM.so lib=
GLESv2.so libEGL.so libOpenCL.so&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div>

--001a11477984fc1737054a627b9c--
