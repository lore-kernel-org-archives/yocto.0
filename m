Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web12.7622.1628005623372857024
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 08:47:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: jlu@pengutronix.de)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1mAwdB-0001m2-DY; Tue, 03 Aug 2021 17:47:01 +0200
Received: from localhost ([127.0.0.1])
	by ptx.hi.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1mAwdA-00063Z-7M; Tue, 03 Aug 2021 17:47:00 +0200
Message-ID: <3e776fa7fc277baace18f4fcf2f43632944c7109.camel@pengutronix.de>
Subject: Re: [yocto] [meta-zephyr][PATCH 1/2] Convert to new override syntax
From: "Jan Luebbe" <jlu@pengutronix.de>
To: Naveen Saini <naveen.kumar.saini@intel.com>, yocto@lists.yoctoproject.org
Date: Tue, 03 Aug 2021 17:46:59 +0200
In-Reply-To: <20210803090759.20953-1-naveen.kumar.saini@intel.com>
References: <20210803090759.20953-1-naveen.kumar.saini@intel.com>
User-Agent: Evolution 3.40.3 (by Flathub.org) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: jlu@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-08-03 at 17:07 +0800, Naveen Saini wrote:

…
> diff --git a/conf/machine/qemu-nios2.conf b/conf/machine/qemu-nios2.conf
> index ab8b366..48ed3e4 100644
> --- a/conf/machine/qemu-nios2.conf
> +++ b/conf/machine/qemu-nios2.conf
> @@ -1,6 +1,6 @@
>  #@TYPE: Machine
>  #@NAME: qemu-nios2
> -#@DESCRIPTION: Machine for Zephyr BOARD qemu_nios2
> +#@DESCRIPTION: Machine for Zephyr BOARD qemu:nios2

This seems to be unintended.

…
> --- a/conf/machine/qemu-x86.conf
> +++ b/conf/machine/qemu-x86.conf
> @@ -1,6 +1,6 @@
>  #@TYPE: Machine
>  #@NAME: qemu-x86
> -#@DESCRIPTION: Machine for Zephyr BOARD qemu_x86
> +#@DESCRIPTION: Machine for Zephyr BOARD qemu:x86

Here as well.

Regards
Jan

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

