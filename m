Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5045E0030D
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 12:39:40 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Dec 2011 12:39:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="87034744"
Received: from unknown (HELO [10.255.15.166]) ([10.255.15.166])
	by orsmga001.jf.intel.com with ESMTP; 15 Dec 2011 12:39:39 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jeffrey Moore <jeff@kokofitclub.com>
In-Reply-To: <4C5013F8-82E9-4461-A96F-37B05E8F689F@kokofitclub.com>
References: <4C5013F8-82E9-4461-A96F-37B05E8F689F@kokofitclub.com>
Date: Thu, 15 Dec 2011 14:38:46 -0600
Message-ID: <1323981526.2870.235.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libva-glx missing when building crownbay
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
X-List-Received-Date: Thu, 15 Dec 2011 20:39:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-12-15 at 12:29 -0800, Jeffrey Moore wrote:
> I get an error at the end of my build (build -k core-image-sato) as follows:
> 
> error: Failed dependencies:
>  	libva-glx is needed by libva-1.0.12-r0.0.core2
> NOTE: package core-image-sato-1.0-r0: task do_rootfs: Failed
> 
> It is the only error.
> 
> I am building crownbay with a snapshot of Poky that I cloned from master as of yesterday (DISTRO_VERSION    = "1.1+snapshot-20111215").  I also cloned meta-intel at the same time.  I then added into meta-intel/common/recipes-graphics/xorg-xserver/emg-driver-bin-1.8, all of the emgd (Meego 1.2) driver files and video plug in files as instructed in the latest README in meta-crownbay.  I added the two layers into bblayers.conf of meta-intel and meta-intel/crownbay.  I also added machine ?= "crownbay" into local.conf.  Finally, I deleted the file - emgd_drv_video.so (this was instructed in an older README).
> 
> Any help would be appreciated.
> 

Hi, there seems to be some problem related to sstate that I'm looking
into, but clean builds have been working ok both here and on the
autobuilder.

Also, you shouldn't be deleting the emgd_drv_video.so as in the old
README...

Tom

> Thanks
> Jeff
> 
> 
> 
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



