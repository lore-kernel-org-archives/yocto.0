Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01098E0052B; Fri, 27 Jan 2017 06:41:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (romain.perier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CB63E00510
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:41:37 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id r144so58760389wme.0
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OEvsiUWRB8wyZQaXnwCiX+P5fqncOGUj555zl/u62s8=;
	b=aKfx2tJv3Yz6aGhdU9XK+Cn/f8q5IGN/RxSH145zSFbD2d9xkCxFQaO2jY3IZN1lV/
	dg0Mr+MUMIVuWVg4PugycKH7W+HgJGxLKic9H2bGrvC0nYwauoQNf2HlZIKuPKgUmv7m
	xzjNC+TgKlWyRTYolJxzm7jQeP4K6SUbxxOyerDG3lBkHGeebwDSu21Daa/w5UF5Gtuc
	Oi99W51R0b3ryqtrvHrIvzJelhgtIO8qx9+BTeMOc6yOt4ZM1F9yHR9GkbctiW+VZCv9
	Xpa/UijRi7eTTf4MZUzBqGa+3LRbe00UOjMGNbMFtKb2riu/BNW/6+fLg6wUJxDreNhf
	hH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OEvsiUWRB8wyZQaXnwCiX+P5fqncOGUj555zl/u62s8=;
	b=kNvLH4+MvtsTH8CFeuiFNK71IwtLIlScmv/Va0DSv8R0ygextLvTPlUf/TkmU6fC4T
	nDTfbUmqWEY4AVUOtoLiXeFxVPL+hn9ik5uho660F8TcLXVoBuIsaifNTEvkTG3OcCAK
	rFOmiiLCMrwtS8xnH7XhxSXcSQ+HYWL2V8Wtg2AIKHMMgBIFzwjP5LoSwEzLdtKlgKLA
	ZrXi46bUxKZ0NXjjXOyHv7Ca8N8BCdlpxMtHt+AenLwRWsCho3trECm6LBbeqGP1P5dq
	Rogx08dIPozDnY/5AikPbRPEaa9i5i3DBKWdbybHTQFMRK7L4f2LjBakfR8BdCwt4g8z
	8gsQ==
X-Gm-Message-State: AIkVDXLFsLAPPZ0Q01dirox1n4sL6mXu1MJkCPlGGr76K9ViAbU+JR4T6s0HlHaviyKLSWrCb4elyxg51yWfdQ==
X-Received: by 10.28.166.215 with SMTP id p206mr3644554wme.87.1485528096643;
	Fri, 27 Jan 2017 06:41:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Fri, 27 Jan 2017 06:41:36 -0800 (PST)
In-Reply-To: <1484834687-15746-5-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-5-git-send-email-jacob-chen@iotwrt.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Fri, 27 Jan 2017 15:41:36 +0100
Message-ID: <CABgxDoLt2RbidD-3L93UkjLuaXn_eoB08=HqLaHsD9=8nLpqmQ@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: yocto@yoctoproject.org, eddie.cai@rock-chips.com
Subject: Re: [meta-rockchip][PATCH 4/7] recipes-graphics: Add support for mali-userspace
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
X-List-Received-Date: Fri, 27 Jan 2017 14:41:41 -0000
Content-Type: multipart/alternative; boundary=94eb2c12943e81264105471476f1

--94eb2c12943e81264105471476f1
Content-Type: text/plain; charset=UTF-8

Hi all,

Correct me if I am wrong, but these are generic mali userpace binaries ?
meta-rockchip is a bsp meta layer, it should only contains files and
recipes to make rockchip board working or things specific to the rockchip
board. For me these recipes are completly generic and might be re-used for
another platform with another SoC.

I don't want this in meta-rockchip. There is no a layer called meta-mali or
something ?

@Trevor: Feel free to comment, the point of view of the second maintainer
is always welcome

Thanks,
Romain

2017-01-19 15:04 GMT+01:00 Jacob Chen <jacob-chen@iotwrt.com>:

> Add support for mali userspace which are binaries that can be run
> with weston and X11.
>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  recipes-graphics/mali-userspace/mali-userspace.inc | 57
> ++++++++++++++++++++++
>  .../mali-userspace/mali-userspace_t76x.bb          | 18 +++++++
>  recipes-graphics/mesa/mesa_%.bbappend              |  9 ++++
>  3 files changed, 84 insertions(+)
>  create mode 100644 recipes-graphics/mali-userspace/mali-userspace.inc
>  create mode 100644 recipes-graphics/mali-userspace/mali-userspace_t76x.bb
>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>
> diff --git a/recipes-graphics/mali-userspace/mali-userspace.inc
> b/recipes-graphics/mali-userspace/mali-userspace.inc
> new file mode 100644
> index 0000000..d40f583
> --- /dev/null
> +++ b/recipes-graphics/mali-userspace/mali-userspace.inc
> @@ -0,0 +1,57 @@
> +SUMMARY = "Userspace mali driver for Midgard-T76x"
> +DESCRIPTION = "Userspace mali driver for Midgard-T76x"
> +LICENSE = "CLOSED"
> +SECTION = "libs"
> +
> +DEPENDS = "libdrm"
> +DEPENDS += "${@bb.utils.contains("DISTRO_FEATURES", "wayland", " mesa",
> " ", d)}"
> +
> +PROVIDES += "virtual/egl virtual/libgles1 virtual/libgles2
> virtual/libopencl libgbm"
> +PROVIDES += "${@bb.utils.contains("DISTRO_FEATURES", "wayland", "
> virtual/libwayland-egl", " ", d)}"
> +
> +S = "${WORKDIR}"
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
> +do_configure[noexec] = "1"
> +do_compile[noexec] = "1"
> +
> +do_install () {
> +       # Create MALI manifest
> +       install -m 755 -d ${D}/${libdir}
> +       if [ "${USE_X11}" = "yes" ]; then
> +               install ${S}/x11/libmali.so ${D}/${libdir}
> +       elif [ "${USE_WL}" = "yes" ]; then
> +               install ${S}/wayland/libmali.so ${D}/${libdir}
> +       fi
> +
> +       ln -sf libmali.so ${D}/${libdir}/libEGL.so
> +       ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.so
> +       ln -sf libmali.so ${D}/${libdir}/libGLESv2.so
> +       ln -sf libmali.so ${D}/${libdir}/libOpenCL.so
> +       ln -sf libmali.so ${D}/${libdir}/libgbm.so
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
> +RPROVIDES_${PN} = "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2
> libgbm"
> +RCONFLICTS_${PN} = "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2
> libgbm"
> +
> +# Workaround: libmali.so provided by rk having no SONAME field in it
> +# so add it to fix rdepends problems
> +RPROVIDES_${PN} += "libwayland-egl.so libgbm.so libGLESv1_CM.so
> libGLESv2.so libEGL.so libOpenCL.so"
> diff --git a/recipes-graphics/mali-userspace/mali-userspace_t76x.bb
> b/recipes-graphics/mali-userspace/mali-userspace_t76x.bb
> new file mode 100644
> index 0000000..3281ac0
> --- /dev/null
> +++ b/recipes-graphics/mali-userspace/mali-userspace_t76x.bb
> @@ -0,0 +1,18 @@
> +require mali-userspace.inc
> +
> +TYPE = "midgard"
> +SW_VER = "r13p0"
> +HW_VER = "r0p0"
> +
> +LIB_PATH = "arm-linux-gnueabihf"
> +
> +MALI_X11 = "libmali-${TYPE}-${SW_VER}-${HW_VER}.so"
> +MALI_WAYLAND = "libmali-${TYPE}-${SW_VER}-${HW_VER}-wayland.so"
> +
> +do_install_prepend () {
> +       mkdir -p x11
> +       cp git/lib/${LIB_PATH}/${MALI_X11} x11/libmali.so
> +
> +       mkdir -p wayland
> +       cp git/lib/${LIB_PATH}/${MALI_WAYLAND}  wayland/libmali.so
> +}
> diff --git a/recipes-graphics/mesa/mesa_%.bbappend
> b/recipes-graphics/mesa/mesa_%.bbappend
> new file mode 100644
> index 0000000..d9cab75
> --- /dev/null
> +++ b/recipes-graphics/mesa/mesa_%.bbappend
> @@ -0,0 +1,9 @@
> +PROVIDES_remove = "virtual/libgles1 virtual/libgles2 virtual/egl
> virtual/libwayland-egl"
> +
> +do_install_append () {
> +    rm -f ${D}/${libdir}/libEGL*
> +    rm -f ${D}/${libdir}/libGLESv1_CM.*
> +    rm -f ${D}/${libdir}/libGLESv2.*
> +    rm -f ${D}/${libdir}/libgbm*
> +    rm -f ${D}/${libdir}/libwayland-egl*
> +}
> --
> 2.7.4
>
>

--94eb2c12943e81264105471476f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi all,<br><br></div>Correct me i=
f I am wrong, but these are generic mali userpace binaries ? meta-rockchip =
is a bsp meta layer, it should only contains files and recipes to make rock=
chip board working or things specific to the rockchip board. For me these r=
ecipes are completly generic and might be re-used for another platform with=
 another SoC.<br><br></div>I don&#39;t want this in meta-rockchip. There is=
 no a layer called meta-mali or something ?<br><br></div>@Trevor: Feel free=
 to comment, the point of view of the second maintainer is always welcome<b=
r><br></div>Thanks,<br></div>Romain<br></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">2017-01-19 15:04 GMT+01:00 Jacob Chen <span dir=
=3D"ltr">&lt;<a href=3D"mailto:jacob-chen@iotwrt.com" target=3D"_blank">jac=
ob-chen@iotwrt.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div c=
lass=3D"HOEnZb"><div class=3D"h5">Add support for mali userspace which are =
binaries that can be run<br>
with weston and X11.<br>
<br>
Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jaco=
b-chen@iotwrt.com</a>&gt;<br>
---<br>
=C2=A0recipes-graphics/mali-<wbr>userspace/mali-userspace.inc | 57 ++++++++=
++++++++++++++<br>
=C2=A0.../mali-userspace/<a href=3D"http://mali-userspace_t76x.bb" rel=3D"n=
oreferrer" target=3D"_blank">mali-<wbr>userspace_t76x.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | 18 +++++++<br>
=C2=A0recipes-graphics/mesa/mesa_%.<wbr>bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 9 ++++<br>
=C2=A03 files changed, 84 insertions(+)<br>
=C2=A0create mode 100644 recipes-graphics/mali-<wbr>userspace/mali-userspac=
e.inc<br>
=C2=A0create mode 100644 recipes-graphics/mali-<wbr>userspace/<a href=3D"ht=
tp://mali-userspace_t76x.bb" rel=3D"noreferrer" target=3D"_blank">mali-user=
space_t76x.<wbr>bb</a><br>
=C2=A0create mode 100644 recipes-graphics/mesa/mesa_%.<wbr>bbappend<br>
<br>
diff --git a/recipes-graphics/mali-<wbr>userspace/mali-userspace.inc b/reci=
pes-graphics/mali-<wbr>userspace/mali-userspace.inc<br>
new file mode 100644<br>
index 0000000..d40f583<br>
--- /dev/null<br>
+++ b/recipes-graphics/mali-<wbr>userspace/mali-userspace.inc<br>
@@ -0,0 +1,57 @@<br>
+SUMMARY =3D &quot;Userspace mali driver for Midgard-T76x&quot;<br>
+DESCRIPTION =3D &quot;Userspace mali driver for Midgard-T76x&quot;<br>
+LICENSE =3D &quot;CLOSED&quot;<br>
+SECTION =3D &quot;libs&quot;<br>
+<br>
+DEPENDS =3D &quot;libdrm&quot;<br>
+DEPENDS +=3D &quot;${@bb.utils.contains(&quot;DISTRO_<wbr>FEATURES&quot;, =
&quot;wayland&quot;, &quot; mesa&quot;, &quot; &quot;, d)}&quot;<br>
+<br>
+PROVIDES +=3D &quot;virtual/egl virtual/libgles1 virtual/libgles2 virtual/=
libopencl libgbm&quot;<br>
+PROVIDES +=3D &quot;${@bb.utils.contains(&quot;DISTRO_<wbr>FEATURES&quot;,=
 &quot;wayland&quot;, &quot; virtual/libwayland-egl&quot;, &quot; &quot;, d=
)}&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}&quot;<br>
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
+do_configure[noexec] =3D &quot;1&quot;<br>
+do_compile[noexec] =3D &quot;1&quot;<br>
+<br>
+do_install () {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create MALI manifest<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 755 -d ${D}/${libdir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;${USE_X11}&quot; =3D &quot;yes&quot;=
 ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install ${S}/x11/li=
bmali.so ${D}/${libdir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0elif [ &quot;${USE_WL}&quot; =3D &quot;yes&quot=
; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install ${S}/waylan=
d/libmali.so ${D}/${libdir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libEGL.so<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.s=
o<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libGLESv2.so<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libOpenCL.so<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libmali.so ${D}/${libdir}/libgbm.so<br>
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
+RPROVIDES_${PN} =3D &quot;libegl libgles1 libglesv1-cm1 libgles2 libglesv2=
-2 libgbm&quot;<br>
+RCONFLICTS_${PN} =3D &quot;libegl libgles1 libglesv1-cm1 libgles2 libglesv=
2-2 libgbm&quot;<br>
+<br>
+# Workaround: libmali.so provided by rk having no SONAME field in it<br>
+# so add it to fix rdepends problems<br>
+RPROVIDES_${PN} +=3D &quot;libwayland-egl.so libgbm.so libGLESv1_CM.so lib=
GLESv2.so libEGL.so libOpenCL.so&quot;<br>
diff --git a/recipes-graphics/mali-<wbr>userspace/<a href=3D"http://mali-us=
erspace_t76x.bb" rel=3D"noreferrer" target=3D"_blank">mali-userspace_t76x.<=
wbr>bb</a> b/recipes-graphics/mali-<wbr>userspace/<a href=3D"http://mali-us=
erspace_t76x.bb" rel=3D"noreferrer" target=3D"_blank">mali-userspace_t76x.<=
wbr>bb</a><br>
new file mode 100644<br>
index 0000000..3281ac0<br>
--- /dev/null<br>
+++ b/recipes-graphics/mali-<wbr>userspace/<a href=3D"http://mali-userspace=
_t76x.bb" rel=3D"noreferrer" target=3D"_blank">mali-userspace_t76x.<wbr>bb<=
/a><br>
@@ -0,0 +1,18 @@<br>
+require mali-userspace.inc<br>
+<br>
+TYPE =3D &quot;midgard&quot;<br>
+SW_VER =3D &quot;r13p0&quot;<br>
+HW_VER =3D &quot;r0p0&quot;<br>
+<br>
+LIB_PATH =3D &quot;arm-linux-gnueabihf&quot;<br>
+<br>
+MALI_X11 =3D &quot;libmali-${TYPE}-${SW_VER}-${<wbr>HW_VER}.so&quot;<br>
+MALI_WAYLAND =3D &quot;libmali-${TYPE}-${SW_VER}-${<wbr>HW_VER}-wayland.so=
&quot;<br>
+<br>
+do_install_prepend () {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p x11<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cp git/lib/${LIB_PATH}/${MALI_<wbr>X11} x11/lib=
mali.so<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p wayland<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cp git/lib/${LIB_PATH}/${MALI_<wbr>WAYLAND}=C2=
=A0 wayland/libmali.so<br>
+}<br>
diff --git a/recipes-graphics/mesa/mesa_%<wbr>.bbappend b/recipes-graphics/=
mesa/mesa_%<wbr>.bbappend<br>
new file mode 100644<br>
index 0000000..d9cab75<br>
--- /dev/null<br>
+++ b/recipes-graphics/mesa/mesa_%<wbr>.bbappend<br>
@@ -0,0 +1,9 @@<br>
+PROVIDES_remove =3D &quot;virtual/libgles1 virtual/libgles2 virtual/egl vi=
rtual/libwayland-egl&quot;<br>
+<br>
+do_install_append () {<br>
+=C2=A0 =C2=A0 rm -f ${D}/${libdir}/libEGL*<br>
+=C2=A0 =C2=A0 rm -f ${D}/${libdir}/libGLESv1_CM.*<br>
+=C2=A0 =C2=A0 rm -f ${D}/${libdir}/libGLESv2.*<br>
+=C2=A0 =C2=A0 rm -f ${D}/${libdir}/libgbm*<br>
+=C2=A0 =C2=A0 rm -f ${D}/${libdir}/libwayland-egl*<br>
+}<br>
--<br>
2.7.4<br>
<br>
</div></div></blockquote></div><br></div>

--94eb2c12943e81264105471476f1--
