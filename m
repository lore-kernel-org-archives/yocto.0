Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0DCFF885E
	for <webhook@archiver.kernel.org>; Mon, 27 Apr 2026 12:48:33 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.44424.1777294105723979265
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2026 05:48:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=qPMs2GOl;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zSrUCP2binLjlGLWd9aBNY30bSIAX7T4KZ6hC2I18EA=; b=qPMs2GOlAm3k69WxMxdm38r1x6
	AnmXoF0HPgTQln4WOhZ267HX286gLCUs8/93uVnymwK+Zh90CImcKdfp5IV1SgwWDTjnu6yb4sY/g
	iaNpH+6Qhg9mG3po0R0tuWZBkSp3ywb9wukQyfN8C7vWRp33gKFm4NzyDF0Jv02agx/ts8wCSQo1U
	qA0EkECC/A4PDg62y8qzhS3qRKAEsQU6HLAaq68RpGeM5Jp+tJyLZ0ezzduRSRRN5alVSE2epeTOv
	L9j4g45jVMeDUChs/JsMnFIDVWwgayEiauGpM1TzV5sTimLwD3RFpcQq6+aOQ0TmBlpkIcDCxs16+
	/1rNE7nQ==;
Received: from [147.129.179.166] (port=53280 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1wHLNv-0000000HZKu-2qoe
	for yocto@lists.yoctoproject.org;
	Mon, 27 Apr 2026 08:48:24 -0400
Date: Mon, 27 Apr 2026 08:50:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Chance of success building "wrynose" core-image-minimal for Orange
 Pi 5 Pro?
Message-ID: <e5d5e6f3-56db-4451-794f-fef25613cf68@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Mon, 27 Apr 2026 12:48:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66446


  Even though wrynose is not officially out, a colleague handed me an
Orange Pi 5 Pro ("Orange Pi 5 Pro 16GB LPDDR5 Rockchip RK3588S") and
asked me to see if I could configure and build a simple image using
layers that were as close to imminent wrynose as possible, so while
I've just started a build in another window, can I impose to see if
anyone can spot any flaws in what I'm doing, or perhaps say that just
isn't going to work?

  First, the repos I'm using:

  - bitbake: branch "2.18"
  - openembedded-core: branch "wrynose"
  - meta-rockchip: branch "wrynose"
  - meta-arm: branch "master" (no wrynose branch)

Relevant part of local.conf (as I don't see a machine file for the
Pro, I'm using the one for the Plus):

  MACHINE = "orangepi-5-plus"
  DISTRO = "nodistro"

That's pretty much it -- all the fetching succeeded and my laptop is
chugging away building "virtual/kernel" before I move on to building
the remaining pieces and the final image. Is this at least a
reasonable first attempt to get a simple bootable image?

rday



