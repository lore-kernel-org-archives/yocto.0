Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web09.15664.1603122217185157232
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 08:43:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: ejo@pengutronix.de)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1kUXJt-0001OU-1B; Mon, 19 Oct 2020 17:43:33 +0200
Message-ID: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
Subject: Generating non-rootfs file system images as update artifacts for multi-partition image updates
From: "Enrico J?rns" <ejo@pengutronix.de>
To: yocto@lists.yoctoproject.org
Cc: jlu <jlu@pengutronix.de>
Date: Mon, 19 Oct 2020 17:43:32 +0200
User-Agent: Evolution 3.36.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

as I did not have much success with my question in the OR irc, let's
try it here in a more verbose way. ;)

Imagine I have an A+B redundant boot system, with additional bootloader
and separate home or application file system. Thus my layout would be
like:

p1: bootloader
p2: rootfs A
p3: rootfs B
p4: appfs A
p5: appfs B

where rootfs A + appfs A form a logical unit with respect to the image-
based update handling.

No my question is: How do I generate the images required for the
bootloader partition and/or the appfs partition with the OE standard
image generation mechanisms?

We have a working solution with the 'genimage' tool for quite some
time, but I wonder if that could be done with the more tightly
integrated wic, too.


To my understanding, the way of creating something like a bootloader
image or an application file system is by using wic's image split
capabilities and doing (non-redundant example):

part /boot --source rootfs (or some plugin)
part / ... --source rootfs
part /app  --source rootfs

This will create multiple file system images out of the prior monolitic
rootfs one. It also does all necessary changes for mounting, like
modifying the rootfs /etc/fstab etc.
Thus, using these generated images in my update scenario would be the
way to go for me.


BUT, currently I do not see any straight-forward way of how to use
them. One could add them to what the image_wic* image fstypes generate,
but this will violate the default rule that each image fstype generates
exactly one image.
And the generated images are a little hard to reference as one cannot
give them names (which is probably a negligable issue) and they do not
have a fstype extension.
The more sever issue is that I would also like to have archives (like
tar.bz2) of the content of /app or /boot as I can use them quite good
for installing to partitions whose size and other parameters I do not
know very beforehand (also applicable to UBI volumes).

But, at the moment there does not seem to be a designated way of doing
something like I intended. I wonder how others solve the generation of
non-rootfs images with YP/OE?

Or did I miss something that already exists for this?



Thanks in advance and best regards

Enrico

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Embedded Linux Consulting & Support        | https://www.pengutronix.de/ |
Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  |
31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    |

