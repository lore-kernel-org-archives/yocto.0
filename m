Return-Path: <francesco@valla.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E11DF55103
	for <webhook@archiver.kernel.org>; Sat,  7 Mar 2026 16:50:48 +0000 (UTC)
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.11])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12717.1772902245362919576
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Mar 2026 08:50:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@antispam.mailspamprotection.com header.s=default header.b=Zr+k8iIE;
 dkim=pass header.i=@valla.it header.s=default header.b=JSiAu+iH;
 spf=pass (domain: valla.it, ip: 185.56.87.11, mailfrom: francesco@valla.it)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-qzlj.prod.antispam.mailspamprotection.com; s=arckey; t=1772902245;
	 b=gnzYJM99aOX7oAIDTpVrHIAqKqPfsJ9BdyPBD7vw2C3C/JlkbrB6EaUYeIDEzjTtHFGOOoyYYK
	  ctdCCLLy3pIwmt1KhxlG8EfojSQL38tZ3QRZK09/54lcNQT1+rCHyo9Go6fy4I7j0+fdjlhDHq
	  KEQ3IB4DuFZc7lQmbBBFvueBt9Bp8HyPcwQ7Nr/qQsveVyeLIik3c/g6gG31lu9plR/3l19CKM
	  xYYLCkfxMOwlBV3iwNGAIsbk5niI2WBL8hpGRgLdmZRYfqVqj/PKgbSiwHeymvMmU8lm0NXVkm
	  ELmKQzX8TKKTVZDB/ZRC5MOWuSDVwm1PBp0Wpn0j9f3/cA==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-qzlj.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-qzlj.prod.antispam.mailspamprotection.com; s=arckey; t=1772902245;
	bh=7DPbmgPyyYOqabaQupl0dWvZt8C0R2EAps3lTxtueAs=;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:From:
	  Date:DKIM-Signature:DKIM-Signature;
	b=lzBBB7tXbFTaUDxcXS6wOQbBsqNIsnM7ZBVeA+t+0tFI9hHsUf/6q/52I6xUNvWr+qB3jVb6vv
	  6UY2S93NBVseSJ/zsBF7i0Z8wVBWF1P3Zf3R3bCPZbu5spxp1C2eoGmB/o9wyRegsLRDvY88Y/
	  mgui5Yu1S9uG/3kSDe7Axpd9wzeczSmwq6EOA4hi21M3sn93D63sNt7LZEIrbjo9Afi/guttTH
	  +iAstb3W+qbWZfOuAC+2KgcYhjxTotpQnnfXMMVmHubLqj3sOZj98oL0yhKI/mt9l8DNAP1Xb5
	  S7pv63MR4IQoR/3TF+qpbIJ0NTQrWIFOCWVNS55P/gHxUw==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	List-Unsubscribe:Content-Transfer-Encoding;
	bh=JanzPknNP3S77nQbYefoWWuONMwlZM9R0BZPIh6nLNg=; b=Zr+k8iIEETdhC0cq3HBb0ohWac
	rmLd8uvgYikJ48rIQAbQmJ0jRCaKUUZtam01lZnw1q9rm66cdi3vzS7Im6K0y2139BQe7UtEmeBw9
	+O3tyPz9+YBUfUqaD6aGF8RZAIO8dNGgTm/MT3Qpc/SG/ASGAveXSM9d/QwiOhm7XUdE=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-qzlj.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vyurQ-0000000CDMW-2Qke
	for yocto@lists.yoctoproject.org;
	Sat, 07 Mar 2026 16:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:To:From:Date:cc:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=JanzPknNP3S77nQbYefoWWuONMwlZM9R0BZPIh6nLNg=; b=JSiAu+iHPNrNbir3zTPs77y3Yv
	V+gZHvSci18GoT5XuH2SqorKg1wGsk+MmVFzYQf3W0VRp6UuyS6RxBdB2pIagV5ay489SMKmT/CnE
	ghwHb/XIefv3CPYBkoSh6Mf6ftXd5k0RLjs9nFHyOZvsg15ZlsF9mQUKoHFvi9PPAh1g=;
Received: from [82.57.88.19] (port=61234 helo=bywater)
	by esm19.siteground.biz with essmtpa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <francesco@valla.it>)
	id 1vyurI-000000008uG-43dk;
	Sat, 07 Mar 2026 16:50:33 +0000
Date: Sat, 7 Mar 2026 17:50:31 +0100
From: Francesco Valla <francesco@valla.it>
To: yocto@lists.yoctoproject.org, jmeyron@gmail.com
Subject: Re: [yocto] Finer build time dependencies to optimize sysroot
 preparation time
Message-ID: <aaxQ9lsb9v0LDnAV@bywater>
References: <4vYP.1772795844241663957.UURR@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4vYP.1772795844241663957.UURR@lists.yoctoproject.org>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 620d984886c8488551a6161eaa6de19e
X-AntiAbuse: ID - 620d984886c8488551a6161eaa6de19e
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vyurQ-0000000CDMW-2Qke-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-qzlj.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 07 Mar 2026 16:50:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66309

Hello Jocelyn,

On Fri, Mar 06, 2026 at 03:17:24AM -0800, Jocelyn Meyron via lists.yoctoproject.org wrote:
> Hello everyone,
> 
> I'm trying to solve the following problem (I'm using the latest scarthgap release):
> - I have a recipe A whose job is to aggregate libraries produced by multiple recipes (basically aggregate a bunch of static libraries into a shared one to reduce the file system size).
> - Right now, I added the list of recipes into the "DEPENDS" variable of recipe A. This works but this implies that all the files installed by the other recipes are copied into the sysroot of recipe A. The issue is that the other recipes package also header filers, source files, and other libraries, leading to slow downs in the build process (especially when ran under a static analysis tool).
> 
> I could have packaged the relevant files of the recipes into dedicated subpackages but the main recipe A can't depend on those packages (since only recipes can be used for build time dependencies).
> 
> Does someone have a proposal to work around this issue? Or maybe I need to redesign this "aggregation" recipe?

The sanest solution would probably be to reconsider some of the design
choices, e.g.:

 - design the "multiple recipes" to produce only the relevant files
   (e.g.: why are there source files installed in the sysroot of recipe
   A?)
 - tune the static analyzer to exclude some components, rather than 
   considering the whole sysroot


This considered, as a workaround you can remove unwanted components from
the sysroot of recipe A *after* this has been created, for example
through a postfunc:

remove_unwanted_components () {
	# remove X, Y and Z
	rm ${RECIPE_SYSROOT}${datadir}/my-unwanted-data
}
do_prepare_recipe_sysroot[postfuncs] += " remove_unwanted_components"

This is obviously absolutely non portable and does not scale well, but
should be functional.

> 
> Thank you in advance.

Regards,
Francesco



