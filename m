Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CCD3E0032E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 08:48:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Nov 2012 08:48:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,251,1352102400"; d="scan'208";a="246948075"
Received: from unknown (HELO envy.home) ([10.255.12.66])
	by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2012 08:48:19 -0800
Message-ID: <50A3CB53.5040101@linux.intel.com>
Date: Wed, 14 Nov 2012 08:48:19 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121029 Thunderbird/16.0.2
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <50A2EFC0.3090908@am.sony.com>
In-Reply-To: <50A2EFC0.3090908@am.sony.com>
X-Enigmail-Version: 1.4.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem compiling diffutils on poky-tiny in danny
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
X-List-Received-Date: Wed, 14 Nov 2012 16:48:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/13/2012 05:11 PM, Tim Bird wrote:
> Hi all,
> 
> I'm using DISTRO=poky-tiny and trying to build:
>  $ bitbake core-image-minimal-initramfs
> 
> I get the following error trying to compile diffutils:
> 
> ...
> i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o wcwidth.o wcwidth.c
> In file included from wcwidth.c:23:0:
> ./wctype.h:448:1: error: static declaration of 'iswalnum' follows non-static declaration
> ./wctype.h:460:1: error: static declaration of 'iswalpha' follows non-static declaration
> ...


Is there an option to build diffutils without wide character support?
This is something tiny does away with and frequent point of failure
when trying to build additional packages with it.


> See the attached compile log for details.
> 
> Has anyone done this recently?  Is this one of the supported images for
> this distro (poky-tiny)?


I don't build that target as I use the cpio.gz from core-image-minimal
as an initial ramdisk. Is there a particular reason you want to build
"core-image-minimal-initramfs" specifically?


> 
> Has anyone seen this type of error before, or can provide some
> hints of what to check or adjust to fix this?

Yup, it's wide characters being required by diffutils and being excluded
by the poky-tiny DISTRO_FEATURES_LIBC assignment. If supported by
diffutils, we might be able to test ENABLE_WIDEC in diffutils and
configure accordingly (see the ncurses recipes for an example).

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

