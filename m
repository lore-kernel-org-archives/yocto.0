Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76C39E0045D
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 13:01:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2012 13:01:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="210217016"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by orsmga001.jf.intel.com with ESMTP; 24 Oct 2012 13:01:41 -0700
Message-ID: <1351108901.27553.44.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 24 Oct 2012 15:01:41 -0500
In-Reply-To: <7c04daa734711e09a830b8585c29b36a875d88c3.1351053026.git.dvhart@linux.intel.com>
References: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
	<7c04daa734711e09a830b8585c29b36a875d88c3.1351053026.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/3] fri2: README: Correct typographical and wording errors
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
X-List-Received-Date: Wed, 24 Oct 2012 20:01:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-23 at 21:31 -0700, Darren Hart wrote:
> Correct minor issues reported by Steve S.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> Reported-by: Steve Sakoman <steve@sakoman.com>

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> ---
>  meta-fri2/README |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/meta-fri2/README b/meta-fri2/README
> index a866174..05b7257 100644
> --- a/meta-fri2/README
> +++ b/meta-fri2/README
> @@ -154,8 +154,8 @@ example:
>  # eject /dev/sdf
>  
>  This should give you a bootable USB flash device.  Insert the device
> -into a bootable USB socket on the target, and power on.  This should
> -result in a system booted to the Sato graphical desktop.
> +into one of the USB host ports on the target, and power on.  This
> +should result in a system booted to the Sato graphical desktop.
>  
>  If you want a terminal, use the arrows at the top of the UI to move to
>  different pages of available applications, one of which is named
> @@ -242,7 +242,7 @@ e. GPIO
>  -------
>  The FRI2 has two I2C PCA555x GPIO devices used for internal control
>  signals. These have not been exposed in the current release of the
> -BSP, but may be in the future. Regardless, these do would not provide
> +BSP, but may be in the future. Regardless, these would not provide
>  general purpose IO with which to read or drive additional signals.
>  
>  f. MMC



