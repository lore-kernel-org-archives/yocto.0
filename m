Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 849C4E00C15; Thu, 15 Sep 2016 05:11:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,PLING_QUERY,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C117E00C0F
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 05:11:33 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id b81so22826509vkd.0
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 05:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qqWrOzOdH0UDRa9cD84IrrCeQiUopXXTs2CZ7Zv7bDQ=;
	b=Q7UywwJTJr4wMep95qxXW7mw5HRtVb8WhgV+Z5Rd8qhQIAsbT2s0NgCp+Qy2shjDRs
	gvffDxXYjIssRj68Immi8SBT6m46Ao3u88f6MW+dozDJnpN0z/YtUU17NUvIyqYvaxaK
	Gv8gjfDshmwsEWzP9htt5AilEORrkUrXsAUCKS+bn5A1VoIM0WuOFK2aw6EnP9xrA7iY
	jKtkzZ7cUfq7gtxKyQANDhS/yHHkmpBe1guVZ83zIue+PNy3AwRY7v+KEP9y/9lPRURh
	ehIhofzFyqN3wI0xbVeES3Kje63oOzoZNbDkzMtky3tOyQG0w3pv0EdAyVmMFbzIYaWA
	yaEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qqWrOzOdH0UDRa9cD84IrrCeQiUopXXTs2CZ7Zv7bDQ=;
	b=kqRI8G6uTirtr6cQRzfMyeGQL3oVEia9wwf1kLMq5HYb6hhzMHqDi4CxLehRDcx2r8
	u4vLkrUI754u3VNRsIV0yZBVs2shoczG3iUiN3JAywemyJqx3++diSgvZ/80G3kWk933
	1VHmcpVkkvq6JbeOjIWlf/MCx8S3dMm6NdOoc5weR9ZQJM28BxNoFMzarP3zSOZazFKQ
	ASuHhPrfMM+mxYA+4OtYRvOfs4H9OgJ/zXZF3gfcfINi/3NLzgoxwigtqMs29a7jWgQV
	Ht9tDfwnMgZey8qMWkw7g21MdQBExoBPyBy670ZxMenNfMoAW7MScuy7+StVh0QyU6SZ
	zprg==
X-Gm-Message-State: AE9vXwPjs7CoHyVtT/7Y9MW12XV22TAMDF0M4Dk+Bc5vH2ZdznPpDk7NH8Udvv+lseFBM3XX4Eb0mE5F/osgbg==
X-Received: by 10.31.236.196 with SMTP id k187mr2381264vkh.154.1473941493116; 
	Thu, 15 Sep 2016 05:11:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.72 with HTTP; Thu, 15 Sep 2016 05:11:32 -0700 (PDT)
In-Reply-To: <1982107435.78217.1473924014446.JavaMail.zimbra@evalan.com>
References: <CAF3SDA4Ba5U=D7Fpa4-hSwWRYyutreVTJA8GG+mG5AF6V0aayA@mail.gmail.com>
	<1982107435.78217.1473924014446.JavaMail.zimbra@evalan.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 15 Sep 2016 09:11:32 -0300
Message-ID: <CAF3SDA5b6U8xobyQbGjwLFb+HOEyJiyb4wLWhhrTN6+e=ABWiQ@mail.gmail.com>
To: Mathieu Allard <mathieu.allard@evalan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 15 Sep 2016 12:11:39 -0000
Content-Type: text/plain; charset=UTF-8

I Mathieu,

Thanks for the advice, I never had "weird errors", to be honest I was
thinking about "what I need to do to get distro X vallidated", but
this is a topic for another question. The error is the same... I found
that the meta-openembedded/meta-filesystems layer wasn't included in
my configuration, (see, my fault, not Arch's). The only thing that I
had to do about Yocto+Arch was adding python2 to path as python since
Arch sets python3 as default. The procedure can be found at
https://wiki.archlinux.org/index.php/python#Python_2

Best regards,

2016-09-15 4:20 GMT-03:00 Mathieu Allard <mathieu.allard@evalan.com>:
> Hi,
>
> it seems to me that the name of the recipe is ntfs-3g-ntfsprogs and not just ntfs-3g.
>
>
> PS: I'm not sure using arch linux is a good choice for yocto builds, you get a lot of updates and that will probably result in weird errors quite often.
> I would advise to use a supported distro, maybe in a chroot/container (or eventually debian stable with which I never had a problem so far)
>
>
> ----- Original Message -----
> From: "Daniel." <danielhilst@gmail.com>
> To: yocto@yoctoproject.org
> Sent: Wednesday, September 14, 2016 11:18:17 PM
> Subject: [yocto] Adding ntfs3g to image and mouting ntfs partitions!?
>
> Hi,
>
> I'm trying to compile ntfs-3g but I get "nothing provides ntfs-3g"
> error, the weird part is that I have that recipe:
>
> Some commands and its outputs:
>
> [geckos@csi24 build_x11]$ find ../sources/ -name
> "ntfs*.bb*"../sources/meta-openembedded/meta-filesystems/recipes-filesystems/ntfs-3g-ntfsprogs/ntfs-3g-ntfsprogs_2013.1.13.bb
>
>
> [geckos@csi24 build_x11]$ cat
> ../sources/meta-openembedded/meta-filesystems/recipes-filesystems/ntfs-3g-ntfsprogs/ntfs-3g-ntfsprogs_2013.1.13.bb
> DESCRIPTION = "The NTFS-3G driver is an open source, freely available
> NTFS driver for Linux with read and write support."
> HOMEPAGE = "http://www.ntfs-3g.org/"
> DEPENDS = "fuse libgcrypt"
> PROVIDES = "ntfsprogs ntfs-3g"
> LICENSE = "GPLv2 & LGPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
>                     file://COPYING.LIB;md5=f30a9716ef3762e3467a2f62bf790f0a"
>
> SRC_URI = "http://tuxera.com/opensource/ntfs-3g_ntfsprogs-${PV}.tgz"
> S = "${WORKDIR}/ntfs-3g_ntfsprogs-${PV}"
>
> SRC_URI[md5sum] = "2d6fb47ddf62b51733227126fe9227fe"
> SRC_URI[sha256sum] =
> "4b383f0074a3ab7683339d1f18222b107aaeb4983db119292c43c2b275cefb27"
>
> inherit autotools
>
> PACKAGECONFIG ??= ""
> PACKAGECONFIG[uuid] = "--with-uuid,--without-uuid,util-linux"
>
> # required or it calls ldconfig at install step
> EXTRA_OEMAKE = "LDCONFIG=echo"
>
> PACKAGES =+ "ntfs-3g ntfsprogs libntfs-3g"
>
> FILES_ntfs-3g = "${base_sbindir}/*.ntfs-3g ${bindir}/ntfs-3g*
> ${base_sbindir}/mount.ntfs"
> RDEPENDS_ntfs-3g += "fuse"
> RRECOMMENDS_ntfs-3g = "util-linux-mount"
>
> FILES_ntfsprogs = "${base_sbindir}/* ${bindir}/* ${sbindir}/*"
> FILES_libntfs-3g = "${libdir}/*${SOLIBS}"
>
> do_install_append() {
>     # Standard mount will execute the program /sbin/mount.TYPE
>     # when called. Add the symbolic to let mount could find ntfs.
>     ln -sf mount.ntfs-3g ${D}/${base_sbindir}/mount.ntfs
> }
>
> # Satisfy the -dev runtime dependency
> ALLOW_EMPTY_${PN} = "1"
> [geckos@csi24 build_x11]$
>
>
>
> [geckos@csi24 build_x11]$ bitbake ntfs-3g
> WARNING: Host distribution "Arch-Linux" has not been validated with
> this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested
> distribution.
> Loading cache: 100%
> |#####################################################################################################################################################|
> ETA:  00:00:00
> Loaded 2228 entries from dependency cache.
> ERROR: Nothing PROVIDES 'ntfs-3g'
>
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> [geckos@csi24 build_x11]$
> [geckos@csi24 build_x11]$
> [geckos@csi24 build_x11]$ bitbake ntfsprogs
> WARNING: Host distribution "Arch-Linux" has not been validated with
> this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested
> distribution.
> Loading cache: 100%
> |#####################################################################################################################################################|
> ETA:  00:00:00
> Loaded 2228 entries from dependency cache.
> ERROR: Nothing PROVIDES 'ntfsprogs'. Close matches:
>   e2fsprogs
>
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> [geckos@csi24 build_x11]$
> [geckos@csi24 build_x11]$
> [geckos@csi24 build_x11]$ bitbake ntfs-3g-ntfsprogs
> WARNING: Host distribution "Arch-Linux" has not been validated with
> this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested
> distribution.
> Loading cache: 100%
> |#####################################################################################################################################################|
> ETA:  00:00:00
> Loaded 2228 entries from dependency cache.
> ERROR: Nothing PROVIDES 'ntfs-3g-ntfsprogs'
>
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> [geckos@csi24 build_x11]$
>
>
> Thanks in advance
> Best regards,
>
> --
> "Do or do not. There is no try"
>   Yoda Master
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

