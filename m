Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89B6BC83F17
	for <webhook@archiver.kernel.org>; Thu, 24 Jul 2025 02:58:30 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web10.3730.1753325909108747133
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jul 2025 19:58:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=kzxFUS78;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=DyLfrfPg;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 010101983a5e30f8-4ea5cf3b-f053-45ed-add0-f139865ee87d-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1753325908; h=To:Cc:Subject:Message-Id:Date:From;
	bh=e0CSAwgxJvQqBlUhshsg8uV6zZV7jpysRj119QYYj3k=;
	b=kzxFUS78XP184QALd4lwc9YLx7crBY4d6qXLKCE9QucZNUrJjdUWrVXIqpeDJqCR
	SVXArlIv6+H+kOYaWRsp/x6L0gktT08F0wdT75ik/MmfEQBG709XMyOw6Iww028OoVF
	B+jF+PHNSjv7y4R860tU3eoR7tq6Bbzw1elP9BvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1753325908;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=e0CSAwgxJvQqBlUhshsg8uV6zZV7jpysRj119QYYj3k=;
	b=DyLfrfPgtZi0Vg/jiSCe8EoD80umVG+iYleZygRajG9SO5TA3yXkj4WVXf4SWlEC
	h4aluDgGoJb1+Hh7BBVu2PK+4PWoqqJw85tIZXIKJVwBMWMuu/a7oPGbhulAJuma1WF
	Miz0xbmwelxv1/mqX91y6AW/L2QtUxLeceLCBvlo=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3_M2.rc1)
Message-ID: <010101983a5e30f8-4ea5cf3b-f053-45ed-add0-f139865ee87d-000000@us-west-2.amazonses.com>
Date: Thu, 24 Jul 2025 02:58:28 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.07.24-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Jul 2025 02:58:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65705


    A build flagged for QA (yocto-5.3_M2.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3_M2.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2078

    Build hash information: 

    bitbake: 5ba7c2f0797a72536a81f57276d4e5c75f23011c
meta-agl: 1496a1e3d560a0f6fbfc17448f3881e24395c0d3
meta-arm: 77ba0e68e3d6ffd380346c616a60bf0c7e35a08b
meta-aws: 7e2eabe1aa248cf3c6a69621cbba40343a2e0896
meta-clang: b2139ae4b027cb014d0137de0b46e9197a10a4db
meta-intel: 7fc52266ae25215e0d510a792fa3a688d173d1dc
meta-mingw: 3b92f104e024bcb1341b563f396291b41786cc38
meta-openembedded: 2de5071f9ac17338ea8a0ec0bbd451c5455166e9
meta-virtualization: 9b034e3defd4aa1108d7a6b4dcca600d4352b132
oecore: 4908c71e25fa480c277350dd46d4199b29675440
poky: b5ba3223c85eeb614b3f8fbf77fb7407f4a05d77


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

