Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 758EEE0044A
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 15:36:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3GMahdN000167
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 15:36:43 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 16 Apr 2012 15:36:36 -0700
Message-ID: <4F8C9EF3.3040408@windriver.com>
Date: Mon, 16 Apr 2012 17:36:35 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <cover.1334614375.git.nitin.a.kamble@intel.com>
	<3137f47d1f99f6ea0b8b98839d0da72686a184aa.1334614375.git.nitin.a.kamble@intel.com>
In-Reply-To: <3137f47d1f99f6ea0b8b98839d0da72686a184aa.1334614375.git.nitin.a.kamble@intel.com>
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
X-List-Received-Date: Mon, 16 Apr 2012 22:36:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/16/12 5:14 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
> eglibc needs libc-posix-regexp-glibc&  libc-libm-big enabled in it's
> configuration to avoid following eglibc build issue.
>
> ...
> | In file included from xregex.c:634:0:
> | xregex.c: In function 'byte_regex_compile':
> | xregex.c:3395:8: error: too few arguments to function 'findidx'
> | ../locale/weight.h:23:1: note: declared here
> ...

If glibc is failing to build because of the above, you need to report the 
failure to the eglibc mailing list.

eglibc is expected to build with those items disabled.

If it's another package, then it would be nice to know which item it is, as 
there may be a workaround.. (coreutils for instance has the ability to provide 
an internal regex function...)

--Mark

> This fixes bug [YOCTO #2295]
>
> Signed-off-by: Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>   meta-yocto/conf/distro/poky-tiny.conf |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index 58d64ec..626b2d0 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -62,7 +62,7 @@ ASSUME_PROVIDED += "pkgconfig$"
>
>   # Reconfigure eglibc for a smaller installation
>   # Comment out any of the lines below to disable them in the build
> -DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
> +DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-libm-big libc-crypt"
>   # for gettext
>   DISTRO_FEATURES_LIBC_TINY += "libc-posix-clang-wchar"
>   # for m4
> @@ -71,7 +71,7 @@ DISTRO_FEATURES_LIBC_TINY += "libc-spawn libc-locale-code"
>   DISTRO_FEATURES_LIBC_TINY += "libc-ftraverse"
>   # Required for "who"
>   DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
> -DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
> +DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp libc-posix-regexp-glibc"
>   DISTRO_FEATURES_LIBC_NET = "libc-inet libc-nis"
>
>   DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \


