Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BE9CD4F25
	for <webhook@archiver.kernel.org>; Fri, 15 May 2026 16:13:44 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.38580.1778861623990723680
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 May 2026 09:13:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=f1E9nlM3;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=NgxT8PjY;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019e2c6a472c-e8f433d6-8561-4b8f-a64d-9901c9195493-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1778861623; h=To:Cc:Subject:Message-Id:Date:From;
	bh=nz7GlacTPVl8BRB+mnoyr79zmymjjNV9+qE5Z2M0hFI=;
	b=f1E9nlM3Ff0oJSe2kjE1vmOxuEyZJSrVZ09yZXEYzNzL0a5RkOihSDNzC5Jy648/
	xvP/eapWt6V5O91JcVSUC0tFujtzS1eQJAcMLKSbvXsOEICwY1CYDB1IYeFQJH3F1/D
	sj7oXFfckdnkl7yt+QvIHY8ek66cOeGAm42zyZNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1778861623;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=nz7GlacTPVl8BRB+mnoyr79zmymjjNV9+qE5Z2M0hFI=;
	b=NgxT8PjY6y33h6Pw4qEUQWWsGPK51uTJoLru1lEXxiYBEHlc8VVjNfEXBVpRQz1d
	FAwz+nXBxRnWNnHQ/JW1ii0tIeO8M0kfnvkr8WaYsQ/PClDVBQyc8fGrw69ifRFJMzU
	zucNa1WrLhCVdAjZFgI8Jwl9L9fO3Zn6dRqYOG8s=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.18.rc4)
Message-ID: <0101019e2c6a472c-e8f433d6-8561-4b8f-a64d-9901c9195493-000000@us-west-2.amazonses.com>
Date: Fri, 15 May 2026 16:13:43 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.05.15-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 May 2026 16:13:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66566


    A build flagged for QA (yocto-5.0.18.rc4) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.18.rc4


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3834

    Build hash information: 

    bitbake: 82abbfcdbda949851a03bb2cb2049ea689564ad6
meta-agl: 5116ec52656f7c7dd78b2f60326a0bdb984aa663
meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
meta-aws: 437d3207ee2ca178a98531b34c0d9623154aa059
meta-clang: 5bce7e26a38a58bb52242494e54ab2af40009574
meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: ae7dfb12245c7f9b9a353499e2688015bd4e6413
meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
meta-virtualization: 8409bc0c8b9209327add72d8fa72571cdeb5521e
meta-yocto: ca5a51aadaf651881d640688dc3e1e123aa30bf6
oecore: ece80784b493c8b7493478fa2ba0dc1d6d80aa79
poky: 44dcf08572ce391d7c0df4f8c7510af5e096baca
yocto-docs: 1c5e7f136d7460fa5ad4c8a49ab1de31bd670e59


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

