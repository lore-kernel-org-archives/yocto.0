Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DF9C001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 11:55:39 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.59370.1691495733326152999
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 04:55:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=a9ZS6pXT;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=rPV8roO8;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 01010189d5009462-dcd0dd94-a30d-48c9-899a-47b17c091a46-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1691495732; h=To:Cc:Subject:Message-Id:Date:From;
	bh=9+KQSA9tsOHRh3+/uQKwSL1ekC2MGU81hAM4ys5WK3A=;
	b=a9ZS6pXTqpTM9wEYxvNTjj2qpNdpMlCLZNvRuGphLshPJI9Ea++zM3SEYOWcTLjx
	dGC7wyoi/GW4fLDpT+TDozbjBXfDfGpUrvPULtuotz08ONjyrSze+tJGujkSmJ82do+
	HJF0aXJYiUss1AW+oL1pyBJfNM7F+aRZwaUFXy9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1691495732;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=9+KQSA9tsOHRh3+/uQKwSL1ekC2MGU81hAM4ys5WK3A=;
	b=rPV8roO84h36fwLCKO0vLs4oWp5rvRg2JLu68BoB/6zffwtpRIeQWIyWxixYgGD9
	/0PMmTDSiFYjvI86ll7mT6SWVCIU7Gtbrn4KUltpsP3kfdUZ3CdJ1ObEk1APkKvz1x1
	4SvVULUoSUXYXm8UO3SY1hVq8LRHMdMIqmPhza0U=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.12.rc1)
Message-ID: <01010189d5009462-dcd0dd94-a30d-48c9-899a-47b17c091a46-000000@us-west-2.amazonses.com>
Date: Tue, 8 Aug 2023 11:55:32 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.08.08-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 11:55:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60735


A build flagged for QA (yocto-4.0.12.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.12.rc1


Build hash information: 

bitbake: 41b6684489d0261753344956042be2cc4adb0159
meta-agl: e302f9668bc399d671128d325ed108be1a48ee69
meta-arm: c39bb4ce3b60b73d35c5fb06af012432e70d6b38
meta-aws: 723a8a04965af482fe65e8e56eabea858858bd88
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 1aacdb4ed1e639cc6e19c541b058264eb17eb093
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 4da92ed9be41734f6ced46b981958e2e868cbff2
meta-virtualization: af02908efda1580e77b3fdeed25b124a2b8d9482
oecore: e1a604db8d2cf8782038b4016cc2e2052467333b
poky: d6b8790370500b99ca11f0d8a05c39b661ab2ba6



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

