Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15E33CDB479
	for <webhook@archiver.kernel.org>; Wed, 24 Jun 2026 17:02:21 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.12523.1782320535815340365
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jun 2026 10:02:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=XeFpskbH;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=fGNlifd+;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 0101019efa95152e-9cba1b64-0ddf-41fb-90cf-0a6759e35a91-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1782320534; h=To:Cc:Subject:Message-Id:Date:From;
	bh=SPVbkZAp2QVraDt4WvE+LaZk0EksPjbib9MtVeVPwwk=;
	b=XeFpskbHqjfO6ZphuJL9AiVEkAF5qUllF453if+EL3mHY8XpfypRIFYa0J5u4PNa
	oDD4lUQtnOUqe6+SSuAyZUygwB2PHsmu8CogjWNR0V3NXkB6Zaos73IvLIFvyqmL0MO
	qlzzDjJjPz+yjzAg6yssbN28Zy3cyF+0J5QKwdrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1782320534;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=SPVbkZAp2QVraDt4WvE+LaZk0EksPjbib9MtVeVPwwk=;
	b=fGNlifd+gtXeLSshx0t50GFY4VTNRi9KzrhvfgCQu4GxthtuxgWzq2aB7bD67jyD
	NRQWrMJq3B/kTRY6UsfvnWz23Cx6cPLkix2acM6C+NNt5ndyZvHPV5WugtUZU0kKBd7
	14GbRBlyI/11agIfB5RoFEPOd4NUYa6HFXS9tZ28=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0.2.rc1)
Message-ID: <0101019efa95152e-9cba1b64-0ddf-41fb-90cf-0a6759e35a91-000000@us-west-2.amazonses.com>
Date: Wed, 24 Jun 2026 17:02:14 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.06.24-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2026 17:02:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66610


    A build flagged for QA (yocto-6.0.2.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0.2.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4076

    Build hash information: 

    bitbake: acfe02fa38b5da9e6a36c6cedcf91d4fcbefbfbd
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
meta-arm: 01c33e494636781e0787ccafa46cc0102dd68869
meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
meta-intel: efa8a9b22ffaeecfdd113673074496d377ca290c
meta-mingw: e2aac06ec74e46d08b7e68f61043047c761ae9f9
meta-openembedded: 100027977216601000cbefc42c2ff6cf667e7b5e
meta-qcom: 61c71e0c6d6ae13c325d60fb6003e3bc5ecf85eb
meta-virtualization: 781735b97ae5013cacabbecd38e6da6b510cf3fb
meta-yocto: 24c24cef5d1523fefe43a3e3d34667b37ae551f3
oecore: 5d1aa5c806c061a2994f4decb59016610f093213
yocto-docs: 2c59a23fc39d92831cb55a0e5f713d20f94730d4


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

