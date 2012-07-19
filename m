Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84F26E00288
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 08:29:11 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 08:28:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="124382917"
Received: from unknown (HELO [10.255.12.184]) ([10.255.12.184])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Jul 2012 08:28:54 -0700
Message-ID: <1342711727.2338.244.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Thu, 19 Jul 2012 10:28:47 -0500
In-Reply-To: <a17ec412dccf6b7b68bcf9865d78e06822b1dfab.1342622602.git.nitin.a.kamble@intel.com>
References: <cover.1342622602.git.nitin.a.kamble@intel.com>
	<a17ec412dccf6b7b68bcf9865d78e06822b1dfab.1342622602.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/7] ia32-base.inc: also take -dev package of emgd
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
X-List-Received-Date: Thu, 19 Jul 2012 15:29:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-07-18 at 07:49 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> emgd-driver-bin recipe provides emgd-driver-bin, emgd-driver-bin-dev
> & emgd-driver-bin-dbg packages. For emgd driver to work it also need
> library files from emgd-driver-bin-dev package. This change makes sure
> this -dev package is also added for emgd driver.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  conf/machine/include/ia32-base.inc |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
> index 99ac352..7d9413a 100644
> --- a/conf/machine/include/ia32-base.inc
> +++ b/conf/machine/include/ia32-base.inc
> @@ -57,6 +57,7 @@ XSERVER_IA32_I965 = "xf86-video-intel \
>             "
>  
>  XSERVER_IA32_EMGD = "emgd-driver-bin \
> +                     emgd-driver-bin-dev \
>             "
>  

I think this is the same problem as 1.10 - you shouldn't have to pull in
the -dev package to get those two .so files, which are in the
emgd-bin-2443-1.10.i586.rpm and not the -dev rpm:

/usr/lib/dri/emgd_dri.so
/usr/lib/dri/emgd_drv_video.so
/usr/lib/libEGL.so.1.5.15.3226
/usr/lib/libEMGD2d.so.1.5.15.3226
/usr/lib/libEMGDOGL.so.1.5.15.3226
/usr/lib/libEMGDScopeServices.so.1.5.15.3226
/usr/lib/libEMGDegl.so.1.5.15.3226
/usr/lib/libGLES_CM.so.1.5.15.3226
/usr/lib/libGLESv2.so.1.5.15.3226
/usr/lib/libOpenVG.so.1.5.15.3226
/usr/lib/libOpenVGU.so.1.5.15.3226
/usr/lib/libPVRScopeServices.so
/usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
/usr/lib/libemgdglslcompiler.so.1.5.15.3226
/usr/lib/libemgdsrv_init.so.1.5.15.3226
/usr/lib/libemgdsrv_um.so.1.5.15.3226
/usr/lib/xorg/modules/drivers/emgd_drv.so
/usr/share/doc/emgd/emgd-cb.conf
/usr/share/doc/emgd/emgd-rv.conf
/usr/share/doc/emgd/license.txt
/usr/share/doc/emgd/readme.txt
/usr/share/man/man4/emgd.4.gz

So those two .so files are now going into the -dev package when before
they weren't.  I think the package reordering changes are what broke the
current recipe:

commit f68cbf56d8f2a45ce44a59d0411cdda8ec7e2c36
Author: Saul Wold <sgw@linux.intel.com>
Date:   Tue Jun 5 04:52:21 2012 -0700

    bitbake.conf: reorder PACKAGES list
    
    This change re-orders the PACKAGES list to move PN to the end of the
list
    this will ensure that base package gets the final bits since the
packaging
    is greedy. We can then have -dev and other package get bits first.

And probably some similar fix to the bunch of 'clean up FILE after
PACKAGE reorder' commits would get things back to how they were.  Should
I file a bug for this?

Tom
 

>  XSERVER_IA32_VESA = "xf86-video-vesa"



