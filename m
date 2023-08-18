Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81E80C71144
	for <webhook@archiver.kernel.org>; Fri, 18 Aug 2023 12:41:22 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.10005.1692362473894656024
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Aug 2023 05:41:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inside-m2m.de header.s=default header.b=bMqO9pba;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1692362471;
	bh=yV2YAY9wVnpEfY+6uD68ofG9oDtzM44e+c943RlMEJk=;
	h=Date:From:To:Subject:From;
	b=bMqO9pba2ReAoOM9VLslfnoyfCIVb8QbuBGwSxSr65Xf8JmCV5gbEVDCV6PgrXWxd
	 7jSB0BNBFhtsiZQOC0M1mLL+qssCtoFS5HvCiBK7kgRRacAinjtCPusmWMWk3poDIK
	 rpwXQfMyGFsZi2wkO9TLsb/HbVM35lzOc7z2e29fE+Z3upgVL+YUBM0AgCwd60I4mi
	 9xXdrHEdd0aMuOFl9A/guA8w/fcRsWsouD2XGpZi13inLwNzQLqsKy2WEHAnL3LpPg
	 rgymGEpx8AVZbN61qelvixyk7M7NiGJS+v53bAXCX0rTYTkvgbZeVC7IUWlz4fJNEC
	 pUj1v6u72wXgg==
Received: from insidem2ms-MacBook-Pro.local (unknown [94.31.97.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id CFFC34034E
	for <yocto@lists.yoctoproject.org>; Fri, 18 Aug 2023 14:41:09 +0200 (CEST)
Date: Fri, 18 Aug 2023 14:41:08 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: Pick up ${PV} dynamically from environment or file or filename
Message-ID: <ZN9m5Edu4sszrpcx@insidem2ms-MacBook-Pro.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Aug 2023 12:41:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60823


Dear community,
I need to build a recipe which does not now, which actual version the
source file(s) has.

So is it possible, to pick up a version preliminary from either
environment, the content of an existing auxiliary file or from the
structure of the source file itself?

Say, if theres is something like bla-1.23.jar I could look vor a jar
beginning with bla, suffix .jar and construct 1.23 as ${PV} to use in
the SRC_URI. Also possible is to provide a file with version info to be
read or prepare the ENV.

Kind Regards
Konstantin

