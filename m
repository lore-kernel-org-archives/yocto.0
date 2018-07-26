Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52EBBE00CE0; Thu, 26 Jul 2018 09:56:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f176.google.com (mail-yb0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 701D2E00CDD
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 09:56:27 -0700 (PDT)
Received: by mail-yb0-f176.google.com with SMTP id e84-v6so913683ybb.0
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 09:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=Cy24N5Fj4CWCzMw54YW+Rc/z8zm+hMo2UNl4MEAH57U=;
	b=oVJccStHrB5B2rESl1Os+3KoL5iGN86YjEwy0Sy8byQkK4RhECFLeBVCMK36nblyJi
	IDFX+t1Ky077XDA7pZ8tc6hJ18P3kfWu3P19CAbBM9GxItrRhRveui/4AZR5xqCIW/43
	cF1fiiOdmrUMJY6U3zsENF6ilxDjz6dVDf+zEk14Jx9hczoqcw/QDJpb6El1Vpz2F1MO
	K0szXyWmpsm5piC4fzA4XXovd5jMH+Lx6kjT5oLyxfGeNWOvzwuxXrnfYF2mXYQTf2o4
	wxzwALdOlllM2qC3JQqaM/ZKSdYOCWg7RrNN/LREzPHpvIGnO5s209fohgTRGWAucIRY
	U5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=Cy24N5Fj4CWCzMw54YW+Rc/z8zm+hMo2UNl4MEAH57U=;
	b=lRWmLZFdkv7Uz0+S8BmQY0If89aD9rnshSfP/WVKutPJBamJxQrCm+9NZowuRlAzMV
	QmtJUOOLpoI6z60jtDiY+Id+9L8t/ba3hPVaJLk7LvUviqnG1lPtbBO5IcAGaW75FH77
	/5Y5ykHatPhthziMiBsaE6Jd5lxp5KBRdBdQr/tQR6CdLMsikw426wrgLkycJ7BoA23K
	mGhJqcXgvoch2JHkxoel/+4lHRrhOSnU44dGyjtPbmxvOoRflr5GIujrw6zeVNlj0VcH
	GWdgdjhHAH1TjIUxjD2iPmyFX2uQuuQ4r8ZvHe4tuubCxIwYMgply/dUTzEVI/7uAJw4
	HYLA==
X-Gm-Message-State: AOUpUlH5XnuqvlFYRtYDe93uLdc1AxqSzi7OuwE3kQhc0s3iTmNJX2sy
	xe7lSYIBgeRWG/zPHExmAdx8RbXIUAg=
X-Google-Smtp-Source: AAOMgpd7ecWvIa1w4K6b09wytQ7cfIUH0OZroJr6tZcjPEenKhjrm19i+ePRziTzt+QpXebGvPKdKA==
X-Received: by 2002:a25:70d5:: with SMTP id
	l204-v6mr1572702ybc.420.1532624186489; 
	Thu, 26 Jul 2018 09:56:26 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	w143-v6sm1700123yww.49.2018.07.26.09.56.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jul 2018 09:56:25 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 26 Jul 2018 12:56:24 -0400
Message-Id: <4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: custom linux kernel recipe fails
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
X-List-Received-Date: Thu, 26 Jul 2018 16:56:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello -

I=E2=80=99m trying to build using a custom 64-bit kernel at head of =
sumo, but I get an error.  It seems that SRCPV cannot be resolved.    =
Please send any ideas you may have about how I may adapt my recipe to =
get it to work.

Normally, I use the default meta-raspberrypi kernel, but for this build, =
I am using PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-custom=E2=80=
=9D in my local.conf

My simple kernel recipe is in linux-yocto-custom.bb.  (It is based on =
the example recipe).

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

PV =3D "${LINUX_VERSION}+git${SRCPV}"
PR =3D "r0"

LINUX_VERSION ?=3D "4.14.4"
LINUX_VERSION_EXTENSION_append =3D "-xenomai-ipipe-arm64"

SRC_URI =3D =
"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3Dmaster=
;nocheckout=3D1"
SRCREV =3D "133bbf97672ff6e72fc21784b8ae44b194b76626"
SRC_URI[md5sum] =3D "a5cb3babd85a94fda2905cc3db5e7825"

COMPATIBLE_MACHINE =3D "raspberrypi3-64"

the error:

WARNING: =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb: Exception during build_dependencies for =
PKG_kernel-base
WARNING: =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb: Error during finalise of =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb
ERROR: ExpansionError during parsing =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb
Traceback (most recent call last):
bb.data_smart.ExpansionError: Failure expanding variable =
PKG_kernel-base, expression was =
kernel-${@legitimize_package_name('${@get_kernelversion_headers('/data/dev=
elopment/lfs/yocto/build/spark/raspberrypi3-64/tmp/work/raspberrypi3_64-po=
ky-linux/linux-yocto-custom/4.14.4+git${SRCPV}-r0/linux-raspberrypi3_64-st=
andard-build')}')} which triggered exception SyntaxError: invalid syntax =
(PKG_kernel-base, line 1)


