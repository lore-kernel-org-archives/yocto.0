Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CDBEE01439
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 05:03:32 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:47613 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tj8Rm-00067Y-IU; Thu, 13 Dec 2012 08:03:30 -0500
Date: Thu, 13 Dec 2012 08:03:27 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <50C989F4.90004@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1212130753530.5175@oneiric>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<alpine.DEB.2.02.1212121541120.14335@oneiric>
	<CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
	<alpine.DEB.2.02.1212121756210.30220@oneiric>
	<50C989F4.90004@linux.intel.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: per-image ROOTFS sizes
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
X-List-Received-Date: Thu, 13 Dec 2012 13:03:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 12 Dec 2012, Saul Wold wrote:

> Some serious magic!  It took me a while to reload my cache on this one.
>
> All strapped in because here we go!
>
> So you have selected the types of images you want to build by add
> it's type to IMAGE_FSTYPES, of which you can have multiple types.

  a minor nit but i used meta-yocto to configure for a beagle and used
bitbake-env to display the default value of IMAGE_FSTYPES:

$ bitbake-env IMAGE_FSTYPES
IMAGE_FSTYPES=" tar.bz2 jffs2"
$

so far, so good.  but then i simply *assigned* (not added) in
local.conf:

IMAGE_FSTYPES = "vmdk"

and checked again ... ???

$ bitbake-env IMAGE_FSTYPES
IMAGE_FSTYPES="vmdk tar.bz2 jffs2"
$

  um ... huh?  which is explained by the following inconsistent
collection of assignments in poky:

$ grep -r "IMAGE_FSTYPES.*=" *
meta/conf/bitbake.conf:IMAGE_FSTYPES ?= "tar.gz"
meta/conf/machine/include/ia32-base.inc:IMAGE_FSTYPES += "ext3 cpio.gz live"
meta/conf/machine/include/qemu.inc:IMAGE_FSTYPES += "tar.bz2 ext3"
meta/recipes-core/images/core-image-minimal-initramfs.bb:IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
meta/recipes-core/images/build-appliance-image.bb:IMAGE_FSTYPES = "vmdk"
meta-yocto/conf/distro/poky-tiny.conf:IMAGE_FSTYPES = "ext2 cpio.gz"
meta-yocto-bsp/conf/machine/beagleboard.conf:IMAGE_FSTYPES += "tar.bz2 jffs2"
meta-yocto-bsp/conf/machine/routerstationpro.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
meta-yocto-bsp/conf/machine/atom-pc.conf:IMAGE_FSTYPES ?= "ext3 cpio.gz live"
scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf:IMAGE_FSTYPES += "tar.bz2 jffs2"
$

  that appears to be a very confusing mix of "=" and "?=" and "+=".
is that really the effect you were going for?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



