Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A98DC4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Dec 2023 06:09:34 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web11.8007.1702361372285316987
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Dec 2023 22:09:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=GOeh9a0u;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=dIIeuBxV;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 0101018c5ca512a7-ba5e6eeb-5046-4d6c-a260-eb3ca42437b1-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1702361371; h=To:Cc:Subject:Message-Id:Date:From;
	bh=zLB57kBYLq1VkHGxFnxNnwDun9K2VsANTc3je7H+Ehw=;
	b=GOeh9a0uLQGK+fKRnlw2zj1OEMddXj0h2XplYXhTfE4KNWKc0KsUzcFtzsU2TDE6
	/U7hXw3GS97PzZF/Vwg1BVsTKZAGlCFBSzNo5aavFW6hJrXu6y0wRnBtOHHm0ceQ20l
	WjJz1n3O2c+C/CyIzj7TYfwiak1L851YrgJKyl3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1702361371;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=zLB57kBYLq1VkHGxFnxNnwDun9K2VsANTc3je7H+Ehw=;
	b=dIIeuBxVhj9gIUS6d+namO3n9bSpM1SSNtU28Ixk7IZUD8WT8MQmAnWymo5N+wPA
	ebbAqEYVDCx3lwhhsyQpWpYyaoG2vpgBkwVDsobjPIV8DbZx/5EBP+NntNgdFdaPvnn
	P11fuW5eM3Vv3wqUkxNjtqbs3Kr34T8iAfTbibqk=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.30.rc2)
Message-ID: <0101018c5ca512a7-ba5e6eeb-5046-4d6c-a260-eb3ca42437b1-000000@us-west-2.amazonses.com>
Date: Tue, 12 Dec 2023 06:09:31 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.12.12-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 06:09:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61860


A build flagged for QA (yocto-3.1.30.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.30.rc2


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6320

Build hash information: 

bitbake: c0d60794a32e3f8bbfbbd6800d87ef2782aacf2c
meta-agl: 512d244d48ba0d33f609f425a6e8a907b178cdac
meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
meta-aws: e317ca5861b23dad5d0b2468fbe3b4b1ef367194
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
meta-openembedded: 9135c7ea7350d5d241f4afc3b28087122ebe2d19
meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
oecore: 55157aa2f8b157b1cc63e1134d9eba6db0cf16da
poky: dbe19706ec01c1eaa1d377a792e7d825054050b0



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

