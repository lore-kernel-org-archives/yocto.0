Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66B4C47089
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:06 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com
 (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web12.4592.1650434545426471777
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Apr 2022 23:02:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=f1RLIszA;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23,
 mailfrom: 0101018045908f0d-aec445aa-251d-4dcd-a10d-8d0ead780069-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1650434544; h=To:Cc:Subject:Message-Id:Date:From;
	bh=WYoyWgxkd6AQGjdw7pzh10vtUdzGAVXuUopV6s2vbyQ=;
	b=f1RLIszA+6sp/iTl03jZm2uO3AtFUvNFbD7TMk9mkTNlV8ZehuBmdnWGE1D9GZT6
	OKrXUzNOm2CG0LpJG7tTjtrYRx1R1qSbA7RcSfbpDZLHr/7bxGYNAsotEFXk6Mr2gtC
	WPNJvQZ6l+PvGUWYihUWgLMvp+YAUT22zVxrmK6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650434544;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=WYoyWgxkd6AQGjdw7pzh10vtUdzGAVXuUopV6s2vbyQ=;
	b=bL+vzsbrxZDQWMONiyPtckVrxMFqs2SdZigBcuCpj+v8/+NPICLx2Ksg8iPYpF8H
	PABd3UzZSKLemiQMaiJ/JUwAg0VK90W3LpMzigx+30jtrb/AoTVuNdarEMdirZ4Jyft
	cNbHC7OSJzFKFFrS1kYQsowO2maBNdKY0qXZcIAc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.3.6.rc1)
Message-ID: 
 <0101018045908f0d-aec445aa-251d-4dcd-a10d-8d0ead780069-000000@us-west-2.amazonses.com>
Date: Wed, 20 Apr 2022 06:02:23 +0000
From: pokybuild@yoctoproject.org (Pokybuild User)
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56815


A build flagged for QA (yocto-3.3.6.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.3.6.rc1


Build hash information: 

bitbake: d01d8326331cfe59208674cfc53aa26c0028b313
meta-agl: ca53308f8803fb50709b3f17bb1f9e476366bb62
meta-arm: 878fabbfc720da7d634ed9a2c0e24d4b8845ea20
meta-aws: 6801abf40bb255a31bce5061c5c6b72f5e2a8f58
meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
meta-intel: 16bfef2d1e0d0c8c596741d0bbb820541c432f6d
meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
meta-openembedded: a970ee45c2335c37041ad1658323481874bb4f0e
oecore: fbbb689c8df7f82644b8a9bc5bb6884bc6516660
poky: eee9fba7b4d5d7a268a495688039027390894e6d



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

