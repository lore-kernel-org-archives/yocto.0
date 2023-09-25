Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31F3ECE7A89
	for <webhook@archiver.kernel.org>; Mon, 25 Sep 2023 06:48:59 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.56121.1695624535407324257
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 23:48:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=Onmf2pvE;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=QOcfwwtq;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 0101018acb19195c-0619b075-ca67-4522-86d1-951e55dc7abb-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1695624534; h=To:Cc:Subject:Message-Id:Date:From;
	bh=oPJLHwdW0bPomgN7bFI4Xn7JOO5+p2MwZfSeR30ygqY=;
	b=Onmf2pvEBGbYLeDhstLee3fMh83ozXEXJMSnBbTRAQOFS2SoYibY7jHd9tHRwu3f
	W8QHWr/gTp3Vvk2kKhChN5/nL7KXBfja6MAvFYCv1E0sy5VA5U66U860Krh5bbof1tI
	toj6Sbb8ZSC3wp5sfHStv3uIE8mJk9EJAXTAG4hs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1695624534;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=oPJLHwdW0bPomgN7bFI4Xn7JOO5+p2MwZfSeR30ygqY=;
	b=QOcfwwtqISgBM9FwlTE9/dvtuqkDf57q5wcLOIaP6MiyToKXsq//yRcU4RVBHRdV
	GE3wcG/l1Xk00VErJxtKLS35oJLKWFDWSYaHczY5VVXJQGoqtARo9rN8/OtzgbeYHLo
	7ZkvBVzQFH1wJg3S0JsuWgjsRwdzlrCk1T4JNJ3o=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.13.rc2)
Message-ID: <0101018acb19195c-0619b075-ca67-4522-86d1-951e55dc7abb-000000@us-west-2.amazonses.com>
Date: Mon, 25 Sep 2023 06:48:54 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.09.25-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 06:48:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61097


A build flagged for QA (yocto-4.0.13.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.13.rc2


Build hash information: 

bitbake: 41b6684489d0261753344956042be2cc4adb0159
meta-agl: 666f141563fd7fc12b7638479d5c0cd38dae5006
meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
meta-aws: 60891e535ce219b3c473a89d8ae89cdba1d396f4
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 1342bcdc5bfc6620737e7d195e7d9bd744348577
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: a88cb922f91fda95e8a584cee3092083d5ad3e98
meta-virtualization: 2d8b3cba8ff27c9ec2187a52b6a551fe1dcfaa07
oecore: d90e4d5e3cca9cffe8f60841afc63667a9ac39fa
poky: e51bf557f596c4da38789a948a3228ba11455e3c



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

