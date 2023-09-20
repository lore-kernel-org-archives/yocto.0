Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CE35C2FC09
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 21:16:12 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.1475.1695244571099581875
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 14:16:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=iD/9+KYm;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id EC26D1BF206;
	Wed, 20 Sep 2023 21:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695244569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=82MwooD/StOtwA+SHJ2YgxY+3YO2u6pSJH97hGP8M3w=;
	b=iD/9+KYmr+/TtWyJ90HRXJOF+0/FCerHtTXJyTDbfafGgTqifUxWgiP/hczSdqUWTUpm96
	MsnXBZA9dw6wHMOp8rwUEKEH7U7DS+o8gL0pIVCu44k7doxtmfekO3Y2j9HZF5pueMdLdr
	Rsi2y7EC/lCZ/FoE2ncJUgLZ/sPKSmEcd3IsVNqhgn3jN6bErqWzRBCexNkjRUgrrY8vsz
	4aaGriXhFoJBv3bl1EALdD36d+LFhGHyN6lJ9vJDF+m7ita9Es7wdl6z5ND9Pp8PlwEc0F
	gU6myakW0IWOU9LeOybLxDOIeBlrOYS5Sv2DoFyWYdWwHW0EssvWhWicBU8UWQ==
Date: Wed, 20 Sep 2023 23:16:08 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Forcing uninative?
Message-ID: <2023092021160802de53c6@mail.local>
References: <cd75554b-294d-5ea3-ea0a-d8120390c757@ibeeto.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd75554b-294d-5ea3-ea0a-d8120390c757@ibeeto.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 21:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61058

Hello,

On 20/09/2023 13:59:54-0700, Rudolf J Streif wrote:
> I need to resurrect a Yocto Project build environment based on honister. My
> dev system has since moved on to a newer glibc etc. As expected, I am
> getting this warning
> 
> WARNING: Your host glibc version (2.37) is newer than that in uninative
> (2.34). Disabling uninative so that sstate is not corrupted.
> 
> The distro's gcc now is 13.2.1.
> 
> Now the following packages do not compile anymore:
> 
>  * rust-llvm-native : which there is a patch (applied to kirkstone):
>    https://lore.kernel.org/openembedded-core/CANPvuR=G1NxfJb67xD19FoNh4eTDsTM4TDyF+vDbh6crNH=dgw@mail.gmail.com/T/
>  * libdnf-native : because std::uint32_t does not exist anymore
> 
> I don't care about the sstate as I am creating a new one. However, how can I
> force uninative to be used and would it even solve the problem (I would
> think so as the idea of uninative is to isolate the build from the host
> libraries)?
> 

You should rather use buildtools. You can install those with
scripts/install-buildtools. The -r option is there to allow you to
select a target release. You can try something like:

poky/scripts/install-buildtools -d ~/YP/buildtools -r yocto-3.4.4 --installer-version 3.4.4

This will then tell you to source buildtools/environment-setup-x86_64-pokysdk-linux

This should be enough to be able to build old releases.

Regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

