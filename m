Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85D1FE00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 13:56:19 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so1145882lah.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 13:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=STc78iphvIwwku/YNPlGF5wCAYqDeYyzrrscRJvemSY=;
	b=tB7FpVZ0z7qKUqUF5MD2I8LRE26yRb318sPSxqpVK8zltYF3c0y99WwcSEnlKkJH+u
	FdoVhq5eQZR6CzHqyQBT+TK5ubbBAoqdedVYgf0RDHURiLajLt1eTik81xrcJk+qSFLR
	GrbccRtwQl5LsrN+rRCxpcxDy6HfYAK7CeEj+rhh1cc3EHktgcqMc5AX0ulJX598FaXW
	Djdj8V+DO6tLiWgXhhIy6EhsRJzBPSu8PtwCNfwLcOQD41PIa84WnQz5J7EqB68d5zJS
	RxmIM2apqpZJ6Th9nNVuo5RUbzjBLWPsW9Kj8POpU9Vr95aIlTYbkWjAai5G5jxOW8pM
	yo7w==
MIME-Version: 1.0
Received: by 10.152.108.48 with SMTP id hh16mr2500433lab.25.1355349378162;
	Wed, 12 Dec 2012 13:56:18 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Wed, 12 Dec 2012 13:56:18 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212121541120.14335@oneiric>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<alpine.DEB.2.02.1212121541120.14335@oneiric>
Date: Wed, 12 Dec 2012 16:56:18 -0500
Message-ID: <CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
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
X-List-Received-Date: Wed, 12 Dec 2012 21:56:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Dec 12, 2012 at 3:46 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> so what happens if you try to set the appropriate variables above?

When Yocto creates a VMDK, it creates 2 partitions:
- an MSDOS partition for the syslinux stuff
- the ext{3,4} partition of your root image

When it then shmushes these two together into 1 file, it has to make
sure all the sizes are set correctly as per the information in the
disk's partition table. That's what all these calculations are doing
(I recognize it from similar work in my own scripts).

Personally I have my own approach that can use either LILO or syslinux
for booting x86 (it can also create bootable ARM images with the
appropriate uboot/mlo); neither of the x86 solutions require a
separate MSDOS partition. Hopefully I'll find some time to examine how
Yocto is doing things and perhaps integrate my own findings into the
broader project(?).

(please see https://github.com/twoerner/qemu-image-builder)

I believe Yocto calculates the sizes (using IMAGE_ROOTFS_SIZE) from
code in poky/meta/classes/image_types.bbclass, which is also run for
the VMDK's calculations too.

