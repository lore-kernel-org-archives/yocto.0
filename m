Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70393CAC592
	for <webhook@archiver.kernel.org>; Fri, 19 Sep 2025 17:42:10 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.2629.1758303723898548240
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Sep 2025 10:42:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=VBSVtsnC;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=hWtR9ENz;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019963119e49-b80291dd-c154-4031-a123-aa81512780a8-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1758303723; h=To:Cc:Subject:Message-Id:Date:From;
	bh=l56JG/h9N1rauWqvM3JCfG9VP4MRcwDx2EV7VuQPWBI=;
	b=VBSVtsnCkcdIKOX8M6s9LfqoEFf+tsAPypxmCxcDPje7xbl/gbudSf22DVeBgFEd
	Oo0UPgaESTb7A11VuXlsrNlcjKWsHGZoZ0fV5GF5EbjfEplJqlm8ZZHYSD21ntjsiZB
	1O9yzz80GCMROEzVTFLHExXU3/LXNp/H34bNPf44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1758303723;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=l56JG/h9N1rauWqvM3JCfG9VP4MRcwDx2EV7VuQPWBI=;
	b=hWtR9ENzTKa2wSJ+WCdrzT9OgD3eD4aSB/eQ8uS8p+KjmGFOHB4ZMifz3+t4sEyL
	VG4kk/Od0UPe7+9jca3FRSQdFISI65fw0dYPEQ4Yf7M/E9OatspqJUe8G8FZ4ske02b
	4riMzRY2onmKTsXIiZq/FIX5TH4QRc4RAP8Pfom0=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.30.rc1)
Message-ID: <0101019963119e49-b80291dd-c154-4031-a123-aa81512780a8-000000@us-west-2.amazonses.com>
Date: Fri, 19 Sep 2025 17:42:03 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.09.19-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Sep 2025 17:42:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65859


A build flagged for QA (yocto-4.0.30.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.30.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2408

Build hash information: 

bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
meta-agl: 8ea88240e6ff89b006da04923171736fa07bb84e
meta-arm: 10c27f061b22af78e17a23cf540b69501afc7160
meta-aws: 66cc5b4b07a1d4aaab5eea0fbfe1e311ec674fbe
meta-clang: 26de1c560ef3caf3cf641cd54ed0b7cbdc219ed9
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 5c138125018fef4b240e62b664a809d19f4b26a5
meta-virtualization: 5429fc0f5c2ebd7187e54913220f579417fcbaed
oecore: d381eeb5e70bd0ce9e78032c909e4a23564f4dd7
poky: 51dc9c464de0703bfbc6f1ee71ac9bea20933a45



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

