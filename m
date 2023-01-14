Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 881F2C3DA78
	for <webhook@archiver.kernel.org>; Sat, 14 Jan 2023 02:10:39 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web10.107960.1673662235239821593
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 18:10:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=Z6lraP5P;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 01010185ae0afe37-bd223560-9c64-4364-a9ab-e4708f92af83-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1673662234; h=To:Cc:Subject:Message-Id:Date:From;
	bh=inVbliRbb76U2ncbl2fH9D3RpUf3r1GiQtQLb7riWIk=;
	b=Z6lraP5PcCb8cEFCWIGwnCPwG9+C3XTyd/UvcKAz6Bz0JttDLimeiZ1zosUl8zp+
	qeCgtcrbm3cxu2zxGQnbVnMwBO+6K74XFujA5tsZIxWNHfx7bvkrULgcE6tPRsC83dg
	RoDpIb6PVvwIwpQu99PTHyGmzmBcRATOrY2Hs4x0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1673662234;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=inVbliRbb76U2ncbl2fH9D3RpUf3r1GiQtQLb7riWIk=;
	b=VfdrsZ62JCtqfu5/RYnjoUYTmdn2u1b6qf2eCB3CWmhspcXkeCew73R2G8GHhOPn
	idU55I6x0p3B/s/Er8jRJX/+mGCs5t4ig8nBIiPigKWszhAyDSS9aWWg1HHtqGPxi4z
	aJ8EPcju0EBuk1KQdnprNAiGmpaAmSWKumCk7FiM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.22.rc1)
Message-ID: <01010185ae0afe37-bd223560-9c64-4364-a9ab-e4708f92af83-000000@us-west-2.amazonses.com>
Date: Sat, 14 Jan 2023 02:10:34 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.01.14-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Jan 2023 02:10:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58986


A build flagged for QA (yocto-3.1.22.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.22.rc1


Build hash information: 

bitbake: e3db9c2e9eded3c5cb6040714a6054b44f6b3880
meta-agl: ae982d798a979ee5690bee00ca90a2855bab4802
meta-arm: d13be36099aff7ea2975a1a197564e2e801707a3
meta-aws: c013258cecbf99528291e55005e1db360d7eb40b
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 6c202291925bb179d2d08b5bde80192f9b032b88
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 7952135f650b4a754e2255f5aa03973a32344123
meta-virtualization: beea119eb529b4a11f266004aee8b548427aea39
oecore: db81e3c7e7f1d4d9eba52ac35ac97627d0240b63
poky: 6b8a307b7843af23d189d7ffcecf32c05afac850



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

