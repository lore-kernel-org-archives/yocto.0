Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25777FA1FEF
	for <webhook@archiver.kernel.org>; Wed, 22 Apr 2026 20:18:25 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.91930.1776889103641990918
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2026 13:18:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=izkQTQar;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=mhC3OyNn;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101019db6d801cc-ff6f5500-d270-436b-9ca8-36ad2b5b62db-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1776889103; h=To:Cc:Subject:Message-Id:Date:From;
	bh=tnwi2Thla6JWPqN1EKCGKqj7UwedWHY9ugAmChJ4hKw=;
	b=izkQTQarJ+fR1A5yRj6HsSR93HAW6cCAbZdbfdZk6dVStaz8pVZWbvZzF46ZuaGd
	qazOJtzHg0l4fbdrP6GEIR2wQSgJ8E3btFE5fov51RPnpjmnWNSA3yGKjNK9DqJ0F1e
	K5ZBv+lGCa+5I1FGvZqDfMwr6GZMGtBeWlbuFc9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1776889103;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=tnwi2Thla6JWPqN1EKCGKqj7UwedWHY9ugAmChJ4hKw=;
	b=mhC3OyNnuf9+lCzennLo1qCUsL7/kmSlnRS/ozG0TmRZAlmJoU02Wpnd+5nkm3tv
	oB3DyufSbCQDmJ4I86lIBQEZX89xa3rVPdUh5SLyBl+E2WSk7hJkk31lXUmZVyuyvYi
	+o1OWiVpHiMt8pBR/eq8FW9G2lhd9SH+RujBWJks=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3.4.rc3)
Message-ID: <0101019db6d801cc-ff6f5500-d270-436b-9ca8-36ad2b5b62db-000000@us-west-2.amazonses.com>
Date: Wed, 22 Apr 2026 20:18:22 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.04.22-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2026 20:18:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66433


    A build flagged for QA (yocto-5.3.4.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3.4.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3713

    Build hash information: 

    bitbake: 713fbbdb9ecc195ceb2216a2345e0d79dbee2135
meta-agl: 335bfb321925d37675d45f0f869c446ded8972ce
meta-arm: 4dc2a7bf29c1853b95dda53d9527f0a23049295f
meta-aws: c570c7c325a60e4da29a28db014769be0f7f621e
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: fc9bc44c9da5e7e7bae38313615aaff5873b843f
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: 8bcdb0cc1dab116253b409e78fb868ced7d8397c
meta-qcom: 96edf508b3f2b83c10cc2f80cee5396af360cff4
meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
meta-yocto: 3f2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e
oecore: 8751ec83421192fc0f8495fb95798f9eb7be77a0
yocto-docs: 10818445a22c524de0934901547cf676256c2b9d


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

