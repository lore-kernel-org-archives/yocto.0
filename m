Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6958C4167B
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 20:08:26 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web10.75806.1702670902725939914
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 12:08:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=YDRkvlAh;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=i3DDmOrO;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 0101018c6f18210f-b2be4f67-b8b5-4e25-8065-8de14c821569-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1702670901; h=To:Cc:Subject:Message-Id:Date:From;
	bh=Xt9EAtXWNe9A7M8GvupZ8kJbSSkwoMTfgfdL72Awldc=;
	b=YDRkvlAhbHmZsz769JJ8ZT2iGrsTpXeLCLf8rw0fiU0AYfDK3r0sUUIfdZfayYck
	EArtGN28RoRvsto/fNu7gB4cDlVPXP+ELk7NZWzPj8A4MIb4jok9vrHFgXYjUmVqTzb
	+qW80YbzfApv5xPBHfZc40RRV9Dzews3Ak8lcIrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1702670901;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=Xt9EAtXWNe9A7M8GvupZ8kJbSSkwoMTfgfdL72Awldc=;
	b=i3DDmOrOfeerOCrEtHWvcFon70/kq55Epv9ZkYq9L1hjdilNReBueeTJlRJv77OE
	wN/ROLwarl37KmztdHCEY4XHInLvhBa1D1SYHLoWq/dcq+dRWv5KZ9B10zpWQDrrnnc
	f0KnB9k6n2KjiwQP5qXzFtsdaUgYoLzM9obUZ37Y=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.15.rc1)
Message-ID: <0101018c6f18210f-b2be4f67-b8b5-4e25-8065-8de14c821569-000000@us-west-2.amazonses.com>
Date: Fri, 15 Dec 2023 20:08:21 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.12.15-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 20:08:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61920


A build flagged for QA (yocto-4.0.15.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.15.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6334

Build hash information: 

bitbake: 42a1c9fe698a03feb34c5bba223c6e6e0350925b
meta-agl: adf081bab632c0fedfc064b50b953252c8f72be1
meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
meta-aws: f438745ff0e8c4c6b07b4fa66a7bff7881bc0287
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: f932ebb2544170f43edd22739f44307809bf8cfb
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: 402affcc073db39f782c1ebfd718edd5f11eed4c
meta-virtualization: 88327090d26955a678c6f8bd2585aad4d802f6c4
oecore: eea685e1caafd8e8121006d3f8b5d0b8a4f2a933
poky: 755632c2fcab43aa05cdcfa529727064b045073c



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

