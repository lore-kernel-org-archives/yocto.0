Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97502EE4997
	for <webhook@archiver.kernel.org>; Fri, 18 Aug 2023 20:33:24 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.807.1692390795949773890
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Aug 2023 13:33:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inside-m2m.de header.s=default header.b=ZS2Gqgsz;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1692390787;
	bh=CXh4Z1+2GFinzYSzdgZrodcdM3nN08scB5fUT/RLcLI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZS2GqgszNaOygx6Vjw0YiJr2Y/vL8bzZ409OU+wmm0CnVYNETTlG27Oj3+NsTmnRF
	 CNz5ua5NzHn8jRykLIQ4GB8FnkNw2pOBDR2To7xhIb/ovdWagBlgzeuLcwooxpzshZ
	 a6aM7pqI3PlwzhjcrxNfppWLPh52SxLogyBr+zCf5M0vlYGaeQA9g0ce0CzIjnjmla
	 ms/wY35Cr9WrMey4lF15M5ULhAxVOIteUf8P5Wer9TF1P0tpPV5YKrtiNDbzbNjWJ8
	 tu1lAVtktx2bgAq1BwwzKTd+c8QauqS1J94lu9l4kOgLWF8OnMQCXqtQU4FkDBg9Vz
	 v4VRp6+JL8Unw==
Received: from insidem2ms-MacBook-Pro.local (unknown [94.31.97.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id DFBAB40188;
	Fri, 18 Aug 2023 22:33:06 +0200 (CEST)
Date: Fri, 18 Aug 2023 22:33:01 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Pick up ${PV} dynamically from environment or file or
 filename
Message-ID: <ZN_VfdJcE28H6sFX@insidem2ms-MacBook-Pro.local>
References: <ZN9m5Edu4sszrpcx@insidem2ms-MacBook-Pro.local>
 <CANNYZj969r-C5WBSHmCweE_WB_Xwxgc-0jhXTZ+ECDWvYoyXCg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj969r-C5WBSHmCweE_WB_Xwxgc-0jhXTZ+ECDWvYoyXCg@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Aug 2023 20:33:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60825

On Fri, Aug 18, 2023 at 05:30:50PM +0200, Alexander Kanavin wrote:
> You probably need to explain the use case. Why do you want to do
> something like that?

The yocto build is happening in a gitlab runner thingy.

What happens before is that inedependently from the yocto build is that
my colleauges are running a maven build which provides java jar files.

And I do not know on my side what version they are doing. It could
happen even that it alternates between X.Y.Z and X.Y.Z-SNAPSHOT.

Then my yocto comes and is picking those jars up and integrates them into
the rootfs to be started there by java. They are not processed or
executed or compiled, they are copied into the rootfs, symlinkd and
integrated into a systemd start.

Colleauges maven build: Their git tree.
Yocto build: My git tree.

> Generally, Yocto cares about build reproducibility, a lot. Thus,
> source must be stable, and verified against a checksum of some kind.

I learned to love its build reliability because of such stuff too.

Konsti

