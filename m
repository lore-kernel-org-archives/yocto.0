Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637D5C46CD2
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 03:05:55 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.3071.1705979149278608893
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 19:05:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=Ki0zg8x2;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=jGnQPq/z;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 0101018d3447f66b-648797d2-e0ec-49af-ab0c-4d8010a07ea8-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1705979148; h=To:Cc:Subject:Message-Id:Date:From;
	bh=MdwlRMxgnWUHZn+medTuEe0QILBpLcfWDgS+G6gpzzY=;
	b=Ki0zg8x2K9B09pG0bHSyDOgfivyXohncoz4uo0W4wr5oD9+ER6oRSQrWqUG+llWF
	VS0TSLEoGW8V+pEQOaFWVw12UTw1f8VQCVnShgNLMYRGJhFWcoJIRD2zwxGTeBC4Wx7
	jn68m14ecjxKnKLaxr11G0urQH74Fk7HDyvu6jT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1705979148;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=MdwlRMxgnWUHZn+medTuEe0QILBpLcfWDgS+G6gpzzY=;
	b=jGnQPq/zpvagzHPVNl7fyZsl92Rc80LyveP9DhIWfFhLg7AbV5pKczcLVFgQZEJa
	TXRR7TC0GyM6XgmbxBUWyPKpVt1zQ8Y+meYBzKYJTkjp3IVXswAmH1nPh+GoGiPqFw3
	I0EDlnZ1XkCHMPvasZMIL9SKurBQMSJjTUuyyHAQ=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.31.rc1)
Message-ID: <0101018d3447f66b-648797d2-e0ec-49af-ab0c-4d8010a07ea8-000000@us-west-2.amazonses.com>
Date: Tue, 23 Jan 2024 03:05:47 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.01.23-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 03:05:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62229


A build flagged for QA (yocto-3.1.31.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.31.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6478

Build hash information: 

bitbake: 36959b25c64044dd4bca65bd1bb1243823d51545
meta-agl: 512d244d48ba0d33f609f425a6e8a907b178cdac
meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
meta-aws: c76dec547df106f6df19c470ca4b3d5bf8b9827a
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
meta-openembedded: daa4619fe3fbf8c28f342c4a7163a84a330f7653
meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
oecore: 82e67bd9c77f0c5cbb652ca91071b9e57bdcfb33
poky: a9e3cc3b9eab7a83c715bb8440454e8fea852c2a



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

