Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BE69C54E58
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 00:03:40 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web10.11818.1710374616345561605
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 17:03:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=U8DC87Iu;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=clobFJMg;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101018e3a457956-327c6d93-de66-472d-859d-7bf581132908-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1710374615; h=To:Cc:Subject:Message-Id:Date:From;
	bh=NMfDBGywfQKk38svnnEiGLcRunzndE0XcEEVBPb2nYM=;
	b=U8DC87IuFOMjHhv6mVNOYvjQA/jQLSvrItdgUQKFoVV8U5IGzO3DnlL4SmVLTS3e
	LaZjAc8B2DnRd8ZKdnNwZwASqBpNpy2Bl4YU1yhkp+8UH6fuqoBhHRtIucaXk7Ut1zU
	qWR7HeaxdVucRlI7tA4iYMYU5NWFhBm7B2qawdL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1710374615;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=NMfDBGywfQKk38svnnEiGLcRunzndE0XcEEVBPb2nYM=;
	b=clobFJMgbH2cpSKtSNHKeP7eh7xNLnRCAmoS9T96pwTdhcEDbqH9e8z/LZkaiatO
	+Ze6OWuX0a/JrqXn+hEjAsL3M+TtdWb0rdnYLx3yqcLtOjb+PCTOUvQgyZuNmCqqqd0
	AYlbKiZt+MrLnLr8TZT6bZk0mTlbUqW9AgJJLQPs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.17.rc1)
Message-ID: <0101018e3a457956-327c6d93-de66-472d-859d-7bf581132908-000000@us-west-2.amazonses.com>
Date: Thu, 14 Mar 2024 00:03:35 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.03.14-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 00:03:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62756


A build flagged for QA (yocto-4.0.17.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.17.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6676

Build hash information: 

bitbake: 40fd5f4eef7460ca67f32cfce8e229e67e1ff607
meta-agl: 3fb5640211e4c3874036a6d4a61e852b348eb4ad
meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
meta-aws: 11e0184fb8062c5384085e9c91339f76ccf191f4
meta-clang: eebe4ff2e539f3ffb01c5060cc4ca8b226ea8b52
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: f932ebb2544170f43edd22739f44307809bf8cfb
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: fda737ec0cc1d2a5217548a560074a8e4d5ec580
meta-virtualization: 7902664f89678164b7fc90d421cee74cbec51cdf
oecore: 2501534c9581c6c3439f525d630be11554a57d24
poky: 6d1a878bbf24c66f7186b270f823fcdf82e35383



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

