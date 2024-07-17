Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C24AC3DA42
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 04:45:32 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web11.8237.1721191530012248445
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jul 2024 21:45:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=RdbHVriJ;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=2uP4Gdfi;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 01010190bf027a1f-d75a0402-7be5-4a91-a98e-e1905f9e0340-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1721191529; h=To:Cc:Subject:Message-Id:Date:From;
	bh=hL61fza70nYc3K52hI5fbcmDSJvH51WBGWrdv+TVPPs=;
	b=RdbHVriJ/Uq+srgeiCMkSveGTCudsMpsWnUbp1wcGF0olavvzLgHQGVS9LiW/5U5
	9y618w9mCR3fUuoz3pfCSunk8Ykjwq69gGT567hYeyYHHY1BYMkqaVnNXLS3tO8TZuv
	7Th7OIX+8uxIUQzteCEVjAIi2LIPp3kyjf3zMWTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1721191529;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=hL61fza70nYc3K52hI5fbcmDSJvH51WBGWrdv+TVPPs=;
	b=2uP4GdfiLRYXm0j6yelcEdQEfeG9j3TQ2oUFCbVIBJQtIaGPCgSXaGGHjTxbscNh
	aJMPCWpHM3sUg/eVGJ1smXsF2wr03Wv49pc1xj22fMGFTN2gk7lNhMkU4/g5veOMLhG
	nWKUlZhoRVZOPiUzhIRNQqsmrlMxsSCImJLtlEQ8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.1_M2.rc1)
Message-ID: <01010190bf027a1f-d75a0402-7be5-4a91-a98e-e1905f9e0340-000000@us-west-2.amazonses.com>
Date: Wed, 17 Jul 2024 04:45:29 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.07.17-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 04:45:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63519


    A build flagged for QA (yocto-5.1_M2.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.1_M2.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7144

    Build hash information: 

    bitbake: 1d7360031164f04887c792fb0b2dd86c6ccfcc23
meta-agl: 3f3bbd3871e5a7a4e9e275e2c957b98515cc30c3
meta-arm: 14d24b5526298cdfd6db65b6e11b54804a6a553f
meta-aws: 4d048eacb5cbdaeb3f37d0427cc8a810a8ba7b69
meta-clang: 1fdde55d951b7a8f1e537ccf56aca2dc90c40091
meta-intel: e97386254712047f27f5554da6470fe3fb65d07a
meta-mingw: e4d377d5ddb62b265536bd33dbccfbb0904f8701
meta-openembedded: f8342855a440fa5c4194fc57285e8db9e034fcaa
meta-virtualization: c138943fed29e768df990061c30d6f071b98ffc3
oecore: 758508614541c68dd6a2b7084e07287c71f40a8f
poky: e18d60deb0496f7c91f2de900d6c024b45b7910a


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

