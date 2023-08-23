Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8228EE49B0
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 08:56:05 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.7359.1692780962830424286
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 01:56:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inside-m2m.de header.s=default header.b=GiV6d0CS;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1692780959;
	bh=sPle6vmpqs7+ITxXGwU3KkK7RUe21B77zuoL9S8fVPs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GiV6d0CSDEg4+fZQ0QZqEOfvN3nV3c/hIdtjq19P1z/ERYoAOD5OSSYPNes97gHxv
	 LzirAudmfvD6hPpPpcMgp1sN2lcuP9YvNr2h+0ICD0ilg9pVPeqcnHSRiaVXJjeHlx
	 VJUgZ4gav1x2jqa309oLRM3/sxnajmOLJZ/eMRKPltob30RV9LtSYFjQGQRBSiCeRS
	 MOnvsFRs7TOlCgDV6ojexuNb6+AAU5z8SjXHFkpEvMNf00CPvhKCvEMPE6IL0r62rZ
	 xGuFwia94yr5jCoxYUJxpAFy0S/ZEFIqJMkjSZ7iel8ZHoxPahBoulttufu4aS7HGV
	 46TXk/mIQsyfA==
Received: from insidem2ms-MBP.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id B05714019E;
	Wed, 23 Aug 2023 10:55:58 +0200 (CEST)
Date: Wed, 23 Aug 2023 10:55:57 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Pick up ${PV} dynamically from environment or file or
 filename
Message-ID: <ZOXJnRjGPgI0af2_@insidem2ms-MBP.inside-m2m.de>
References: <ZN9m5Edu4sszrpcx@insidem2ms-MacBook-Pro.local>
 <CANNYZj969r-C5WBSHmCweE_WB_Xwxgc-0jhXTZ+ECDWvYoyXCg@mail.gmail.com>
 <ZN_VfdJcE28H6sFX@insidem2ms-MacBook-Pro.local>
 <CO6PR02MB8740665A96A2D7D62109554FB21BA@CO6PR02MB8740.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CO6PR02MB8740665A96A2D7D62109554FB21BA@CO6PR02MB8740.namprd02.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 08:56:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60855

On Fri, Aug 18, 2023 at 08:48:46PM +0000, Darcy Watkins wrote:

> Then make use of the GIT AUTOREV facility to fetch from that GIT repo.

Interesting idea which I will track in the future, thank you very much!

Regards
Konstantin

