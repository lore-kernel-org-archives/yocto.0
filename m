Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03B41C7EE33
	for <webhook@archiver.kernel.org>; Wed,  1 Mar 2023 23:39:16 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web10.1460.1677713949412616017
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Mar 2023 15:39:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=L150c0Ue;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 010101869f8b3dcd-f5d922ca-3c22-465c-9885-e608464a37a9-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1677713948; h=To:Cc:Subject:Message-Id:Date:From;
	bh=GiX7W3MLbLqtA+zNOGKuIIUHiKeqA2dEMAeXaqOy0Vs=;
	b=L150c0Ue0iGu6Zo5CSgixjRruYi/uILUiufAB3OaZYJX0axwX9rR1bc15l6540SZ
	JX81pDunnC/w0SuXEi5RkmFfUmc28Y6sXTzpSFOTuGixw2uhurnTTDUztRQVxhUGQGD
	AK5zlAcgHRoBKww1aeX61rVqzyQXaavN11mss6gA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1677713948;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=GiX7W3MLbLqtA+zNOGKuIIUHiKeqA2dEMAeXaqOy0Vs=;
	b=U/N4KlHoAuJx27rDONp7SaOnkrXltNtpYtS/dD26rfmryD2PlUHX3R8AzzNJgA3s
	v4l0+Vu7QUc2CZ83yzuBStjcq4DTLAJORxIRM+iVV50XoSU579SohBm5NlDvIwu1JFr
	aMNljbt4ei48sJfvYRuMYHJcxJGujv+XXT/sERO4=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.8.rc2)
Message-ID: <010101869f8b3dcd-f5d922ca-3c22-465c-9885-e608464a37a9-000000@us-west-2.amazonses.com>
Date: Wed, 1 Mar 2023 23:39:08 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.03.01-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Mar 2023 23:39:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59329


A build flagged for QA (yocto-4.0.8.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.8.rc2


Build hash information: 

bitbake: 9bbdedc0ba7ca819b898e2a29a151d6a2014ca11
meta-agl: ac4fed9040280e687e45b38b4e59940fcf2121b3
meta-arm: a0216a41bde3f191037332a9238648bedfbc61bd
meta-aws: ac332252f6b50071a2de47ddc2c92ea65f669d16
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 64e8ccb47e11fc021a2a679f2e05d849b7518461
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 82c75b466e55d7dca7a2364986ecb704cf63d141
meta-virtualization: a7413c5d7568ce91b809ed11f84305b1afb468bb
oecore: b20e2134daec33fbb8ce358d984751d887752bd5
poky: a361fb3df9c87cf12963a9d785a9f99faa839222



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

