Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50283CD37AC
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 02:26:59 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3227.1778639214036354481
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 19:26:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=JBOfwVEQ;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=bcGk3DND;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019e1f289234-2033e3f6-4878-4f43-bfa5-332e58f449f1-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1778639213; h=To:Cc:Subject:Message-Id:Date:From;
	bh=efe5kVlIZw8U+fQHdShs+DhpflCIoG6yggOwUNiwUVU=;
	b=JBOfwVEQJPxy+QMJpkDFfAVApRSfhmp8StsYUcht561+y5nlFlXizLVGe+HGP5RU
	SJDBvOrb0OHhaFQoMg7zhpn5LZWLGKfNy1RFp9IBHspCcut5J9uhHkTPIbbEkndCbQH
	YWoFakdwvtpGdy3SAnbungPVcxb9HkBY+o2GSCZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1778639213;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=efe5kVlIZw8U+fQHdShs+DhpflCIoG6yggOwUNiwUVU=;
	b=bcGk3DNDExMHoE2/6XXOhqPPQvuQJOcIQjp1BloNmezK+0eIfLUVSvGRrC0G0Rke
	qMZOEooBpCja6Dy/sRZRFeEYHX/SVBbE3qIfBV8x8g+rdrtdYc/q8wElpx6R2CVtgPd
	2dTeBLr5jW929zCEOu3eA8HAZHLyoIYyPTsHLmc0=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.18.rc3)
Message-ID: <0101019e1f289234-2033e3f6-4878-4f43-bfa5-332e58f449f1-000000@us-west-2.amazonses.com>
Date: Wed, 13 May 2026 02:26:53 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.05.13-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 02:26:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66544


    A build flagged for QA (yocto-5.0.18.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.18.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3818

    Build hash information: 

    bitbake: b2404004135b669f8258c85c7b5aed4570a805c7
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
oecore: 5cac91ecea8720e38a2384a8c5873da3392aabb2
poky: db668121d98162b8ad196ba6d8637f8330a1787d
yocto-docs: 1c5e7f136d7460fa5ad4c8a49ab1de31bd670e59


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

