Return-Path: <luca.ceresoli@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70FCAC77B76
	for <webhook@archiver.kernel.org>; Fri, 14 Apr 2023 09:52:10 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.5358.1681465925294419559
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Apr 2023 02:52:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=IwnULa/r;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: luca.ceresoli@bootlin.com)
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C55F6FF810;
	Fri, 14 Apr 2023 09:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1681465923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F8mu+uitaglktmAWBHP8kih6Vfv4qzd1ZFzIiteUDv0=;
	b=IwnULa/rUCgqGdVHEERxCSKqZMbuZYyd2+1tmSUtuwX9cPt14SkXIWAXFeOcHcqJjfrMys
	OsXlIoWsnl/zIOH42A6XwoSm3qL9kFZ3qDcQL9jBtwGYjQuvUHgTWUFJ1UioDyXADkdUQ8
	AR3mh70KX0NaSU2cXPWdiESdGqv63y6p8f7Qe1jj62nC4Ht8GvcM5JpIaG3mfG9qxaBMT+
	JdC9rFcQ3sBRHfmxtp8JJmMxpdNEN9xdzaHgXLXDnXn3CfzrEcVrw0sf1kBzr8rwOSyzAu
	+fOvRtFAUoTEzBmH8Vgkc43bRnCO1BIbi4oWptK/MOwG0S8ywvet+irT6PD9Mw==
Date: Fri, 14 Apr 2023 11:52:01 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: "Electronic Consult" <electronicconsult1@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Correct build folder location
Message-ID: <20230414115201.287b9368@booty>
In-Reply-To: <16939.1681415548979400315@lists.yoctoproject.org>
References: <CAGUWaEHR=xLzTNfyJGAD7Psg0S4k_eQd3dO+sL2-wZpjqxR8vw@mail.gmail.com>
	<16939.1681415548979400315@lists.yoctoproject.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 09:52:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59715

Hello,

On Thu, 13 Apr 2023 12:52:28 -0700
"Electronic Consult" <electronicconsult1@gmail.com> wrote:

> As an update for anyone looking at this..
> 
> I managed to get the raspberry pi build going. It seems after running
> 
> source oe-init-build-env rpi-build
> the local.conf from meta-atmel was copied into the rpi-build folder.

The selection of the sample local.conf depends on the TEMPLATECONF
variable. You likely followed the meta-atmel instructions
(https://github.com/linux4sam/meta-atmel/blob/kirkstone/README) which,
at step 6, ask you to set TEMPLATECONF to point to the meta-atmel
sample files.

Just skip step 6.

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

