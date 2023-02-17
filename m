Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C549C6379F
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 14:14:54 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web11.7227.1676643284788513599
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 06:14:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=aT8la5+H;
 spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 7021F100009;
	Fri, 17 Feb 2023 14:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1676643282;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WoYIm5n8FXWM1TnN861g75IGr6kpIWb/SXBIsamrkKg=;
	b=aT8la5+HjAvzWg5MLUM5bwj65kJzoPQ7rq0ZqcN0MT0BEbJBdieTJx1G6WRaf/id7UN5T7
	oHGZOYycC0qX/wuFw6Vlnkl8RZlR2fo6kB7LchwCFnRZeakb8Jl8rt1peKCswdbjxIHOXC
	9vIUQdahXU6qtQvmY/JBtWhuT6mc5VIczIyukMjYEo+EpKQjnZbjzYl6mlMXQIgdzdC4Up
	YmYgLm4yT0RNWCbZbbgfXoQwT+LPp5IGV1CS3sWmZ8TZt/qpSoptmJBvWPGqvsxO3+14Hn
	Eq3J8FevjS33ZKb6XLUSOWZ9DK+n6QSrkEtG8/SOshnpWRbjgLlG+XCQ3DnDcQ==
Date: Fri, 17 Feb 2023 15:14:42 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yoann Congal <yoann.congal@smile.fr>, davidskeck@fastmail.com,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] Importance of ECC RAM on the build computer
Message-ID: <Y++L0sgJGNkyElAq@mail.local>
References: <D36X.1676610504336239737.JLfk@lists.yoctoproject.org>
 <CAMSfU+6Vi+ff0sog4EvyTYZQEAaGnUXMDdoe5+ns=T30N-a1iQ@mail.gmail.com>
 <CANNYZj_gGvuJQhPD26C=v9ywja6UwYDa6O=b5CJkdHkJh_bKMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANNYZj_gGvuJQhPD26C=v9ywja6UwYDa6O=b5CJkdHkJh_bKMQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 14:14:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59241

On 17/02/2023 10:41:37+0100, Alexander Kanavin wrote:
> On the other hand, I'm yet to hear an actual case of a broken build
> due to non-ECC. It's not impossible, but it seems exceedingly rare.
> You're far more likely to spend 100x as much time on logical errors or
> out-of-resources problems.

It actually happened in one of our build, were we had a bitflip in the
final binary which was then not working as expected.

We also had multiple cases of headers/source file corruption after the
tarball is extracted but usually those are either caught by the compiler
or don't matter at all.

> 
> Alex
> 
> On Fri, 17 Feb 2023 at 09:31, Yoann Congal <yoann.congal@smile.fr> wrote:
> >
> > Hi!
> >
> > Le ven. 17 f�vr. 2023 � 06:08, <davidskeck@fastmail.com> a �crit :
> >>
> >> Is there generally suggested advice regarding the importance of ECC on the build computer? I'm very new to Yocto so I'm not sure if there is a chance the final build image could experience some corruption due to flipped bits in RAM or if I'm totally overthinking this.
> >
> >
> > Last time I checked. The ECC vs non-ECC price difference was not worth the time you may spend in case of a RAM bitflip.
> > Here, we put ECC RAM in our build systems and I guess it's quite the industry standard.
> >
> >> It is also possible that Yocto does some kind of CRC checking of its own that makes this a non-issue. Any guidance would be appreciated. Thank you!
> >
> >
> > Yocto does source integrity checks (the stuff it downloads from the internet) but it can't do much more after that.
> >
> > I've yet to debug a RAM bitflip but I guess it may trigger any kind of weird behavior which may be hard to debug and time consuming.
> >
> > My advice is : keep your time and sanity, use ECC RAM.
> >
> > Regards,
> > --
> > Yoann Congal
> > Smile ECS - Expert technique
> >
> > 
> >

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59239): https://lists.yoctoproject.org/g/yocto/message/59239
> Mute This Topic: https://lists.yoctoproject.org/mt/97022997/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

