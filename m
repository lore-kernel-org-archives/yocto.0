Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC1AC4332F
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 07:03:59 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web10.7829.1699945438505451440
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 23:03:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=hy0s1gWR;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=P2q96PHh;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101018bcca4d9a1-91c73446-5e5e-4431-9379-e87da1b67ecf-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1699945437; h=To:Cc:Subject:Message-Id:Date:From;
	bh=0jcg3xw81n34qXK7jc/RoJIbLSCmPW3kOuSJZmHeb5c=;
	b=hy0s1gWRKApQJH+RhxGR3SEyCGGCipdqCP7KUVxRxW9YzLxQRf7ydwF4Wv9ijjSn
	NyahCUaTdWX419/AlGNq0KFXhX/Tn2X0hrrSdaYrr97ZoEpC/+y9aI21qP/sQKBzGSw
	dfPHspK6x8k+pX0n2bjeHauRo3oP+HS7vEjQg54g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1699945437;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=0jcg3xw81n34qXK7jc/RoJIbLSCmPW3kOuSJZmHeb5c=;
	b=P2q96PHhdYgcPUTmxTHPaEVd9mjQYCOBec/AncQ6PLzg08KWw+aDHDKNL5W+y8Lp
	B+WRP7f2hMowi2OiBwEpxia0r2yQ2TzVIrCRZiP0c3qq1sEBxM5e57S9KFz3HlFlGCJ
	vQQEoRpG7osjM1xBDvM+/k2IdgBbkfe1nLocoGKo=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2.4.rc3)
Message-ID: <0101018bcca4d9a1-91c73446-5e5e-4431-9379-e87da1b67ecf-000000@us-west-2.amazonses.com>
Date: Tue, 14 Nov 2023 07:03:57 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.11.14-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 07:03:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61673


    A build flagged for QA (yocto-4.2.4.rc3) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2.4.rc3


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6188

    Build hash information: 

    bitbake: c7e094ec3beccef0bbbf67c100147c449d9c6836
meta-agl: bf791cba6a3bc53864bf719dc913cea352146f75
meta-arm: 9bcc166bd5bb717aa86bb0464621a36abc51fa19
meta-aws: b288fb9d29f67af79de07f039429fcf921e2abd3
meta-intel: 0ed9b8ed178782bbbb74b80dbf713f50aa253dcd
meta-mingw: d87d4f00b9c6068fff03929a4b0f231a942d3873
meta-openembedded: 39968837196cb48209b71e8852dd04a2f8ccdca8
meta-virtualization: b8db7002764712f2902fe9dea098c171b1128076
oecore: 23b5141400b2c676c806df3308f023f7c04e34e0
poky: 7235399a86b134e57d5eb783d7f1f57ca0439ae5


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

