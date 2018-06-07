Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 884D9E00C6E; Thu,  7 Jun 2018 07:00:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5F1AE00B30
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 07:00:56 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id j135-v6so2497185itj.1
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 07:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ixNdxi/JBSYgtt9CUXznbRoSaKCzzAvBTLmEs5gTx08=;
	b=Br89k+trJb5JTQLRcEKyVO/tFJXXBhYsjrdauF3+MW/pxGFUbhxQUIKS8zUDj9i8nz
	2pGtkFCY1rqPldVpdL50zUm/Z4dxAOP4+jEGLXErHt6QHTrNTXU+Q8fE590gF/V/hCAN
	o12EelWZ1jmpTyN59qBL/o14TYUh+19blQVgo3sAxW60SVjnThUmPE86RtEXuk5jDWUv
	JEBB3lfiwc+UJTPdINnHxYF6SizRl1xYFOLN3mjSnPp+Y9HXwsFUa3NhSCj2LGBO/kdH
	nZHaU5LVoEWGudCqWxJNslCinxtnbpEV5azPp6Qd8ypaJGsWUjj2S3/ez/5UjnO7ZuxA
	qQJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ixNdxi/JBSYgtt9CUXznbRoSaKCzzAvBTLmEs5gTx08=;
	b=Qxzl6tHoFxh4O8wwCRGFW8hUCfCc3abcbO1JyoDtURpET0fpfCEsPELzQ8wcAkkQAt
	XSDpF/LzqC4tA+J+EaacAiMOLkfyBWipwYIfU7pzjqEoCDkMy0ks5dEQxKnqHlz7aBfV
	giseR2GXWiQEm5XslYDeL2IaFGLkwnIfV0t+5CbVowukTD4kDMxuQ+MignM2QGPt9BnP
	XkEfieanD8fzAU3ZUqUYbslIMPF8lqFPbLMJFWWEJPHSsf+AESwVhZkR+NtWCah2mkHp
	3mEDEtEdboDkX4YxitYadJ/33r5UM7KiuwCks6qrrvDDZfdhTYNUZM/m0Qpvt7YrNZVE
	+IVg==
X-Gm-Message-State: APt69E2ktwVV2NMNeUfWIS7dhbBhnrBe/mn4iV1dFL6Ll0eyxXatrzkO
	7ERw3prIUaNXSh2DO+bwdJ5cMA+c/SG9zX4iFH8wVw==
X-Google-Smtp-Source: ADUXVKIBUJZxZ+2b6yL5TKBv30bssNpLgKjwEGO9zUwaWAm7+fhwigKox55XJfJcUltXQh7ZuNnzt94hGToDreFKPQ8=
X-Received: by 2002:a24:a0c2:: with SMTP id
	o185-v6mr1999849ite.34.1528380056030; 
	Thu, 07 Jun 2018 07:00:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:f614:0:0:0:0:0 with HTTP;
	Thu, 7 Jun 2018 07:00:35 -0700 (PDT)
In-Reply-To: <20180607135337.28347-1-raj.khem@gmail.com>
References: <20180607135337.28347-1-raj.khem@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 7 Jun 2018 15:00:35 +0100
Message-ID: <CAJTo0LZkpEz3cv6giPX+vbYFW6tDG71CWd8=hgVgy7EzDrD9Kw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] mingw-w64-runtime: Fix build with gcc8
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
X-List-Received-Date: Thu, 07 Jun 2018 14:00:57 -0000
Content-Type: text/plain; charset="UTF-8"

I've a nigh-on identical patch in master-next running on the AB already:

http://git.yoctoproject.org/cgit.cgi/meta-mingw/commit/?h=master-next&id=46b1bfd8ef26dd9c778504143d4dea2fbe2ce90f

Don't have the security flags bit though (our mingw builds don't use
that), can you rebase to master-next and submit that?

Ross


On 7 June 2018 at 14:53, Khem Raj <raj.khem@gmail.com> wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../mingw-w64/mingw-w64-headers/gcc8.patch    | 30 +++++++++++++++++++
>  .../mingw-w64/mingw-w64-headers_5.0.3.bb      |  5 ++--
>  .../mingw-w64/mingw-w64-runtime_5.0.3.bb      |  2 ++
>  3 files changed, 35 insertions(+), 2 deletions(-)
>  create mode 100644 recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch
>
> diff --git a/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch b/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch
> new file mode 100644
> index 0000000..2b0eba3
> --- /dev/null
> +++ b/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch
> @@ -0,0 +1,30 @@
> +>From revision 248028 in GCC 8 there is defined function _xgetbv:
> +https://gcc.gnu.org/viewcvs/gcc/trunk/gcc/config/i386/xsaveintrin.h?r1=248028&r2=248027&pathrev=248028
> +
> +It conflicting with mingw-w64 definition from mingw-w64-headers/include/psdk_inc/intrin-impl.h
> +
> +workaround for mingw-w64:
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +Upstream-Status: Pending [https://sourceforge.net/p/mingw-w64/mailman/message/35866694/]
> +
> +Index: mingw-w64-headers/include/psdk_inc/intrin-impl.h
> +===================================================================
> +--- mingw-w64-headers.orig/include/psdk_inc/intrin-impl.h
> ++++ mingw-w64-headers/include/psdk_inc/intrin-impl.h
> +@@ -1406,6 +1406,7 @@ __buildmov(__movsd, unsigned __LONG32, "
> + #endif /* __INTRINSIC_PROLOG */
> +
> + /* NOTE: This should be in immintrin.h */
> ++#if __GNUC__ < 8 /* GCC 8 already has _xgetbv defined */
> + #if __INTRINSIC_PROLOG(_xgetbv)
> + unsigned __int64 _xgetbv(unsigned int);
> + __INTRINSICS_USEINLINE
> +@@ -1426,6 +1427,7 @@ unsigned __int64 _xgetbv(unsigned int in
> + }
> + #define __INTRINSIC_DEFINED__xgetbv
> + #endif /* __INTRINSIC_PROLOG */
> ++#endif /* __GNUC__ < 8 */
> +
> + #endif /* defined(__x86_64__) || defined(_AMD64_) || defined(__i386__) || defined(_X86_) */
> +
> diff --git a/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb b/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
> index 31fa66f..58d7552 100644
> --- a/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
> +++ b/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
> @@ -5,8 +5,9 @@ LIC_FILES_CHKSUM = "file://../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
>  COMPATIBLE_HOST = ".*-mingw.*"
>
>  SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2 \
> -           file://epsilon.patch"
> -
> +           file://epsilon.patch \
> +           file://gcc8.patch \
> +          "
>  SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
>  SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
>
> diff --git a/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb b/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
> index 928a464..0884778 100644
> --- a/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
> +++ b/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
> @@ -43,3 +43,5 @@ do_configure() {
>  FILES_${PN} += "${exec_prefix}/libsrc"
>
>  BBCLASSEXTEND = "nativesdk"
> +
> +SECURITY_CFLAGS_remove_mingw32 = "-fstack-protector-strong"
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

