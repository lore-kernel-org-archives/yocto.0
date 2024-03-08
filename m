Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2778C5475B
	for <webhook@archiver.kernel.org>; Fri,  8 Mar 2024 15:24:17 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.24653.1709911454022843719
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Mar 2024 07:24:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=GK8mm5es;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=kiqVTDRd;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101018e1eaa2d45-070e35e2-d7ce-4363-84c5-e31d6b513774-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1709911453; h=To:Cc:Subject:Message-Id:Date:From;
	bh=guqbBwCdiFu3/7IHlUd/n3SG2blQLKOpq++9IlKhL6g=;
	b=GK8mm5esBHdJ3KmnIKdE99bWLP/sQujy8tW2rhHBleAfrlTzwhgbiP9iWy5A4I/I
	AHq6SXdft3p9Iavz8bWYex2aXFrmm2/kl9fO6ZeImdEPQzTmNA84IlyciKuDqqkpaiP
	trmrw0ZmzuACzGXtLc6wMb3tHVpTkQ89QItpPgNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1709911453;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=guqbBwCdiFu3/7IHlUd/n3SG2blQLKOpq++9IlKhL6g=;
	b=kiqVTDRdGlb1XCkLJcGuE++9bmoyRoloLEqAxW+aFhI2XB6k9YgL7xy5IkjIxE/5
	55LNFhbuxhmdI+giZ0S0njFibQ6WOtZUPbAC/LmkMiirbKlnA9xvMxXwRhVQqHxQKwB
	3UsD0E1kDTYO0uoqfIKHybOyO6JTk0o9VtIdmfnA=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0_M3.rc1)
Message-ID: <0101018e1eaa2d45-070e35e2-d7ce-4363-84c5-e31d6b513774-000000@us-west-2.amazonses.com>
Date: Fri, 8 Mar 2024 15:24:13 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.03.08-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Mar 2024 15:24:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62709


    A build flagged for QA (yocto-5.0_M3.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0_M3.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6661

    Build hash information: 

    bitbake: 0a33b560233b983456178541603ab96fea22238b
meta-agl: 403545c205c30df24e39ee03d6f188aca998b3f7
meta-arm: aba9250494f62360c1ec8021f81922c005d92b82
meta-aws: eb351722d71f5de128455b9f5bfdabfce5d2c725
meta-clang: eebe4ff2e539f3ffb01c5060cc4ca8b226ea8b52
meta-intel: 9ed54a13803e42ca40589d6ce02c76f3162f6b73
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: a0237019f5b5c003fd0c6fd4486859214e24be01
meta-virtualization: e7f9c2dd2f9f4ac95942b69c05ed8f5d0494edbf
oecore: bc793fa9d1fe24c102d91e97b7002b6e637cbfa5
poky: b5624ee5643d881afa004571a096a189ab5389b5


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

