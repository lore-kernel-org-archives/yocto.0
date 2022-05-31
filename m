Return-Path: <luca.ceresoli@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 588ADC433F5
	for <webhook@archiver.kernel.org>; Tue, 31 May 2022 12:00:57 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web08.48437.1653998448043521305
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 05:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Jq405k4w;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195,
 mailfrom: luca.ceresoli@bootlin.com)
Received: (Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 3436F60010;
	Tue, 31 May 2022 12:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1653998446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p1ZeQ0dA7L1+rFQu4Z3bjtGOa/R7WnLgR/78iByxS/E=;
	b=Jq405k4w6Nudc6cuRGi98xiHgGl4h5ggoVvk/FjJlHinJrCZ6ZyAoymZMZZsOMTEar11wu
	rau67MZtjgqgR6lwi1FpLXIflTrIF5KNw1Cvk4jgOnxTDPl0EymTf0m+HEWrB6a6ODPEqK
	SkvTfHiN1pLsBnDuAvOuCKEwpKgJ6unHp+ErUlQn/XR+J75INC4N/b3iD/qfw8Z0RlDPQ4
	FVEzdZmuL5sZWxEpVkf6m786yCpzRkm3QWI4VpYFApuC8WHxrEfAviUWuWxQ2Qg6vNBXGb
	EK9EwTRos+5AErG1GP9GDZb4rx2fREgUT4HA4jujBYgFQUTAjPMCO8nLUVT7bQ==
Date: Tue, 31 May 2022 14:00:43 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Scott Murray <scott.murray@konsulko.com>
Cc: Tim Orling <ticotimo@gmail.com>, Jan Simon Moeller
 <jsmoeller@linuxfoundation.org>, Richard Purdie
 <richard.purdie@linuxfoundation.org>, Marius Vlad
 <marius.vlad@collabora.com>, "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-egl failure: Nothing RPROVIDES polkit
Message-ID: <20220531140043.616dee1c@melee>
In-Reply-To: <4e629bf9-1cb7-f1b1-4ca7-b2e535aeeea0@spiteful.org>
References: <20220527135751.54a29f24@melee>
	<CADja47NmNz+8es0ymHYxmozSPmMA1TCTFeDg7epCDoXMEgYzbA@mail.gmail.com>
	<CANx9H-D_w2hupHXMxqYvQ2JYgfEKdvw5A_+OBpJ_9LW81s8efA@mail.gmail.com>
	<4e629bf9-1cb7-f1b1-4ca7-b2e535aeeea0@spiteful.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 May 2022 12:00:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57232

Hi Scott,

Il giorno Fri, 27 May 2022 16:25:00 -0400 (EDT)
Scott Murray <scott.murray@konsulko.com> ha scritto:

> On Fri, 27 May 2022, Tim Orling wrote:
> 
> > On Fri, May 27, 2022 at 9:18 AM Jan Simon Moeller <  
> > jsmoeller@linuxfoundation.org> wrote:  
> >  
> > > Hi !
> > >
> > > Yes, we need to look into this and likely change the location of the
> > > RDEPENDS.
> > > Thanks for flagging.
> > >
> > > polkit needs to be in DISTRO_FEATURES and the recipe needs to have a check  
> > for that (and inherit features_check)  
> [snip]
> 
> For an immediate fix I've moved the polkit addition to a bbappend added
> via BBFILES_DYNAMIC, gated on meta-oe presence.

Thanks for taking care. I confirm my testing build today didn't show up
this failure anymore.

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com



