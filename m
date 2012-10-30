Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACFE8E013D9
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 05:29:10 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id s4so169981lbc.35
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 05:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=1YE2CqGTfx/t6GyTZbxB/yZ7riHFwq2rpzOzCzrxVMw=;
	b=dtKp0HaLu1F8DTSv533WN+v54YgnxOK2PUnctImxoBlUCecXQbpGwObrNGk+sk8WYX
	UOIi9ARFyDDAFAM4bBa+3bC7dmmhNJZjq2xVGqA3pIp54orHeelp0k4K0gSJ70yYJ1X1
	5ktWbWL5GPCiWenLTX3s5kti5ZF8OXLu7aaV3thMjjuw45aoPMvnOapwxu1EcCXHbajU
	IjQ2lxQBwFOJPzqvU0QPFgww6Q1O8GG70A5ggYl3yiisjo17g8kFypnKThIkFy5WJ390
	Oz0ytF0OkRadezQ6zu8kB7Htuv7fdU7s3Z5Sd9eNpIun1TCn4wm1dFiy2RGfwAEbMe/c
	pH7Q==
MIME-Version: 1.0
Received: by 10.152.108.42 with SMTP id hh10mr29958181lab.4.1351600149361;
	Tue, 30 Oct 2012 05:29:09 -0700 (PDT)
Received: by 10.114.17.164 with HTTP; Tue, 30 Oct 2012 05:29:09 -0700 (PDT)
In-Reply-To: <1351582698-28887-1-git-send-email-b40290@freescale.com>
References: <1351582698-28887-1-git-send-email-b40290@freescale.com>
Date: Tue, 30 Oct 2012 08:29:09 -0400
Message-ID: <CADkTA4Pg+5B=sXBijpK4FvW3KSWSzMsOba7Uvv=DH3KOfgPB9A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: b40290@freescale.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-fsl-ppc master] perf_3.4.bbappend: task oe_runmake: failed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Oct 2012 12:29:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Oct 30, 2012 at 3:38 AM,  <b40290@freescale.com> wrote:
> From: Chunrong Guo <b40290@freescale.com>
>
>       fix perf ERROR: oe_runmake failed
>
> Signed-off-by: Chunrong Guo <b40290@freescale.com>
> ---
>  .../perf/files/define-attribute-const.patch        |   13 +++++++++++++
>  recipes-append/perf/perf_3.4.bbappend              |    7 +++++++
>  2 files changed, 20 insertions(+)
>  create mode 100644 recipes-append/perf/files/define-attribute-const.patch
>  create mode 100644 recipes-append/perf/perf_3.4.bbappend
>

Out of curiosity .. why not patch the FSL kernel itself ? That's where the
source for perf comes from, and that will ensure any perf recipe will build
when that kernel source is used. We've been fixing perf issues within the
linux-yocto repo for some time, that way the changes are matched to the
kernel that has the problem, not the layer + toolchain which can have a
changing kernel underneath it.

Just a random question.

Cheers,

Bruce

> diff --git a/recipes-append/perf/files/define-attribute-const.patch b/recipes-append/perf/files/define-attribute-const.patch
> new file mode 100644
> index 0000000..00c7575
> --- /dev/null
> +++ b/recipes-append/perf/files/define-attribute-const.patch
> @@ -0,0 +1,13 @@
> +--- linux/tools/perf/util/include/linux/compiler.h     2012-10-25 02:39:36.071441794 -0500
> ++++ git/tools/perf/util/include/linux/compiler.h       2012-10-28 21:53:49.351638193 -0500
> +@@ -5,8 +5,9 @@
> + #define __always_inline       inline
> + #endif
> + #define __user
> ++#ifndef __attribute_const__
> + #define __attribute_const__
> +-
> ++#endif
> + #define __used                __attribute__((__unused__))
> +
> + #endif
> diff --git a/recipes-append/perf/perf_3.4.bbappend b/recipes-append/perf/perf_3.4.bbappend
> new file mode 100644
> index 0000000..a5ff52b
> --- /dev/null
> +++ b/recipes-append/perf/perf_3.4.bbappend
> @@ -0,0 +1,7 @@
> +FILESEXTRAPATHS_prepend_fsl := "${THISDIR}/files:"
> +
> +SRC_URI_append_fsl += "file://define-attribute-const.patch\
> +                        "
> +
> +PR_fsl .= "+${DISTRO}"
> +
> --
> 1.7.9.7
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

