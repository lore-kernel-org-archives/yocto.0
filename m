Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4F8FE9B36B
	for <webhook@archiver.kernel.org>; Mon,  2 Mar 2026 11:38:54 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.158429.1772451526579951285
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2026 03:38:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=r1UMI6gF;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=BN21VX9H;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 0101019cae57f45a-ae8dfaae-ad81-4664-9a28-1121fc1fbcf0-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1772451525; h=To:Cc:Subject:Message-Id:Date:From;
	bh=QYV86ROOn9j1jsORjeBEjk6J0oNNVrIh7zSsli60ZxA=;
	b=r1UMI6gFFDdtPttjbblqJL9e4QaRd+5eNRuVxt33i8aWMRXMz94CN8FD1VL7/yy6
	mMQ8BrFSGgu6eGAo8J1W+r8zA3jUdvcI5fvnGhZOrjnXb4K3MT06nh4JK64oDHWM7VS
	El8xryHVF+7T44KYQ4UmwLZN6zJskIYA+eORcZ9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1772451525;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=QYV86ROOn9j1jsORjeBEjk6J0oNNVrIh7zSsli60ZxA=;
	b=BN21VX9HEf6hVMQqeug4GNsq3LXwRw400fGdM2adAvKx4A2p2lVglPchUs7XaFci
	loISSiKQSpm78Fl0r19jt+eEe0okzBJh+OJmWtvqgRs8C/nnbCqXas9vHpSjzGtgDVy
	3ZK+7v5y8QrKEYex2LmOLPEFne0Qc36+Mz/IyVxo=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0_M2.rc3)
Message-ID: <0101019cae57f45a-ae8dfaae-ad81-4664-9a28-1121fc1fbcf0-000000@us-west-2.amazonses.com>
Date: Mon, 2 Mar 2026 11:38:45 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.03.02-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2026 11:38:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66289


    A build flagged for QA (yocto-6.0_M2.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0_M2.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3316

    Build hash information: 

    bitbake: bc8be83aef0a6de85cd33a6f132f281d518594f7
meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
meta-arm: b00fe8862bc31cd4b6f0299b6a2edb244f19487a
meta-aws: b570577bf3ae3752e27bac15faf8733e45a01360
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: b6c23896d3eee0f925cbe189ff1e67b3c4953353
meta-mingw: 11666fce6a3cc98bcff6fe2c6bdd9e48faf03767
meta-openembedded: 6ba45c1f94e1c2015df940ec9efcd4568346df56
meta-qcom: 1a7b6b0363fa75232d46ffb9fd706b9539872e10
meta-virtualization: 506d5af230f0b41809dfe754e84d5611b75c6585
meta-yocto: f3b63d0d6882af61020bd6f7150fae68a0322f63
oecore: be8cdcf13a658e9e81ff2f7b71d1c8c37a920ce7
yocto-docs: d97cfeaa55ed42722998d3313c1857aa377f6881


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

