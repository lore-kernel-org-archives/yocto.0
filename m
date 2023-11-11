Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED09DC4332F
	for <webhook@archiver.kernel.org>; Sat, 11 Nov 2023 23:36:47 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.6943.1699745800022112813
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Nov 2023 15:36:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=e7JTipqG;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=Zyb2RwP0;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101018bc0be9b5c-aecf258f-6a4e-48bc-8bd6-019d6b46e46f-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1699745799; h=To:Cc:Subject:Message-Id:Date:From;
	bh=CdgfVcRw4qv6GUU5+gDoJRDLO/P7Yd6kufXEcaJur0o=;
	b=e7JTipqGHhYJip2xt6FzF9t+LPPE/vRRX54yhdSMX42THzMvlmtT3OCmi6M5LZKn
	om4+KoL/6KOFU1L+6bwp1THghIuoDWGgskZYSvMB/O2dnrtsaHQDv7MLvNPrXbGfEqh
	THAf14D6Q8zYkuB5G10IivGgvn+4mmx7ET5rIthU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1699745799;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=CdgfVcRw4qv6GUU5+gDoJRDLO/P7Yd6kufXEcaJur0o=;
	b=Zyb2RwP06/Tq8a0zWmLtZ3DqjOZDFJoniiMD4g9Q5eQhUiWxct/nFBdYQFh/U3aj
	EBxP+FadxjhBQYHcSKqqNWrQtDpdrkha6CLMD3hPdBf8p16ru85AG9hehxT+k3XjXCj
	ikybSyp8/03zOoEvc2w9dYQg5KDkEg3n936CpbfU=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2.4.rc1)
Message-ID: <0101018bc0be9b5c-aecf258f-6a4e-48bc-8bd6-019d6b46e46f-000000@us-west-2.amazonses.com>
Date: Sat, 11 Nov 2023 23:36:39 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.11.11-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Nov 2023 23:36:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61660


    A build flagged for QA (yocto-4.2.4.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2.4.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6178

    Build hash information: 

    bitbake: c7e094ec3beccef0bbbf67c100147c449d9c6836
meta-agl: 66c5dcefe81d04e4c7ef4c0f1a205faa9cfbbae9
meta-arm: 9bcc166bd5bb717aa86bb0464621a36abc51fa19
meta-aws: 671fe1ee75037d5b3b5e5b1cf46467148a0d62dd
meta-intel: 0ed9b8ed178782bbbb74b80dbf713f50aa253dcd
meta-mingw: d87d4f00b9c6068fff03929a4b0f231a942d3873
meta-openembedded: 39968837196cb48209b71e8852dd04a2f8ccdca8
meta-virtualization: b8db7002764712f2902fe9dea098c171b1128076
oecore: ae69823d9439ba1995ef48676a2d2236a50fe665
poky: b8bb4e6cb0b531507ec26d569f1f6c3e7a5aeaf0


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

