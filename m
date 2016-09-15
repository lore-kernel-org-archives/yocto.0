Return-Path: <mathieu.allard@evalan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3684E00C09; Thu, 15 Sep 2016 00:26:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,PLING_QUERY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
X-Greylist: delayed 499 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Sep 2016 00:26:49 PDT
Received: from claus.evalan.com (claus.evalan.com [176.9.90.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33CAEE00C10
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 00:26:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id D0B953203D1;
	Thu, 15 Sep 2016 09:20:15 +0200 (CEST)
Received: from claus.evalan.com ([127.0.0.1])
	by localhost (claus.evalan.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id B1rH79nsExAs; Thu, 15 Sep 2016 09:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id E0E8C3204AD;
	Thu, 15 Sep 2016 09:20:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at claus.evalan.com
Received: from claus.evalan.com ([127.0.0.1])
	by localhost (claus.evalan.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id h9iABKnZYwBs; Thu, 15 Sep 2016 09:20:14 +0200 (CEST)
Received: from claus.evalan.com (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id BB30B3203D1;
	Thu, 15 Sep 2016 09:20:14 +0200 (CEST)
Date: Thu, 15 Sep 2016 09:20:14 +0200 (CEST)
From: Mathieu Allard <mathieu.allard@evalan.com>
To: "Daniel." <danielhilst@gmail.com>
Message-ID: <1982107435.78217.1473924014446.JavaMail.zimbra@evalan.com>
In-Reply-To: <CAF3SDA4Ba5U=D7Fpa4-hSwWRYyutreVTJA8GG+mG5AF6V0aayA@mail.gmail.com>
References: <CAF3SDA4Ba5U=D7Fpa4-hSwWRYyutreVTJA8GG+mG5AF6V0aayA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [92.111.78.37]
X-Mailer: Zimbra 8.6.0_GA_1194 (ZimbraWebClient - FF47 (Linux)/8.6.0_GA_1194)
Thread-Topic: Adding ntfs3g to image and mouting ntfs partitions!?
Thread-Index: +CtgSRZWJHPpECL4i1LZaSU6hTnK1A==
Cc: yocto@yoctoproject.org
Subject: Re: Adding ntfs3g to image and mouting ntfs partitions!?
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
X-List-Received-Date: Thu, 15 Sep 2016 07:26:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

it seems to me that the name of the recipe is ntfs-3g-ntfsprogs and not just ntfs-3g.


PS: I'm not sure using arch linux is a good choice for yocto builds, you get a lot of updates and that will probably result in weird errors quite often.
I would advise to use a supported distro, maybe in a chroot/container (or eventually debian stable with which I never had a problem so far)


----- Original Message -----
From: "Daniel." <danielhilst@gmail.com>
To: yocto@yoctoproject.org
Sent: Wednesday, September 14, 2016 11:18:17 PM
Subject: [yocto] Adding ntfs3g to image and mouting ntfs partitions!?

Hi,

I'm trying to compile ntfs-3g but I get "nothing provides ntfs-3g"
error, the weird part is that I have that recipe:

Some commands and its outputs:

[geckos@csi24 build_x11]$ find ../sources/ -name
"ntfs*.bb*"../sources/meta-openembedded/meta-filesystems/recipes-filesystems/ntfs-3g-ntfsprogs/ntfs-3g-ntfsprogs_2013.1.13.bb


[geckos@csi24 build_x11]$ cat
../sources/meta-openembedded/meta-filesystems/recipes-filesystems/ntfs-3g-ntfsprogs/ntfs-3g-ntfsprogs_2013.1.13.bb
DESCRIPTION = "The NTFS-3G driver is an open source, freely available
NTFS driver for Linux with read and write support."
HOMEPAGE = "http://www.ntfs-3g.org/"
DEPENDS = "fuse libgcrypt"
PROVIDES = "ntfsprogs ntfs-3g"
LICENSE = "GPLv2 & LGPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
                    file://COPYING.LIB;md5=f30a9716ef3762e3467a2f62bf790f0a"

SRC_URI = "http://tuxera.com/opensource/ntfs-3g_ntfsprogs-${PV}.tgz"
S = "${WORKDIR}/ntfs-3g_ntfsprogs-${PV}"

SRC_URI[md5sum] = "2d6fb47ddf62b51733227126fe9227fe"
SRC_URI[sha256sum] =
"4b383f0074a3ab7683339d1f18222b107aaeb4983db119292c43c2b275cefb27"

inherit autotools

PACKAGECONFIG ??= ""
PACKAGECONFIG[uuid] = "--with-uuid,--without-uuid,util-linux"

# required or it calls ldconfig at install step
EXTRA_OEMAKE = "LDCONFIG=echo"

PACKAGES =+ "ntfs-3g ntfsprogs libntfs-3g"

FILES_ntfs-3g = "${base_sbindir}/*.ntfs-3g ${bindir}/ntfs-3g*
${base_sbindir}/mount.ntfs"
RDEPENDS_ntfs-3g += "fuse"
RRECOMMENDS_ntfs-3g = "util-linux-mount"

FILES_ntfsprogs = "${base_sbindir}/* ${bindir}/* ${sbindir}/*"
FILES_libntfs-3g = "${libdir}/*${SOLIBS}"

do_install_append() {
    # Standard mount will execute the program /sbin/mount.TYPE
    # when called. Add the symbolic to let mount could find ntfs.
    ln -sf mount.ntfs-3g ${D}/${base_sbindir}/mount.ntfs
}

# Satisfy the -dev runtime dependency
ALLOW_EMPTY_${PN} = "1"
[geckos@csi24 build_x11]$



[geckos@csi24 build_x11]$ bitbake ntfs-3g
WARNING: Host distribution "Arch-Linux" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Loading cache: 100%
|#####################################################################################################################################################|
ETA:  00:00:00
Loaded 2228 entries from dependency cache.
ERROR: Nothing PROVIDES 'ntfs-3g'

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
[geckos@csi24 build_x11]$
[geckos@csi24 build_x11]$
[geckos@csi24 build_x11]$ bitbake ntfsprogs
WARNING: Host distribution "Arch-Linux" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Loading cache: 100%
|#####################################################################################################################################################|
ETA:  00:00:00
Loaded 2228 entries from dependency cache.
ERROR: Nothing PROVIDES 'ntfsprogs'. Close matches:
  e2fsprogs

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
[geckos@csi24 build_x11]$
[geckos@csi24 build_x11]$
[geckos@csi24 build_x11]$ bitbake ntfs-3g-ntfsprogs
WARNING: Host distribution "Arch-Linux" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Loading cache: 100%
|#####################################################################################################################################################|
ETA:  00:00:00
Loaded 2228 entries from dependency cache.
ERROR: Nothing PROVIDES 'ntfs-3g-ntfsprogs'

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
[geckos@csi24 build_x11]$


Thanks in advance
Best regards,

-- 
"Do or do not. There is no try"
  Yoda Master
-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

