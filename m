Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E468CC83F1A
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 20:33:00 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web10.23564.1752265977108663739
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 13:32:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=Yz59Qfq/;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=Hb/w0AQ/;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 01010197fb30e9d5-ef39166e-58fd-4885-a2c0-93efc95705c6-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1752265976; h=To:Cc:Subject:Message-Id:Date:From;
	bh=mgXE1IaVzkOIf1gmuZZDf9VoTkLKjv41+eowOJ+LQ2Y=;
	b=Yz59Qfq/ozmRDC/B7lqe+Vx9chloJ48DwaIPteo3p+UOJWAzRkJoBfpSrpggkbAB
	scItdvV4+ueCZRNRncU+ayJxxUOw3mJ8mmyKsC+BTQRePtJkOHaEe58sTwb0rNguLC5
	XjCqGoLxJjdIu03oilA+z14o5clJldG5Zhr4HImY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1752265976;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=mgXE1IaVzkOIf1gmuZZDf9VoTkLKjv41+eowOJ+LQ2Y=;
	b=Hb/w0AQ/WDui4B4GA5ld490HsrksRP0fbE4V8CDr7Zm5nVh+A3WrXt5aa/rfISem
	y16GtwNNbXmv4xln6JvPEieGlDQ/fy26ENFpS0xvoSV/5nZ44eVc/mZ3LM8LYzXHnGN
	Ptvo0nxOujajR1YsU4dFFTsOaLufVfQs9jyeq2A0=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.11.rc1)
Message-ID: <01010197fb30e9d5-ef39166e-58fd-4885-a2c0-93efc95705c6-000000@us-west-2.amazonses.com>
Date: Fri, 11 Jul 2025 20:32:56 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.07.11-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 20:33:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65649


    A build flagged for QA (yocto-5.0.11.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.11.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1997

    Build hash information: 

    bitbake: 139f61fe9eec221745184a14b3618d2dfa650b91
meta-agl: 6ffa98047a37d1c04f60ff07f29db625e1066e91
meta-arm: 8e0f8af90fefb03f08cd2228cde7a89902a6b37c
meta-aws: 99809c787fce30b657487518af3efb1ebfe7f64a
meta-clang: aef850f7fa53121c74b244b7ae40d31fb9809ccf
meta-intel: 38e75c8c1059e5f37659c140c010eaa203238fd2
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: 727811eaf256b88fd135be99559f2cbf14c82fce
meta-virtualization: a5449c0c50aa07d02186f548fe6bb6c1ce8823dc
oecore: 7a59dc5ee6edd9596e87c2fbcd1f2594c06b3d1b
poky: ae2d52758fc2fcb0ed996aa234430464ebf4b310


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

