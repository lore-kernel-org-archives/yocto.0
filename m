Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCBDC6FA8F
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 17:43:54 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.1554.1692899028283301510
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 10:43:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inside-m2m.de header.s=default header.b=JLLEUkGJ;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1692899024;
	bh=mhIc9IWubQwuZLCpaHtOVW66bXDTFkLgTbQw70QRIVM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=JLLEUkGJ1QQKAL0nBK6oghmXglwLVWNlq3AJrSJA7uDicJx0vDZNNIITicuioAutG
	 Cn3LNYEv8sU9kR0F/lvwNdDnA137doQKrqs3dde6JxtKiaW6/YLqlGg1ZDS2kqnzhG
	 n+wVqWOK+35N5d8kdtflB9foYu39Rne0fRl6DYzYwPX3wWYT9WKXbuqdS8jaXb4haB
	 TryHO6FKyH7hxi8dkX8/gX4AvmgFYnLF3VxxbOqvvq9f8kxexjEbkVuo492h0U9Cjs
	 hwZuJLlBVVus96SUtlxQDhGUNY5s34uImF8LirJqmwIDJoBmZ55IBavI03g9LRemcr
	 GA0zXHuGcGBDQ==
Received: from insidem2ms-MacBook-Pro.local (unknown [94.31.97.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 395D44024A
	for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 19:43:44 +0200 (CEST)
Date: Thu, 24 Aug 2023 19:43:42 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: Re: linux-firmware-mt7601u-license missing - all fw installed not
 only selected
Message-ID: <ZOeWzogumuaz9HBu@insidem2ms-MacBook-Pro.local>
References: <ZOd-gwWh1meVWRj2@insidem2ms-MBP.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZOd-gwWh1meVWRj2@insidem2ms-MBP.inside-m2m.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 17:43:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60883

On Thu, Aug 24, 2023 at 06:00:06PM +0200, Konstantin Kletschke wrote:

> meta-insidem2m/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> containing this:

> FILES:${PN}-mt7662 = "${nonarch_base_libdir}/firmware/mt7662.bin ${nonarch_base_libdir}/firmware/mt7662_rom_patch.bin"

Nooooooooooooooooooooooooooooo!

I had to do the firmware -> firmware/mediatek move in my own bbappend
too, of course!
I did it but not for both entries so I was mislead thinking that is not
the problem. Noooooooooo!

So in my bbappend I changed to

FILES:${PN}-mt7662 = "${nonarch_base_libdir}/firmware/mediatek/mt7662.bin ${nonarch_base_libdir}/firmware/mediatek/mt7662_rom_patch.bin"

also. Problem solved!

The error message was a _bit_ misleading, though!

Regards
Konsti

