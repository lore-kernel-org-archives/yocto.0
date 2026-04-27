Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CBDFFF8860
	for <webhook@archiver.kernel.org>; Mon, 27 Apr 2026 15:06:08 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.47139.1777302364009891068
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2026 08:06:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=g2q0dBiO;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WVpG7V2pWod4j+Lq9r1G596F0/FgT2j4jp0mJMIN32Y=; b=g2q0dBiOunfsF8w9Bs4hDb+H9U
	IHOAxXo2ifg96SLyiuWvwDsLiGuM2A6k/lBYn8UhTJVDCXSzt/KlzUFYfvQbY3e2nXQ+74ternV+Z
	w8tHs/ibmu2nDAiMJVnnknwQZrZytbyq9Qdv/CcgGeT+xHdGn68omWGSPYSdd0C2vJ/SvKgkUzsgr
	O4pg4kEXATj64JvQsUVgFrt8y9u3UH0YsL/2RdIdufoybuQZob2t+iwaej6UDGQedxkX6SUiICua5
	C2Y2mTe5xpVET6iuqJM5cbJLDZ6zpQ1o71Z42l65q1n8On71bv86Fk9iPRpuTTpwcfWWzSou2IMt1
	o8b6UAwg==;
Received: from [147.129.179.166] (port=36562 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1wHNX7-00000000FHs-1rO2
	for yocto@lists.yoctoproject.org;
	Mon, 27 Apr 2026 11:06:02 -0400
Date: Mon, 27 Apr 2026 11:08:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Chance of success building "wrynose" core-image-minimal
 for Orange Pi 5 Pro?
In-Reply-To: <18AA3792B8B18612.2188217@lists.yoctoproject.org>
Message-ID: <573d8b06-50e8-5da1-5f64-b9449cec8cbe@crashcourse.ca>
References: <18AA3792B8B18612.2188217@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Apr 2026 15:06:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66447

On Mon, 27 Apr 2026, Robert P. J. Day wrote:

>
>   Even though wrynose is not officially out, a colleague handed me an
> Orange Pi 5 Pro ("Orange Pi 5 Pro 16GB LPDDR5 Rockchip RK3588S") and
> asked me to see if I could configure and build a simple image using
> layers that were as close to imminent wrynose as possible, so while
> I've just started a build in another window, can I impose to see if
> anyone can spot any flaws in what I'm doing, or perhaps say that just
> isn't going to work?
>
>   First, the repos I'm using:
>
>   - bitbake: branch "2.18"
>   - openembedded-core: branch "wrynose"
>   - meta-rockchip: branch "wrynose"
>   - meta-arm: branch "master" (no wrynose branch)
>
> Relevant part of local.conf (as I don't see a machine file for the
> Pro, I'm using the one for the Plus):
>
>   MACHINE = "orangepi-5-plus"
>   DISTRO = "nodistro"
>
> That's pretty much it -- all the fetching succeeded and my laptop is
> chugging away building "virtual/kernel" before I move on to building
> the remaining pieces and the final image. Is this at least a
> reasonable first attempt to get a simple bootable image?

  Well, that wasn't as tricky as I thought. First observation was that
trying to run a Plus image on a Pro was not the way to go -- got these
boot errors after which the boot hung:

[   12.397294] fan53555-regulator 1-0042: FAN53555 Option[0] Rev[0] Detected!
[   12.397957] fan53555-regulator 1-0042: Chip ID 0 not supported!
[   12.398511] fan53555-regulator 1-0042: error -EINVAL: Failed to setup device!
[   12.399372] fan53555-regulator 1-0042: probe with driver fan53555-regulator failed with error -22

so based on some online pointers, I defined a "generic" Orange Pi 5
machine (for which all the underlying RK3588S content was already
mostly there), built for that new machine, and got a successful boot.
Just means I'm not including any Pro-specific features (yet), but all
I wanted was a bootable image.

rday

