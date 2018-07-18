Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79FBCE01250; Wed, 18 Jul 2018 04:37:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91DB1E009B9
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 04:37:54 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id f1-v6so2157142ljc.9
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 04:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=g143EVt6b4OIQNoImkoTI753GYtt88VVfZx7klsL/Jw=;
	b=lsRI9dJt/liyZ7nhIlyE2P++HZiaNQbfkfs1kksBn1x7yTbSCRg1E85n5akxzjVcIq
	kcEkqqTBn8Ds7KpxuUokzXgveuLIVePc7KFQCuRU0sNM0pcdxp3a0Ggxr5pnbKnALkxm
	56U41UQFhRM2m0K2gbnr49NFUfTWj/ofMxcAMMHhP5HZ9hIKZEbzqNghvklvCoD8Z8RP
	ASDc2pbhS15b6mK1WM5j+tt3TsjHqK9beQibGKmrOZgIqeEqvtcKp/8fsdlSiAuS7DqD
	FhHTDveU2wnwwHN1e/JHSd9BJGa1U+mjFzPyYTJtI1fLCZjF8iA+twYetdEIvtj6gB6Y
	IfAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=g143EVt6b4OIQNoImkoTI753GYtt88VVfZx7klsL/Jw=;
	b=eiocXf9tNNbbi1Ia+m/l7U5SlEpiTwZzckfL3mNMDRrxDxXGBrWoNKdQGijV3Vkb/J
	21qU9SyRZPZGDdCvmDWuB5uIkMbCESmW7/CiMHfZ8j662WvhVPDJOlPyU/fjD0GyKXPM
	6RQSBrXEVKnKi167IB2NtnvLVMAGQgsBqMZhORzX4EGESsXeyewVOYp/jpEkRUca2HHc
	pHPLBWffJgL/+9zPprIrSUcnT8YNe5xLanW2oUbln/iIX87nC/w8K1B38c3foaaKTGTv
	bB7fcKI869IMaHC8Sxldpez+CswH4h5X5Myfg6v8QLYF8NkGEPxqEPS1sRxdIJDU5cxr
	5GXg==
X-Gm-Message-State: AOUpUlFrJmJfhwa8ktlH6BjitoCLK8bhYl5Flp1mT/pTvkEgf4DIuaxD
	IrbwDJTB/jKKWLFVtuAkwv/ylWPK5HOYErQbG4bXnA==
X-Google-Smtp-Source: AAOMgpdM+71uh7RcfeCsIOL+f+/ZI2kP8zzA/Y25NFOrBrf189JJbIZ6MRfw4YiiyOT6Ox/W3p0Do6NQBbGHVz7UaoU=
X-Received: by 2002:a2e:44c6:: with SMTP id
	b67-v6mr4283374ljf.102.1531913873205; 
	Wed, 18 Jul 2018 04:37:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Wed, 18 Jul 2018 04:37:52
	-0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 18 Jul 2018 13:37:52 +0200
Message-ID: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Wed, 18 Jul 2018 11:37:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hello YOCTO community,

Since I need to build the latest and the greatest Github creations
from the independent contributors, I decided myself to write few YOCTO
recipes and to get myself to this (un)pleasant learning path.

I did few examples, simplistic ones, before I took more complex
recipes to write.

And... I need this one, Cannelloni, one defined here:
https://github.com/mguentner/cannelloni

I guess, I figured out couple of stuff, but the last one, RDEPENDS, I
could not figure out.

I can figure it out with normal Linux installation, and here is how it
is solved in Run Time:

export LD_LIBRARY_PATH=/usr/local/lib ## where DLL
libcannelloni-common.so resides after installation!

Here is what/how the actual error looks like: cannelloni.log (attached).

Please, pay attention to the following log line:

ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannelloni
contains bad RPATH
/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build:
in file /home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/bin/cannelloni
[rpaths]
ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannelloni
contained in package cannelloni requires libcannelloni-common.so, but
no providers found in RDEPENDS_cannelloni? [file-rdeps]
ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors.
Please consider fixing them.
ERROR: cannelloni-1.0-r0 do_package_qa: Function failed: do_package_qa

The cannelloni recipe is listed below:

SUMMARY = "SocketCAN over Ethernet tunnel using UDP to transfer CAN
frames between two machines"
SECTION = "canapp"
## LICENSE = "CLOSED"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
PR = "r0"

DEPENDS = "${@bb.utils.contains('DISTRO_FEATURES', 'systemd',
'systemd', '', d)}"
## RDEPENDS_${PN} = "???"

SRCREV = "e3ac7393b566345d057c2d17a4d328007caaacac"

SRC_URI = "git://github.com/mguentner/cannelloni"

S = "${WORKDIR}/git"

inherit pkgconfig cmake
inherit systemd

EXTRA_OECMAKE += "-DCMAKE_BUILD_TYPE=Release"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 cannelloni ${D}${bindir}
}

Thank you in advance,
Zoran Stojsavljevic

