Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B39D5E0132F
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 07:04:43 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Apr 2012 07:04:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="131917164"
Received: from unknown (HELO envy.home) ([10.255.12.120])
	by azsmga001.ch.intel.com with ESMTP; 17 Apr 2012 07:04:41 -0700
Message-ID: <4F8D7857.1070508@linux.intel.com>
Date: Tue, 17 Apr 2012 07:04:07 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1334624662.git.dvhart@linux.intel.com>
	<1334650153.616.29.camel@ted>
In-Reply-To: <1334650153.616.29.camel@ted>
X-Enigmail-Version: 1.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [1.2] poky-tiny: Separate the libc features required for meta-toolchain
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
X-List-Received-Date: Tue, 17 Apr 2012 14:04:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04/17/2012 01:09 AM, Richard Purdie wrote:
> On Mon, 2012-04-16 at 18:06 -0700, Darren Hart wrote:
>> This addresses [YOCTO #2295], in which the meta-toolchain target would fail for
>> the poky-tiny DISTRO definition due to its reduced libc feature set. This is not
>> an optimal solution as it significantly increases the size of the C libraries
>> (by 461KB). However, by making the features easily removed, those looking for
>> truly tiny libc configurations can easily revert to the smaller set. Out of the
>> box, we want poky-tiny to be able to build meta-toolchain.
>>
>> In the future, we need to address WHY meta-toolchain cannot be built without
>> these features and look at how to reduce the impact of meta-toolchain on the
>> target eglibc build.
> 
> I had a thought about this:
> 
> diff --git a/meta/conf/distro/include/default-distrovars.inc b/meta/conf/distro/include/default-distrovars.inc
> index 16b3108..f770919 100644
> --- a/meta/conf/distro/include/default-distrovars.inc
> +++ b/meta/conf/distro/include/default-distrovars.inc
> @@ -10,12 +10,14 @@ LIMIT_BUILT_LOCALES ?= "POSIX en_US en_GB"
>  ENABLE_BINARY_LOCALE_GENERATION ?= "1"
>  LOCALE_UTF8_ONLY ?= "0"
>  
> -DISTRO_FEATURES_LIBC ?= "ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt \
> +DISTRO_FEATURES_LIBC_DEFAULT ?= "ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt \
>                                         libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse \
>                                         libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code \
>                                         libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc \
>                                         libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc \
>                                         libc-posix-wchar-io"
> +DISTRO_FEATURES_LIBC ?= "${DISTRO_FEATURES_LIBC_DEFAULT}"
> +DISTRO_FEATURES_LIBC_virtclass-nativesdk = "${DISTRO_FEATURES_LIBC_DEFAULT}"
>  DISTRO_FEATURES ?= "alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g x11 ${DISTRO_FEATURES_LIBC}"
>  
>  IMAGE_FEATURES ?= ""
> 
> Probably not something for release at this point but maybe after it...

Interesting.... I need to investigate the meta-toolchain build a bit
more. I didn't think it was just the nativesdk recipes that were failing.

--
Darren

> 
> Cheers,
> 
> Richard
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

