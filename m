Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE821CAC5BC
	for <webhook@archiver.kernel.org>; Wed, 18 Sep 2024 05:22:05 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web10.8611.1726636917024159776
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Sep 2024 22:21:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=LFPl+x4p;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=14I5+I+E;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019203947c20-b2528d50-bc02-4975-b808-0f39e1b8d01e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1726636916; h=To:Cc:Subject:Message-Id:Date:From;
	bh=7ZVBBqVpTn99zcgWxRpmWDNhaxN5g0iwXoRFBLPwflc=;
	b=LFPl+x4p1UVACJlzjv6PHclpkbxvhjm5Zksz4UuhdSmDDYolWBuN/8gI3fkYxeci
	EZn7j2LpyvIliJLdfooGHPrgE48a33koWfQEHT0HqsJV+f/Ll7lUAiA82TuLY7tG8j8
	SUWmNqKyo91Uor6XVnQRR85X2uxXYUbzeqI0y/jw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1726636916;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=7ZVBBqVpTn99zcgWxRpmWDNhaxN5g0iwXoRFBLPwflc=;
	b=14I5+I+EtFXo4Ho7eygS0jgykAyBY4o9XWYa1uluFO5spfOTGeOPA2HG/TMXrMH2
	LL/H48ScUXPqeORWCfLKKxz/asg1Po+fvNSn1Jm5OVdiXpRddLG6JGjhNcs8bFXx8jW
	5bv80r3FLgLGcb0EuWKF3XlxxM7r/EvG6Am+ODvM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.1.rc1)
Message-ID: <0101019203947c20-b2528d50-bc02-4975-b808-0f39e1b8d01e-000000@us-west-2.amazonses.com>
Date: Wed, 18 Sep 2024 05:21:55 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.09.18-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Sep 2024 05:22:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63856


    A build flagged for QA (yocto-5.1.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.1.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7338

    Build hash information: 

    bitbake: d3c84198771b7f79aa84dc73061d8ca071fe18f3
meta-agl: 5f5296f39181ab01c6bd616d6459edaa0d3283f3
meta-arm: 60361945cf7943175274bc4f4cdf842c922dffce
meta-aws: d85b2bf3078444654873abae6e93324cfdc4c669
meta-clang: 814d20901a71fd4d98a5a67789d69ef7e9a2169c
meta-intel: 4b40ffcc8daba6bbe50c9405330b6280d1e4a64f
meta-mingw: 4ac6cbfdce1f85294bd54bcd8b074f7ef32c378f
meta-openembedded: 3fb5f62b02f812da85e818e80a1dd3c229df41c1
meta-virtualization: 8138d9cc7e0c31171230110db0cfa881c46a821b
oecore: 161c5b311f1aeb8f254dca96331b31d5b67fc92d
poky: 8f01ae5c7cba251ed25c80f0141a950ebc8a5f73


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

