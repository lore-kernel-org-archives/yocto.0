Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 427D3C001DE
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 00:39:39 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.2744.1690418375924559742
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jul 2023 17:39:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=gG1s8grB;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=Jk1UgC48;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101018994c968db-984564f2-0172-43ae-a91a-82b306fdc587-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1690418375; h=To:Cc:Subject:Message-Id:Date:From;
	bh=swVV0Nu6e/JDCWwEE3RRk9LkXcIeIq+IqZzEYhgSH6M=;
	b=gG1s8grB+vQjx06IMSgQdGeUX56cKUUjuW6mYMg5QWPtzaXtd4AyUy48UGpfALC9
	7ptZezw0r0xRR/NvfNVPzDScmIKgvwlaIcw6N10WWGg7DVvt8yU3XRKCp00C9EpZN8u
	muqu/LkyTQxbY8w+e53buHopQ78UkLGzgNeWHE0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1690418375;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=swVV0Nu6e/JDCWwEE3RRk9LkXcIeIq+IqZzEYhgSH6M=;
	b=Jk1UgC48DbIQhdgrIgRciUzXlDWGYvkEgU9gFRLX+uQMJLBPCnfSqHU4HNZKjoD4
	8G3Pkc/n4nJVScejsPNwqV0CacBcMNSDSDtL56CVATydtbm91XCbki/EHtAds1I/z09
	LoN9WqrvuMSixBWgM/J7bH57uxlu1JGHjTJMqjfA=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3_M2.rc2)
Message-ID: <0101018994c968db-984564f2-0172-43ae-a91a-82b306fdc587-000000@us-west-2.amazonses.com>
Date: Thu, 27 Jul 2023 00:39:34 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.07.27-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 00:39:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60659


    A build flagged for QA (yocto-4.3_M2.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2


    Build hash information: 

    bitbake: 64bc00a46d1aacc23fe7e8d9a46a126f3a4bc318
meta-agl: 25410a640b879405d4f93585f3d74c328f487cad
meta-arm: cfcc8a4d13c26793ecab2d8da9274eb98b8cb4ce
meta-aws: 86966086b2dfabd7113253bc5647f87fd6d42423
meta-intel: f2bcad2943b11b8c9d9ecdd25551a841ba98eda0
meta-mingw: 92258028e1b5664a9f832541d5c4f6de0bd05e07
meta-openembedded: 74e70284acb2eb2f2a47a1ab1aa5ee0928d46344
meta-virtualization: c5079557091b215663458807a8f617752614a6bd
oecore: 6ac110c8954e5fdb71d5495e3eebc1ca3958dc19
poky: 3eff0eb5ea77de20d85a2ffc64652579cbd7755c


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

