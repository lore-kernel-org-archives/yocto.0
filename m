Return-Path: <samuli.piippo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9C3CE00CD3; Sun,  3 Dec 2017 23:09:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (samuli.piippo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31EE1E00C82
	for <yocto@yoctoproject.org>; Sun,  3 Dec 2017 23:09:52 -0800 (PST)
Received: by mail-lf0-f65.google.com with SMTP id t197so17930144lfe.7
	for <yocto@yoctoproject.org>; Sun, 03 Dec 2017 23:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QKSznSFU4xN3CImJIZk5pT5ZNcDeM0/ClJ+1IPkdwPQ=;
	b=huxPxcpjV6Lb9Ldk5iGUXkEAiH+eFfIN2g9foFUhdHdCUSUshNSnVmhezpce6zVCq6
	hD4yF4rwb0TiHgX8JPSjJ5U/aNeEyPMZz9kdtIMIIQxvByUKciCRtRHSbh1LAKZfrzAj
	iwIDQGYBNtcQ5qvGqEOi7HIqVopil50zN/DNQ5sQrwn48ToGfDmDPFCAeISWr/mTAAbC
	0fC72jOQMhWrTcKTX2Frl9Q5z50+E6WbPsc9T+nI37KaSxsYs529C722936FDZOkp63N
	5eeW+7wH9B2MVU3A/wHpgyRjDNoXxeS175Vq0wNU82fNSf4ubtrPE8yx1YCmvjSzIi3F
	0qsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QKSznSFU4xN3CImJIZk5pT5ZNcDeM0/ClJ+1IPkdwPQ=;
	b=NlnNcxBrq9xoYdJQgb4YZyro7+4hrDS069EMM8nzJrg6NlutmzGg7Xdmb6ml18dRzC
	Hi7maS787O1ROujMPUChEhxZigs0PsVvkoH16J7UQR7YOsYZvqsul47eEP18bRjz78kj
	4g9L15tmuCB5zC63Ey4DQEb/hSsYSDW3sSiBgCNsyzL1mYC4WTrNBWyKkOSNyPvFyfeC
	nPeimt4JO49jUjAg0ZGIAm4KlfrBAFjU3XLT/hib0RIN8ROpYkiHSCjGDojpxIC2bKXy
	cBmSDddjse+shs3IorHtvE3yWe6ZuHWzMnSRw1UNtwAGt9pfYHNz/ddM5NUc/xgMTLkG
	Saug==
X-Gm-Message-State: AJaThX6IOhFJBEWs4nBjLnPCD62V1EqaOu+u9T4rOzYZvYdHyFd5drIF
	K3/h8Fd4eJKFiCF5Q2sJAFfxiwZ4YDuJMpG6UdYNWhys
X-Google-Smtp-Source: AGs4zMbFSR/XFggV6DCujZioiZh69dTFGd8ZIOZQibCJ2+77oBukaJc1ijTnjZEyxvLmxoGkpk6+MYVHPZQ8HDDMXCM=
X-Received: by 10.46.27.24 with SMTP id b24mr8541948ljb.54.1512371391406; Sun,
	03 Dec 2017 23:09:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.41.15 with HTTP; Sun, 3 Dec 2017 23:09:50 -0800 (PST)
In-Reply-To: <1510306255-31149-1-git-send-email-samuli.piippo@qt.io>
References: <1510306255-31149-1-git-send-email-samuli.piippo@qt.io>
From: Samuli Piippo <samuli.piippo@gmail.com>
Date: Mon, 4 Dec 2017 09:09:50 +0200
Message-ID: <CABXoSoWVp32Ki3bebx1k=2sXjNFR=vXeO5de5Fg5L-0XOR8miQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-mingw][PATCH] mingw64: update to 5.0.3
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
X-List-Received-Date: Mon, 04 Dec 2017 07:09:54 -0000
Content-Type: text/plain; charset="UTF-8"

ping

On 10 November 2017 at 11:30, Samuli Piippo <samuli.piippo@qt.io> wrote:
> Use the latest mingw64 release to get access to the latest Windows APIs
>
> BUILDSDK_CPPFLAGS were emptied from poky.conf, but are needed for mingw
> build to include correct float.h. (error: '_MCW_DN' undeclared here)
>
> Disable shared library for nativesdk-gettext as it fails with
> 'undefined reference to `xmlFree''
>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  recipes-core/gettext/gettext_0.19.%.bbappend                        | 2 +-
>  ...gw-w64-headers_3.1.0.bb => nativesdk-mingw-w64-headers_5.0.3.bb} | 4 ++--
>  ...gw-w64-runtime_3.1.0.bb => nativesdk-mingw-w64-runtime_5.0.3.bb} | 6 ++++--
>  3 files changed, 7 insertions(+), 5 deletions(-)
>  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_3.1.0.bb => nativesdk-mingw-w64-headers_5.0.3.bb} (83%)
>  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_3.1.0.bb => nativesdk-mingw-w64-runtime_5.0.3.bb} (84%)
>
> diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
> index b33970a..95ea030 100644
> --- a/recipes-core/gettext/gettext_0.19.%.bbappend
> +++ b/recipes-core/gettext/gettext_0.19.%.bbappend
> @@ -2,7 +2,7 @@ DEPENDS_append_mingw32 = " pthreads-win32"
>  LDFLAGS_prepend_mingw32 = " -lpthread "
>
>  CFLAGS_append_mingw32 = " -DLIBXML_STATIC"
> -EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static"
> +EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static --disable-shared"
>
>  FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
>  SRC_URI_append_mingw32 = " \
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> similarity index 83%
> rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
> rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> index 5cd4e34..3948392 100644
> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> @@ -7,8 +7,8 @@ COMPATIBLE_HOST = ".*-mingw.*"
>  SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2 \
>             file://epsilon.patch"
>
> -SRC_URI[md5sum] = "df0e7657f46cbd59ed9cbe2a50c66e15"
> -SRC_URI[sha256sum] = "ece7a7e7e1ab5e25d5ce469f8e4de7223696146fffa71c16e2a9b017d0e017d2"
> +SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
> +SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
>
>  S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-headers"
>  B = "${WORKDIR}/build-${TARGET_SYS}"
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb
> similarity index 84%
> rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
> rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb
> index c4292ad..29df124 100644
> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb
> @@ -5,14 +5,16 @@ LIC_FILES_CHKSUM = "file://../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
>  COMPATIBLE_HOST = ".*-mingw.*"
>
>  SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
> -SRC_URI[md5sum] = "df0e7657f46cbd59ed9cbe2a50c66e15"
> -SRC_URI[sha256sum] = "ece7a7e7e1ab5e25d5ce469f8e4de7223696146fffa71c16e2a9b017d0e017d2"
> +SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
> +SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
>
>  S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
>  B = "${WORKDIR}/build-${TARGET_SYS}"
>
>  inherit autotools nativesdk
>
> +BUILDSDK_CPPFLAGS = "-isystem${STAGING_INCDIR}"
> +
>  INHIBIT_DEFAULT_DEPS = "1"
>  DEPENDS = "nativesdk-mingw-w64-headers virtual/${TARGET_PREFIX}gcc-initial "
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

