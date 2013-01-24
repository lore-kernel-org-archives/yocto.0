Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85271E00294
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 11:10:31 -0800 (PST)
Received: by mail-vb0-f49.google.com with SMTP id s24so7463646vbi.36
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 11:10:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:content-type:x-gm-message-state;
	bh=zs4DMkHlKMZu5OFgd569wKGo9mcNcptmldr9KC0Oqew=;
	b=YIe0QalqDbYw0gBya8LcxIanty8V1vxtxIcSmDe/ralLrIJNMGXacrgdDx0hYr2/lR
	zSZNHxXT/DBdQq1YtmEQBc09rDNjaSi9tuVTrUCmfYnO26lN0S5noCps2S7lZ+ktBtQZ
	17xCp9ccO125TNcsCcdFFoS9LIiZs8FZpxNvXYa+egERW9Gaxy3KOciVKlSl8UBC2j/p
	Fd14Twd4rAwn9q6Ve3w9KRTJnSMcD2WOpenwcRR+Z/mMC9ccjXP++vMdIHsGubjzc0qX
	qfszdB742u8tCbuiKYTkV/SRgS6JwHuVLgUy3qFOUdJz8UbRXznQWJAbWLCa5S9hJSh+
	1kwA==
X-Received: by 10.220.115.72 with SMTP id h8mr3149678vcq.43.1359054630722;
	Thu, 24 Jan 2013 11:10:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.153.163 with HTTP; Thu, 24 Jan 2013 11:10:10 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 24 Jan 2013 21:10:10 +0200
Message-ID: <CAK18fxFNKEToVa0Y20YjhaFj59uxuCfoq6SfvtEqx=73uggOSA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkuh73RxhsN/gt6Y+geXiQhJMq4AY0v+wOtzslv1bgtsbXxuoF9Ro2I/MHvCdOCY7PXnnGL
Subject: Re: [meta-intel][PATCH 1/2] ffmpeg: Remove package as nobody depends on it anymore
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
X-List-Received-Date: Thu, 24 Jan 2013 19:10:31 -0000
Content-Type: multipart/alternative; boundary=f46d043894557e9afa04d40d905f

--f46d043894557e9afa04d40d905f
Content-Type: text/plain; charset=ISO-8859-1

Ping


On Sun, Jan 13, 2013 at 6:23 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  common/recipes-multimedia/ffmpeg/ffmpeg.inc       |  110
> ---------------------
>  common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb |   44 ---------
>  2 files changed, 154 deletions(-)
>  delete mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg.inc
>  delete mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
>
> diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg.inc
> b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
> deleted file mode 100644
> index 3ce950e..0000000
> --- a/common/recipes-multimedia/ffmpeg/ffmpeg.inc
> +++ /dev/null
> @@ -1,110 +0,0 @@
> -DESCRIPTION = "FFmpeg is a complete solution to record, convert and
> stream audio and video"
> -HOMEPAGE = "http://ffmpeg.mplayerhq.hu/"
> -AUTHOR = "Fabrice Bellard ffmpeg-devel@mplayerhq.hu"
> -SECTION = "libs"
> -PRIORITY = "optional"
> -LICENSE = "GPLv2+ & LGPLv2.1+"
> -
> -LICENSE_FLAGS = "commercial"
> -
> -ARM_INSTRUCTION_SET = "arm"
> -
> -DEPENDS = "zlib libogg libvorbis libtheora liba52 libva yasm-native"
> -
> -INC_PR = "r0"
> -
> -inherit autotools pkgconfig
> -
> -LEAD_SONAME = "libavcodec.so"
> -
> -EXTRA_OECONF = "\
> -        \
> -        --enable-pp \
> -        --enable-shared \
> -        --enable-pthreads \
> -        --enable-gpl \
> -        \
> -        --cross-prefix=${TARGET_PREFIX} \
> -        --disable-debug \
> -        --disable-ffserver \
> -        --disable-ffplay \
> -        \
> -"
> -
> -EXTRA_OECONF_append_powerpc +=
> "--${@['disable-altivec','enable-altivec'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1)
> in ['ppce600']]}"
> -
> -FFMPEG_LIBS = "libavcodec libavdevice libavformat \
> -               libavutil libpostproc libswscale libavfilter"
> -
> -SYSROOT_PREPROCESS_FUNCS = " \
> -  ffmpeg_stage_cleanup \
> -  ffmpeg_create_compat_links"
> -
> -ffmpeg_create_compat_links() {
> -        rm -rf ${SYSROOT_DESTDIR}${includedir}/ffmpeg
> -        mkdir -m 0755 ${SYSROOT_DESTDIR}${includedir}/ffmpeg
> -        cd ${SYSROOT_DESTDIR}${includedir}/ffmpeg
> -
> -        for lib in ${FFMPEG_LIBS}; do
> -                ln -s ../$lib/*.h '.' || true
> -        done
> -}
> -
> -ffmpeg_stage_cleanup() {
> -        rm -rf ${SYSROOT_DESTDIR}${libdir}/vhook \
> -        ${SYSROOT_DESTDIR}${datadir}
> -}
> -
> -PACKAGES += "${PN}-vhook-dbg ${PN}-vhook"
> -
> -FILES_${PN} = "${bindir}"
> -FILES_${PN}-dev = "${includedir}/${PN}"
> -
> -FILES_${PN}-vhook = "${libdir}/vhook"
> -FILES_${PN}-vhook-dbg += "${libdir}/vhook/.debug"
> -
> -PACKAGES += "ffmpeg-x264-presets \
> -             libavcodec  libavcodec-dev  libavcodec-dbg \
> -             libavdevice libavdevice-dev libavdevice-dbg \
> -             libavformat libavformat-dev libavformat-dbg \
> -             libavutil   libavutil-dev   libavutil-dbg \
> -             libpostproc libpostproc-dev libpostproc-dbg \
> -             libswscale  libswscale-dev  libswscale-dbg \
> -             libavfilter libavfilter-dev libavfilter-dbg \
> -             libavcore   libavcore-dev   libavcore-dbg \
> -            "
> -
> -FILES_ffmpeg-x264-presets = "${datadir}/*.ffpreset"
> -
> -FILES_${PN}-dev = "${includedir}"
> -FILES_libavcodec = "${libdir}/libavcodec*.so.*"
> -FILES_libavcodec-dev = "${libdir}/libavcodec*.so
> ${libdir}/pkgconfig/libavcodec.pc ${libdir}/libavcodec*.a"
> -FILES_libavcodec-dbg += "${libdir}/.debug/libavcodec*"
> -
> -FILES_libavdevice = "${libdir}/libavdevice*.so.*"
> -FILES_libavdevice-dev = "${libdir}/libavdevice*.so
> ${libdir}/pkgconfig/libavdevice.pc ${libdir}/libavdevice*.a"
> -FILES_libavdevice-dbg += "${libdir}/.debug/libavdevice*"
> -
> -FILES_libavformat = "${libdir}/libavformat*.so.*"
> -FILES_libavformat-dev = "${libdir}/libavformat*.so
> ${libdir}/pkgconfig/libavformat.pc ${libdir}/libavformat*.a"
> -FILES_libavformat-dbg += "${libdir}/.debug/libavformat*"
> -
> -FILES_libavutil = "${libdir}/libavutil*.so.*"
> -FILES_libavutil-dev = "${libdir}/libavutil*.so
> ${libdir}/pkgconfig/libavutil.pc ${libdir}/libavutil*.a"
> -FILES_libavutil-dbg += "${libdir}/.debug/libavutil*"
> -
> -FILES_libpostproc = "${libdir}/libpostproc*.so.*"
> -FILES_libpostproc-dev = "${libdir}/libpostproc*.so
>  ${libdir}/pkgconfig/libpostproc.pc ${libdir}/libpostproc*.a
> ${includedir}/postproc"
> -FILES_libpostproc-dbg += "${libdir}/.debug/libpostproc*"
> -
> -FILES_libswscale = "${libdir}/libswscale*.so.*"
> -FILES_libswscale-dev = "${libdir}/libswscale*.so
> ${libdir}/pkgconfig/libswscale.pc ${libdir}/libswscale*.a"
> -FILES_libswscale-dbg += "${libdir}/.debug/libswscale*"
> -
> -FILES_libavfilter = "${libdir}/libavfilter*.so.*"
> -FILES_libavfilter-dev = "${libdir}/libavfilter*.so
> ${libdir}/pkgconfig/libavfilter.pc ${libdir}/libavfilter*.a"
> -FILES_libavfilter-dbg += "${libdir}/.debug/libavfilter*"
> -
> -FILES_libavcore = "${libdir}/libavcore*.so.*"
> -FILES_libavcore-dev = "${libdir}/libavcore*.so
> ${libdir}/pkgconfig/libavcore.pc ${libdir}/libavcore*.a"
> -FILES_libavcore-dbg += "${libdir}/.debug/libavcore*"
> diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bbb/common/recipes-multimedia/ffmpeg/
> ffmpeg_0.7.12.bb
> deleted file mode 100644
> index cf97a19..0000000
> --- a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -require ffmpeg.inc
> -
> -LICENSE = "LGPLv2.1+ & GPLv2+"
> -PR = "${INC_PR}.2"
> -
> -SRC_URI = "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
> -SRC_URI[md5sum] = "b4e3653b2dd930cfa2a80722f8b03182"
> -SRC_URI[sha256sum] =
> "786511d75e5a1f95ec16ed9f0b4a3f49f145e134b8f2ccdfa9ecd2d35ff36000"
> -
> -LIC_FILES_CHKSUM =
> "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
> -
>  file://libpostproc/postprocess.c;beginline=8;endline=21;md5=3163771dd725805aeda961a4e05173b5
> \
> -
>  file://COPYING.LGPLv2.1;md5=e344c8fa836c3a41c4cbd79d7bd3a379 \
> -
>  file://ffmpeg.c;beginline=7;endline=20;md5=9dee9cc51a9da6c3254d39ebf4d5aa03"
> -
> -EXTRA_FFCONF_armv7a = "--cpu=cortex-a8"
> -EXTRA_FFCONF_mipsel = "--arch=mips"
> -
> -EXTRA_OECONF = " \
> -        --arch=${TARGET_ARCH} \
> -        --cross-prefix=${TARGET_PREFIX} \
> -        --disable-stripping \
> -        --enable-cross-compile \
> -        --enable-libtheora  \
> -        --enable-libvorbis \
> -        --enable-pthreads \
> -        --enable-shared \
> -        --enable-swscale \
> -        --enable-vaapi \
> -        --enable-gpl \
> -        --enable-yasm \
> -        --extra-cflags="${TARGET_CFLAGS}
> ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
> -        --extra-ldflags="${TARGET_LDFLAGS}" \
> -        --sysroot="${STAGING_DIR_TARGET}" \
> -        --prefix=${prefix}/ \
> -        --target-os=linux \
> -        ${EXTRA_FFCONF} \
> -"
> -
> -do_configure() {
> -        ./configure ${EXTRA_OECONF}
> -}
> -
> -FULL_OPTIMIZATION_armv7a = "-fexpensive-optimizations  -ftree-vectorize
> -fomit-frame-pointer -O4 -ffast-math"
> -BUILD_OPTIMIZATION = "${FULL_OPTIMIZATION}"
> --
> 1.7.10.4
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d043894557e9afa04d40d905f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ping</div><div class=3D"gmail_extra"><br><br><div class=3D=
"gmail_quote">On Sun, Jan 13, 2013 at 6:23 PM, Andrei Gherzan <span dir=3D"=
ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gher=
zan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Andrei Gherzan &lt;<a href=3D=
"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0common/recipes-multimedia/ffmpeg/ffmpeg.inc =A0 =A0 =A0 | =A0110 -------=
--------------<br>
=A0common/recipes-multimedia/ffmpeg/<a href=3D"http://ffmpeg_0.7.12.bb" tar=
get=3D"_blank">ffmpeg_0.7.12.bb</a> | =A0 44 ---------<br>
=A02 files changed, 154 deletions(-)<br>
=A0delete mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg.inc<br>
=A0delete mode 100644 common/recipes-multimedia/ffmpeg/<a href=3D"http://ff=
mpeg_0.7.12.bb" target=3D"_blank">ffmpeg_0.7.12.bb</a><br>
<br>
diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg.inc b/common/recipes-m=
ultimedia/ffmpeg/ffmpeg.inc<br>
deleted file mode 100644<br>
index 3ce950e..0000000<br>
--- a/common/recipes-multimedia/ffmpeg/ffmpeg.inc<br>
+++ /dev/null<br>
@@ -1,110 +0,0 @@<br>
-DESCRIPTION =3D &quot;FFmpeg is a complete solution to record, convert and=
 stream audio and video&quot;<br>
-HOMEPAGE =3D &quot;<a href=3D"http://ffmpeg.mplayerhq.hu/" target=3D"_blan=
k">http://ffmpeg.mplayerhq.hu/</a>&quot;<br>
-AUTHOR =3D &quot;Fabrice Bellard <a href=3D"mailto:ffmpeg-devel@mplayerhq.=
hu">ffmpeg-devel@mplayerhq.hu</a>&quot;<br>
-SECTION =3D &quot;libs&quot;<br>
-PRIORITY =3D &quot;optional&quot;<br>
-LICENSE =3D &quot;GPLv2+ &amp; LGPLv2.1+&quot;<br>
-<br>
-LICENSE_FLAGS =3D &quot;commercial&quot;<br>
-<br>
-ARM_INSTRUCTION_SET =3D &quot;arm&quot;<br>
-<br>
-DEPENDS =3D &quot;zlib libogg libvorbis libtheora liba52 libva yasm-native=
&quot;<br>
-<br>
-INC_PR =3D &quot;r0&quot;<br>
-<br>
-inherit autotools pkgconfig<br>
-<br>
-LEAD_SONAME =3D &quot;libavcodec.so&quot;<br>
-<br>
-EXTRA_OECONF =3D &quot;\<br>
- =A0 =A0 =A0 =A0\<br>
- =A0 =A0 =A0 =A0--enable-pp \<br>
- =A0 =A0 =A0 =A0--enable-shared \<br>
- =A0 =A0 =A0 =A0--enable-pthreads \<br>
- =A0 =A0 =A0 =A0--enable-gpl \<br>
- =A0 =A0 =A0 =A0\<br>
- =A0 =A0 =A0 =A0--cross-prefix=3D${TARGET_PREFIX} \<br>
- =A0 =A0 =A0 =A0--disable-debug \<br>
- =A0 =A0 =A0 =A0--disable-ffserver \<br>
- =A0 =A0 =A0 =A0--disable-ffplay \<br>
- =A0 =A0 =A0 =A0\<br>
-&quot;<br>
-<br>
-EXTRA_OECONF_append_powerpc +=3D &quot;--${@[&#39;disable-altivec&#39;,&#3=
9;enable-altivec&#39;][bb.data.getVar(&#39;BASE_PACKAGE_ARCH&#39;,d,1) in [=
&#39;ppce600&#39;]]}&quot;<br>
-<br>
-FFMPEG_LIBS =3D &quot;libavcodec libavdevice libavformat \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 libavutil libpostproc libswscale libavfilter&=
quot;<br>
-<br>
-SYSROOT_PREPROCESS_FUNCS =3D &quot; \<br>
- =A0ffmpeg_stage_cleanup \<br>
- =A0ffmpeg_create_compat_links&quot;<br>
-<br>
-ffmpeg_create_compat_links() {<br>
- =A0 =A0 =A0 =A0rm -rf ${SYSROOT_DESTDIR}${includedir}/ffmpeg<br>
- =A0 =A0 =A0 =A0mkdir -m 0755 ${SYSROOT_DESTDIR}${includedir}/ffmpeg<br>
- =A0 =A0 =A0 =A0cd ${SYSROOT_DESTDIR}${includedir}/ffmpeg<br>
-<br>
- =A0 =A0 =A0 =A0for lib in ${FFMPEG_LIBS}; do<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ln -s ../$lib/*.h &#39;.&#39; || true<br>
- =A0 =A0 =A0 =A0done<br>
-}<br>
-<br>
-ffmpeg_stage_cleanup() {<br>
- =A0 =A0 =A0 =A0rm -rf ${SYSROOT_DESTDIR}${libdir}/vhook \<br>
- =A0 =A0 =A0 =A0${SYSROOT_DESTDIR}${datadir}<br>
-}<br>
-<br>
-PACKAGES +=3D &quot;${PN}-vhook-dbg ${PN}-vhook&quot;<br>
-<br>
-FILES_${PN} =3D &quot;${bindir}&quot;<br>
-FILES_${PN}-dev =3D &quot;${includedir}/${PN}&quot;<br>
-<br>
-FILES_${PN}-vhook =3D &quot;${libdir}/vhook&quot;<br>
-FILES_${PN}-vhook-dbg +=3D &quot;${libdir}/vhook/.debug&quot;<br>
-<br>
-PACKAGES +=3D &quot;ffmpeg-x264-presets \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 libavcodec =A0libavcodec-dev =A0libavcodec-dbg \<=
br>
- =A0 =A0 =A0 =A0 =A0 =A0 libavdevice libavdevice-dev libavdevice-dbg \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 libavformat libavformat-dev libavformat-dbg \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 libavutil =A0 libavutil-dev =A0 libavutil-dbg \<b=
r>
- =A0 =A0 =A0 =A0 =A0 =A0 libpostproc libpostproc-dev libpostproc-dbg \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 libswscale =A0libswscale-dev =A0libswscale-dbg \<=
br>
- =A0 =A0 =A0 =A0 =A0 =A0 libavfilter libavfilter-dev libavfilter-dbg \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 libavcore =A0 libavcore-dev =A0 libavcore-dbg \<b=
r>
- =A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
-<br>
-FILES_ffmpeg-x264-presets =3D &quot;${datadir}/*.ffpreset&quot;<br>
-<br>
-FILES_${PN}-dev =3D &quot;${includedir}&quot;<br>
-FILES_libavcodec =3D &quot;${libdir}/libavcodec*.so.*&quot;<br>
-FILES_libavcodec-dev =3D &quot;${libdir}/libavcodec*.so ${libdir}/pkgconfi=
g/libavcodec.pc ${libdir}/libavcodec*.a&quot;<br>
-FILES_libavcodec-dbg +=3D &quot;${libdir}/.debug/libavcodec*&quot;<br>
-<br>
-FILES_libavdevice =3D &quot;${libdir}/libavdevice*.so.*&quot;<br>
-FILES_libavdevice-dev =3D &quot;${libdir}/libavdevice*.so ${libdir}/pkgcon=
fig/libavdevice.pc ${libdir}/libavdevice*.a&quot;<br>
-FILES_libavdevice-dbg +=3D &quot;${libdir}/.debug/libavdevice*&quot;<br>
-<br>
-FILES_libavformat =3D &quot;${libdir}/libavformat*.so.*&quot;<br>
-FILES_libavformat-dev =3D &quot;${libdir}/libavformat*.so ${libdir}/pkgcon=
fig/libavformat.pc ${libdir}/libavformat*.a&quot;<br>
-FILES_libavformat-dbg +=3D &quot;${libdir}/.debug/libavformat*&quot;<br>
-<br>
-FILES_libavutil =3D &quot;${libdir}/libavutil*.so.*&quot;<br>
-FILES_libavutil-dev =3D &quot;${libdir}/libavutil*.so ${libdir}/pkgconfig/=
libavutil.pc ${libdir}/libavutil*.a&quot;<br>
-FILES_libavutil-dbg +=3D &quot;${libdir}/.debug/libavutil*&quot;<br>
-<br>
-FILES_libpostproc =3D &quot;${libdir}/libpostproc*.so.*&quot;<br>
-FILES_libpostproc-dev =3D &quot;${libdir}/libpostproc*.so =A0${libdir}/pkg=
config/libpostproc.pc ${libdir}/libpostproc*.a ${includedir}/postproc&quot;=
<br>
-FILES_libpostproc-dbg +=3D &quot;${libdir}/.debug/libpostproc*&quot;<br>
-<br>
-FILES_libswscale =3D &quot;${libdir}/libswscale*.so.*&quot;<br>
-FILES_libswscale-dev =3D &quot;${libdir}/libswscale*.so ${libdir}/pkgconfi=
g/libswscale.pc ${libdir}/libswscale*.a&quot;<br>
-FILES_libswscale-dbg +=3D &quot;${libdir}/.debug/libswscale*&quot;<br>
-<br>
-FILES_libavfilter =3D &quot;${libdir}/libavfilter*.so.*&quot;<br>
-FILES_libavfilter-dev =3D &quot;${libdir}/libavfilter*.so ${libdir}/pkgcon=
fig/libavfilter.pc ${libdir}/libavfilter*.a&quot;<br>
-FILES_libavfilter-dbg +=3D &quot;${libdir}/.debug/libavfilter*&quot;<br>
-<br>
-FILES_libavcore =3D &quot;${libdir}/libavcore*.so.*&quot;<br>
-FILES_libavcore-dev =3D &quot;${libdir}/libavcore*.so ${libdir}/pkgconfig/=
libavcore.pc ${libdir}/libavcore*.a&quot;<br>
-FILES_libavcore-dbg +=3D &quot;${libdir}/.debug/libavcore*&quot;<br>
diff --git a/common/recipes-multimedia/ffmpeg/<a href=3D"http://ffmpeg_0.7.=
12.bb" target=3D"_blank">ffmpeg_0.7.12.bb</a> b/common/recipes-multimedia/f=
fmpeg/<a href=3D"http://ffmpeg_0.7.12.bb" target=3D"_blank">ffmpeg_0.7.12.b=
b</a><br>


deleted file mode 100644<br>
index cf97a19..0000000<br>
--- a/common/recipes-multimedia/ffmpeg/<a href=3D"http://ffmpeg_0.7.12.bb" =
target=3D"_blank">ffmpeg_0.7.12.bb</a><br>
+++ /dev/null<br>
@@ -1,44 +0,0 @@<br>
-require ffmpeg.inc<br>
-<br>
-LICENSE =3D &quot;LGPLv2.1+ &amp; GPLv2+&quot;<br>
-PR =3D &quot;${INC_PR}.2&quot;<br>
-<br>
-SRC_URI =3D &quot;<a href=3D"http://ffmpeg.org/releases/ffmpeg-${PV}.tar.b=
z2" target=3D"_blank">http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2</a>&q=
uot;<br>
-SRC_URI[md5sum] =3D &quot;b4e3653b2dd930cfa2a80722f8b03182&quot;<br>
-SRC_URI[sha256sum] =3D &quot;786511d75e5a1f95ec16ed9f0b4a3f49f145e134b8f2c=
cdfa9ecd2d35ff36000&quot;<br>
-<br>
-LIC_FILES_CHKSUM =3D &quot;file://COPYING.GPLv2;md5=3Db234ee4d69f5fce4486a=
80fdaf4a4263 \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://libpostproc/postprocess.c;b=
eginline=3D8;endline=3D21;md5=3D3163771dd725805aeda961a4e05173b5 \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://COPYING.LGPLv2.1;md5=3De344=
c8fa836c3a41c4cbd79d7bd3a379 \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://ffmpeg.c;beginline=3D7;endl=
ine=3D20;md5=3D9dee9cc51a9da6c3254d39ebf4d5aa03&quot;<br>
-<br>
-EXTRA_FFCONF_armv7a =3D &quot;--cpu=3Dcortex-a8&quot;<br>
-EXTRA_FFCONF_mipsel =3D &quot;--arch=3Dmips&quot;<br>
-<br>
-EXTRA_OECONF =3D &quot; \<br>
- =A0 =A0 =A0 =A0--arch=3D${TARGET_ARCH} \<br>
- =A0 =A0 =A0 =A0--cross-prefix=3D${TARGET_PREFIX} \<br>
- =A0 =A0 =A0 =A0--disable-stripping \<br>
- =A0 =A0 =A0 =A0--enable-cross-compile \<br>
- =A0 =A0 =A0 =A0--enable-libtheora =A0\<br>
- =A0 =A0 =A0 =A0--enable-libvorbis \<br>
- =A0 =A0 =A0 =A0--enable-pthreads \<br>
- =A0 =A0 =A0 =A0--enable-shared \<br>
- =A0 =A0 =A0 =A0--enable-swscale \<br>
- =A0 =A0 =A0 =A0--enable-vaapi \<br>
- =A0 =A0 =A0 =A0--enable-gpl \<br>
- =A0 =A0 =A0 =A0--enable-yasm \<br>
- =A0 =A0 =A0 =A0--extra-cflags=3D&quot;${TARGET_CFLAGS} ${HOST_CC_ARCH}${T=
OOLCHAIN_OPTIONS}&quot; \<br>
- =A0 =A0 =A0 =A0--extra-ldflags=3D&quot;${TARGET_LDFLAGS}&quot; \<br>
- =A0 =A0 =A0 =A0--sysroot=3D&quot;${STAGING_DIR_TARGET}&quot; \<br>
- =A0 =A0 =A0 =A0--prefix=3D${prefix}/ \<br>
- =A0 =A0 =A0 =A0--target-os=3Dlinux \<br>
- =A0 =A0 =A0 =A0${EXTRA_FFCONF} \<br>
-&quot;<br>
-<br>
-do_configure() {<br>
- =A0 =A0 =A0 =A0./configure ${EXTRA_OECONF}<br>
-}<br>
-<br>
-FULL_OPTIMIZATION_armv7a =3D &quot;-fexpensive-optimizations =A0-ftree-vec=
torize -fomit-frame-pointer -O4 -ffast-math&quot;<br>
-BUILD_OPTIMIZATION =3D &quot;${FULL_OPTIMIZATION}&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.10.4<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--f46d043894557e9afa04d40d905f--
