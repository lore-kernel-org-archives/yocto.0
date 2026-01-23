Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D218D74EFF
	for <webhook@archiver.kernel.org>; Fri, 23 Jan 2026 16:32:09 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.350.1769185920358041886
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jan 2026 08:32:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=cRRPhABm;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=GMhiryR/;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101019bebb2c22c-d9c6e88a-4fb5-486f-8c4a-33fb4d49320e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1769185919; h=To:Cc:Subject:Message-Id:Date:From;
	bh=B5xq7KF2aUqBmXgJzT5U668trqVM8YKvPXHj59/v38Q=;
	b=cRRPhABmYK8EpEUIdK/KiNhbHZdJd1woisH70yuWKn+8yvupdNkemFCLhOHawq4e
	+MM/9QBH6XJfxebyk0dpoaOGMfFvN+l3v6J01zIq32KfBnWdJNv5XkXRc390BSEI8il
	saqtYO2yDdSj4xJSa/bQbtD/QA6ITKLuzbrqN59E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1769185919;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=B5xq7KF2aUqBmXgJzT5U668trqVM8YKvPXHj59/v38Q=;
	b=GMhiryR/TFwHIp0A7gsw+EEoU7LOEQfBG6cmCrVnu9Icd0Oav6yiPCDQeYjwWCyd
	g0GUtqeYTP0yLjvW4A5MeH0myPFUmF/bPi8prmU7/drxKT4oJMQdSDfBKVpXXRrATeC
	+tytFoXMmDr6rRR/C+0h10Z+SjR3gdh77siY+IeM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0_M1.rc1)
Message-ID: <0101019bebb2c22c-d9c6e88a-4fb5-486f-8c4a-33fb4d49320e-000000@us-west-2.amazonses.com>
Date: Fri, 23 Jan 2026 16:31:59 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.01.23-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Jan 2026 16:32:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66183


    A build flagged for QA (yocto-6.0_M1.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0_M1.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3116

    Build hash information: 

    bitbake: cdd79c1768ac396a9c6577e38098da4331507f24
meta-agl: fcc4176504cd4b5b9d27d20797b11be5330e9f10
meta-arm: c3c97a6b8f39afa7459ec21ac55fa04164c0fe92
meta-aws: 72441d9befcb4416952f31bdd245f44d9d80f8ae
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: c62b2d0e99e6526d0ff0d0bcdb23816cfdcb6292
meta-mingw: 11666fce6a3cc98bcff6fe2c6bdd9e48faf03767
meta-openembedded: 7bbe4a4e200452b1fd6c09c7fcf36c4b229146f6
meta-qcom: 18c6e3f42ddb07f4b4a87f44324b3fb60e6c3a2e
meta-virtualization: 28d26fd95397bf575e65fcca0cbb302b1e9bc7ff
meta-yocto: c23c19e0b300812bad314f1d0a901965315271ae
oecore: 6c31c2a731858108e790acaf38679a01b0d1a035
yocto-docs: b8a56b8b2e8c0417b2f7204f80c79b05d95e9ce4


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

