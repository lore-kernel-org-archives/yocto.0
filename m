Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E7D6C433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Mar 2022 22:49:13 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com
 (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web08.3444.1647298151981458662
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 15:49:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=T1/ueUqQ;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193,
 mailfrom: 0101017f8a9f00ec-5972c1cd-c2d3-4d0f-9979-de9b3c134082-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1647298150; h=To:Cc:Subject:Message-Id:Date:From;
	bh=UedqwFwuyP0INKhXQHa939yVQUMMlDB513ybYS4rhXY=;
	b=T1/ueUqQOz9VoicIjXAq0nnDKRJtnrArVZsianhRb+VD3AEs6oeblHoNo3c3YDKt
	tm3h/MRJINlbvUcqkteBDmtV7pm3meJB/y36S39CKQhwi/FO3RooPx5499NPVj3+4oI
	QJQLU4jxMk3MlptUTmD3Z3RWiX+Y8fVxCnjiyBiI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647298150;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=UedqwFwuyP0INKhXQHa939yVQUMMlDB513ybYS4rhXY=;
	b=b3Z1ZCC5n07UsvsTQFROYE3Mebd8AQvvjtcn4iE8f6CguZT+If2L3tU0DEqcg2Oi
	/4FbCRowHjsODqop/OvM36Y/Q4dBYKumYs4LproJ6U1HKmWj7vL+61O4N7ppZdFLi0x
	Z7w15WKgCS9FfB6NGHw5h2iDFL8qMu/4uEAQY1no=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.15.rc1)
Message-ID: 
 <0101017f8a9f00ec-5972c1cd-c2d3-4d0f-9979-de9b3c134082-000000@us-west-2.amazonses.com>
Date: Mon, 14 Mar 2022 22:49:10 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Mar 2022 22:49:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56432


A build flagged for QA (yocto-3.1.15.rc1) was completed on the autobuilder and is available at:


    /srv/autobuilder/autobuilder.yocto.io/pub/releases/yocto-3.1.15.rc1


Build hash information: 

bitbake: d22cc1e587c650fd5f90cda32f5720f8a3105aac
meta-agl: 9df7a40dd0b5e3ee1ed72e460dc99193eeb4bd6c
meta-arm: d21ded082c27959c8d617fd18da60b236d2ec62b
meta-aws: 9979cfa676105cb68cfadfdaeabf044d7c919319
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 8781f8352e67814db7a26708437fd0820524d3d8
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 0722ff6f021df91542b5efa1ff5b5f6269f66add
oecore: 8906aa9ec0a80b0f8998fb793f4e9491b3179179
poky: b41d4e46d30ed32e11d68466721a0f4056bad700



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



