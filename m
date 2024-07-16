Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E79AC3DA59
	for <webhook@archiver.kernel.org>; Tue, 16 Jul 2024 00:59:35 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web10.440.1721091566719984067
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 17:59:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=ENmOUNM7;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=fcuZzyg4;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 01010190b90d28c1-ff0955c5-d7b8-45e8-9c87-d5ecc57878fc-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1721091565; h=To:Cc:Subject:Message-Id:Date:From;
	bh=EoigX1WLSlhLZ6Q4xi4ym0McWZdCmUOEgoUUxc4AKms=;
	b=ENmOUNM7g7Sc6uE8UdGsk0MrxNg4f1WDfaymloFFQq/VrYrh+JbsXC+IbfunzHtH
	gFZ3Ihv5R9bXrrQQk95SOrMiHa8rkO8J3NkwXQqybrXkah4gTUyI0JBVo81IHIZXcz9
	UlPnRCubTywaAUfnfzVcw1MZWEIXzcgJT6R/TFKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1721091565;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=EoigX1WLSlhLZ6Q4xi4ym0McWZdCmUOEgoUUxc4AKms=;
	b=fcuZzyg4vzkyJXvJn7f1J77vIKCPPTqjZMG1/fO2Djtn4iDfKEiv9xZQKhYKJGHT
	Iqu9LYrUGe6qm8rlWygguaj7W2ZNsNZ6ZsJgUSSGhP4IgSP8ipdskaHQLej8yS6kiZy
	La+OFXeTDcSucNU1Pbpcjx0+8WVE5N1S9fDQdyq4=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.20.rc1)
Message-ID: <01010190b90d28c1-ff0955c5-d7b8-45e8-9c87-d5ecc57878fc-000000@us-west-2.amazonses.com>
Date: Tue, 16 Jul 2024 00:59:25 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.07.16-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 00:59:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63503


A build flagged for QA (yocto-4.0.20.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.20.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7140

Build hash information: 

bitbake: 734b0ea3dfe45eb16ee60f0c2c388e22af4040e0
meta-agl: 75c7354a09c17447e0aa04aab945d8d4ea0bae80
meta-arm: 260e3adc2bf322f52d81c0642c825088a88bb051
meta-aws: f8eb3b8a70005655f3aa9f790538088a1dd9d5ff
meta-clang: 2ed384c64e206016c628451672c688e59944381b
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: bb7c7b0f448ab6541ab42a316dfeff1f7726252f
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: 6ff0748a4741517519a281985fc3cd95dadb633e
meta-virtualization: ef76369f844f8b5afea416372172824987ad4fec
oecore: 5d97b0576e98a2cf402abab1a1edcab223545d87
poky: 6bd3969d32730538608e680653e032e66958fe84



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

