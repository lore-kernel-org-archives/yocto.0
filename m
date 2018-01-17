Return-Path: <rudnik.mathias@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D492CE00DEE; Wed, 17 Jan 2018 04:46:36 -0800 (PST)
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
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 124FAE008A4
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 04:46:35 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id g1so14921341wmg.2
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 04:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=from:mime-version:subject:message-id:date:to;
	bh=hspFuVPHb2tShOq+pnV+HNflgs0oMm20DzgpC+9lUac=;
	b=vYxKu96jD5zr7GQuJ6F+NxbYGG7u0iQk+0Pzvp+LjesVCQRG17XMQSl1f6FvsJn4mP
	WLvkpgal37IRj7m7toXdVMGvSMak+6/rxgMHckf9DhkB3fOEJz+YqWBQqkgUgFLY0U7B
	38+s+8U5Urk7xogrkTsjKTN6snkHyCuALdbVcInu7PZGKt/eSOeBBFpzhx3HxtCI51eN
	/F89vBf9fUApvH4UAUnUwm6Y7lPwU6e4SocF3sTiZzir0uElbMqcJP4UDMUXZKqf6acn
	9MqA+T03s8H+wi/cyCBBSRnO3ztGZVw4ASmOrL8LsyzTHm+L1epi+9whj1A5J1YoMO+a
	xknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=hspFuVPHb2tShOq+pnV+HNflgs0oMm20DzgpC+9lUac=;
	b=I/u+DoQKhqaONKYCE3iqbHbJrofORysssC13oNLfLX9HhaTJZIcSUEygrw8Rrr7IQC
	CIe4lNpuZZb7JZW35qwHjfREVCieZqnfwrvcJN2AZt6W/V1eY+AMH6fRUFzLf1k246b2
	3678u6tgPzjEh+L7DP9sVrbzA+w+ueiixS0w0pN5jd8YokCIHdIrnv4sL4+8EPMnWjoj
	mZ/kCHfMVWBXGSXcbIku4ZfUupmFs3Dis39c8QoY5OV5OZwcPKy8m6SlXePO2+NmUQsZ
	uLBFf3A8lb8fu5nHw2KYJWcr/6SqovxPeHt0DjaHKPz5EDCiKgmYujIIAWu5Fva5AhVK
	2TWw==
X-Gm-Message-State: AKwxytfXYBc7azEmrGUbP/qEWOt/vwGZ2lKvLfUFtNXo3YNLIKRNWNm+
	KnFjG7qjzjqiIoVd9u0HaPsnsL3D
X-Google-Smtp-Source: ACJfBouFrNibTqlULmLRcq6Fh5vKVLWeCLgitM6QLG8y1YzjSIxuR3uRobI2C3/yXioe1H1n8duvDg==
X-Received: by 10.28.1.210 with SMTP id 201mr1939216wmb.120.1516193194568;
	Wed, 17 Jan 2018 04:46:34 -0800 (PST)
Received: from [192.168.43.147] (ip-109-41-66-213.web.vodafone.de.
	[109.41.66.213]) by smtp.googlemail.com with ESMTPSA id
	m45sm3534418wrf.75.2018.01.17.04.46.33 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 17 Jan 2018 04:46:34 -0800 (PST)
From: Mathias Rudnik <rudnik.mathias@googlemail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
Date: Wed, 17 Jan 2018 13:46:32 +0100
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
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
X-List-Received-Date: Wed, 17 Jan 2018 12:46:36 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1BDA17A6-1F02-463B-B957-7D7A493FA636"

--Apple-Mail=_1BDA17A6-1F02-463B-B957-7D7A493FA636
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

--Apple-Mail=_1BDA17A6-1F02-463B-B957-7D7A493FA636
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><pre class=3D"" style=3D"white-space: pre-wrap; =
font-variant-ligatures: normal; orphans: 2; widows: 2;">Hello,

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

--Apple-Mail=_1BDA17A6-1F02-463B-B957-7D7A493FA636--
