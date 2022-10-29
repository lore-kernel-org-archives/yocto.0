Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA617C38A02
	for <webhook@archiver.kernel.org>; Sat, 29 Oct 2022 23:09:40 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web09.3421.1667084975638160181
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Oct 2022 16:09:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=ZIqA4hIg;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 010101842601f9cf-23f5c96e-dfa6-428e-b81e-5078d47c3039-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1667084974; h=To:Cc:Subject:Message-Id:Date:From;
	bh=/eajW0Sdalv0H8PkCCCDTpmJCrluC6OzgCVTfW8D2LI=;
	b=ZIqA4hIgpU1e7zlThq1fABdW3z7VeKXwdGmNSCLG91+WFF3bZHpT/lmxNvVCNRWx
	RosHprxgZ3dU3EaJVR5mvVGdvoLcL1tRm/Z6sAfR1vp/kdNICjo5wqVlOsEI7HeI+VT
	UUXctTrZV3wUe/0NwySPO+dC2eP8qd4b9FKUbzSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1667084974;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=/eajW0Sdalv0H8PkCCCDTpmJCrluC6OzgCVTfW8D2LI=;
	b=MhMJiw4SPeeLn5klY9RykHrr1MEtTu2n4ADjVtPnjup/GyyG79QGLLdLIHL4lsDr
	cqpgNrQOywexDyW3hX1rDBimgp227S8Xpy2SN0VXSNe177VTBoSKnwkrtdOHu+0WI4X
	Xv1V0K13Vk3s4kwfFusFr/LhxuPf0vARq1AwiuY4=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.5.rc1)
Message-ID: <010101842601f9cf-23f5c96e-dfa6-428e-b81e-5078d47c3039-000000@us-west-2.amazonses.com>
Date: Sat, 29 Oct 2022 23:09:34 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.10.29-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Oct 2022 23:09:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58440


A build flagged for QA (yocto-4.0.5.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.5.rc1


Build hash information: 

bitbake: c90d57497b9bcd237c3ae810ee8edb5b0d2d575a
meta-agl: 14b6f7b09f6a915ca8c30e9d069e2e5d97e3de08
meta-arm: bafd1d013c2470bcec123ba4eb8232ab879b2660
meta-aws: b764a5e90e7125ca2ca49a0e9cf93b10e1403634
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 01ad1a73aaab49d377d14bad8a7dec48f86cba83
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 744a4b6eda88b9a9ca1cf0df6e18be384d9054e3
meta-virtualization: 9a487c1851aa2021cf24f951957e22fd429c8025
oecore: fbdf93f43ff4b876487e1f26752598ec8abcb46e
poky: 2e79b199114b25d81bfaa029ccfb17676946d20d



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

