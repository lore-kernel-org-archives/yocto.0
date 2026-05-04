Return-Path: <francesco@valla.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 281AAFF885A
	for <webhook@archiver.kernel.org>; Mon,  4 May 2026 17:58:36 +0000 (UTC)
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.21087.1777917507381153567
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 10:58:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@antispam.mailspamprotection.com header.s=default header.b=L8atV+fI;
 dkim=pass header.i=@valla.it header.s=default header.b=TEOh7P95;
 spf=pass (domain: valla.it, ip: 185.56.87.4, mailfrom: francesco@valla.it)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-bncl.prod.antispam.mailspamprotection.com; s=arckey; t=1777917507;
	 b=ASreCoN1f/yw0dcuG1ysE5Q/ucJhN25l7smBREdvRMbw5lKFo6Wp63RbXIJ93X83n7amIIY5Oz
	  FwVMzvMiSlZ5+CCH6l7abzxwKHCQXFzcXJr4egC9NPro+5PyKqQLakw8hboV9lYD87PRHJSECz
	  8dNGCjUpxPs+nNabOM7S9jXjLtyCzSuIf3aE34LPo9d2B5dfLnBn7FlcehtBNjmMDYTa6nWphJ
	  YY68GI44tEpXXbieR3JY8nJM5iEFgDii+11wOfgWXHizWpp5tgjuzEtN/6BsFrzlBURj4t7lG5
	  qC44W/JzXnqqE2w+Io9kCWXuLcsiSedNK4ad3eccgUXtGw==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-bncl.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-bncl.prod.antispam.mailspamprotection.com; s=arckey; t=1777917507;
	bh=1uBFSoRPXN/OQAVh0ZeE9cYYIJj0/tteY67jBR8orPI=;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:From:
	  Date:DKIM-Signature:DKIM-Signature;
	b=2LwLKf+jw7e1DcPc3p+EJnVkj0u0rIjD8Elo8bIAr9vdivtq/paQ7tbWVyLnQWnbNPTu3oSyLw
	  0Mfe554RhbXK2ZhwkQgqTtrDn6DsqhMoCFAECOlmzXtTHhb4YqUU4gum4g7LW4LbPi5Msv/9gd
	  NSn3g2q7ffSkrukuSZJl91w4Uv8MRnWM5pjD8SO/ZmcSQaYBFc9xDKTDaCzhhGRp5Vmp2OIFvC
	  kBrW60+22Riw+PKOLoGOQvGx1dUES0jU5tqofBwcikacoR5uLGAajWL7Fg5uvLCoYBBryOvTHC
	  QHYdtuv6bFUCT0UdWf4aqNopYSclWlIG94NdwuOdl0eWbQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	List-Unsubscribe:Content-Transfer-Encoding;
	bh=rrhiH/KKz0Wct2z8IZeynEkVtIuL/US2iCUeMiBPJJc=; b=L8atV+fI7n/XhE3P1YKR2yn82n
	+SYz21jpBilZeFxT0rpdyKufNI1mqXSLZG6FoWuSN3zKp7dY4kc7njv7w55+yAomW8d0My8FdMNow
	jLtlsjeljxRNAvykdk8eCWgS1w8JRnfyG1LjQuRePJZIMwwwJiMiUrp7Mlc1/NF1/iSU=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-bncl.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <francesco@valla.it>)
	id 1wJxYk-00000005I1S-0rEK
	for yocto@lists.yoctoproject.org;
	Mon, 04 May 2026 17:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:To:From:Date:cc:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=rrhiH/KKz0Wct2z8IZeynEkVtIuL/US2iCUeMiBPJJc=; b=TEOh7P95gXrhJZ8Ez/BoZ1GGt6
	abVofC30wuhioTStxpP7h9HuOjvCgXCiKEoJ9SBZwxu3EgTFIt06kCPTJwVreAQZMVIy7Cyal3lz5
	UgpbWW8j3xYWIYAUGHc73+wJkKb3Lz/7v1NzsPwO7BGkBCe7JqgDuJ3qE8vFqYbhKea4=;
Received: from [95.248.129.24] (port=61131 helo=bywater)
	by esm19.siteground.biz with essmtpa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <francesco@valla.it>)
	id 1wJxYd-00000000MNV-1cCA;
	Mon, 04 May 2026 17:58:15 +0000
Date: Mon, 4 May 2026 19:58:13 +0200
From: Francesco Valla <francesco@valla.it>
To: yocto@lists.yoctoproject.org, michael.opdenacker@rootcommit.com
Subject: Re: [yocto] Simple solution to create a non-root partition image?
Message-ID: <afjcHHSs2HjRvOrW@bywater>
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: c6a8f8e1b9d229dada0b476a1ff36ed3
X-AntiAbuse: ID - c6a8f8e1b9d229dada0b476a1ff36ed3
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1wJxYk-00000005I1S-0rEK-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-bncl.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 17:58:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66476

Hi Michael,

On Sun, May 03, 2026 at 10:40:02PM +0200, Michael Opdenacker wrote:
> Greetings,
> 
> For an ongoing project with a read-only root filesystem, I'd like to create
> an image for a non-root partition.
> 
> To give you some context, this partition would contain data and scripts to
> be used at first boot to do per device provisioning work. Some of these
> would be removed after provisioning, as they could tip attackers about how
> secrets are stored if they get their hands on devices that haven't been
> provisioned yet. Hence, these cannot be in the read-only root filesystem.
> 
> To create such an image, I tried to create a new image recipe inheriting the
> "image" class, and then install some packages into the image with a "local"
> IMAGE_INSTALL list.
> 
> This seems it could work, but I'm struggling with removing dependencies
> (bootloader, kernel, etc) that are only relevant for a root filesystem
> image.
> 

in case you need to have a "full" filesystem, which not only includes
the provisioning tools but e.g. also their dependencies that you don't
want to include in the rootfs, an option might be mimic'ing what is done
for the initramfs [1]:

IMAGE_FEATURES = ""
IMAGE_LINGUAS = ""
PACKAGE_INSTALL = " \
        foo \
        bar \
        baz \
"

PACKAGE_EXCLUDE = "kernel-image-*"

IMAGE_NAME_SUFFIX ?= ""

inherit image


Note there the usage of PACKAGE_INSTALL instead of IMAGE_INSTALL.

[1] https://git.openembedded.org/openembedded-core/tree/meta/recipes-core/images/core-image-initramfs-boot.bb?h=styhead

> Would there be a simpler way to create a non root partition image?
> 
> Thanks in advance
> Cheers
> Michael.

Regards,
Francesco


