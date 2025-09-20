Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2374CAC59A
	for <webhook@archiver.kernel.org>; Sat, 20 Sep 2025 01:54:59 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.1745.1758333295522963767
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Sep 2025 18:54:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=VvyIbTae;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=Rzc3pKzs;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 0101019964d4d762-b79f194a-8ed1-4579-9c27-90439b076fb2-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1758333294; h=To:Cc:Subject:Message-Id:Date:From;
	bh=foW9QPe5hFhbrg0EtilM2RQpk4VMBzSoagua2afjqRQ=;
	b=VvyIbTaegSL90WkxtGsvK870kMkkdQY/ov8jilbXrlL22f0ViP5PBvuyeFu6SkIl
	EEAZ72bUg5yCtEX+smx6O5P2TH1mxO+kcPTLffWZ/7aoeYwYT7BACo69T0ew/G85rOY
	ZlKCCgV94yFU1m4dccQ/SHHrlvi8evs02kUZy4b0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1758333294;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=foW9QPe5hFhbrg0EtilM2RQpk4VMBzSoagua2afjqRQ=;
	b=Rzc3pKzs4rp9I0xKGY1YX0DY4sBwja7nqcx8XI7BC9wg+T2cZjJ2noCNRzP5NhYC
	JzZvueQMxDjVnfA8ROwnBwZc39GpfBlfjOxDlFD4gzyk4w9nhkeAam0jb8WXFGGJu4Z
	dHfX4ctZldI5OJlTQ18ZE6y3qgkX12yEVVvJimpc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.30.rc2)
Message-ID: <0101019964d4d762-b79f194a-8ed1-4579-9c27-90439b076fb2-000000@us-west-2.amazonses.com>
Date: Sat, 20 Sep 2025 01:54:54 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.09.20-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Sep 2025 01:54:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65861


A build flagged for QA (yocto-4.0.30.rc2) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.30.rc2


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2410

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


 

