Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D0EC433F5
	for <webhook@archiver.kernel.org>; Wed,  4 May 2022 02:32:13 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com
 (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web12.2107.1651631528631962124
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 19:32:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=MDdjdh++;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23,
 mailfrom: 010101808ce91651-962b6832-98c0-412d-b766-0b6f9cfbf3e0-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1651631527; h=To:Cc:Subject:Message-Id:Date:From;
	bh=UgJrzjj/BJZDvgT8Wm/D189cXHI0Nv5pT07cvBW7pCo=;
	b=MDdjdh++lnpFLUotnf/jhoZM30CzwK83XD53CPKtO8F2ifA240wH2lPttp/g+Irm
	Sd4Sd5qUEGXL9hmbvofVj5iocoZYpeVZu3UCXBs2BS7yibVwXJGenM9g/8/6BONPl/u
	MdPiYkjmNNVpbYD1ADH0uKI4J8vcJA8WX8qqW3DQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651631527;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=UgJrzjj/BJZDvgT8Wm/D189cXHI0Nv5pT07cvBW7pCo=;
	b=b2WU//Fe45gfDLYK1lWfWy1hnO1OYItksLKmJRTOzwgwrKrw68osQLahgnr8f1g1
	vrkiNLcB60TMy6NxpfM8mFUoI+6nyKzD52DfeaRgE4GHap9fbVKPVIT/z78eTm5NzJ2
	d4zLU446etORmhlGY+JnmUqFx+GEp47cXuwjQ6C8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.4.4.rc1)
Message-ID: 
 <010101808ce91651-962b6832-98c0-412d-b766-0b6f9cfbf3e0-000000@us-west-2.amazonses.com>
Date: Wed, 4 May 2022 02:32:07 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 May 2022 02:32:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56988


A build flagged for QA (yocto-3.4.4.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4.4.rc1


Build hash information: 

bitbake: c2d8f9b2137bd4a98eb0f51519493131773e7517
meta-agl: 8543843eeb47fa9b45786d3e09bf497fcd5f95e0
meta-arm: 2623e69db362b357db45c343e6d504909552c2d5
meta-aws: c92344938ab4d37de8bd8b799186dbbe3019a069
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: daf5c125a744d45d8fa395b576147edd5a714f5c
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: 9a0caf5b09e14a28a54c3f8524d97530aeb8152c
meta-virtualization: bd7511c53b921c9ce4ba2fdb42778ca194ebc3e8
oecore: 1a6f5e27249afb6fb4d47c523b62b5dd2482a69d
poky: 780eeec8851950ee6ac07a2a398ba937206bd2e4



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

