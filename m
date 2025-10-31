Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0ED4ACCFA00
	for <webhook@archiver.kernel.org>; Fri, 31 Oct 2025 16:55:50 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.358.1761929749054481897
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Oct 2025 09:55:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=bU8MYse/;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=ZUWTdaCF;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101019a3b325e7c-4b25475b-ccce-4d55-8949-2fb05e38aa95-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1761929748; h=To:Cc:Subject:Message-Id:Date:From;
	bh=BQi5FE+vkPDTB9seM+aDKUng6Bsuy3nGLz/LwCJWVc4=;
	b=bU8MYse/tqOc0MeFA1sezGKXEH+Jfk/jQo/enP59DeprqMmyCPmNjeY2dppFO//m
	FiEavNX8mXR800LIN1vaWu8bXOjztvJQkurAYYqyHhHoMrEZ4G/Jp6BGBPKkKtFbmDg
	3WDhRAbuKyj7pARbUkbuYjgnBb5DqrbdA2rTuv/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1761929748;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=BQi5FE+vkPDTB9seM+aDKUng6Bsuy3nGLz/LwCJWVc4=;
	b=ZUWTdaCFQz2JKNuHynBYhwGNRlPsqBz2QmAc1Ge2+eurtJiKx3gzJIieOUS0cghi
	6T13vdO9cnXeCcfkpolf5/1j7vpa8Cq2yTQ4pGTos1QgRb0ZE8I4ji/S9+iqufLfYsF
	CU1FRobUFBDClyH+uvMlRFEoxM47YwvhtbR3XwJo=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.31.rc1)
Message-ID: <0101019a3b325e7c-4b25475b-ccce-4d55-8949-2fb05e38aa95-000000@us-west-2.amazonses.com>
Date: Fri, 31 Oct 2025 16:55:48 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.10.31-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Oct 2025 16:55:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65986


A build flagged for QA (yocto-4.0.31.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.31.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2666

Build hash information: 

bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
meta-agl: bfd5d0fc6a155ffa4a84d6015f04ece38d709c37
meta-arm: 10c27f061b22af78e17a23cf540b69501afc7160
meta-aws: bbdc6d98250ff6f2338a55f5457329d57b851732
meta-clang: 26de1c560ef3caf3cf641cd54ed0b7cbdc219ed9
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 96fbc156364fd78530d2bfbe1b8a77789f52997d
meta-virtualization: 16155ae737d96f0f53721ad7270c3fe19729d496
meta-yocto: 3b2df00345b46479237fe0218675a818249f891c
oecore: 99204008786f659ab03538cd2ae2fd23ed4164c5
poky: 04b39e5b7eb19498215d85c88a5fffb460fea1eb
yocto-docs: 073f3bca4c374b03398317e7f445d2440a287741



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

