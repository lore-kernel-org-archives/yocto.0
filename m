Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB2BC7619A
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 22:38:12 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.93.1681339084361800200
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Apr 2023 15:38:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=KwSTALx7;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 01010187779e6a8a-9f7af2b6-6b9f-429d-8340-d75d26017f8d-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1681339083; h=To:Cc:Subject:Message-Id:Date:From;
	bh=uQNkze38XwZUzkEBjeT7mtKzJ1+9YSGmAPUDseYKlww=;
	b=KwSTALx7bgt2sGMYQVJS4Ujmkjn5ym9k1kfKIU7CEeRkBw0bvZE/4RUq6Dwxpie/
	yjZgGn7ppzfGYPereYMv6N/EfpKaGPLgCYCo3EWMilOFRP+2PTuKLMBi2vDA6cxMGOF
	VQethalcURau+a3BBXksfwQ2E2kRVSFqA1DvzCZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1681339083;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=uQNkze38XwZUzkEBjeT7mtKzJ1+9YSGmAPUDseYKlww=;
	b=XSO4N4VyhtDf8UVTEmuh7J/faeOXQHu9McSm3udibfSxzWtZ7ZRQJSg1C4CmvfcQ
	n6ZWNGqr2aQqEZ67zye9v1Ckc43YLKRzvO8KOZRPDGfXW0n536hiTcZp4FugAcgf6x7
	+QZ5D0FWJIITrWqu7+Z5h+yXnKddRJ37I1cr70bs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.9.rc1)
Message-ID: <01010187779e6a8a-9f7af2b6-6b9f-429d-8340-d75d26017f8d-000000@us-west-2.amazonses.com>
Date: Wed, 12 Apr 2023 22:38:03 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.04.12-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 22:38:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59699


A build flagged for QA (yocto-4.0.9.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.9.rc1


Build hash information: 

bitbake: 2802adb572eb73a3eb2725a74a9bbdaafc543fa7
meta-agl: 535bc8f54ce5fcb4a94204df5f2b3317beb53f23
meta-arm: a0216a41bde3f191037332a9238648bedfbc61bd
meta-aws: 3f7ab5912239d667764e7df885776b267eddf265
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 4c6cc14669d0e9de36e1a050ce4084ca14181722
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 571e36e20e9d1f27af0eb4545291beeb64f280e2
meta-virtualization: bfa6727718bc4eb550c24e2c03a4118b4e7bc842
oecore: ff4b57ffff903a93b710284c7c7f916ddd74712f
poky: 09def309f91929f47c6cce386016ccb777bd2cfc



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

