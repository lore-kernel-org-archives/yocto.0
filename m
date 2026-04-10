Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33A8CF45A0C
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 19:35:30 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.163971.1775849721334823335
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 12:35:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=l54rWADP;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=fYzTNndA;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019d78e44a99-02fb8520-6c59-48c1-9ac3-64e44075a988-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1775849720; h=To:Cc:Subject:Message-Id:Date:From;
	bh=m3xCoN6ub/XGmtXDfJv41MpW7AwjUb9EWLEUNrk+7d8=;
	b=l54rWADP6nwTO13tf929uOwBHNLQ1Kp0VgWc/2ytiZ4HuA8Ht+XKgUXQwV+KG8Bb
	kANEMHV/7mQ7HTLvHJdYa3HE4HuBYhCATqmGHLwuZQB/HhzTUkdrGnESh46plfIodIN
	l5WhAF08bfnZy/btyJh/SD1I4niQdbfxj42DSuQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1775849720;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=m3xCoN6ub/XGmtXDfJv41MpW7AwjUb9EWLEUNrk+7d8=;
	b=fYzTNndAJP8k9BttDuWgjiee7s88v1/HVcrynVbtKtC1G7iUtAER4puDXD3HlUOk
	5fYp0cXouhIpdrqQooa2KRhOMJUYr2dsM5du38scYOPxxSSpi4HkuBI0dA+AvIFJApB
	+bGzotrRbxLZNDp6bZqxwpTUIQZgBU3S1hjlWLu0=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.35.rc1)
Message-ID: <0101019d78e44a99-02fb8520-6c59-48c1-9ac3-64e44075a988-000000@us-west-2.amazonses.com>
Date: Fri, 10 Apr 2026 19:35:20 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.04.10-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Apr 2026 19:35:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66396


A build flagged for QA (yocto-4.0.35.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.35.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3640

Build hash information: 

bitbake: 7fd0197fd5fedd23cc885b5e7e816d86a392fdf9
meta-agl: 439cd92bd4588916aa45de78fe25a8bfddc7c82b
meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
meta-aws: cad7fdcf046a935d1eb641b254e4d05d16d51f1e
meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 9d8ef26a9693e2c70ae34abe1a753873d42ec588
meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
meta-virtualization: 92b6abcdfb6f12c4931247f0f29aaf5331984525
meta-yocto: 34e3c9a19b8b955116109a2e9528966db3fced37
oecore: 51259c7e933a2ac8ebc01604d6e65607b76b7b56
poky: 93431249a6260da7bd29ee3ca32145d89e5b8259
yocto-docs: ce6734c68649739c635675a133fa77edb9865028



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

