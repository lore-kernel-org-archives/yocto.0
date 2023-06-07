Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2B2C7EE25
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 15:40:35 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.1535.1686152432460029286
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 08:40:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=UgFY0C4i;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 3FCF840266;
	Wed,  7 Jun 2023 17:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1686152429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=O+lN3pRnSa4/kNTB/ONVVA6LWkP95/1H0FMTobUT5hs=;
	b=UgFY0C4i3ZlJ3DKtFP+Sw/J6GnqeOwhYCTvdy/2AbR9KzJuIHqvsAIujt/EoUPiCzuHweG
	OmfCai323+z8MANrP2ESvfePwNNaTUR7Ivpr4XAap4XGv6fUzprMiMRJz1EL9wPw6UgYkE
	7H+Cxub3XAR/UcC9kRthQTK8Gjs8/BI=
Date: Wed, 7 Jun 2023 17:40:27 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Remove kernel image from IMAGE_BOOT_FILES for WIC boot
 partition
Message-ID: <ZICk6339hC0MAJb2@aglaia.inside-m2m.de>
References: <ZIBziarHeT1v16Bk@aglaia.inside-m2m.de>
 <CANNYZj9SDRVPiafkzEAnOaH92M6QR2ayGpezLspe0gDw1X3N_A@mail.gmail.com>
 <ZIB2HUdm4J7PN5gT@aglaia.inside-m2m.de>
 <CANNYZj9GxgPCA-KqrFJmCiCyTrdKCFaresRuG03MJxjypexNFA@mail.gmail.com>
 <ZICbH0ZXmswVhBcQ@aglaia.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZICbH0ZXmswVhBcQ@aglaia.inside-m2m.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 15:40:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60212

On Wed, Jun 07, 2023 at 04:58:41PM +0200, Konstantin Kletschke wrote:

> Yeah... I end up in scripts/lib/wic/engine.py get_custom_config() which
> I must prepare to avoid falling into the "No Kernel..." pitfall, what is
> that, an u-boot extlinux config? I am trying to find out...

I found out:

In the wks file I have to specifiy an existing configfile like this at
the bottom (--configfile part):

bootloader --append="console=ttyS0,115200" --configfile="directdisk-bootloader-config.cfg"

Then I can use my stripped down set of IMAGE_BOOT_FILES without kernel
and dtb files.

I end up with an unnecessary extlinux/extlinux.conf but this are
~550Bytes and are not avoidable so I can live with that at the moment.

