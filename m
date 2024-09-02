Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34F47C54FC6
	for <webhook@archiver.kernel.org>; Mon,  2 Sep 2024 00:22:45 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web10.28274.1725236551832970528
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Sep 2024 17:22:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=e759eYns;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=TiOkQDRD;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 01010191b01c9cd3-1677ddfd-65f5-4319-99ab-a84885d84b22-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1725236551; h=To:Cc:Subject:Message-Id:Date:From;
	bh=T0+Y9QJLGMd1ac8YatIGQIg7GYl1cWboFNTkyPui0Pc=;
	b=e759eYnsT7/jW8WoVPNtz5nhxvi1W0ddWEMVR7MqkfKmr+PPgd0InWX4dDwLaYXw
	HPbZG7JLo/qI1xXWjsNzVTEPmDC/mn/zrLSJogO5L4T07SiuyuPe4i51YC/qDt8KzQJ
	Xp+XE0S8rnurRKUN7J63Ya5BsbDBmg6gqYShZcUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1725236551;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=T0+Y9QJLGMd1ac8YatIGQIg7GYl1cWboFNTkyPui0Pc=;
	b=TiOkQDRDfZ66hy7wyZPZvRm0EU1aVqafLc/B30nAG07/7hhY8CFf/9voQghsxYM0
	COIBcx7gzPY5Vm9dTVGcR5EyWplW8xCProUTjcfCWpFPDpxUkJXso+dpkf2gsGTilg0
	4mw2P75cdXKXYgOO2B6fdk60xD5XwPUdOaP1jCMg=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.1_M3.rc1)
Message-ID: <01010191b01c9cd3-1677ddfd-65f5-4319-99ab-a84885d84b22-000000@us-west-2.amazonses.com>
Date: Mon, 2 Sep 2024 00:22:30 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.09.02-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Sep 2024 00:22:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63775


    A build flagged for QA (yocto-5.1_M3.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.1_M3.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7302

    Build hash information: 

    bitbake: 5bd0c65c217394cde4c8e382eba6cf7f4b909c97
meta-agl: 5f5296f39181ab01c6bd616d6459edaa0d3283f3
meta-arm: 11d6e241677a34125533e7f00440eddf933c87ed
meta-aws: 5deeda317200760d9b0157eb5026efd1d487a829
meta-clang: 685abe9da706985c3f9c3d836ce4969c2cf5ef03
meta-intel: 8c4ea4cd2f241d4d82a15341b940595888f71ad6
meta-mingw: e4d377d5ddb62b265536bd33dbccfbb0904f8701
meta-openembedded: 65bac5505f306c693244186c769cef18aa436f60
meta-virtualization: a940a0e873f9163d4585555b3f3d38e99400d237
oecore: 557400648b6f4f31176847f8a068d2e199b7793d
poky: bd2159719c08c101a25a5012fc684163135653e6


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

