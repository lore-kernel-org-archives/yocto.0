Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEAE0E00AFC
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 08:32:22 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Feb 2012 08:32:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121305007"
Received: from unknown (HELO envy.home) ([10.255.15.123])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2012 08:32:22 -0800
Message-ID: <4F490CF3.1040001@linux.intel.com>
Date: Sat, 25 Feb 2012 08:31:47 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <a371d1ec41d49cc346eaca4b28ee854a145c1a73.1330187370.git.dvhart@linux.intel.com>
In-Reply-To: <a371d1ec41d49cc346eaca4b28ee854a145c1a73.1330187370.git.dvhart@linux.intel.com>
X-Enigmail-Version: 1.3.5
Subject: Re: [PATCH] poky-tiny: Assume pkgconfig is provided
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
X-List-Received-Date: Sat, 25 Feb 2012 16:32:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Bah, forgot the bug tag:

Fixes [YOCTO #2030]

On 02/25/2012 08:29 AM, Darren Hart wrote:
> -dev packages require pkgconfig, but it pulls in glib->dbus->shadow
> which breaks with tiny's minimal libc.
> 
> -dev packages are not currently supported on poky-tiny.
> 
> Proposed-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index 411347a..6fa4c90 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -55,6 +55,11 @@ ENABLE_WIDEC="false"
>  # eglibc->bash->gettext->libc-posix-clang-wchar dependency.
>  USE_NLS="no"
>  
> +# -dev packages require pkgconfig, but it pulls in glib->dbus->shadow
> +# which breaks with tiny's minimal libc.
> +# -dev packages are not currently supported on poky-tiny.
> +ASSUME_PROVIDED += "pkgconfig$"
> +
>  # Reconfigure eglibc for a smaller installation
>  # Comment out any of the lines below to disable them in the build
>  DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

