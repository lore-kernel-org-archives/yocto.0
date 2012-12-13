Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD04E00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 09:42:51 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2012 09:42:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,275,1355126400"; d="scan'208";a="263615299"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.14.3])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2012 09:42:26 -0800
Message-ID: <50CA1382.2040005@linux.intel.com>
Date: Thu, 13 Dec 2012 09:42:26 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<alpine.DEB.2.02.1212121541120.14335@oneiric>
	<CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
	<alpine.DEB.2.02.1212121756210.30220@oneiric>
	<50C989F4.90004@linux.intel.com>
	<alpine.DEB.2.02.1212130753530.5175@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212130753530.5175@oneiric>
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
X-List-Received-Date: Thu, 13 Dec 2012 17:42:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/2012 05:03 AM, Robert P. J. Day wrote:
> On Wed, 12 Dec 2012, Saul Wold wrote:
>
>> Some serious magic!  It took me a while to reload my cache on this one.
>>
>> All strapped in because here we go!
>>
>> So you have selected the types of images you want to build by add
>> it's type to IMAGE_FSTYPES, of which you can have multiple types.
>
>    a minor nit but i used meta-yocto to configure for a beagle and used
> bitbake-env to display the default value of IMAGE_FSTYPES:
>
> $ bitbake-env IMAGE_FSTYPES
> IMAGE_FSTYPES=" tar.bz2 jffs2"
> $
>
> so far, so good.  but then i simply *assigned* (not added) in
> local.conf:
>
> IMAGE_FSTYPES = "vmdk"
>
> and checked again ... ???
>
> $ bitbake-env IMAGE_FSTYPES
> IMAGE_FSTYPES="vmdk tar.bz2 jffs2"
> $
>
>    um ... huh?  which is explained by the following inconsistent
> collection of assignments in poky:
>
Good catch, I think some make sense and other should be fixed.

> $ grep -r "IMAGE_FSTYPES.*=" *
> meta/conf/bitbake.conf:IMAGE_FSTYPES ?= "tar.gz"
Base assignment for default, of course it should ?=

> meta/conf/machine/include/ia32-base.inc:IMAGE_FSTYPES += "ext3 cpio.gz live"
> meta/conf/machine/include/qemu.inc:IMAGE_FSTYPES += "tar.bz2 ext3"
These make sense as += it allows the DISTRO and/or user to add more types.

> meta/recipes-core/images/core-image-minimal-initramfs.bb:IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
initramfs will only need the cpio.gz there for set it directly

> meta/recipes-core/images/build-appliance-image.bb:IMAGE_FSTYPES = "vmdk"
build appliance only needs 1 fs types so set it directly.

> meta-yocto/conf/distro/poky-tiny.conf:IMAGE_FSTYPES = "ext2 cpio.gz"
again small custom image this is a DISTRO setting

> meta-yocto-bsp/conf/machine/beagleboard.conf:IMAGE_FSTYPES += "tar.bz2 jffs2"
As the qemu and ia32 add correct fs types for beagleboard.

> meta-yocto-bsp/conf/machine/routerstationpro.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
> meta-yocto-bsp/conf/machine/atom-pc.conf:IMAGE_FSTYPES ?= "ext3 cpio.gz live"
I would think that += would be better here, I would welcome a patch!

> scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
Looks like these followed the pattern of the base machine, but I think 
this should be +=, a patch would be welcome!


Sau!

> scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf:IMAGE_FSTYPES += "tar.bz2 jffs2"

> $
>
>    that appears to be a very confusing mix of "=" and "?=" and "+=".
> is that really the effect you were going for?
>

> rday
>

