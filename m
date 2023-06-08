Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92765C7EE25
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 03:39:26 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web11.1304.1686195556782130786
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 20:39:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=BnbGkRLg;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 0101018899164df1-9305f1d8-3a77-42f7-a537-7b3189848fc7-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1686195556; h=To:Cc:Subject:Message-Id:Date:From;
	bh=2x0q47FL0gvDn69BxK3iSvvR+cviXx80bsw6cLlzZtk=;
	b=BnbGkRLg36Nc8csZ1/xcG9qe47faaAluy2u1G9O6nkVxZP1DetBRHei99NBad3Lr
	zaOcHENe1HjUdt+xHufoSD1SnnScqqCEs85Kj2ROY+wX8HPwMxmfvXxgjrr86suQLJ7
	hT7x99cyeyGucwNHVYrq46QBIAbhn5eTFvmT6ATs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1686195556;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=2x0q47FL0gvDn69BxK3iSvvR+cviXx80bsw6cLlzZtk=;
	b=kjvXH6kUARyCw59NheSH5cHw1ohbjdMsVVWJapGSpCoJtb4kEhgms8VUd0vFXE5V
	HblzGC4SFDxiQYTOzpPuXJ0wlDNfr822ygq8xw7JGBSEqGv7A3P/oRRmY6GfJpJ1hBB
	0aTqouTvfPZML6w1nee8bnYmr+H2yI5c2JtGRkmw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3_M1.rc1)
Message-ID: <0101018899164df1-9305f1d8-3a77-42f7-a537-7b3189848fc7-000000@us-west-2.amazonses.com>
Date: Thu, 8 Jun 2023 03:39:15 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.06.08-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 03:39:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60218


    A build flagged for QA (yocto-4.3_M1.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3_M1.rc1


    Build hash information: 

    bitbake: 6abdc81dec06a362bfbcc06d69b90b96bd9bef01
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: c1a7dd5eda419109b179af6cbf93cb0dac2f7ae3
meta-aws: 03dbd44a850b13c581f4335254f915ce50bc13c3
meta-intel: eb696e99ff8c5be4f9b181da9f134499d96760e4
meta-mingw: 6badedaa3e4df5b00b5aa992c5c174e315b09972
meta-openembedded: 1955d0f140a9610346021d42fa45cb186eb6f042
meta-virtualization: d9dc99282fa4a7dfce861f64e792b1a8307a4a8c
oecore: f7ed7ae854e49276750d1895593e0a2033714235
poky: cc97d775cb402df0d4122bf54eab1a5198c98471


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

