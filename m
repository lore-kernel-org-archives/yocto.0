Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B72ECA5FC5
	for <webhook@archiver.kernel.org>; Wed, 30 Sep 2026 14:32:34 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.14863.1790778745233995430
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2026 07:32:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=q0pHMkgD;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=JKUuuXSe;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 010101a0f2bb1dc3-f7d94a5b-ddf5-4408-a5ca-9cfacb88f136-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1790778744; h=To:Cc:Subject:Message-Id:Date:From;
	bh=XxDAwxClm0uNawM2cZUYLvDwg/2tommU9BsBN9BDwHY=;
	b=q0pHMkgDNFXqkcNXzqR2v3qA7BbWmP2+CgaV1+C2wOL5Y7wcSt+62H2q7gI0ydha
	i8wQ8yyrpSGaZm3yoCCrKAasW9PIJxfnDyj4B6wPnPomhJBtRQYZHy9UXs5YhPy3Rxa
	atf9H/z8DFyqZkePq5T6rCFoQL/lZYCKHeZh9OIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1790778744;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=XxDAwxClm0uNawM2cZUYLvDwg/2tommU9BsBN9BDwHY=;
	b=JKUuuXSe6HRt2ug3RWU3NbbmZfObagdBiT+480ReCr298sA15pXO/aZTOF21ovnN
	korc/XiMiaVq+BjDCNNrpS+OA7xLiQfPiBfx1P427T10m6Teas5yxTDCZEGbAvvRmxz
	ZhZ1ResiccFH9ExbCTsXSXC9FOOfRl8fy9z8eLSI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0.4.rc1)
Message-ID: <010101a0f2bb1dc3-f7d94a5b-ddf5-4408-a5ca-9cfacb88f136-000000@us-west-2.amazonses.com>
Date: Wed, 30 Sep 2026 14:32:24 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.09.30-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2026 14:32:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66745


    A build flagged for QA (yocto-6.0.4.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0.4.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4840

    Build hash information: 

    bitbake: 51fd94a67fa17650a9ff623492005972bbc7d26f
meta-agl: c36f0e0bbed6000f28cfd10417c280c9fdca37cd
meta-arm: 673e8d7c5dcd14de58092eb73e6ecc5eee5c1735
meta-aws: 3f110301bef871c552a3424f447de59a55db71c8
meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
meta-intel: 79a9681ce83f6bf36aede3aeb8c1707d29bca329
meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
meta-openembedded: 47d7dbdd10890bbd429bc0cccbe14435c37e5af1
meta-qcom: 509b772e581442558e7b7efea05c5ae082504f50
meta-virtualization: a07bf78dab0d46099a7e6ca8b2aadb07535efc13
meta-yocto: 7c25b11156553145fa6b241a2d4f65d94438f804
mixin-wrynose-linux-firmware: 71dfb81bd98f59ca2127d39b100ecbb8ce1e0ba3
oecore: 0f03c732a0a2d0506b41b1abe60b3f368b2300dc
yocto-docs: a2cc1f5b86f3cdc9ad3257a2545322c5169da3ca


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

