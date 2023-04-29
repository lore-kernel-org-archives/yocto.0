Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CD29C77B60
	for <webhook@archiver.kernel.org>; Sat, 29 Apr 2023 19:27:47 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.54615.1682796460979753018
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Apr 2023 12:27:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=cxgHkaYn;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 01010187ce7c37c5-f4e60d10-4dab-47e5-be4e-3e4e6d4cf058-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1682796460; h=To:Cc:Subject:Message-Id:Date:From;
	bh=MNOfK6dqUvQut2y17vK9G8RrG+uXLx6dwcDdLbjUi1Y=;
	b=cxgHkaYnD4V2T3YfXFaAfW7clFk4k1ihtqIr6UM+f0Ffp3mT4Jjfu8xBqf1+mRbK
	iXjv15X7gTq+rI4b0XKVQwJebX61WhvSpjxA/XSTQqjSL/46uNqUBHlnarNSprtrEJs
	n1u5AiOn9iTxAeloYrwouQi27elOs/4DkY0CtWQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1682796460;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=MNOfK6dqUvQut2y17vK9G8RrG+uXLx6dwcDdLbjUi1Y=;
	b=HwvgYguqosYyqej6e8B/TY/WHbcOAFuBlufhBH4drU4za0yRwJ3BlNk5kowhVhpL
	PejuL53yVo+MsOYesqULbLs0maO9lC95SbxvA5jziaGStdR8fsPRcbh3jhogZUhH+86
	jGRBi7/SYTbnqRtNevqHFDcFV0wzvsVS++AfgMFg=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.1.4.rc1)
Message-ID: <01010187ce7c37c5-f4e60d10-4dab-47e5-be4e-3e4e6d4cf058-000000@us-west-2.amazonses.com>
Date: Sat, 29 Apr 2023 19:27:40 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.04.29-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Apr 2023 19:27:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59822


A build flagged for QA (yocto-4.1.4.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.1.4.rc1


Build hash information: 

bitbake: 5b105e76dd7de3b9a25b17b397f2c12c80048894
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: eb41589aa198c5b1967c7bbbbfe0305aad3989fc
meta-aws: 096818eabfe600aa332518e99cb097450ed42614
meta-intel: 13a03c109aecfe275e7539b74c1ab94db9688d9b
meta-mingw: b0067202db8573df3d23d199f82987cebe1bee2c
meta-openembedded: 3d1ec70ed319c1b7f561fcda7b8cd0c2e0b2c262
meta-virtualization: d1cbc4c9fc44f0c5994a1276e38cdbb7bdb5bbd3
oecore: 78211cda40eb018a3aa535c75b61e87337236628
poky: 3e95f268ce04b49ba6731fd4bbc53b1693c21963



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

