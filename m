Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web11.994.1581542783388101078
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 13:26:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: ejo@pengutronix.de)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1j1zWX-0007UZ-7V; Wed, 12 Feb 2020 22:26:21 +0100
Subject: Re: [yocto] #yocto update the kernel with a rauc bundle
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
References: <bn8g.1581530065985258371.N1t8@lists.yoctoproject.org>
From: "Enrico J?rns" <ejo@pengutronix.de>
Cc: yocto@lists.yoctoproject.org, Jan Luebbe <jlu@pengutronix.de>
Message-ID: <f52c462f-8f88-f953-7383-18633de010ff@pengutronix.de>
Date: Wed, 12 Feb 2020 22:26:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bn8g.1581530065985258371.N1t8@lists.yoctoproject.org>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Hi Hans,

Am 12.02.20 um 18:54 schrieb Hans-Ulrich Schlieben:
> Hi,
> 
> i have a working configuration with images and rauc bundles. My problem
> is that kernel and devicetree are located outside the rootfs and so a
> bundle update never includes these.

a RAUC bundle can contain images for multiple partitions / slots.
You just have to specify them in your system.conf to make them updatable.

> My image.wks looks this:
> part BAREBOX --source rawcopy
> --sourceparams="file=barebox.bin,skip=1024" --ondisk mmc --no-table
> --align 1
> part   --source bootimg-partition --fstype=vfat --label boot --ondisk
> mmc --active --align 4096 --size 20
> part / --source rootfs            --fstype=ext4 --label rootA --ondisk
> mmc --align 1024 --use-uuid --fixed-size 700
> part / --source rootfs            --fstype=ext4 --label rootB --ondisk
> mmc --align 1024 --use-uuid --fixed-size 700
> 
> How do i move kernel and devicetree into /boot? 

An

IMAGE_INSTALL_append = " kernel-image kernel-devicetree"

, for example in your image recipe, should do the trick.

When using barebox you have full bootspec support thus you probably als
want to place a bootspec entry in /loder/entries to automate loading the
right kernel and dtb. A helper class is here:

https://github.com/pengutronix/meta-ptx/blob/master/classes/bootspec.bbclass

> Any help would be greatly appreciated. Thank you 

Best regards, Enrico


-- 
Pengutronix e.K.                           | Enrico Jörns                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5080 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
