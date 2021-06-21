Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.44295.1624264719191006639
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jun 2021 01:38:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 0FAFA40006;
	Mon, 21 Jun 2021 08:38:36 +0000 (UTC)
Date: Mon, 21 Jun 2021 10:38:36 +0200
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: "Amrun Nisha.R" <amrunnishar@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] TLV320AIC3104: tlv320aic3104 #kernel #yocto
Message-ID: <YNBQDAcU8zwFbqsO@piout.net>
References: <UZMQ.1624251708012368436.fPfH@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <UZMQ.1624251708012368436.fPfH@lists.yoctoproject.org>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello,

On 20/06/2021 22:01:48-0700, Amrun Nisha.R wrote:
> Hi,
> 
> I am using tlv320aic3104 in one of my project, The hardware is wired
> in such a way that the I2C lines from tlv320aic3104 is connected to a
> separate microprocessor which performs the init.
> 
> The SAI lines of tlv320aic3104 are connected to IMX8M SAI lines, I am
> running linux in IMX8M. ALSA says no sound cards found.
> 
> I would like to know whether this kind of setup where the i2c is used
> by a separate processor and using the SAI lines in  a different device
> that runs linux will work. Kindly advice

To support that, you will have to write your own card driver or at least
write a device tree sound node with a dummy codec as Linux will not be
configuring it.

See https://bootlin.com/pub/conferences/2020/lee/belloni-alsa-asoc/belloni-alsa-asoc.pdf

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
