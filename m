Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B94FC35FFC
	for <webhook@archiver.kernel.org>; Sat, 22 Mar 2025 18:14:20 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web10.1616.1742667257956656682
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Mar 2025 11:14:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=TTAjzprq;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=UU1ospnK;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 01010195bf101499-b217168c-175a-4107-a1d6-31b7a4428ba2-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1742667257; h=To:Cc:Subject:Message-Id:Date:From;
	bh=0Yxj2zOlrQpTq/S6RCVpPgJbFUR4Pe21nu5Zp7aRAco=;
	b=TTAjzprqoEZhLPWbBtIbGwFtVpuHWQvlD1pmb8GZsepke4DQls7S9dNbQOrycqNA
	zG/IVhWmB1djnTO/5kCXBXDiXzBIlVJyAtU4KfGd+cvcrvZMsk/XMULVEhLhxqXeBSP
	xnXEnTCVAoyBG2JcLCnCXGSyc5FX9q7H6o2K+ocQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1742667257;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=0Yxj2zOlrQpTq/S6RCVpPgJbFUR4Pe21nu5Zp7aRAco=;
	b=UU1ospnK9TAUYQ6rhjZ54lL4rJJ9r+ZjThofHmpnKEWcwOdqZKgnz+5CHItKFT+I
	vsA3K2VlGxsCwkS34TaZ+QuGU4qQyg01Z8N2hz4hiEQktA1SdCTUQmK1MPM864YRtrJ
	/JlXiQ3HexmwspGka7UtilfSRBa+9vd3lXbiRDtc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.1.4.rc1)
Message-ID: <01010195bf101499-b217168c-175a-4107-a1d6-31b7a4428ba2-000000@us-west-2.amazonses.com>
Date: Sat, 22 Mar 2025 18:14:16 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.03.22-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Mar 2025 18:14:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65008


    A build flagged for QA (yocto-5.1.4.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.1.4.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1244

    Build hash information: 

    bitbake: 82b9f42126983579da03bdbb4e3ebf07346118a7
meta-agl: 005d2b0a27ebdd21fb2aaa589c8672650474b055
meta-arm: e56a0cd6fe5e796aa59bd0d4bcbbb585ea626199
meta-aws: f9dd433234fc42f1b4cd6d5f3dd2ac2e06ac9c02
meta-clang: c709a5196f1e8654425b43b478064395386c36d4
meta-intel: 0ee9e8454cd41dcb0f49df7dcf2182b4d5e7cc96
meta-mingw: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
meta-openembedded: c93994f1bb601c57548b588d4f77a044d90822cf
meta-virtualization: 247ea9c3880a257003ce2cc566fcdbb307ea4374
oecore: 2d94f4b8a852dc761f89e5106347e239382df5fb
poky: 70dc28ac287bf35541270cae1d99130a0f6b7b5f


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

