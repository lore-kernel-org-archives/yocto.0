Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95347E00B87; Fri, 14 Jul 2017 06:32:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D293E00A39
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 06:32:00 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id u23so10884114wma.2
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 06:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L3ZjkPVXKhZxMhJmuT6adgAtmOBAuqZE3i0IolQVjJc=;
	b=SbOZRPEtyRbPITLw5TGhrYbMxtoQgTNscQWMppk9GozWHpEcLBE/WJ7YmQ5KLQYy+v
	BijLhjIJG9hy0jp+BcyML5/e95w/uGk9B66LE9MfmbnTZmddIHk+p6Rf9bDgyBXq59JB
	8+mZJpDSOiIWH3j49yRekcmL554kp4g9PShy4+ps9kwz3nFAmJ80A0WBFGjqq14Chf38
	gBro5i8XRVPdU4DnuN76gLJyFfwao5sF8KeAkt1rgo00ZBTxGH6s9gA6qMinprZk6roR
	Pd8aKXJBIyqPxMVajEdy2kOWx/HOz9gyQRzox326im2CiD5sjiePkfqoneq8H0pT7YE2
	A16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L3ZjkPVXKhZxMhJmuT6adgAtmOBAuqZE3i0IolQVjJc=;
	b=RDynZFM7u2Cbs9TBHL64r6DPv+ZZYUU6spMKtBgx493ChlUG+dKDLumUqbNQja1zr1
	ymMg+jmu2iNWgFkaOeZqh5I3WFxI3nATS2NxJJ3AUuKWR7brJ7gvDseJmrfXzLXmlA5E
	CbgXpSvw6N+IUWKLBtYtQS2QF7ot15DG1iq6tMxs/YVo4jv9rJ5IBW1u+H8jnQmhHMp2
	+BAtf4r31KdJYSb2vNz+MuKnzwznNtliXh/4KMOKswDIpnN2dUtkdTvZNbnXtuw8o7vh
	jnuMUXml83TcOyMX2lEq5hGYrVkV6A8Wy40UjLxy49rJP6yXE6A0ob8rtMq2oA5FSJEH
	s3aw==
X-Gm-Message-State: AIVw111c0MlNbDnjU5lEn81L1zrzyQsn3O6Xb9QvLUpZzZr4zTVSZ+IX
	UowDnNCXf6UjGyHZi9+zMGBhUPUkSg==
X-Received: by 10.80.170.218 with SMTP id r26mr6900571edc.113.1500039119298;
	Fri, 14 Jul 2017 06:31:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.145.210 with HTTP; Fri, 14 Jul 2017 06:31:28 -0700 (PDT)
In-Reply-To: <1500022998-25701-1-git-send-email-gizero@gmail.com>
References: <1500022998-25701-1-git-send-email-gizero@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 14 Jul 2017 06:31:28 -0700
Message-ID: <CAMKF1spKFOHKvJ0hLBvDPuTiTy13HYfFFaHCzsdxmRyUN8HGUw@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] userland: Add missing EGL_CAST defines
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
X-List-Received-Date: Fri, 14 Jul 2017 13:32:04 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 14, 2017 at 2:03 AM, Andrea Galbusera <gizero@gmail.com> wrote:
> Needed by libepoxy
>
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  .../0015-EGL-glplatform.h-define-EGL_CAST.patch    | 32 ++++++++++++++++++++++
>  recipes-graphics/userland/userland_git.bb          |  1 +
>  2 files changed, 33 insertions(+)
>  create mode 100644 recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
>
> diff --git a/recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch b/recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
> new file mode 100644
> index 0000000..5a80a26
> --- /dev/null
> +++ b/recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
> @@ -0,0 +1,32 @@
> +From 382e3b16cbcc09d825540d5bd3e45a2fca4484fe Mon Sep 17 00:00:00 2001
> +From: Andrea Galbusera <gizero@gmail.com>
> +Date: Fri, 14 Jul 2017 09:52:54 +0200
> +Subject: [PATCH] EGL/glplatform.h: define EGL_CAST
> +
> +C++ / C typecast macros for special EGL handle values: used by libepoxy code
> +The definition comes from the updated version of this header in mesa.
> +
> +Upstream-Status: Pending
> +---
> + interface/khronos/include/EGL/eglplatform.h | 7 +++++++
> + 1 file changed, 7 insertions(+)
> +
> +diff --git a/interface/khronos/include/EGL/eglplatform.h b/interface/khronos/include/EGL/eglplatform.h
> +index 1f7c930..c39d425 100644
> +--- a/interface/khronos/include/EGL/eglplatform.h
> ++++ b/interface/khronos/include/EGL/eglplatform.h
> +@@ -202,4 +202,11 @@ EGLAPI void EGLAPIENTRY BEGL_GetDefaultDriverInterfaces(BEGL_DriverInterfaces *i
> + #include "interface/khronos/common/khrn_client_mangle.h"
> + #endif
> +
> ++/* C++ / C typecast macros for special EGL handle values */
> ++#if defined(__cplusplus)
> ++#define EGL_CAST(type, value) (static_cast<type>(value))
> ++#else
> ++#define EGL_CAST(type, value) ((type) (value))
> ++#endif
> ++
> + #endif /* __eglplatform_h */
> +--

LGTM
please merge it

> +2.7.4
> +
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 26bbfaf..893fcba 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -34,6 +34,7 @@ SRC_URI = "\
>      file://0012-implement-buffer-wrapping-interface-for-dispmanx.patch \
>      file://0013-Implement-triple-buffering-for-wayland.patch \
>      file://0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch \
> +    file://0015-EGL-glplatform.h-define-EGL_CAST.patch \
>  "
>  S = "${WORKDIR}/git"
>
> --
> 2.7.4
>

