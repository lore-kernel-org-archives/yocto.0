Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ACF1C0218C
	for <webhook@archiver.kernel.org>; Sat, 25 Jan 2025 17:47:27 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web11.14477.1737827241628966492
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jan 2025 09:47:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=OsCI5ve3;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=gqom1YT1;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 010101949e934ab9-39a03c1f-3c5a-4cec-9042-b0637ac2da95-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1737827240; h=To:Cc:Subject:Message-Id:Date:From;
	bh=fMw/UvNQVs1ZmTzCXjjIsYdtDnKX392P+ZkDNCxOGaI=;
	b=OsCI5ve3D9ika80x9otNVlrdBkHQy3alXdPkS1RsTzTKeM0SlqGfU7SfTejaqIJw
	p1xo/2xwzj+sKc6eBT1o1ZMYNmrY6jRH3G4+LtVST1x6/x+yEVxLpzwV0OvdgO4d52v
	eASEbU3L2dwu8CUYtTjsb5vVO2K6ldI+PrpXHlrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1737827240;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=fMw/UvNQVs1ZmTzCXjjIsYdtDnKX392P+ZkDNCxOGaI=;
	b=gqom1YT1MMRPduPpnt1k3ndQQyT1OKR1+8qJ7G2ITX1WvBix0D2qw+1rfYhCwyfD
	xjplhgT/noj5xKuw26Pf1GkQ4gh/cJ8WhVKEg/CzcO0509o98Ly23kgNIhwIqY/7OFt
	4R7H9L20FR2oMrg8YDO1R9SuPTfUNFygD9l86uC8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.7.rc1)
Message-ID: <010101949e934ab9-39a03c1f-3c5a-4cec-9042-b0637ac2da95-000000@us-west-2.amazonses.com>
Date: Sat, 25 Jan 2025 17:47:20 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.01.25-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Jan 2025 17:47:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64626


    A build flagged for QA (yocto-5.0.7.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.7.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/885

    Build hash information: 

    bitbake: aa0e540fc31a1c26839efd2c7785a751ce24ebfb
meta-agl: 45428e8d626b06a809686fa0db8a3892498b96a4
meta-arm: a8fe9d22eaefc294f91096c6a32663e2f4ab3b10
meta-aws: 4f45b4b2a940577bef4301a69dcafe743af1826b
meta-clang: 8c77b427408db01b8de4c04bd3d247c13c154f92
meta-intel: 0be954e82f09d235d2b5e5ea01bb62ffa8d0b5f7
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: dda0d53326017d6758ec6bdfdaf2f484c089d13f
meta-virtualization: 2ec66285d050ef3cd29a5ea57c71341e6b17b36f
oecore: 3c31639dd53e32e57af64d50ad168f5c3911c299
poky: df5c19f5d143b161bc5b8d42c24cc1a278ed2417


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

