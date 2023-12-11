Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA5F2C4167B
	for <webhook@archiver.kernel.org>; Mon, 11 Dec 2023 05:24:10 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web10.2075.1702272242592922598
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Dec 2023 21:24:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=Vz2OzAOS;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=Z131NyXp;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101018c57550f06-92c50d96-7351-4371-a312-05e8561e6e9b-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1702272241; h=To:Cc:Subject:Message-Id:Date:From;
	bh=6KhjN1jc+b0gOZvmSUHDGC0cSQOojU5J635eVk5Zqjw=;
	b=Vz2OzAOSamFStMN8tN5qfOpzzxNVvd1EOwbyEHCA0C51kJg2Fl0daPfd37Zbj5jf
	HcpCUT87EinbIh3+nlNlXlb5BqIphWJy7wEBoQlA2WntNA0c+euwbRAWOKJMGWCG6jE
	Xk827OnRCxo7DOqPhE0zVAsWKYAiMhkBcSZ0Odu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1702272241;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=6KhjN1jc+b0gOZvmSUHDGC0cSQOojU5J635eVk5Zqjw=;
	b=Z131NyXpOJ62cfP9zMETnBgRxfTPMvWHhNiDBizxW9gCQMR6ejvBCubLzfzplXPg
	Ts3LcXgjq9yG7h1VE09qdHivUbUgYn6YZmgdZ0ID2nC6wUvo73KZoEIXSvjlzuRtb0G
	CRxJjTktHEXNSYWmN3Dsen1xMLOaa1i6I5jyZeSo=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.30.rc1)
Message-ID: <0101018c57550f06-92c50d96-7351-4371-a312-05e8561e6e9b-000000@us-west-2.amazonses.com>
Date: Mon, 11 Dec 2023 05:24:01 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.12.11-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Dec 2023 05:24:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61852


A build flagged for QA (yocto-3.1.30.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.30.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6316

Build hash information: 

bitbake: c0d60794a32e3f8bbfbbd6800d87ef2782aacf2c
meta-agl: 512d244d48ba0d33f609f425a6e8a907b178cdac
meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
meta-aws: f3ba81625dac2e5c009e73ad78fec23b1261bd02
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
meta-openembedded: 9135c7ea7350d5d241f4afc3b28087122ebe2d19
meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
oecore: 7e65b351fa8eda4ee7b9f1f2a8dbfe14e0ef697a
poky: bf9eabafc257a7d3c39e3b4a46cabf7e6fb8270e



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

