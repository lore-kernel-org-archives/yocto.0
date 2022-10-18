Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09162C433FE
	for <webhook@archiver.kernel.org>; Tue, 18 Oct 2022 10:56:50 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web09.5439.1666090606989572251
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 03:56:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=IQ7etmKg;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 4B7B440002;
	Tue, 18 Oct 2022 12:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1666090602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=O2UCjJq2PjQ2wGlaKXDGhNW6rU+gyF2PmxUKWF9V6k0=;
	b=IQ7etmKgwQwuwuGhYc4kmo/kkBWaFuUXpN2UQUQk4a9pMVQZq95hBcQTv9tVMPlVHE3ym2
	/Ef1DwS22sRlK4pXxewb8tbeLxKd+CToLf76Db/HrvdRHVCXMIaDIclXlphnu1NLQYF4lq
	DGKLu/GgFqFuYLZbocAjfuvhAuWtmF4=
Date: Tue, 18 Oct 2022 12:56:41 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Dealing with go dependencies in recipes - native
 docker-compose
Message-ID: <Y06GaXT/pwZ8eSS+@aglaia.inside-m2m.de>
References: <Y0WtLKYWtdcM9wIp@Hephaistos.local>
 <CADkTA4PEob-LJpM_oEkxO-hbyLq5DnENFOaYzvkhnKvu8hziqQ@mail.gmail.com>
 <Y0gbF+3+kU0Z3UW8@aglaia.inside-m2m.de>
 <CADkTA4MmC_PCX8+XiXD_dX+aSnfBRtkoP0LzwyGi=PMNpArssQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADkTA4MmC_PCX8+XiXD_dX+aSnfBRtkoP0LzwyGi=PMNpArssQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 10:56:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58354

On Sun, Oct 16, 2022 at 10:28:18PM -0400, Bruce Ashfield wrote:

> FYI: Here's the very lightly tested RFC version of the recipe:
> 
> https://git.yoctoproject.org/meta-virtualization/commit/?h=master-next&id=fa24cfc08b129de5c7ba36099985359cc0228630

Thanks for the kind notification.

My stuff is based upon kirkstone, I stuffed the recipe from master-next
into my kirkstone build. One package of this new docker-compose is depending
upon go-1.19 (kirkstone provides go-1.17) so I pulled in go-1.19 from
langdale also into my kirkstone build.

The compiling and building works just fine! The recipe(s) for
docker-compose look impressive, I would not have expected them being so
complex. But they work.

Two notes:

After installing the package provides /bin/docker-compose. I realized
other parties provide this as /usr/lib/docker/cli-plugins/docker-compose
which make something like "docker compose version" working. For me this
does not harm, only as remark. May be this is intentional.

Upon investigating I realized the version reported by docker-compose is
"dev" instead of the expected "v2.11.2".

Great work, thank you!

Regards Konstantin


