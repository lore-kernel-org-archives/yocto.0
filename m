Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A78E015B1
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 12:14:55 -0700 (PDT)
Received: by mail-la0-f44.google.com with SMTP id eo20so4760704lab.17
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 12:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=mTEuN8IdtqJPLCOUC6d6p3ER3RsmiH1BHi8ESOZMOGU=;
	b=GWObzxqUlab9ayNkFi1EJxBHzZmoe2qV1n4YxdbGzODffKHY025h+vnONwbs84GQbG
	jBP6yxugEmBoZZylSFJ5xmLf8Wf6k6pPI6ULMlHiSufXxiH9NnoiVtCq2PX1C+gZrWO3
	/Hg8Dxeyr1hkFb6OPKn1P4CqAFv1QMyW5b+RaHFLLAIPlQdQXSYJ9+9CmfiP/H65SExp
	gKGZpHIgtUASawwRzkAge411nb8MJOn45HrjtO5TZht4XfEorULDcBbNWw9j5XOWs/AJ
	RBFE2Hafm/IVGROhetVlrT1sgW20aOH1bOY1WRcDsGOvZzO+MhUyVpq8zBPztYBNBIn5
	yQng==
X-Received: by 10.112.181.100 with SMTP id dv4mr2838274lbc.34.1379445294402;
	Tue, 17 Sep 2013 12:14:54 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPSA id k6sm15194867lae.9.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 17 Sep 2013 12:14:53 -0700 (PDT)
Message-ID: <5238AA2A.8020302@gmail.com>
Date: Tue, 17 Sep 2013 21:14:50 +0200
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFyqS9oT-y6p7=xs22iYNvs0bv1J7AKTA5Wrg_piStiWF+z9cg@mail.gmail.com>
In-Reply-To: <CAFyqS9oT-y6p7=xs22iYNvs0bv1J7AKTA5Wrg_piStiWF+z9cg@mail.gmail.com>
Subject: Re: Problems building util-linux when wide character support is disabled in distro
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
X-List-Received-Date: Tue, 17 Sep 2013 19:14:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

On 2013-09-17 5:09, Hans Beckérus wrote:
> Hi. We are having som problems building our rootfs now that our custom
> distro (based on poky-tiny) no longer includes wide character support
> in libc.
> Here is an example of the errors we get:
>
> | arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-gcc
> -march=armv7-a -mthumb-interwork -mfloat-abi=softfp -mtune=cortex-a9
> --sysroot=/home/qhanbec/poky/build/tmp/sysroots/zynq-zc706 -std=gnu99
> -fsigned-char -fno-common -Wall -Werror=sequence-point -Wextra
> -Wmissing-declarations -Wmissing-parameter-type -Wmissing-prototypes
> -Wno-missing-field-initializers -Wredundant-decls -Wsign-compare
> -Wtype-limits -Wuninitialized -Wunused-but-set-parameter
> -Wunused-but-set-variable -Wunused-parameter -Wunused-result
> -Wunused-variable -O2 -pipe -g -feliminate-unused-debug-types -Wl,-O1
> -Wl,--hash-style=gnu -Wl,--as-needed -o ul text-utils/ul.o  -ltinfo
> | text-utils/rev.o: In function `main':
> | /home/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:139:
> undefined reference to `fgetws'
> | /home/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:151:
> undefined reference to `fgetws'
> | /home//poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:154:
> undefined reference to `wcslen'
> | /home/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:160:
> undefined reference to `putwchar'
> | /home/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:162:
> undefined reference to `putwchar'
> | collect2: error: ld returned 1 exit status
>
> The problem is that util-linux still thinks we have wide character
> support (from configure.ac):
>
> AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
> #include <wchar.h>
> #include <wctype.h>
> #include <stdio.h>
> ]], [[
>   wchar_t wc;
>   wint_t w;
>   w = fgetwc(stdin);
>   if (w == WEOF) exit(1);
>   wc = w;
>   fputwc(wc,stdout);
> ]])],
> [AC_DEFINE(HAVE_WIDECHAR,1,Do we have wide character support?)
> ])
>
> Since no linking is performed due to x-compilation, all that this does
> is basically checking if wchar.h exists or not.
Actually, I think what is missing here is a AC_TRY_LINK.
But it does not seem to matter much. There are also numerous of places in the util-linux code that are
completely missing out on checks if wide character support is available or not.
The way forward as I can see right now is to revert and put back the wide character support in libc.
Unless I can figure out why util-linux is actually being built in the first place? What can cause dependencies to this
package? It is not part of our IMAGE_FEATURES directly, nor indirectly and is not installed in our rootfs.
But something requires it. Any hints on how to trace this back?
 
> And that is also were the problem is. Even if we have disabled wide
> character support in eglibc, the wchar.h header files is still copied
> to our sysroot!?
> Is that really how it should be when DISTRO_FEATURES_LIBC does not
> include 'libc-posix-clang-wchar libc-posix-wchar-io'?
> Here is our DISTRO_FEATURES (as reported by bitbake -e) and build environment:
>
> DISTRO_FEATURES="ipv4 usbhost usbgadget ${DISTRO_FEATURES_WIFI}
> libc-libm libc-crypt libc-utmp libc-getlogin libc-posix-regexp
> libc-inet libc-nis   sysvinit largefile nfs"
>
> Build Configuration:
> BB_VERSION        = "1.19.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "SUSE-LINUX-11"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zynq-zc706"
> DISTRO            = "poky-chris"
> DISTRO_VERSION    = "1.4+snapshot-20130917"
> TUNE_FEATURES     = "armv7a vfp cortexa9"
> TARGET_FPU        = "vfp"
> meta
> meta-yocto
> meta-yocto-bsp    = "master:3b38c898a4647c6a639d0dbd416b0bbacbf278f5"
> meta-oe           = "master:7c292ce28756824b1fa377d516aedd979fa41f19"
>
> Any ideas how what might be wrong here?
>
> Thanks.
> Hans


