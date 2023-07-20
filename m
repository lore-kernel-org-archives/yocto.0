Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA28EB64DA
	for <webhook@archiver.kernel.org>; Thu, 20 Jul 2023 10:54:15 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.10079.1689850453920131824
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jul 2023 03:54:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=ej/zobbJ;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101018972ef9bb6-13d574f0-6c64-42aa-9666-4166acbb6a36-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1689850453; h=To:Cc:Subject:Message-Id:Date:From;
	bh=OEzM//C3zPJxKd01hsk8Qewlm6X3o65UqZV5d+XjHJI=;
	b=ej/zobbJa8U2RZ40rO2ZfEC8zLRyt0uKbHpSuUnvUgynL2EloN+Qnb2v5JoBWfQz
	Tsz2lyAyDkiVU0Sp3EYzzCK4R4fUgj1TcyXItXmR1IHUzvaV9zkSoh6YBGVPQ//vfi0
	OnVPSkcDIttUkY4HodJFAGl96bZn/uNLqWjBkDXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1689850453;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=OEzM//C3zPJxKd01hsk8Qewlm6X3o65UqZV5d+XjHJI=;
	b=OBPrMP4IY2R5QBM3k2TVLoRTJqPayixCkpsfF9lk2trLs0OcPKqZyIjjzCfATkeZ
	IKvhZ0umcV1iKjfhm2z/93/NMONzjpvVSViVmNmpdSoI4OmMGeX24rxH8s9bhiQdO6Z
	kL5FzcbCdQS1YG/A+D0wZqLUcFbxlr/VA4DRKXUA=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3_M2.rc1)
Message-ID: <0101018972ef9bb6-13d574f0-6c64-42aa-9666-4166acbb6a36-000000@us-west-2.amazonses.com>
Date: Thu, 20 Jul 2023 10:54:12 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.07.20-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 10:54:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60618


    A build flagged for QA (yocto-4.3_M2.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc1


    Build hash information: 

    bitbake: 64bc00a46d1aacc23fe7e8d9a46a126f3a4bc318
meta-agl: f1bb0ee68b18a39917e06bfbb08d677bbf8bdf25
meta-arm: e67d9c4dbc892ef688ff960d68e02627fc99bb53
meta-aws: 2b834db25df1dd90e2b05f89cf1ddf3790bfc220
meta-intel: f96c815a14dab58abce5d4ce69e8fa76c9f6de3a
meta-mingw: 4608d0bb7e47c52b8f6e9be259bfb1716fda9fd6
meta-openembedded: d57c4655623a7271dc93cfb741ffdbf1b511a5c2
meta-virtualization: 680f56d9e432c0cb7de41fe50610f218bf53ba1f
oecore: 8bb047ad3bd93fcf655eeec53e6d1de1e7747140
poky: f73ae292bc0b92df3cb76c6e8b220f18630f6bc7


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

