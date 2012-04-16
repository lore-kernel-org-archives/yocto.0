Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 834EBE0030B
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 15:42:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Apr 2012 15:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="133220540"
Received: from schen9-mobl2.amr.corp.intel.com (HELO envy.home)
	([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 16 Apr 2012 15:42:54 -0700
Message-ID: <4F8CA04C.8090506@linux.intel.com>
Date: Mon, 16 Apr 2012 15:42:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1334614375.git.nitin.a.kamble@intel.com>
	<3137f47d1f99f6ea0b8b98839d0da72686a184aa.1334614375.git.nitin.a.kamble@intel.com>
In-Reply-To: <3137f47d1f99f6ea0b8b98839d0da72686a184aa.1334614375.git.nitin.a.kamble@intel.com>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] poky-tiny: fix eglibc configuration
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
X-List-Received-Date: Mon, 16 Apr 2012 22:42:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/16/2012 03:23 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> eglibc needs libc-posix-regexp-glibc & libc-libm-big enabled in it's
> configuration to avoid following eglibc build issue.
> 
> ...
> | In file included from xregex.c:634:0:
> | xregex.c: In function 'byte_regex_compile':
> | xregex.c:3395:8: error: too few arguments to function 'findidx'
> | ../locale/weight.h:23:1: note: declared here
> ...
> 
> This fixes bug [YOCTO #2295]
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index 58d64ec..626b2d0 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -62,7 +62,7 @@ ASSUME_PROVIDED += "pkgconfig$"
>  
>  # Reconfigure eglibc for a smaller installation
>  # Comment out any of the lines below to disable them in the build
> -DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
> +DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-libm-big libc-crypt"
>  # for gettext
>  DISTRO_FEATURES_LIBC_TINY += "libc-posix-clang-wchar"
>  # for m4
> @@ -71,7 +71,7 @@ DISTRO_FEATURES_LIBC_TINY += "libc-spawn libc-locale-code"
>  DISTRO_FEATURES_LIBC_TINY += "libc-ftraverse"
>  # Required for "who"
>  DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
> -DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
> +DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp libc-posix-regexp-glibc"
>  DISTRO_FEATURES_LIBC_NET = "libc-inet libc-nis"
>  
>  DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \

I have a patch that makes it clear which features are added for the
toolchain. This will make it easier to reduce in the future as well.
I'll test with the libm-big added to that and report on size increase
and send that patch for inclusion.

Nitin, thank you for identifying the missing lib. I would prefer we not
merge this patch as is. It will only collide with my cleanup patch. I
might as well integrate it into the cleanup patch and send it out as
one. Will have it tested and sent out as soon as I can get a few builds
to complete.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

