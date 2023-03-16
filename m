Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E506C6FD1F
	for <webhook@archiver.kernel.org>; Thu, 16 Mar 2023 05:36:35 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.5943.1678944987982990353
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 22:36:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=WxAMuxhm;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 01010186e8eb6702-b82e038b-e892-43b2-92b5-f45b8eb9944b-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1678944987; h=To:Cc:Subject:Message-Id:Date:From;
	bh=ecjejTIx3XP0vnSuW14GNAZ9SaG9GotLeKMNvPQZVk8=;
	b=WxAMuxhm6o+hXfMoITi62yFKG1tdGr4C5mdWu3gANQUZk93KZEe/M1rbwHiyTiYh
	u10zuI6aMPapbuKsYK8s9X2DKq/k0cMBu8/3IUqx46yw9bv79uazCojcFcLNeryvmcd
	sfN6d11IlIPBzbebyiNnIaPqjyBeisqfIvCxCbn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1678944987;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=ecjejTIx3XP0vnSuW14GNAZ9SaG9GotLeKMNvPQZVk8=;
	b=naIm7OtxRHAtiDzVs+EaPwsa0RDC9oJAvpi6LIC96VvA18v47RH8mf31czWaCH0s
	rYwy19Sage/6nZpVn5jdJS453FYHQ1eSm1rqUBbuBC2huh4uJk4ktyWYVchl6FWhXFo
	wcgnlQGdvv5ig9G5PHzHVaiSgUbDFJuaTJm7Wso8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.24.rc1)
Message-ID: <01010186e8eb6702-b82e038b-e892-43b2-92b5-f45b8eb9944b-000000@us-west-2.amazonses.com>
Date: Thu, 16 Mar 2023 05:36:26 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.03.16-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Mar 2023 05:36:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59437


A build flagged for QA (yocto-3.1.24.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.24.rc1


Build hash information: 

bitbake: a4cd5b0b4b355b7b75fb48c61289700e3e908b2a
meta-agl: 532936bdd0b2639f8a8f9cb495ac2a8ea382737e
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
meta-aws: 70b6bbe05d7a085eb2b902c3b9c456ce762f1db6
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 472ea60857a56c6b08c64af3f6ed8b23d7cb0d21
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 87571345059f82fb7599e3aa82e6fdcfbd361098
meta-virtualization: beea119eb529b4a11f266004aee8b548427aea39
oecore: efb1a73a13907bed3acac8e06053aef3e2ef57f5
poky: 11f05ffddd0a7adf05b1c016f73b10ddfa2daa10



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

