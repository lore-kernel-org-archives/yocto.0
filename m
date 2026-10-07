Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5573CA5FFF
	for <webhook@archiver.kernel.org>; Wed,  7 Oct 2026 19:44:41 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.195.1791402275367620610
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Oct 2026 12:44:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=FS0goo63;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=nsBz6ASj;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 010101a117e56e0a-bd01c028-29f8-4540-9e61-6d0598e33869-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1791402274; h=To:Cc:Subject:Message-Id:Date:From;
	bh=6qPppIurDSqT91f0vabgw7gNIRbFTrFfFyWYZNKGtLU=;
	b=FS0goo63OKNxvu9lxVoB0h10UrqdQLvPUmobXFX3e5f6u6pfkNKyezA1e0ZsOWGk
	Ome+C0dr+DJWXAG6FKjBMCzA9uJX0vBqyShlZE1zCUipOo782RvSbtAWzMUYVMNpxnE
	PA4dF/gpkI9CLEPEbN1Z0blAYvjU6EuVzEJ9h9TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1791402274;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=6qPppIurDSqT91f0vabgw7gNIRbFTrFfFyWYZNKGtLU=;
	b=nsBz6ASj7xMMZc4+lA5D+tLKWk3qtJ70dzyTr+ecFnoFIjYRLd5vGl4XmpOcRHTG
	eTSH/lGOCgShfawHQ4uFiBucUPOFwFQiGuJ23W92WeYVkyfGXfIXhXds34h6QYsKTQk
	+o7fcBquEcxP1476lNIZm+7THyAK/68gB2D5VNeg=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.21.rc1)
Message-ID: <010101a117e56e0a-bd01c028-29f8-4540-9e61-6d0598e33869-000000@us-west-2.amazonses.com>
Date: Wed, 7 Oct 2026 19:44:34 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.10.07-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Oct 2026 19:44:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66750


    A build flagged for QA (yocto-5.0.21.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.21.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4895

    Build hash information: 

    bitbake: d3b32587c2314febf96897f97e0172790b4fc1cf
meta-agl: 59dad9af692283c64ff18f92512c3502609d0dde
meta-arm: 0a4b911d9fd63ab29c4532a907fae3282dbdcfe4
meta-aws: 75db4b489c21fe48dd6f0ff3d0f7f52ad67033fb
meta-clang: cc29beb210ab94eacc53bbd67e287e4e33ede342
meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
meta-mingw: a2065f321a3dbca1e69f070502917c76653d9105
meta-openembedded: 0f00f8b9a21950640da8c5707343e5540133f86e
meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
meta-virtualization: c141b3cd60ad3a1bbab22b4884742d4c082beda6
meta-yocto: 8183b55783d45dd45691983bc0b407752a3449f4
mixin-wrynose-linux-firmware: 71dfb81bd98f59ca2127d39b100ecbb8ce1e0ba3
oecore: b4f06303e55c7270a8482a610927a1c41d5dbf9c
poky: 4fb7016a07507683359ebd620f1951fd5ea44bfa
yocto-docs: 9d2cb790abf5ad37b2b1f35823d238c57f4e21a5


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

