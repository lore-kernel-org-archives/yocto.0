Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BEA0E01388
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 12:24:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q7MJOQgI025322
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 22 Aug 2012 12:24:26 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Wed, 22 Aug 2012 12:24:26 -0700
Message-ID: <503531E4.8000506@windriver.com>
Date: Wed, 22 Aug 2012 15:24:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1345627689-23016-1-git-send-email-raj.khem@gmail.com>
In-Reply-To: <1345627689-23016-1-git-send-email-raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [linux-yocto-3.2][PATCH] arm: Fix linking errors with binutils 2.23
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
X-List-Received-Date: Wed, 22 Aug 2012 19:24:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-22 05:28 AM, Khem Raj wrote:
> We end up with linking errors on arm using latest binutils
> because we are linking asm generated objects which use -march=all
> generating different attributes into object and use some c objects
> e.g. misc.o which use different march therefore generating a
> different set of attributes into object. When linking is done
> the ld complains since it finds incompatible attributes and ends
> up with errors like
>
> error: DIV usage mismatch between arch/arm/boot/compressed/head.o and
> output
> error: DIV usage mismatch between arch/arm/boot/compressed/misc.o and
> output
> error: DIV usage mismatch between arch/arm/boot/compressed/decompress.o
> and output
> error: DIV usage mismatch between arch/arm/boot/compressed/lib1funcs.o
> and output
>
> This patch fixes it by providing correct march to assembly routines
> which than matches with output of ld.

Looks good to me. I'll queue it here with a few other fixes and do
a test build against my existing binutils.

I haven't looked yet, will 3.4+ need the same fix ?

Cheers,

Bruce

>
> Signed-off-by: Khem Raj<raj.khem@gmail.com>
> ---
>   arch/arm/boot/compressed/Makefile |    4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index 21f56ff..05d9cb3 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -5,7 +5,7 @@
>   #
>
>   OBJS		=
> -
> +plus_sec :=	$(call as-instr,.arch_extension sec,+sec)
>   # Ensure that MMCIF loader code appears early in the image
>   # to minimise that number of bocks that have to be read in
>   # order to load it.
> @@ -123,7 +123,7 @@ KBUILD_CFLAGS = $(subst -pg, , $(ORIG_CFLAGS))
>   endif
>
>   ccflags-y := -fpic -fno-builtin -I$(obj)
> -asflags-y := -Wa,-march=all
> +asflags-y := -Wa,-march=armv7-a$(plus_sec)
>
>   # Supply kernel BSS size to the decompressor via a linker symbol.
>   KBSS_SZ = $(shell size $(obj)/../../../../vmlinux | awk 'END{print $$3}')


