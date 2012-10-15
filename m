Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63660E00293
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 13:27:46 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id e21so6848042vbm.35
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 13:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=D9TwcfoGNYIXVGzpvsga5YzbWydE6KDW6np6CHx4HT4=;
	b=XuSee+xS5Nes82bL6YfZ8k9xE/99nnoolLNUE3QC2knIsVnEPK3DLfozOlwSWASJAb
	ETWU+Sh5SXXz9QkKMlmKxlY9MfzMbUiUy91QbMnIODZU8H0f43Ti6Vvz6pM//yJYo3l5
	qlx7QQGCCdOBISFJhlWTJ9HWr7Xbij1cjPjQsvg7G1sVJ1sNu3Y+xTDAQNH3wedocMSR
	08U5Mb3FhkahKQvSkgXeYNDp+5vzAFL7yppg53R6WstITSXDS/4yRU1PGCPyHEjq9c+i
	PKwYUKqZWW4NjlOlpmcDsWCsLSlrItTHT9G3ArWq11+EYFB48hVhQiQC14qwoRCmu46r
	g5uQ==
MIME-Version: 1.0
Received: by 10.220.148.134 with SMTP id p6mr7379226vcv.3.1350332863580; Mon,
	15 Oct 2012 13:27:43 -0700 (PDT)
Received: by 10.58.246.100 with HTTP; Mon, 15 Oct 2012 13:27:43 -0700 (PDT)
In-Reply-To: <7618B2C1-D197-406D-B563-30E837399301@gmail.com>
References: <7618B2C1-D197-406D-B563-30E837399301@gmail.com>
Date: Mon, 15 Oct 2012 16:27:43 -0400
Message-ID: <CADkTA4PZ+gp90tUHaGT4LUxCftBgxmF1U_Bex0AL6YDw7KzEww@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-zynq-balister: Build output
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
X-List-Received-Date: Mon, 15 Oct 2012 20:27:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Oct 13, 2012 at 1:42 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Philip,
>   I made the following changes to your repo, since it was giving a warning
> about apps-console-core being no longer valid, and yocto replacing it with
> splash.
>
> diff --git a/conf/machine/zynq-zc702.conf b/conf/machine/zynq-zc702.conf
> index 74a1271..d25093f 100644
> --- a/conf/machine/zynq-zc702.conf
> +++ b/conf/machine/zynq-zc702.conf
> @@ -1,3 +1,8 @@
> +#@TYPE: Machine
> +#@Name: Xilinx ZC702 FPGA Development Platform for the Zynq-7020 processor.
> +#@DESCRIPTION: Machine configuration for the Xilinx ZC702 FPGA Development
> Platform.
> +
> +#tune for the Zynq 7020 ARM Cortex A-9 CPU
>  include conf/machine/include/tune-cortexa9.inc
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-zynq"
> diff --git a/recipes-core/images/zc702-proto-image.bb
> b/recipes-core/images/zc702-proto-image.bb
> index a6e4b11..02a6af2 100644
> --- a/recipes-core/images/zc702-proto-image.bb
> +++ b/recipes-core/images/zc702-proto-image.bb
> @@ -1,14 +1,12 @@
> -DESCRIPTION = "A foundational basic image without support for X that can be
> \
> -reasonably used for customization."
> +DESCRIPTION = "A console-only image with more full-featured Linux system \
> +functionality installed."
>
> -IMAGE_FEATURES += "apps-console-core ssh-server-openssh tools-sdk \
> +IMAGE_FEATURES += "splash ssh-server-openssh tools-sdk \
>                     tools-debug debug-tweaks"
>
>  IMAGE_INSTALL = "\
> -    task-core-boot \
> -    task-core-basic \
> +    packagegroup-core-boot \
> +    packagegroup-core-basic \
>      "
>
> -#    ${CORE_IMAGE_BASE_INSTALL}
> -
>  inherit core-image
>
>
> and here is the build output:
>
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "zynq-zc702"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20121013"
> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "master:0260bb5c6978839c068007fcff2f704937805faf"
> toolchain-layer   = "master:9e701bb060325bc47509d4874bd695f039191ea8"
> meta-zynq-balister = "master:61ee369f84252acaaa4a4500f08450df2648247d"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL
> http://kernel.org/pub/linux/kernel/people/jsipek/guilt/guilt-0.33.tar.gz,
> attempting MIRRORS if available
> NOTE: validating kernel configuration
> cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or directory
> cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or directory

Random comment. This warning is cleaned up in the tools which will go to
1.4 and can be backported to 1.3 .. it was just noticed to late to get into
1.3 and wasn't fatal, so I elected to ignore it temporarily.

Cheers,

Bruce

> ** NOTE: There were 0 required options requested that do not
>          have a corresponding value present in the final ".config" file.
>          This is a violation of the policy defined by the higher level
> config
> The full list can be found in your kernel src dir at:
> meta/cfg/standard/zynq-zc702/missing_required.cfg
> NOTE: Tasks Summary: Attempted 1465 tasks of which 229 didn't need to be
> rerun and all succeeded.
>
> Summary: There was 1 WARNING message shown.
>
> real    33m58.594s
> user    97m0.724s
> sys    12m50.976s
>
>
> It gives a config policy warning, haven't seen this before.
>
> I also noticed that by default, u-boot-zynq doesn't get compiled, but it's
> trivial enough to include in the zynq-zc702.conf file.
>
> Best regards,
>
> Elvis Dowson
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

