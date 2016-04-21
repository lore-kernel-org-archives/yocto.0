Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31A06E00D06; Thu, 21 Apr 2016 16:31:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E60C5E00CB8
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 16:31:57 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id q76so21061050qke.2
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 16:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cpPFGBkDo/+/uDAHcTI7ptiIfDuok8Qny6927DEU748=;
	b=PX/ne1kZX4vYDlOVUqWwKibV8on2ZqJNpRkCbxpfWkskV8L1JYlldGTjVEhdKIgtls
	qsZ2KyzQwqByWvrKWNa/065fANbGJ4kmKehpEKdYxr0tshEa+I5KE8S1LLCwmr36Q3nh
	Og97avV6wBbEU0uVP6Ce6pnPWE2ub1xO7N+TxOkmYU0ecTHZci5HTAddhIfNBMgkLu6q
	A7R3kSTbQ3C494iFoKHoOjbA5VdwCq3PXwocUhKGhCXzA30vyUSFxZNlpJbmZMDdY6ib
	s+phI526VMDxVCkwr1lGwO3qq3xnybhoiAp+Llc20vYjgNJMEo3hWXw5dObMmqJTVk2t
	UPqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cpPFGBkDo/+/uDAHcTI7ptiIfDuok8Qny6927DEU748=;
	b=F9bWRo44KLsNbcEKcgfj/waWQeH90Kx5K/jl9xgGBldk7NPW/09gcTh7G1qXPyzOvI
	bRG4s3JmYvq9athx9wlaHKZWuba+ljF95fKO4p3v7aaN3dHcWNMRx5V7WQhUUArt44yC
	VuEXe0n5kNw26TH84KskovOasd+2CEKreei+pnLHquvtDt6R2Dq3BfUSKFJfrhP+BatQ
	GGJFuAaSlDa2kVPKtTjIeOuToKMSIGuVzwkk9qPdna/JL5gs41cI29yuOz0HivKIdCwa
	1I6dgB9HjLBBfX68A+CtgthgPpBFAWVBorJbcjnxtldcY2/oTCNZD+7Wwkbo3X5ZLdpT
	xT4A==
X-Gm-Message-State: AOPr4FXMc6FXJoqXCX5jv25xBtHDG/KLdpWT+ZPKlYK0MVbsavdN1J+XK9sMzi7OYGIZWy3MdM5j6oQLA3E3eg==
X-Received: by 10.55.155.22 with SMTP id d22mr5941019qke.26.1461281517219;
	Thu, 21 Apr 2016 16:31:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Thu, 21 Apr 2016 16:31:27 -0700 (PDT)
In-Reply-To: <1461157892-9156-1-git-send-email-piotr.lewicki@elfin.de>
References: <1461157892-9156-1-git-send-email-piotr.lewicki@elfin.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Apr 2016 16:31:27 -0700
Message-ID: <CAMKF1spXb_kW0yzD1qVL6P31gz7uK0AG1Oma+c-KZNu5JSSpiA@mail.gmail.com>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] replace libav with ffmpeg and add a patch fixing building omxplayer after 3645b27848edd0d873925f5fa2a7686f3ff9eeb9
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
X-List-Received-Date: Thu, 21 Apr 2016 23:31:59 -0000
Content-Type: text/plain; charset=UTF-8

resend this patch to OE-Core mailing list. and also add
Upstream-Status: to patch


On Wed, Apr 20, 2016 at 6:11 AM, piotr.lewicki <piotr.lewicki@elfin.de> wrote:
> ---
>  .../omxplayer/explicitly_link_with_vchostif_library.patch   | 13 +++++++++++++
>  recipes-multimedia/omxplayer/omxplayer_git.bb               |  5 +++--
>  2 files changed, 16 insertions(+), 2 deletions(-)
>  create mode 100644 recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch b/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
> new file mode 100644
> index 0000000..642f63a
> --- /dev/null
> +++ b/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
> @@ -0,0 +1,13 @@
> +diff --git a/Makefile b/Makefile
> +index 80b63b1..bcfadfb 100644
> +--- a/Makefile
> ++++ b/Makefile
> +@@ -51,7 +51,7 @@ version:
> +       bash gen_version.sh > version.h
> +
> + omxplayer.bin: version $(OBJS)
> +-      $(CXX) $(LDFLAGS) -o omxplayer.bin $(OBJS) -lvchiq_arm -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec -lavformat -lswscale -lswresample -lpcre
> ++      $(CXX) $(LDFLAGS) -o omxplayer.bin $(OBJS) -lvchiq_arm -lvchostif -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec -lavformat -lswscale -lswresample -lpcre
> +       $(STRIP) omxplayer.bin
> +
> + help.h: README.md Makefile
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index c8251fe..c2b1342 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -7,8 +7,8 @@ SECTION = "console/utils"
>  LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>
> -DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
> -PR = "r4"
> +DEPENDS = "libpcre ffmpeg virtual/egl boost freetype dbus openssl samba libssh"
> +PR = "r5"
>
>  SRCREV = "15a490b2397b358776c56b017a137c4716eb6b4e"
>  SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
> @@ -19,6 +19,7 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
>             file://fix-tar-command-with-DIST.patch \
>             file://use-native-pkg-config.patch \
>             file://don-t-preserve-file-attributes-when-cp.patch \
> +           file://explicitly_link_with_vchostif_library.patch \
>             "
>  S = "${WORKDIR}/git"
>
> --
> 2.5.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

