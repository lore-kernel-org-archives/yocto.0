Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD382CCF9F0
	for <webhook@archiver.kernel.org>; Wed, 29 Oct 2025 15:14:28 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web10.8208.1761750867811352551
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Oct 2025 08:14:28 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id DCFD740C56;
	Wed, 29 Oct 2025 15:14:26 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ote2xDpKxlD5; Wed, 29 Oct 2025 15:14:26 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-87-159.washdc.fios.verizon.net [100.15.87.159])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id A81DA407DA;
	Wed, 29 Oct 2025 15:14:24 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id DC9E116E5E3; Wed, 29 Oct 2025 11:14:23 -0400 (EDT)
Date: Wed, 29 Oct 2025 11:14:23 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, skandigraun@gmail.com
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: add
 meta-beagle sublayer of meta-ti to check-layer
Message-ID: <20251029151423.GE3125@denix.org>
References: <18692C680F0ED8BC.31910@lists.yoctoproject.org>
 <20251028155114.GD3125@denix.org>
 <498ad45f-6a80-4d1f-bf07-92babf68e225@gmail.com>
 <d1feed09d97a4de0413dc2af3452bb949c9deef4.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d1feed09d97a4de0413dc2af3452bb949c9deef4.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Oct 2025 15:14:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65982

On Wed, Oct 29, 2025 at 03:00:06PM +0000, Richard Purdie wrote:
> On Wed, 2025-10-29 at 14:05 +0100, Gyorgy Sarvari via lists.yoctoproject.org wrote:
> > On 10/28/25 16:51, Denys Dmytriyenko via lists.yoctoproject.org wrote:
> > > Hi Richard,
> > > 
> > > I know you are overloaded with the release and getting bitbake-setup working 
> > > on the AB. While this change is not critical, I just wanted to make sure it's 
> > > in for the YP Compat v3 launch. Thanks.
> > 
> > Though I'm not Richard, I think for good measure maybe you want to send
> > this patch to the yocto-patches ML too - that's where AB patches
> > supposed to go according to the readme. I'd expect the chances to be
> > seen are better there.

Yeah, I completely forgot about that new list...


> Which is why it fell through the cracks. I've merged it now though.

Thanks!

-- 
Denys

