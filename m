Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E6E4C2BBCA
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 08:09:04 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web11.166045.1719302939674550990
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jun 2024 01:08:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=K2o+wBW8;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=U4QFZKNk;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 010101904e70e071-638d333c-a229-48ce-96b2-86cc080208a9-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1719302938; h=To:Cc:Subject:Message-Id:Date:From;
	bh=Nh3DJTjkv8fdphxgkuhG3Q6KO0Lk/qFtTL648AXAm8o=;
	b=K2o+wBW8oXFKEbrY4od5bvO8ADqvh++IDIe4SLB6p9jcQjw3ZFnkYrt1Va722cCg
	ETwj965wrbCHOEBmfBRpt00YQ+Q6mBjKcrLYH6oSySEoETs87P0gzy0/yXK2OUtX8wX
	SsJfTA/TJ7gBgD0ztWUGYOCYFPbNoi5isYVz0fFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1719302938;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=Nh3DJTjkv8fdphxgkuhG3Q6KO0Lk/qFtTL648AXAm8o=;
	b=U4QFZKNkZK9rExKlC17TdLrkY/HC8u3lQbwOnPg9nptt4yz4Oom1brSb8cF0bITA
	jnDCEtGzNholVkBHCiwcDG9Ih4vL8OENGrHGUuvh/HFIMi2riSptqd7UHxKF48hNfW5
	z/EkXjSFKDX4qdDwXMv0DhZwwOz1ZFjNGoIOAc3w=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.2.rc1)
Message-ID: <010101904e70e071-638d333c-a229-48ce-96b2-86cc080208a9-000000@us-west-2.amazonses.com>
Date: Tue, 25 Jun 2024 08:08:58 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.06.25-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jun 2024 08:09:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63387


    A build flagged for QA (yocto-5.0.2.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0.2.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7076

    Build hash information: 

    bitbake: 8714a02e13477a9d97858b3642e05f28247454b5
meta-agl: e1a0adc8cfdc3b306537fc64f8b29c3c53f744ca
meta-arm: 29799b787d57d623dce140012a87568f314f3460
meta-aws: e3e4c876830c76aa1112b51ace6bb6fe35d5f0f4
meta-clang: 83e93bcda1654477802ed18b5f440fba7a733caf
meta-intel: d172a00f487a8ea4391b96e0f6cef5279c5a07d7
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: 4a7bb77f7ebe0ac8be5bab5103d8bd993e17e18d
meta-virtualization: 37c06acf58f9020bccfc61954eeefe160642d5f3
oecore: 803cc32e72b4fc2fc28d92090e61f5dd288a10cb
poky: f7def85be9f99dcb4ba488bead201f670304379b


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

