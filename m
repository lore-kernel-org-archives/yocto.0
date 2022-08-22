Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84D59C32792
	for <webhook@archiver.kernel.org>; Mon, 22 Aug 2022 21:58:37 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com
 (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web10.24746.1661205513728514339
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 14:58:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=AZ3CSbBi;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191,
 mailfrom: 01010182c7908155-549934cb-cc80-456d-8a05-57f85ccb8c14-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1661205512; h=To:Cc:Subject:Message-Id:Date:From;
	bh=hy9YGHUpcqM2G8dIoqcLx+h5KgZ3gJgrDhBdjABiZFQ=;
	b=AZ3CSbBi9/O4GdpJoSJ9kTZqOnIoZY4z4NXr3UQYC3hFUWYaJQ1iXBDRvWLfM2YW
	0E1JcYk8NKW1meOo1Jj1k/BVG9zq+FeERYqUIblstk6coaRiq3++HcOXxyen6GkivEK
	6BbBOeBTBI7VPgU508OLLcMFbYY9Wuw7tBwRs+EE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661205512;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=hy9YGHUpcqM2G8dIoqcLx+h5KgZ3gJgrDhBdjABiZFQ=;
	b=eobrYaGV91Chp17P5Nge/oQ7oTdIy4ZBjvrz+bu0dFWaQTm4YKZKsYiW6Ha6xCIm
	ujRN0uUvvSUrLj955nDXgbjrr03qCulH1tKm90J5p6s8jBXGQLHQNl/mmY1X/e9lOn7
	yjSzXjyecfxUCjd6JBzaxyKBjeBId+gsvRfNYfiI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.19.rc1)
Message-ID: 
 <01010182c7908155-549934cb-cc80-456d-8a05-57f85ccb8c14-000000@us-west-2.amazonses.com>
Date: Mon, 22 Aug 2022 21:58:32 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Aug 2022 21:58:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57875


A build flagged for QA (yocto-3.1.19.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.19.rc1


Build hash information: 

bitbake: 17be38290d1e971cd89785e6bf44caef0a6416f8
meta-agl: 8ce71214c1935c2160d139140972f328afacabee
meta-arm: 69547052727a461f33967e64630aa03b34a7eadd
meta-aws: bc38cc397e98c6d6d8d4b701de5944f72d169108
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 8ed6f20cfb116e88e573ee6a08637aa5ac12e1c5
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: f22bf6efaae61a8fd9272be64e7d75223c58922e
meta-virtualization: a63a54df3170fed387f810f23cdc2f483ad587df
oecore: a3cba15142e98177119ef36c09f553d09acf35ef
poky: 4aad5914efe9789755789856882aac53de6c4ed3



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

