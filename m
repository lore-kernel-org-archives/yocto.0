Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B49C6E006EE; Wed, 14 Sep 2016 14:18:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, PLING_QUERY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78D74E00404
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 14:18:19 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id i129so43128238ywb.0
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 14:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=hRogB9/EVL3UzeNt61P2ori1TwX/o+IaZEZXU9ZJy1I=;
	b=nsEP8oVl3+Xa/mqiVe1JHe9WnKoQkJ2VnGqcdGCZ3KKH2u18SaHqNR4KIgLhlj//ys
	h+4Sm76syjMGrItDfG0zuqt0VIWNVEYSGHzqmfSx5ZgCg4E42D9wZoopMVoRz7eIFMRu
	Mu0HrrkWSYZ9c2k1Pa6AFq3h+mA1f9jE3Op+JwyeHYxHMs/hJXfpZtFcypsLFGnKrK6s
	WiNbi1KKmMwV9C0sW3xx4lKHR1zSSpmt+rFc9O8vrqYcAs0enADxxa3xjyu7PFrzJ9Jx
	Rg6Z4VWas1CUaHXXYdchQkdS3HVv+hWxSj+NC0c8G8KAhnP0rUjyKO5bx6PRM1nAXg8M
	YN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hRogB9/EVL3UzeNt61P2ori1TwX/o+IaZEZXU9ZJy1I=;
	b=laM6lpjsNqTlmieTfW7xE2VqREwURpuzVQdTaVpr/ukU2H/50qudxSGtjPzerNf4ml
	tEKhL2Vza76DERlWEaClkXFXlMYU/3q93I5BLG5wlGDq/v0HjKGjL8t+A2GiJFhx45vm
	Bo58EMdtQQB+0anAr95GJ4So86FWVnbQXwtdpuoVw5eqRSIjoHnNwh0pBNi5CavoDLF+
	AZAjljI3D0z8IB7p8K24Ye8nlz9ni8UxgpUnP9M30K2zVDAUD9lSG/QY0iY7ig69UCWu
	itlLFgv8N07SVx82VseBrZypeertxaG9YiZ7//K9IiDsVkWrX2Jf44vqY23GqrPjmwMC
	gjOg==
X-Gm-Message-State: AE9vXwNusyx4tKu6vr32VZGx31cHq3Dm7L96tBCfDZEpglqpN/W1HwMzpu7FUkUIhHEVF0hnj/wrqdH/NAGyVw==
X-Received: by 10.129.70.137 with SMTP id t131mr5559994ywa.268.1473887898152; 
	Wed, 14 Sep 2016 14:18:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.72 with HTTP; Wed, 14 Sep 2016 14:18:17 -0700 (PDT)
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 14 Sep 2016 18:18:17 -0300
Message-ID: <CAF3SDA4Ba5U=D7Fpa4-hSwWRYyutreVTJA8GG+mG5AF6V0aayA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Adding ntfs3g to image and mouting ntfs partitions!?
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
X-List-Received-Date: Wed, 14 Sep 2016 21:18:22 -0000
Content-Type: text/plain; charset=UTF-8

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

