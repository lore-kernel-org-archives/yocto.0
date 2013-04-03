Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF95E01508
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 23:41:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Apr 2013 23:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,399,1363158000"; d="scan'208";a="288610599"
Received: from unknown (HELO helios.localnet) ([10.255.13.234])
	by orsmga001.jf.intel.com with ESMTP; 02 Apr 2013 23:41:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 03 Apr 2013 07:41:31 +0100
Message-ID: <1991749.pLqSkOTN3J@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <1364965911-17324-1-git-send-email-raj.khem@gmail.com>
References: <1364965911-17324-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-yocto][PATCH] poky.conf: Use weaker assignment for PREMIRROR
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
X-List-Received-Date: Wed, 03 Apr 2013 06:41:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 02 April 2013 22:11:50 Khem Raj wrote:
> This is to facilitate distros using poky as reference
> so that they can use ?= and provide an option for their
> users to override it if desired
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  meta-yocto/conf/distro/poky.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf
> b/meta-yocto/conf/distro/poky.conf index afe328b..963b3dd 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -44,7 +44,7 @@ TCLIBCAPPEND = ""
>  QEMU_TARGETS ?= "arm i386 mips mipsel ppc x86_64"
>  # Other QEMU_TARGETS "mips64 mips64el sh4"
> 
> -PREMIRRORS ?= "\
> +PREMIRRORS ??= "\
>  bzr://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
>  cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
>  git://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \

I'm not sure this is a path we should be going down; potentially we could end 
up having to use ??= for just about everything.

Wouldn't you be better off using your own separate distro config (perhaps 
copying poky.conf instead of "require"ing it) and then the user can just set 
it with "=" ?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

