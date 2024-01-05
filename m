Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB92BC47079
	for <webhook@archiver.kernel.org>; Fri,  5 Jan 2024 09:06:14 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web11.19900.1704445568697935619
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jan 2024 01:06:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=VCcY+G0P;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=hePLho0C;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 0101018cd8df6342-36454e00-32a1-4f54-b7d2-47db56f288e9-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1704445567; h=To:Cc:Subject:Message-Id:Date:From;
	bh=gZB6MJH2Amu1DZxcbZOgIf3BLRIBTd894qWYc0pT6gk=;
	b=VCcY+G0PskPLf4BruBitixc1k7ET0N64iIId8Ylu2XkIlnf6Fk8jLElng26QWEy/
	M5ddJ65QzfIojkvRoECZN3Ob7BOdOyQSRrfDlumX7x5jWV1+rC4X0MQbLYl7ZtWzrLz
	HJLtKgtnb4hbI8+vA2pMpYkyyRbOzt4MVHbU5AbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1704445567;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=gZB6MJH2Amu1DZxcbZOgIf3BLRIBTd894qWYc0pT6gk=;
	b=hePLho0Cr6f+bEDwjNP5hLNYB7OFhoC7kxtSUuH/K2Tv7FacKJrcZqWNg4jzROiu
	jra5F3VRPdXlSjCMLKmNGJNGyfg4Lhsee7W5cKddTdIzwcJh9trFT7KgVbFgFbMURDb
	kpsUEHF45PJ5nexmquqryl0uo9nql61226/RTo9s=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3.2.rc1)
Message-ID: <0101018cd8df6342-36454e00-32a1-4f54-b7d2-47db56f288e9-000000@us-west-2.amazonses.com>
Date: Fri, 5 Jan 2024 09:06:07 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.01.05-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Jan 2024 09:06:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62095


    A build flagged for QA (yocto-4.3.2.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3.2.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6420

    Build hash information: 

    bitbake: 72bf75f0b2e7f36930185e18a1de8277ce7045d8
meta-agl: a492c25c1d2dd7a1bca42bc13d4b7449ab179a6a
meta-arm: ae11c9d47374b7373dfead6b4217374484151f6f
meta-aws: bdaaa71585e6d154ac34116d0f6c1e85fff86f63
meta-intel: 039e45e21d2973fc3ce318a25beceae348e4428a
meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
meta-openembedded: 1750c66ae8e4268c472c0b2b94748a59d6ef866d
meta-virtualization: 9e92984ff47b3ca2106b1d27a93af061b28d1e8a
oecore: ff595b937d37d2315386aebf315cea719e2362ea
poky: f768ffb8916feb6542fcbe3e946cbf30e247b151


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

