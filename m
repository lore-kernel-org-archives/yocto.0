Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web10.14627.1582129666218634187
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 08:27:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: ejo@pengutronix.de)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1j4SCO-0000vc-9s; Wed, 19 Feb 2020 17:27:44 +0100
Subject: Re: [RAUC] Private: Re: [yocto] #yocto update the kernel with a rauc bundle
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "rauc@pengutronix.de" <rauc@pengutronix.de>
References: <f52c462f-8f88-f953-7383-18633de010ff@pengutronix.de>
 <21810.1581944282288454644@lists.yoctoproject.org>
 <8178103e-c35d-461d-c485-d6b64753641b@pengutronix.de>
 <AM0PR03MB3714AE8A8592D7A0E7853B83FE110@AM0PR03MB3714.eurprd03.prod.outlook.com>
From: "Enrico J?rns" <ejo@pengutronix.de>
Message-ID: <3421bd79-37aa-8a4a-2e80-552a7c78e2ef@pengutronix.de>
Date: Wed, 19 Feb 2020 17:27:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <AM0PR03MB3714AE8A8592D7A0E7853B83FE110@AM0PR03MB3714.eurprd03.prod.outlook.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Hi Hans,

Am 18.02.20 um 15:06 schrieb Hans-Ulrich Schlieben:
> Hi Enrico,
> 
> I just answered your first mail on the website and thought that will automatically reply to all. Added all lists now, hope these are correct.

ah, I wasn't even aware that there is a website for this ;)

> Thanks to you I found the custom automount in the providers recipes. This mounts /dev/mmc0.0 to /mnt/mmc.

Ok, good that we clarified this. The script should not be required in a
modern barebox as it has a lot of built-in automounting magic on board.

> After the mount it seems that only when I install a new image the barebox mount /dev/mmc0.0 to /mnt/mmc0.0 works. 

This is the point that sounds a little strange, yes.

> Rauc / barebox seems something to change after a bundle update whereas mount /dev/mmc0.0 to /mnt/mmc0.0 fails and the files are only visible in /mnt/mmc.
> 
> /mnt/mmc works in both cases so I have now 
> /mnt/mmc/boot... for system0 and
> /mnt/mmc0.1/boot... for system1

Would be great to see a log of such a failed mount to get a more
concrete idea what 'failed' actually means.

Best regards, Enrico

> -----Original Message-----
> From: Enrico Jörns <ejo@pengutronix.de> 
> Sent: Tuesday, 18 February 2020 01:12
> To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
> Subject: Re: Private: Re: [yocto] #yocto update the kernel with a rauc bundle
> 
> Hi hu,
> 
> please keep at least any list in CC so that others can benefit from this discussion, too (Both RAUC and barebox ML would fit here). It also increases the range and thus potential people that may help here.
> 
> Am 17.02.20 um 13:58 schrieb Hans-Ulrich Schlieben:
>> Hi Enrico,
>>
>> thank you very much for your help with IMAGE_INSTALL_append = " 
>> kernel-image kernel-devicetree"
>> that did the trick.
>>
>> What i do not understand is how barebox handles the mount names for my 
>> two alternate boot partitions.
>> The boot on the first partition works only under /mnt/mmc/:
>>
>> global.bootm.image="/mnt/mmc/boot/zImage"
>> global.bootm.oftree="/mnt/mmc/boot/imx6q-phytec-ksp0663.dtb"
>> global.linux.bootargs.dyn.root="root=/dev/mmcblk0p1
>> rootflags='data=journal' wd=60 ipv6.disable=1"
>>
>> whereas the second works with /mnt/mmc1/:
>> global.bootm.image="/mnt/mmc0.1/boot/zImage"
>> global.bootm.oftree="/mnt/mmc0.1/boot/imx6q-phytec-ksp0663.dtb"
>> global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2
>> rootflags='data=journal' wd=60 ipv6.disable=1"
>>
>> In barebox i see both root filesystems under /mnt/mmc0.0 and 
>> /mnt/mmc0.1/.
>>
>> When i try to have a symmetrical configuration and rename /mmc/ into 
>> /mmc0.0/ boot on mmc0.0 does not work because it still mounts the 
>> first partition ar /mnt/mmc/.
> 
> Which version of barebox?
> 
> It should be sufficient to either say
> 
>   boot mmc0.0
> 
> or
> 
>   boot mmc0.1
> 
> and barebox will automatically mount the partition, look for a bootspec file under /loader/entries and assemble the required boot options and kernel command line automatically.
> 
>> What tells barebox to mount during boot mmc and mmc0.1 instead of 
>> mmc0.0 and mmc0.1?
> 
> Is there any custom automount unit located in you built-in env probably?
> 
> 
> Best regards, Enrico
> 


-- 
Pengutronix e.K.                           | Enrico Jörns                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5080 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
