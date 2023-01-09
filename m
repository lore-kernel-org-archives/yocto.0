Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4C6C54EBD
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 19:16:50 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.82255.1673291802512839907
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 11:16:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=HUKVrs1N;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 6905C60009;
	Mon,  9 Jan 2023 19:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673291800;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VxRBZneXWWVcM89+r3P1GeR5UYuPXez4BIsZMjQHP/A=;
	b=HUKVrs1NK2Ly4mt8nWYMraCYp7v8HGg89VPvbb4L/bABT+bFs0jPjYm1BPCLZ8Prb+UIfi
	5jHqiB1WA3S4is63/okB6hoaMgElv89CjNhgPU69snYfwzHVUDta3BXfq91ZbBNc18tC6G
	QwsyQXcI4rreVHj8VwsgOeqwvlHx0THB2UwgOtty1sufWiTKOfWi+pPIam03+9osbTSNgz
	1j77YwM5rn4c1Yz8JPR9MAoJqMvEetvj5S5Luy8LExvv1wUBya3bolPVgKIHsNti6q0ATb
	eN5i1g7rBqvqCX6F5+JJ3FtY8OMo7VTa26C+VjId0WB1OSEiNjwr7jRFd9t4aw==
Date: Mon, 9 Jan 2023 20:16:40 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yoann Congal <yoann.congal@smile.fr>,
	Yocto Mailing list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Git repo setup for Yocto upstream contribution
Message-ID: <Y7xoGKdX4ytgVxDp@mail.local>
References: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
 <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com>
 <Y7xboMQghF3h1WVT@mail.local>
 <CANNYZj9tCki_0s_popFbTmfN57zBZgvL7_RowkYMpog9UBWJUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj9tCki_0s_popFbTmfN57zBZgvL7_RowkYMpog9UBWJUA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 19:16:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58950

On 09/01/2023 19:30:36+0100, Alexander Kanavin wrote:
> On Mon, 9 Jan 2023 at 19:23, Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> > No, please send patches against the correct git tree, else you are
> > putting more load on the maintainers than necessary.
> > This was the cause of:
> > https://lore.kernel.org/all/Y5Sr9HSWIc5LVzl9@mail.local/
> >
> > This can silently fail and then you need to wait for 7hours for the AB
> > to fail and this delays testing for one more day.
> 
> We never got to the bottom of what happened to that one. Part of the
> patch applied correctly, the other part did not.
> 

Just try to apply your patch on a bitbake repository, it will reproduce.


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

