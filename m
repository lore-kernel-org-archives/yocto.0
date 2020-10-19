Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web10.3506.1603134003172711361
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 12:00:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: ejo@pengutronix.de)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1kUaO1-0005GZ-ES; Mon, 19 Oct 2020 21:00:01 +0200
Message-ID: <0630d92b2896cd0bec2adc4bc37510fc053184fa.camel@pengutronix.de>
Subject: Re: [yocto] Generating non-rootfs file system images as update artifacts for multi-partition image updates
From: "Enrico J?rns" <ejo@pengutronix.de>
To: Stefano Babic <sbabic@denx.de>, yocto@lists.yoctoproject.org
Cc: jlu <jlu@pengutronix.de>, ejo <ejo@pengutronix.de>
Date: Mon, 19 Oct 2020 20:59:59 +0200
In-Reply-To: <7cbd24d7-1240-c944-83ba-fe23e39f3cce@denx.de>
References: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
	 <7cbd24d7-1240-c944-83ba-fe23e39f3cce@denx.de>
User-Agent: Evolution 3.36.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Stefano,

Am Montag, den 19.10.2020, 18:23 +0200 schrieb Stefano Babic:
> Hi Enrico,
> 
> On 19.10.20 17:43, Enrico J?rns wrote:
> > Hi,
> > 
> > as I did not have much success with my question in the OR irc, let's
> > try it here in a more verbose way. ;)
> > 
> > Imagine I have an A+B redundant boot system, with additional bootloader
> > and separate home or application file system. Thus my layout would be
> > like:
> > 
> > p1: bootloader
> > p2: rootfs A
> > p3: rootfs B
> > p4: appfs A
> > p5: appfs B
> > 
> > where rootfs A + appfs A form a logical unit with respect to the image-
> > based update handling.
> > 
> > No my question is: How do I generate the images required for the
> > bootloader partition and/or the appfs partition with the OE standard
> > image generation mechanisms?
> > 
> > We have a working solution with the 'genimage' tool for quite some
> > time, but I wonder if that could be done with the more tightly
> > integrated wic, too.
> > 
> > 
> > To my understanding, the way of creating something like a bootloader
> > image or an application file system is by using wic's image split
> > capabilities and doing (non-redundant example):
> > 
> > part /boot --source rootfs (or some plugin)
> > part / ... --source rootfs
> > part /app  --source rootfs
> 
> I had the same use case as you, and I could use something like
> 
> part /app --source rawcopy --sourceparams="file=..."
> 
> and the file points to the image I want to put on the partition.

my intention was a bit different I think. I actually wanted to generate
the /app out of the rootfs image. But then re-use the resulting image.

To be honest I am less interested in the resulting disk image but in
the intermediate artifacts.

I've heard some older discussions on how to generate a separate /home
partition and a separate /data partition and it always turned out that
generating the single monolithic rootfs first and splitting it on a
per-folder base later is a straight-forward approach for most
scenarios.

Trying to get yocto to build images that do not contain things like
base-files, etc. was always painful and never meant to be supported
afaik.

> > This will create multiple file system images out of the prior monolitic
> > rootfs one. It also does all necessary changes for mounting, like
> > modifying the rootfs /etc/fstab etc.
> > Thus, using these generated images in my update scenario would be the
> > way to go for me.
> > 
> > 
> > BUT, currently I do not see any straight-forward way of how to use
> > them. One could add them to what the image_wic* image fstypes generate,
> > but this will violate the default rule that each image fstype generates
> > exactly one image.
> > And the generated images are a little hard to reference as one cannot
> > give them names (which is probably a negligable issue) and they do not
> > have a fstype extension.
> > The more sever issue is that I would also like to have archives (like
> > tar.bz2) of the content of /app or /boot as I can use them quite good
> > for installing to partitions whose size and other parameters I do not
> > know very beforehand (also applicable to UBI volumes).
> > 
> > But, at the moment there does not seem to be a designated way of doing
> > something like I intended. I wonder how others solve the generation of
> > non-rootfs images with YP/OE?
> > 
> > Or did I miss something that already exists for this?
> 
> I have not a straightforward solution. I inherited just "image" and I
> cleaned up at the end with a ROOTFS_POSTPROCESS_COMMAND what was
> superfluous. Maybe forcing packagegroup-core-boot can be an option.

Yes, this would be the 'hacky' solution to the problem. Actually, I
would prefer finding a solution that is supported out-of-the-box and
compatible with how OE sees the generation of images.

Thus re-using the wic fs artifacts appears to be one possible straight-
forward solution to me. The only thing is that I actually would not
even need the disk image itself probably.

A syntax could look like

part / --source rootfs output=my-rootfs-without-appfs.ext4 --fstype=ext4
part /app --source rootfs output=my-appfs.tar.bz --fstype=tar.bz2
part /home --source rootfs output=my-homefs.ext4 --fstype=ext4

Another option could be to introduce some kind of syntax in the file
system generation classes. But I have neither a clue on how to do that
without violating the current behavior of creating only one image per
image type nor a good idea yet on how to name the artifacts.

> Best regards,
> Stefano

Thanks Stefano and best regards

Enrico

> 
-- 
Pengutronix e.K.                           | Enrico Jörns                |
Embedded Linux Consulting & Support        | https://www.pengutronix.de/ |
Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  |
31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    |

