Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25A32C54EBC
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 15:02:56 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.105754.1673362965717623336
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 07:02:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=f4ogHOjR;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 57C70240011;
	Tue, 10 Jan 2023 15:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673362964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+XLh7Zx269J+kZBfyT4ol+qc21SA6ZVUj6cidXg7g0Y=;
	b=f4ogHOjR2T2eMvYY4wi7bV4OH6yHtgZxhXob9QSLFkL+2D7j1R8zPUZRL+jOkDbxeRkd8P
	ZaaiCBMe+1l50yq8MwUCw6ljbbRYa3RxuRNYHla0j93jMwrakbE8p6w245D5ILMLf7UR50
	9zaOV7+Z2zzEeCPQFInmze7KKdKFupikp8y5xri6vh5dqTxOaR7lmfqiq7CkQeI3TsTK/j
	1OR4rsFQv6TTtm5NlrZSXYZcrp28onYQIz/gtd4o3bLz+4hlfW8/4hkdQ3tc082RjsVyen
	kqCoc/JR55FZQ5VdgL2nSbIt3kX49Q9is7BhvgKmwKpneG11GoTOgkMwTp2v3w==
Date: Tue, 10 Jan 2023 16:02:43 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yoann Congal <yoann.congal@smile.fr>,
	Yocto Mailing list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Git repo setup for Yocto upstream contribution
Message-ID: <Y71+E2AWNBKuDQbf@mail.local>
References: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
 <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com>
 <Y7xboMQghF3h1WVT@mail.local>
 <CANNYZj9tCki_0s_popFbTmfN57zBZgvL7_RowkYMpog9UBWJUA@mail.gmail.com>
 <Y7xoGKdX4ytgVxDp@mail.local>
 <CANNYZj_o1q4txLxo9EchoDcGcDntmSvo8bHy0=Tw1LkX426HGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj_o1q4txLxo9EchoDcGcDntmSvo8bHy0=Tw1LkX426HGw@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 15:02:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58957

On 10/01/2023 15:54:55+0100, Alexander Kanavin wrote:
> On Mon, 9 Jan 2023 at 20:16, Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> > Just try to apply your patch on a bitbake repository, it will reproduce.
> 
> I tried. This happens only if a 3-way merge is enabled: for existing
> files git will strip the leading directory as needed, but for newly
> introduced files it will place them where the patch specifies.
> 
> Otherwise, the patch is fully rejected (by default) or fully correctly
> accepted (with -p2).

Either way, this is a pain for the maintainer, you should send patches
that apply cleanly.


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

