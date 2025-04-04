Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFE8C36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 19:08:35 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web10.5271.1743793706736566170
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 12:08:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=bKzyvfPT;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=fhzTtL9K;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 0101019602345387-94562609-3f1a-436a-8818-f68b1f3cfc1f-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1743793706; h=To:Cc:Subject:Message-Id:Date:From;
	bh=TDIix/rcaFXzuNFAoPGTrQi4XGmRFxvq5tv6X3fXBHw=;
	b=bKzyvfPT1FDFNgePPxbO8+kNSRu2+cZteREhnavMYWNTbD27qZg+k7qvtAWRbu1z
	KYmomYmwVauf/TVpJnB+WatPwtF1N/JWgKEtkh+jDqMTLbuEUO4KoaCo1BccJS/taOW
	cJ7jgjHzTtmd/LufixpRLgYfsBEeASHs7dFAwM5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1743793706;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=TDIix/rcaFXzuNFAoPGTrQi4XGmRFxvq5tv6X3fXBHw=;
	b=fhzTtL9Kr7E/ex3JIvRHKVg35BSLKeotnj+PK1S3+HL/wcde2lS0Ef/moM3CeXlF
	31mnIGPmtH+DXmzegetafezMmL6stfmRuKVgUwDqD2IvWp06+YeAxKUiDGPFaEtupR6
	j2fHQ897qwTfhpy3DmTjb1bH7kkRvESA3bu4mUNg=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.26.rc1)
Message-ID: <0101019602345387-94562609-3f1a-436a-8818-f68b1f3cfc1f-000000@us-west-2.amazonses.com>
Date: Fri, 4 Apr 2025 19:08:25 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.04.04-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 19:08:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65106


A build flagged for QA (yocto-4.0.26.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.26.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1341

Build hash information: 

bitbake: 046871d9fd76efdca7b72718b328d8f545523f7e
meta-agl: 296d62ad1e6c45c04739645401056bf172e736cb
meta-arm: 936c02ec13661bd86a05f7f90e1b920d5092d670
meta-aws: 4dcae212fd121b16c525f57ac7c7ee32df3650e1
meta-clang: 0356fab9b788e6071471f82743964aec1775cd71
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: dc0948200594dacece4da91f4c501e9a9fb0394f
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: f8dddbfcbfe502cb71375a7a907e61a92e8d4474
meta-virtualization: 426530794bfc0df686566beed50e245f40565d6c
oecore: 1efbe1004bc82e7c14c1e8bd4ce644f5015c3346
poky: d70d287a77d5026b698ac237ab865b2dafd36bb8



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

