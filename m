Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49C0BCA0EED
	for <webhook@archiver.kernel.org>; Fri, 22 Aug 2025 16:50:22 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.823.1755881420458689790
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Aug 2025 09:50:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=BbkiCf8t;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=CTrVEoxF;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 01010198d2b032d4-b6a1e13b-b204-4fee-bded-d398501a60f5-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1755881419; h=To:Cc:Subject:Message-Id:Date:From;
	bh=nWs8IHYB+iG2VTujvdN1zoYX6pOruR6O2wITM87g4jE=;
	b=BbkiCf8ta4jxgw1NEGj62DO+eueIlSgW4sh0WREN5CpGEiY0lwPKtHrDu4dC7F/G
	WOx7+Cb9bw0S7l0k+TAX4TQCCA1QOZS/mPm8kKAHez+fpHGBYU6lB5KABv9ijUGk5ah
	Wii99IzBDTOMj3Qtse4DJzDV9gXKUjpo9h70mUK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1755881419;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=nWs8IHYB+iG2VTujvdN1zoYX6pOruR6O2wITM87g4jE=;
	b=CTrVEoxF3U5sV6lrf/Q1X1qTSSxxy6tFpsm/OQENH3xxVuV26ipeGV97c5O4EQW5
	yHhUViUqs8RdxJMnpYyY/4lfFtB/DY6uMqbJCc7Ycniiz/S4KyVX4Y/ZSoz9VmKUnYi
	Q8IYRivpKYD9y/VK5nuaYFr+jptJ77XrSRpYGGdc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.12.rc1)
Message-ID: <01010198d2b032d4-b6a1e13b-b204-4fee-bded-d398501a60f5-000000@us-west-2.amazonses.com>
Date: Fri, 22 Aug 2025 16:50:19 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.08.22-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Aug 2025 16:50:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65783


    A build flagged for QA (yocto-5.0.12.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.12.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2255

    Build hash information: 

    bitbake: 982645110a19ebb94d519926a4e14c8a2a205cfd
meta-agl: 435a9b13b8486cf7d51a86cebaa72ee382202a50
meta-arm: 8e0f8af90fefb03f08cd2228cde7a89902a6b37c
meta-aws: ee15a57cea8899e436c2c70ab8d2f18d07ad00b2
meta-clang: f915bbfc71f7b58c38607b8407718bd8b5cefa44
meta-intel: b065676a83371b34559f2077d9b2f6a6ac5652f7
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: c29a18fa39ede952f3f6108ec007c1906e2d9a0d
meta-virtualization: 02f72c96bf9acd0bd3ae0463f482bce8feabe749
oecore: 93c7489d843a0e46fe4fc685b356d0ae885300d7
poky: ec220ae083dba35c279192b2249ad03fe238446e


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

