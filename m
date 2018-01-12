Return-Path: <rudnik.mathias@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31916E00E3D; Fri, 12 Jan 2018 05:39:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudnik.mathias[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E37BE008FB
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 05:39:13 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id i11so11842666wmf.4
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 05:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=from:mime-version:subject:message-id:date:to;
	bh=mHZg6ZM9ryCBfMD/RoadzMszHWvzHhfgO/Mq4eCMz1s=;
	b=o7Ziyk2Iy4UZaG4GITCfrgBDQjptteJuSppWvmfqXG/nBHljn1u2HG8DyDUBDtXSiV
	4OCLoU6pOfIZe8k5vWc/3qSvdmdqrwlBVOsO6++lKBOB5aFjWXSNbGUCAO68/driYojX
	RmQSNiJAAOSdJL4o6uC2xW3wZHCjyNHnIkTKxpOOOx45xt5PqBiT4veE2L+/qSTNzYVn
	w4omigdPaU5D9gXL7YSlpnf6JcIYLG4IXFOIBmCmGa5zUb7ba16/A9VqmdOHlXKsuuvD
	gUrzJG4jdfNieABCyJV67IEc8H7OqnBbQIBkaeplrXcpWCwtEriAFEi4riJFo1JNjCiH
	n4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=mHZg6ZM9ryCBfMD/RoadzMszHWvzHhfgO/Mq4eCMz1s=;
	b=o7VIRYa+ydrlBQpiyT9iHuQnvRSKE8fzXXar3cI68IlESIoPlaUSClEkBbRKdbQJX6
	wr1ISMCT7bJJJ4DFHD7XHaR3YKaPCh4p/RqclG2ZUqFVEAT5aHE3AKYjIBbXsciMU2Hp
	MKCF2DbrewDrF6I1aA54LjZRNS9MkKWmj0KpcBIeKMOkoZksU9bVCJHNsX5USMwgwyjq
	C2jZZ/AfQ482i1opq7LEUkilH5x7Hx+3Z8Qp2jynY0gndW+3ta4yHC0C2WglwMkV1gr1
	Azd/FUTWBTf92QC7IYZViodOsZtDkCHzRCF6tgJQhEyOx/WrPanePEiLORQd+KOHcVZM
	MfMA==
X-Gm-Message-State: AKwxyte6mniGDXEx19bFDDQTgX1iwQHTbLLZuidlP0KhOb/G1NxKtiCz
	a15C6NqY9cfkM5aZgt799lZof0c5
X-Google-Smtp-Source: ACJfBov06JgPAwNTvevIIlu61S6NsdlkFOUBerfY3sf7RYRYS1MQtRu9YR7HCT6+qU38lxRCn3/PbQ==
X-Received: by 10.80.168.164 with SMTP id k33mr13106211edc.31.1515764352679;
	Fri, 12 Jan 2018 05:39:12 -0800 (PST)
Received: from w1461.wlan.rz.tu-bs.de (w1461.wlan.rz.tu-bs.de.
	[134.169.205.191]) by smtp.googlemail.com with ESMTPSA id
	x28sm15154070edd.0.2018.01.12.05.39.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 12 Jan 2018 05:39:12 -0800 (PST)
From: Mathias Rudnik <rudnik.mathias@googlemail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <7527F631-FC4E-410F-B590-8F4A26B6B033@googlemail.com>
Date: Fri, 12 Jan 2018 14:39:10 +0100
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
X-Mailman-Approved-At: Mon, 15 Jan 2018 08:05:32 -0800
Subject: Error do_compile libepoxy
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
X-List-Received-Date: Fri, 12 Jan 2018 13:39:15 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C9C8E388-830D-4E92-876C-8B05105B9607"

--Apple-Mail=_C9C8E388-830D-4E92-876C-8B05105B9607
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello,

I am trying to build libepoxy but the do_compile tasks breaks.
I found following error messages in the logs:

arm-poky-linux-gnueabi-gcc -march=3Darmv6 -mfpu=3Dvfp -mfloat-abi=3Dhard =
-mtune=3Darm1176jzf-s -mfpu=3Dvfp =
--sysroot=3D/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot =
'-Itest/egl_common at sta =
<http://lists.openembedded.org/mailman/listinfo/openembedded-core>' =
'-Itest' '-Iinclude/epoxy' '-I../libepoxy-1.4.3/test' '-Iinclude' =
'-I../libepoxy-1.4.3/include' '-Isrc' '-I../libepoxy-1.4.3/src' =
'-fdiagnostics-color=3Dalways' '-pipe' '-D_FILE_OFFSET_BITS=3D64' =
'-Wall' '-Winvalid-pch' '-std=3Dgnu99' '-O2' '-g' '-O2' '-g' =
'-feliminate-unused-debug-types' =
'-fdebug-prefix-map=3D/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm11=
76jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0=3D/usr/src/debug/libepox=
y/1.4.3-r0' =
'-fdebug-prefix-map=3D/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm11=
76jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot-native=3D=
' =
'-fdebug-prefix-map=3D/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm11=
76jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot=3D' =
'-lEGL' '-fPIC' '-Wpointer-arith' '-Wmissing-declarations' '-Wformat=3D2' =
'-Wstrict-prototypes' '-Wmissing-prototypes' '-Wnested-externs' =
'-Wbad-function-cast' '-Wold-style-definition' =
'-Wdeclaration-after-statement' '-Wunused' '-Wuninitialized' '-Wshadow' =
'-Wmissing-noreturn' '-Wmissing-format-attribute' '-Wredundant-decls' =
'-Wlogical-op' '-Werror=3Dimplicit' '-Werror=3Dnonnull' =
'-Werror=3Dinit-self' '-Werror=3Dmain' '-Werror=3Dmissing-braces' =
'-Werror=3Dsequence-point' '-Werror=3Dreturn-type' '-Werror=3Dtrigraphs' =
'-Werror=3Darray-bounds' '-Werror=3Dwrite-strings' '-Werror=3Daddress' =
'-Werror=3Dint-to-pointer-cast' '-Werror=3Dpointer-to-int-cast' =
'-fno-strict-aliasing' '-Wno-int-conversion' '-MMD' '-MQ' =
'test/egl_common at sta =
<http://lists.openembedded.org/mailman/listinfo/openembedded-core>/egl_com=
mon.c.o' '-MF' 'test/egl_common at sta =
<http://lists.openembedded.org/mailman/listinfo/openembedded-core>/egl_com=
mon.c.o.d' -o 'test/egl_common at sta =
<http://lists.openembedded.org/mailman/listinfo/openembedded-core>/egl_com=
mon.c.o' -c ../libepoxy-1.4.3/test/egl_common.c
../libepoxy-1.4.3/test/egl_common.c: In function =
'get_egl_display_or_skip':
../libepoxy-1.4.3/test/egl_common.c:36:5: error: unknown type name =
'Display'; did you mean 'EGLDisplay'?
     Display *dpy =3D XOpenDisplay(NULL);
     ^~~~~~~
     EGLDisplay
../libepoxy-1.4.3/test/egl_common.c:36:20: error: implicit declaration =
of function 'XOpenDisplay'; did you mean 'eglGetDisplay'? =
[-Werror=3Dimplicit-function-declaration]
     Display *dpy =3D XOpenDisplay(NULL);
                    ^~~~~~~~~~~~
                    eglGetDisplay
../libepoxy-1.4.3/test/egl_common.c:36:20: warning: nested extern =
declaration of 'XOpenDisplay' [-Wnested-externs]
cc1: some warnings being treated as errors

Does anybody know what i am doing wrong?=

--Apple-Mail=_C9C8E388-830D-4E92-876C-8B05105B9607
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><pre style=3D"white-space: pre-wrap; font-variant-ligatures: =
normal; orphans: 2; widows: 2;" class=3D"">Hello,

I am trying to build libepoxy but the do_compile tasks breaks.
I found following error messages in the logs:

arm-poky-linux-gnueabi-gcc -march=3Darmv6 -mfpu=3Dvfp -mfloat-abi=3Dhard =
-mtune=3Darm1176jzf-s -mfpu=3Dvfp =
--sysroot=3D/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot '-Itest/<a =
href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core" =
class=3D"">egl_common at sta</a>' '-Itest' '-Iinclude/epoxy' =
'-I../libepoxy-1.4.3/test' '-Iinclude' '-I../libepoxy-1.4.3/include' =
'-Isrc' '-I../libepoxy-1.4.3/src' '-fdiagnostics-color=3Dalways' '-pipe' =
'-D_FILE_OFFSET_BITS=3D64' '-Wall' '-Winvalid-pch' '-std=3Dgnu99' '-O2' =
'-g' '-O2' '-g' '-feliminate-unused-debug-types' =
'-fdebug-prefix-map=3D/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm11=
76jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0=3D/usr/src/debug/libepox=
y/1.4.3-r0' =
'-fdebug-prefix-map=3D/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm11=
76jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot-native=3D=
' =
'-fdebug-prefix-map=3D/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm11=
76jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot=3D' =
'-lEGL' '-fPIC' '-Wpointer-arith' '-Wmissing-declarations' '-Wformat=3D2' =
'-Wstrict-prototypes' '-Wmissing-prototypes' '-Wnested-externs' =
'-Wbad-function-cast' '-Wold-style-definition' =
'-Wdeclaration-after-statement' '-Wunused' '-Wuninitialized' '-Wshadow' =
'-Wmissing-noreturn' '-Wmissing-format-attribute' '-Wredundant-decls' =
'-Wlogical-op' '-Werror=3Dimplicit' '-Werror=3Dnonnull' =
'-Werror=3Dinit-self' '-Werror=3Dmain' '-Werror=3Dmissing-braces' =
'-Werror=3Dsequence-point' '-Werror=3Dreturn-type' '-Werror=3Dtrigraphs' =
'-Werror=3Darray-bounds' '-Werror=3Dwrite-strings' '-Werror=3Daddress' =
'-Werror=3Dint-to-pointer-cast' '-Werror=3Dpointer-to-int-cast' =
'-fno-strict-aliasing' '-Wno-int-conversion' '-MMD' '-MQ' 'test/<a =
href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core" =
class=3D"">egl_common at sta</a>/egl_common.c.o' '-MF' 'test/<a =
href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core" =
class=3D"">egl_common at sta</a>/egl_common.c.o.d' -o 'test/<a =
href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core" =
class=3D"">egl_common at sta</a>/egl_common.c.o' -c =
../libepoxy-1.4.3/test/egl_common.c
../libepoxy-1.4.3/test/egl_common.c: In function =
'get_egl_display_or_skip':
../libepoxy-1.4.3/test/egl_common.c:36:5: error: unknown type name =
'Display'; did you mean 'EGLDisplay'?
     Display *dpy =3D XOpenDisplay(NULL);
     ^~~~~~~
     EGLDisplay
../libepoxy-1.4.3/test/egl_common.c:36:20: error: implicit declaration =
of function 'XOpenDisplay'; did you mean 'eglGetDisplay'? =
[-Werror=3Dimplicit-function-declaration]
     Display *dpy =3D XOpenDisplay(NULL);
                    ^~~~~~~~~~~~
                    eglGetDisplay
../libepoxy-1.4.3/test/egl_common.c:36:20: warning: nested extern =
declaration of 'XOpenDisplay' [-Wnested-externs]
cc1: some warnings being treated as errors

Does anybody know what i am doing wrong?</pre></body></html>=

--Apple-Mail=_C9C8E388-830D-4E92-876C-8B05105B9607--
