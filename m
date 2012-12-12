Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F16FE00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 15:16:43 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:50639 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TivXd-00041y-UW; Wed, 12 Dec 2012 18:16:42 -0500
Date: Wed, 12 Dec 2012 18:16:37 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212121756210.30220@oneiric>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<alpine.DEB.2.02.1212121541120.14335@oneiric>
	<CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
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
X-List-Received-Date: Wed, 12 Dec 2012 23:16:43 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 12 Dec 2012, Trevor Woerner wrote:

> On Wed, Dec 12, 2012 at 3:46 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > so what happens if you try to set the appropriate variables above?
>
> When Yocto creates a VMDK, it creates 2 partitions:
> - an MSDOS partition for the syslinux stuff
> - the ext{3,4} partition of your root image
>
> When it then shmushes these two together into 1 file, it has to make
> sure all the sizes are set correctly as per the information in the
> disk's partition table. That's what all these calculations are doing
> (I recognize it from similar work in my own scripts).
>
> Personally I have my own approach that can use either LILO or syslinux
> for booting x86 (it can also create bootable ARM images with the
> appropriate uboot/mlo); neither of the x86 solutions require a
> separate MSDOS partition. Hopefully I'll find some time to examine how
> Yocto is doing things and perhaps integrate my own findings into the
> broader project(?).
>
> (please see https://github.com/twoerner/qemu-image-builder)
>
> I believe Yocto calculates the sizes (using IMAGE_ROOTFS_SIZE) from
> code in poky/meta/classes/image_types.bbclass, which is also run for
> the VMDK's calculations too.

  and here's where i'm confused.  i'm *assuming* that the
image-vmdk.bbclass file defines the creation of vmdk images, yes?  but
that class file inherits directly only boot-directdisk.bbclass, and if
i look in that class file, i don't see any further inherits that might
process IMAGE_ROOTFS_SIZE.  i just see hardcoded calculations that
build an image based on actual rootfs directory size.

  so what am i missing?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

