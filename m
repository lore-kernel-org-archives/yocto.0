Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2ADC61DF4
	for <webhook@archiver.kernel.org>; Sat, 25 Nov 2023 00:58:50 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web10.17996.1700873922956400545
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Nov 2023 16:58:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=UZmm92M9;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=O3ag3+MY;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101018c03fc64d2-a204587c-6202-4a4c-b479-8413df9dd87f-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1700873921; h=To:Cc:Subject:Message-Id:Date:From;
	bh=Ydv2CZk4E0rnf9l+1s19qLDW74ggXIZpad8AyjK5CHY=;
	b=UZmm92M9YqL5EteWUNdxN4Uc80cBy+9Pp7N9+tIPLgWXg0cjEvkHF/8PphBccNvQ
	0xKlWOk4x+4jO0h2fpueHGGkI+ct9chDhZ6P2P8atATvxyJGis3WHS0I3td2UolG7oW
	Kyi3cc8nbzK6mzQkgvWhGXn+tgyM55kdj4e/hLm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1700873921;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=Ydv2CZk4E0rnf9l+1s19qLDW74ggXIZpad8AyjK5CHY=;
	b=O3ag3+MYy0FaEvBWe9OBvmVs8C9GbS+3LAh/cNCkQHSnX7yWTY5q5yEZs3ARixqY
	q3aJaFli0aOPag2e7FM+jnvb08+fX6xyQrsuS2NlvljHONw3ql+WjYvZwgJRRzimlfs
	ccPCAbU+ekwyfZzr9WlqRHiSqUYmL9E53vYCQVjo=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3.1.rc1)
Message-ID: <0101018c03fc64d2-a204587c-6202-4a4c-b479-8413df9dd87f-000000@us-west-2.amazonses.com>
Date: Sat, 25 Nov 2023 00:58:41 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.11.25-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Nov 2023 00:58:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61757


    A build flagged for QA (yocto-4.3.1.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3.1.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6242

    Build hash information: 

    bitbake: 936fcec41efacc4ce988c81882a9ae6403702bea
meta-agl: 22ea97e52898c7ee3e32e0c683166c9071e37adf
meta-arm: db658a77af7e15cdb8e4d9231bef8c48c5d327fb
meta-aws: ac6f26f5707c51091ead00b26bffd3fa899dab71
meta-intel: 52ce86a7f5f1ed751d80bc5e1d6b76db1c5b84c8
meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
meta-openembedded: 991e6852a53e0fcd40af8f0386d7f46bb318015e
meta-virtualization: a215d8320edee0a317a6511e7e2efa5bba867486
oecore: cce77e8e79c860f4ef0ac4a86b9375bf87507360
poky: bf9f2f6f60387b3a7cd570919cef6c4570edcb82


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

