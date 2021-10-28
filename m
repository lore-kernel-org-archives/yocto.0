Return-Path: <patrick.boettcher@posteo.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BE5C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Oct 2021 22:21:32 +0000 (UTC)
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
 by mx.groups.io with SMTP id smtpd.web12.1053.1635459690821001608
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Oct 2021 15:21:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@posteo.de header.s=2017 header.b=F3gjI8w0;
 spf=pass (domain: posteo.de, ip: 185.67.36.66,
 mailfrom: patrick.boettcher@posteo.de)
Received: from submission (posteo.de [89.146.220.130])
	by mout02.posteo.de (Postfix) with ESMTPS id AF6E6240101
	for <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 00:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1635459687; bh=ZLBc6pvgdyitlpS0AuEq/iZmt2Bn8frqloY735DHbq8=;
	h=Date:From:To:Subject:From;
	b=F3gjI8w0i2sQoiC8HcnM8v7skNF3XJkfEjI6jKretbe+npla7k2VQ/qAUYTnBAs3z
	 kvjkb+2yNE85WjGrJZYYwn+vIWKPu5fJHNV29bsY5ryRmjekBwBJuSm8oXoyI2rXs6
	 recNaJhPhDc/Mp31LJWhnlsgWY3pPd2uJ7GcTenMx0HCgWP1xQGFDhLG+CtGDrmmBx
	 wW836GCZTnoULnfuWQ3nRjPxdeBIoc43Yk/H9o8gl4mnLe8+jB7LigXYHamkw8Kk7B
	 4GpKRNqEeOh6AcKUXhxhNqhP1n5z/yM9+3fmU4lALRH6nLCPNzVgcnLIIH58As5GSg
	 Wy2MYfUVZH/Hw==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4HgKlp3jKxz9rxK;
	Fri, 29 Oct 2021 00:21:26 +0200 (CEST)
Date: Thu, 28 Oct 2021 22:21:25 +0000
From: Patrick Boettcher <patrick.boettcher@posteo.de>
To: yocto@lists.yoctoproject.org, Christophe Blaess <Christophe@Blaess.fr>
Subject: Re: [yocto] Dunfell: problem with kernel-module install and
 libkmod.so
Message-ID: <20211029002125.38343015@yaise-pc1>
In-Reply-To: <16AE4CDF6E5D068F.30006@lists.yoctoproject.org>
References: <16AE4CDF6E5D068F.30006@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Oct 2021 22:21:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55181

On Fri, 15 Oct 2021 20:03:52 +0000
"Patrick Boettcher" <patrick.boettcher@posteo.de> wrote:

>Hi list,
>
>I'm facing an issue with a BSP I created using dunfell (up-to-date on
>poky and oe). I'm using a stable kernel and u-boot 2021.07 from denx's
>mainline-stable-layer.

It was a problem of DDR memory configuration and calibration.

Hard to track, but once you know it, easy to find and fix.

--
Patrick.

