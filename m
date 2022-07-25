Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74B27C43334
	for <webhook@archiver.kernel.org>; Mon, 25 Jul 2022 21:46:49 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com
 (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web09.1832.1658785601197377279
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jul 2022 14:46:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=OX6S2Uic;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31,
 mailfrom: 0101018237539254-f6b986ca-1380-43de-bd08-061d94334983-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1658785600; h=To:Cc:Subject:Message-Id:Date:From;
	bh=msSCvVuUIka5eUaYL6zAvTLmkDx9OGcxqgaHLrTLIgY=;
	b=OX6S2UicFAa455SK+/5BwayVJWcFC5h/5NfRiW3caExLEx0d9peR5nSowProa4GB
	V2J+e3N0Ve7fbHDOqvPE7KLXDwZYVEeW1ZHVGirsku23h1SR3o3o+g7Uaef7OY+W5WS
	i1CVGxGrHy9HDQ1qV0zJfRYdU+hpCpTJ3jd/epSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658785600;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=msSCvVuUIka5eUaYL6zAvTLmkDx9OGcxqgaHLrTLIgY=;
	b=TynVkkczanw58MU9sAzs8KY9FNp+ImWD1FzupHN5qFnKfZpLy9lDcjwJDyXED8Y3
	QZ2jB0MuEYw6CQP4yHeRRjemmO68rs8wFC3VavONKIszYQ8sCCJrXRChA70hhSB1QbT
	lHQ1Bo995WQXXnJe8sKO7/L02XGBf1Urniv3CXL8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.18.rc1)
Message-ID: 
 <0101018237539254-f6b986ca-1380-43de-bd08-061d94334983-000000@us-west-2.amazonses.com>
Date: Mon, 25 Jul 2022 21:46:40 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Jul 2022 21:46:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57638


A build flagged for QA (yocto-3.1.18.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.18.rc1


Build hash information: 

bitbake: 7fc4cffebf5dcc1d050416c0b7f7d58c765c1d69
meta-agl: 6c9fa75459cf86576c47411fc239e0d7896d483c
meta-arm: 5c09684863be8e803e3e987a5ce4940721c3f39a
meta-aws: dd742bafa5eff33ac930e97dde851f41cbde85e8
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 1c1a8f769ef93d96ae488f40abbcd11946403169
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 52cee67833d1975a5bd52e4556c4cd312425a017
meta-virtualization: a63a54df3170fed387f810f23cdc2f483ad587df
oecore: 3f40d5f095ceb099b604750db96058df00fcd49e
poky: d695bd0d3dc66f2111a25c6922f617be2d991071



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

