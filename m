Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9D2C433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 10:56:55 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com
 (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web12.4635.1650970608906787577
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 03:56:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=hfBpGXVe;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45,
 mailfrom: 0101018065844051-3f135aa2-6cb1-485c-aa27-2c921567884b-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1650970608; h=To:Cc:Subject:Message-Id:Date:From;
	bh=SFNx3YGW6mpyaD+q1k67CAVrhrGlkIpysdkUNch9m+M=;
	b=hfBpGXVebsnrx36IxfIp1zytrxK6fmxmu2q8C1TriJedMfoXJEjUuHii0Jb6Jnzr
	xVYrl5fybrseNiT62FfMmG3ez6YBE4OdGL13T2gNT74e1pfRprpsmOEAcQhfasG0qEX
	DJ11D4B3UarMT4dC7x29TYeVrxMbLDgQa2Gx281Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650970608;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=SFNx3YGW6mpyaD+q1k67CAVrhrGlkIpysdkUNch9m+M=;
	b=PZI41m6ODZusWCcxgFAHHGLSRPWeA4orxyKqQ4/M5ofb2rszDfBQS5CAnY4WbjGQ
	KTFOInYFS8S6AaDvqwq7wYF21heiRyPYCu+gfyGl/um4+fyYn7mb1UfznneFFMyoKpZ
	yMD2ZhsKW/nFkIBIba2DeRK2usNFNNRkqrhEUe44=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.16.rc1)
Message-ID: 
 <0101018065844051-3f135aa2-6cb1-485c-aa27-2c921567884b-000000@us-west-2.amazonses.com>
Date: Tue, 26 Apr 2022 10:56:48 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 10:56:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56892


A build flagged for QA (yocto-3.1.16.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.16.rc1


Build hash information: 

bitbake: 0784db7dd0fef6f0621ad8d74372f44e87fef950
meta-agl: ca53308f8803fb50709b3f17bb1f9e476366bb62
meta-arm: 5c09684863be8e803e3e987a5ce4940721c3f39a
meta-aws: 9979cfa676105cb68cfadfdaeabf044d7c919319
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: affda10724e5e3c7948200e888a91ffdb5d32a11
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: fdd1dfe6b4b2412cc536c26450ce126c960d8107
oecore: 8e81d38048c953d0823abf04d5b2506cd988f0bb
poky: f14992950eb90dc168eb82823ab69538f668f8bc



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

