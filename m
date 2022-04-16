Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EF47C63708
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:25:59 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com
 (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web08.22307.1650137776451390351
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Apr 2022 12:36:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=VYJRo6PA;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193,
 mailfrom: 0101018033e03d81-4a7aff5a-1959-46d0-ae3a-e832d5bcf151-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1650137775; h=To:Cc:Subject:Message-Id:Date:From;
	bh=qaash9NGP3YmSqENYcLp8aaqcyHcfdnANM0H1sWVYTU=;
	b=VYJRo6PA+TP4lkzefJgyf29cv/Efj/Ux7FpM32rijpazQhM2ADALMuzJ1XW6nwt0
	beyepsxSJJX0QigvQ1Cx+rfvIXueCi4s2QV6goKglQWwEyG3datp9DpeLWEcDFnruqv
	dp/bBfDLMIhGKwXJUpDNefcCdOskV1AnvqlxzokI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650137775;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=qaash9NGP3YmSqENYcLp8aaqcyHcfdnANM0H1sWVYTU=;
	b=U5Vev5nV049quS334a+DDpsaxTfh9Nm1sWCxIF0OzlOwIWOgAa/tUK6Nlv/LFVuR
	bNCtCmw6tKePi67qF58vu/o95edfkCQWNrAUOcVqupJ95W9tXVhsoC856Tz7SBGny9R
	TMpAViucywTMHSB3dKApF0LfP3X4wRHgXdBdv2+s=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.rc3)
Message-ID: 
 <0101018033e03d81-4a7aff5a-1959-46d0-ae3a-e832d5bcf151-000000@us-west-2.amazonses.com>
Date: Sat, 16 Apr 2022 19:36:15 +0000
From: pokybuild@yoctoproject.org (Pokybuild User)
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:25:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56790


A build flagged for QA (yocto-4.0.rc3) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.rc3


Build hash information: 

bitbake: c212b0f3b542efa19f15782421196b7f4b64b0b9
meta-agl: ca53308f8803fb50709b3f17bb1f9e476366bb62
meta-arm: 3ee7d019898854f776f95ed31f4b7ea8c8a73dfe
meta-aws: da48f9e0fb5444ee8d3112ee00f5937a3fd9f96a
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 5e2b4c4ad933556c96722ab0c5f2f3f5eb93b692
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 8e1986e95ad30a31c8eaa3cfe2e045b335ef7555
oecore: 92fcb6570bddd0c5717d8cfdf38ecf3e44942b0f
poky: 00cfdde791a0176c134f31e5a09eff725e75b905



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

