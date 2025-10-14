Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 324D1CCD185
	for <webhook@archiver.kernel.org>; Tue, 14 Oct 2025 00:13:15 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web10.3887.1760400785458888034
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Oct 2025 17:13:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=OkFFP5ns;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=Wj2yw6kU;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 01010199e0103c28-07425f6d-9aa5-4b81-91b4-e75a01ecb62e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1760400784; h=To:Cc:Subject:Message-Id:Date:From;
	bh=iOqlJVkw5PCtfosnpZjPLxs/RktICR0DyNgLe9BDEqU=;
	b=OkFFP5nsBedjutWSwBDJKd/V1thFOIx4NXME1z7GkQPcvrdQX1S/QKO20tq+rR1T
	aMP1SMELHQSJ/7cKwkpASPPoyebpYaSF1X+69dINTaCh7dPXC6tox16cQz8AedWSF+y
	EgeE4KfcHJyB7NnCA2pIK+IQVOiazX9ak4vJLY0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1760400784;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=iOqlJVkw5PCtfosnpZjPLxs/RktICR0DyNgLe9BDEqU=;
	b=Wj2yw6kUXVX3IfvER/FDltc6BwW7IkEFH7IqD8Yb0rWzKzZnrAWhNXW+fBea6Czr
	cTo+u4r+HYrRXKo1FfMSugOZ7aK+K4+xA5HNn8vIqB714D4j5COcS+fvYz/LlrRchUU
	RPM8ZHHw3w1mgHcEHLpxWIthup71se/IAw8qxZ/4=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.13.rc1)
Message-ID: <01010199e0103c28-07425f6d-9aa5-4b81-91b4-e75a01ecb62e-000000@us-west-2.amazonses.com>
Date: Tue, 14 Oct 2025 00:13:04 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.10.14-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 00:13:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65922


    A build flagged for QA (yocto-5.0.13.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.13.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2576

    Build hash information: 

    bitbake: 1c9ec1ffde75809de34c10d3ec2b40d84d258cb4
meta-agl: 07a44280ecb27c3cc794a79cd46c53caf7da925d
meta-arm: 0f1e7bf92c89759f0ab74cfa5be4ee47b092ad46
meta-aws: 446379f6892ce2145e68d9b95dbc7a208e9558d2
meta-clang: 731488911f55ebfe746068512b426351192f82f2
meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: e621da947048842109db1b4fd3917a02e0501aa2
meta-virtualization: af1db2042caf8021d767dce1b26c08b59b96f3d1
meta-yocto: 3ff7ca786732390cd56ae92ff4a43aba46a1bf2e
oecore: 7af6b75221d5703ba5bf43c7cd9f1e7a2e0ed20b
poky: f16cffd030d21d12dd57bb95cfc310bda41f8a1f
yocto-docs: 6f086fd3d9dbbb0c80f6c3e89b8df4fed422e79a


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

