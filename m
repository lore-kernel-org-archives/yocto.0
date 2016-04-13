Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D520E00DD8; Wed, 13 Apr 2016 03:05:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE059E00C41
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 03:05:05 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id g185so63543456ioa.2
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 03:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=lajLgOaVc9G30mQjdATD1vWo75wbV2A0VXH+pMDch0w=;
	b=TNcGFnYVyixWKK7hHCFTMJZYuGnLzGJJAnVx3KnuUT/wI2/39yCN31Kh9O/QOpTpsh
	FWa8eK9Ki3KVbJima1QALF8PJAo6meICwSP28yF2ODXQNYQCIUY01x0e+buEZmxQKE0k
	flh5Cgjasw1xhP5b/bztSYApU9PTTW3m7bMbrTHUJ5i27VkxcERz7WjjVGRel6Z4yfgS
	smL3g9t4tcBxm6hFoiD9X/sDOJMJMxZFbvdOfbqnE/SPr9xtO3cgHLsRnVQFXnxoJVFL
	C3U+MRo6DfssB3FDcED+hvZAO1BDcuWd26Tiqt//E0Ls/Xny3VFjQFeqb5uOLbNK/AdB
	ChlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=lajLgOaVc9G30mQjdATD1vWo75wbV2A0VXH+pMDch0w=;
	b=IjbveFy2/Y03LwGbksRSVcxGKbUNkMukzP0s32ngKIUfKB9GBfZj8tAK3nVhZDZLFy
	4Py0YkEJ94PyI+8ow+76AysTFlhfZlNSB4ScQiQz/qhW/MhHJ0z5YWttWpm20CR7HIbd
	zyrgKS+Yq0ygKbHI5gQwO1cHv4ety5MdFfAqbV/acTg4dvgXoUPw40d5sD7tfglEFCEi
	pCV1x4mkaE/37A2uFYrEBuMW43telev6MO7g+zwuQQbBuOqc/+9UqGUdffvzXcxakbR5
	+9KuHO4XpGJMq96/UWPjVLATnzW3a9Mdm92kAQh9JzlLlj1tVczDr53EHe388jHUVBE6
	U72g==
X-Gm-Message-State: AOPr4FVoD9P+vGrW63ow3+baOUNrHHGxeE+toJwhtBULppqc0iI2++jAtD7y+ztIqrGMpHk2mXBhf1pX3m2ZmA==
MIME-Version: 1.0
X-Received: by 10.107.32.20 with SMTP id g20mr9128605iog.149.1460541905311;
	Wed, 13 Apr 2016 03:05:05 -0700 (PDT)
Received: by 10.36.69.12 with HTTP; Wed, 13 Apr 2016 03:05:05 -0700 (PDT)
In-Reply-To: <1459619952-26621-2-git-send-email-raj.khem@gmail.com>
References: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
	<1459619952-26621-2-git-send-email-raj.khem@gmail.com>
Date: Wed, 13 Apr 2016 20:05:05 +1000
Message-ID: <CANwerB3k8hfWBRqXjDgHzptKjaMjX2TDmvFHrReJ+-PhD4NfVw@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Make vchostif as shared library
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
X-List-Received-Date: Wed, 13 Apr 2016 10:05:10 -0000
Content-Type: text/plain; charset=UTF-8

Hi Khem,

On 3 April 2016 at 03:59, Khem Raj <raj.khem@gmail.com> wrote:
> This helps in using this library when building
> with PIE binaries
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../0014-build-shared-library-for-vchostif.patch   | 28 ++++++++++++++++++++++
>  recipes-graphics/userland/userland_git.bb          |  1 +
>  2 files changed, 29 insertions(+)
>  create mode 100644 recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
>
> diff --git a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
> new file mode 100644
> index 0000000..ca7cb66
> --- /dev/null
> +++ b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
> @@ -0,0 +1,28 @@
> +From 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Sat, 2 Apr 2016 10:37:24 -0700
> +Subject: [PATCH] build shared library for vchostif
> +
> +Fixes #149
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + interface/vmcs_host/CMakeLists.txt | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
> +index 22949a8..f8c2f2f 100755
> +--- a/interface/vmcs_host/CMakeLists.txt
> ++++ b/interface/vmcs_host/CMakeLists.txt
> +@@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE
> + #            ${VMCS_TARGET}/vmcs_main.c
> + #  vc_vchi_haud.c
> +
> +-add_library(vchostif ${VCHOSTIF_SOURCE})
> ++add_library(vchostif SHARED ${VCHOSTIF_SOURCE})
> +
> + #add_library(bufman            vc_vchi_bufman.c            )
> +
> +--
> +2.8.0
> +
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index efa2128..6ed8fcf 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -33,6 +33,7 @@ SRC_URI = "\
>      file://0011-fix-cmake-dependency-race.patch \
>      file://0012-Fix-enum-conversion-warnings.patch \
>      file://0013-Fix-for-framerate-with-nested-composition.patch \
> +    file://0014-build-shared-library-for-vchostif.patch \
>      file://0015-wl-dispmanx-buffer-wrapping.patch \
>  "
>  S = "${WORKDIR}/git"
> --
> 2.8.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

This breaks omxplayer compilation when linking omxplayer.bin:
[...]/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/ld:
omxplayer.o: undefined reference to symbol
'vc_dispmanx_resource_write_data'
[...]/sysroots/raspberrypi2/usr/lib/libvchostif.so: error adding
symbols: DSO missing from command line

Regards,
Jonathan

