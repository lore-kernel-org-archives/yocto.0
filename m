Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web09.6612.1579093365464831640
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 05:02:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: ejo@pengutronix.de)
Received: from mango.hi.pengutronix.de ([2001:67c:670:100:76d4:35ff:fee8:98b3] helo=mango)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1iriJn-0002rE-IK; Wed, 15 Jan 2020 14:02:43 +0100
Message-ID: <1579093362.13056.13.camel@pengutronix.de>
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
From: "Enrico J?rns" <ejo@pengutronix.de>
To: hu.schlieben@codewrights.de, yocto@lists.yoctoproject.org
Cc: barebox@lists.infradead.org
Date: Wed, 15 Jan 2020 14:02:42 +0100
In-Reply-To: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
Organization: Pengutronix e.K.
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:76d4:35ff:fee8:98b3
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

this is mainly a barebox-related question, thus I'd suggest asking it
on the barebox ML.

[cc-ing barebox mailing list]

On Wed, 2020-01-15 at 04:10 -0800, hu.schlieben@codewrights.de wrote:
> Hi,
> 
> booting the new yocto zeus system manually by "boot mmc" works fine
> but default bootchooser fails with: 
> 
> bootchooser: Cannot get state 'state'
> Nothing bootable found on 'bootchooser'
> Nothing bootable found

Looks like the state node is missing in your device tree.
Which version of barebox do you use?
And from which layer / recipe?

> Building the "same" image in yocto thud works fine. The boot
> variables are:
> 
> * BOOT_system0_.default: 3
> * BOOT_system1_.default: 3
> * allow_color: 0
> * autoboot_timeout: 3
> * boot.default: bootchooser
>   boot.watchdog_timeout: 0
>   bootchooser.default_attempts: 3
>   bootchooser.default_priority: 1
>   bootchooser.disable_on_zero_attempts: 0
>   bootchooser.reset_attempts:  (list: "power-on", "all-zero")
>   bootchooser.reset_priorities:
>   bootchooser.retry: 0
> * bootchooser.state_prefix: state.bootstate
> * bootchooser.system0.boot: mmc
> * bootchooser.system0.default_attempts: 3
> * bootchooser.system0.default_priority: 20
> * bootchooser.system1.boot: mmc1
> * bootchooser.system1.default_attempts: 3
> * bootchooser.system1.default_priority: 21
> * bootchooser.targets: system0 system1
>   bootm.appendroot: 0
> ...
> 

Regards, Enrico

