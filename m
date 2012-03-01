Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B19E1E0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 14:45:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 14:45:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116712903"
Received: from unknown (HELO envy.home) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 14:45:55 -0800
Message-ID: <4F4FFBF7.3020208@linux.intel.com>
Date: Thu, 01 Mar 2012 14:45:11 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F4FF77D.9060607@mentor.com>
In-Reply-To: <4F4FF77D.9060607@mentor.com>
X-Enigmail-Version: 1.3.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] include usbinit package with usbgadget feature
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
X-List-Received-Date: Thu, 01 Mar 2012 22:45:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/01/2012 02:26 PM, Hollis Blanchard wrote:
> The g_ether kernel module, in the kernel-module-g-ether package, allows 
> targets to use a USB connection as a network interface. However, that's 
> not useful until the module is loaded.
> 
> The usbinit package provides the /etc/init.d/usb-gether script to load 
> the g_ether module at boot, so it should be included along with 
> kernel-module-g-ether.

So if the g-ether kernel module is built-in to the kernel, the
kernel-module-g-ether will not be installed (as it's RRECOMMENDS). The
usbinit package still will be (unless for some reason it can't be built
for the target).

I assume this doesn't pose a problem?

This does mean usbinit would be installed when it isn't strictly
necessary - but that's better than not installing it if it's required.
Looks good to me.

--
Darren



> 
> Tested with core-image-base on beagleboard.
> 
> Signed-off-by: Hollis Blanchard <hollis_blanchard@mentor.com>
> ---
> 
> diff --git a/meta/recipes-core/tasks/task-base.bb b/meta/recipes-core/tasks/task-base.bb
> index 2032432..fda0384 100644
> --- a/meta/recipes-core/tasks/task-base.bb
> +++ b/meta/recipes-core/tasks/task-base.bb
> @@ -2,7 +2,7 @@ DESCRIPTION = "Merge machine and distro options to create a basic machine task/p
>   LICENSE = "MIT"
>   LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> -PR = "r73"
> +PR = "r74"
> 
>   inherit task
> 
> @@ -248,7 +248,8 @@ RRECOMMENDS_task-base-usbgadget = "\
>       kernel-module-gadgetfs \
>       kernel-module-g-file-storage \
>       kernel-module-g-serial \
> -    kernel-module-g-ether"
> +    kernel-module-g-ether \
> +    usbinit"
> 
>   RDEPENDS_task-base-usbhost = "\
>       usbutils "
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

