Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FBB1C77B7A
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 14:58:45 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.334.1686149922585172960
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 07:58:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=k/G2maQE;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 117E740266;
	Wed,  7 Jun 2023 16:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1686149921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JX6h6SsfHJSEwTamo8HvRjM/AmtS7oTMsunH8ttsPrI=;
	b=k/G2maQEmdGoBbmrIvzOFnXUPIxqAviXtZaTSnCQDmPN9099mbH0dohe20dM/MsWrz6CZg
	VVUq9h+wcAt9fHZrHWZ1BoXc2cNdFiK9Y8Ja8QQ7D7TT11xStGwyIkexWavEvETU5F3O6g
	IrBc8aAKeiiX6eSxi0LAnolKcE4JhOM=
Date: Wed, 7 Jun 2023 16:58:39 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Remove kernel image from IMAGE_BOOT_FILES for WIC boot
 partition
Message-ID: <ZICbH0ZXmswVhBcQ@aglaia.inside-m2m.de>
References: <ZIBziarHeT1v16Bk@aglaia.inside-m2m.de>
 <CANNYZj9SDRVPiafkzEAnOaH92M6QR2ayGpezLspe0gDw1X3N_A@mail.gmail.com>
 <ZIB2HUdm4J7PN5gT@aglaia.inside-m2m.de>
 <CANNYZj9GxgPCA-KqrFJmCiCyTrdKCFaresRuG03MJxjypexNFA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj9GxgPCA-KqrFJmCiCyTrdKCFaresRuG03MJxjypexNFA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 14:58:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60211

On Wed, Jun 07, 2023 at 02:25:15PM +0200, Alexander Kanavin wrote:
> [ak@fedora poky]$ grep -ir "No kernel file found" scripts/
> scripts/lib/wic/plugins/source/bootimg-partition.py:
> raise WicError('No kernel file found')

Yeah... I end up in scripts/lib/wic/engine.py get_custom_config() which
I must prepare to avoid falling into the "No Kernel..." pitfall, what is
that, an u-boot extlinux config? I am trying to find out...


