Return-Path: <philippe.gislard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14B0FE00DF3; Thu,  1 Feb 2018 01:10:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (philippe.gislard[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CB31E00D41
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 01:10:03 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id g1so4304660wmg.2
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 01:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=drVjXZOaG4jEQfLD2N283ZtwQlKKsEHb3HAQcZlrV/8=;
	b=okmo2XpizjhhHAnik8cduG9UKstdoOIJf6BdCAdbs5cNrV+IJOO+opb/ySRH292j5W
	UVg+ZfVmJwJ/h0oQQ29NfymUF7Bym3PgZdSB7uzw81kdN5T+/V4vUE/eAOjg4TjJvbzM
	IIwouojIAp2NX7qF8yFlRVSsONv9u9NcqJD75Ncc4Odywrd3qfQVm53sHIhFSIugzuwz
	yCVYtJkkLOp/1hD2hQmmrdShAJhzVZ1lnTgSkDSaX5svAsLQU/A6cVmyp9ixRsMF2wOH
	xnAKgn7Z/4Tnf3i0RWetMPzrf/hc9forJdEXKfpg8RlPpSy5XMIJeqDn0WeJdS4QA7Sj
	DyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=drVjXZOaG4jEQfLD2N283ZtwQlKKsEHb3HAQcZlrV/8=;
	b=TnsehY2qpytBT2ty0GJZp4upUcF1Ay57FIJgAD3hUWY86j0FL6ItOCzDXDBrPVqjP/
	3zUe0MZMzpTL4w5POE+5D2uMyR65H1/VLN+UY/zRMn5s5E8Mv2FvOHr/wN4H4l8G0RX2
	PXDJ8rap4AikQ0Bkyu01c3RbkjEn2YiTKwdp3U4s46y6YfXSftQhQl+4gu+koIiYslyw
	eM3puX4avnKB/n9lbXQl2jy74Kx+NOZmDDGuJuxkLZnUnI2mtbcEMxK76hvCpoRBdjCy
	cauPt4N7xd5RrC9y5R9edeHvF+B94jX41y3PFrQHXTNfjFz0W0ZX39EadofZUvxDDQpN
	MLpQ==
X-Gm-Message-State: AKwxyte+TVXe7aeAwwZLSN9av/py/qrB0DPq7u1AN0Vs37Cp4t/hNGUh
	7xIOPBMjah2Jxr2eV50Aki1DTPgMvhrZQjRwXmlEDW1M
X-Google-Smtp-Source: AH8x227m941dpmpw44GlcenwCo0L6ztL/m3+CAvQ3WRQW3+uv89oSRiqUr3Oo6cav0JhY2W8cRVuxXU28/NeGBBTkeE=
X-Received: by 10.28.29.81 with SMTP id d78mr28050487wmd.65.1517476202116;
	Thu, 01 Feb 2018 01:10:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.168.37 with HTTP; Thu, 1 Feb 2018 01:09:41 -0800 (PST)
In-Reply-To: <000901d39b37$40706290$c15127b0$@co.kr>
References: <000901d39b37$40706290$c15127b0$@co.kr>
From: philippe gislard <philippe.gislard@gmail.com>
Date: Thu, 1 Feb 2018 10:09:41 +0100
Message-ID: <CAM0bAiXYBuso2ffCJdwhME5HdYFY_0LW6sU_QMue1JaP-vrf4Q@mail.gmail.com>
To: dhkoo <dhkoo@m2i.co.kr>
Cc: yocto@yoctoproject.org
Subject: Re: error: impossible constraint in 'asm'
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
X-List-Received-Date: Thu, 01 Feb 2018 09:10:06 -0000
Content-Type: text/plain; charset="UTF-8"

2018-02-01 9:32 GMT+01:00 dhkoo <dhkoo@m2i.co.kr>:
> Hi.
>
>
>
> Recently, I'm work on mplayer that media player for my custom system.
>
> My Kernel version is 3.8, and mplayer version is 1.3.0.
>
>
>
> And when I perform bitbake, there's error on do_compile process. The
> messages says like below.
>
> [...]
>
> | arm-poky-linux-gnueabi-gcc  -march=armv7-a -marm -mfpu=vfp
> -mfloat-abi=hard
> --sysroot=/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mplayer/1.3.0-r0/recipe-sysroot
> -MMD -MP -Wundef  -Wstrict-prototypes -Wmissing-prototypes
> -Wdisabled-optimization -Wno-pointer-sign -Wdeclaration-after-statement
> -std=gnu99  -D_POSIX_C_SOURCE=200112 -D_XOPEN_SOURCE=600 -D_ISOC99_SOURCE
> -I. -Iffmpeg  -fexpensive-optimizations -fomit-frame-pointer
> -frename-registers -O4 -ffast-math -fno-tree-vectorize
> -fno-asynchronous-unwind-tables -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
> -D_LARGEFILE64_SOURCE -mcpu=cortex-a9 -mfpu=neon   -D_REENTRANT -DZLIB_CONST
> -c -o m_config.o m_config.c
>
> | m_config.c: In function 'm_config_add_option':
>
> | m_config.c:326:14: warning: assignment discards 'const' qualifier from
> pointer target type [-Wdiscarded-qualifiers]
>
> |      co->name = arg->name;
>
> |               ^
>
> | cpudetect.c: In function 'do_cpuid':
>
> | cpudetect.c:258:5: error: impossible constraint in 'asm'
>
> |      __asm__ volatile
>
> |      ^~~~~~~
>
> [...]
>

Hi dhkoo,

I'm not sure, but the cpudetect.c file from the official website
should be preprocessed so that all it's content is not compile when
using ARCH_ARM.
All the code from the file is included in a
#if ARCH_X86
preprocessor statement

Regarding the line 258:
It's using embedded assembly code which I understand is specific for
the X86 architecture.

Hope this helps.


-- 
Philippe GISLARD

