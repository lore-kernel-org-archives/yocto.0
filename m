Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15850D111A6
	for <webhook@archiver.kernel.org>; Wed, 26 Nov 2025 21:16:12 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4721.1764191765545814446
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Nov 2025 13:16:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=R+XHe3z2;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=gxkOOKKS;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 0101019ac205ffad-5a7861eb-0d81-4881-aab8-28e6382b6a7e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1764191764; h=To:Cc:Subject:Message-Id:Date:From;
	bh=yDmXlb1hCNdqUUMtZebh9a5t0T44TjHytZHICLspVw4=;
	b=R+XHe3z25n7YCInAi+2oMSDCP05QHyHEH24xyO668hhEh1iVPKk2+UAj31f39q8a
	aWhTUjiAe1kMOLg8ycAdu9wn1IxVxLQcp/jIDygfB69sdcEWZDJAKTmyKHkeY+cOD7H
	BL0QKK9CxMdQ6LZkeBWxfdHFZ+f4tcXWF8miQpaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1764191764;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=yDmXlb1hCNdqUUMtZebh9a5t0T44TjHytZHICLspVw4=;
	b=gxkOOKKSI6/1mR2/cp2uUgfOcEm+z4nmRwhadBOXzrJ+Yme3BXL5znEf9hL5/z9A
	KClvg+bnSq5lFXPH+wsbogXwc/NEiebPKYSlVUu9xlMYag7ZleFOv6ZwJLKLQ0+RbnY
	lg1Jdv87YwLrkkIh2C5Wc0MTLDZfhNzU31gaCd1M=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3.rc2)
Message-ID: <0101019ac205ffad-5a7861eb-0d81-4881-aab8-28e6382b6a7e-000000@us-west-2.amazonses.com>
Date: Wed, 26 Nov 2025 21:16:04 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.11.26-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 21:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66072


    A build flagged for QA (yocto-5.3.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2784

    Build hash information: 

    bitbake: 6ee4df8ab58e0175b43106d8a6cbac1f6ab8d022
meta-agl: aa0d68572f54d2a4359d03c0e00446e91840c53e
meta-arm: aff67cb5d748aafcba1ee589a758d51191f061c2
meta-aws: 8e242eab3d44acab70f97a3c26fe9cfc4423920c
meta-clang: d0a67c76b7a3b585dbe2ba8ad509dc0fe0e58af2
meta-intel: af904290f574ee9b1f62aade9f55dacdd9fb6cdb
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: d56cd727c73a53627827080f664b31cfa19581fb
meta-virtualization: c2185cd5ef225c6606341745ad9ffb02efe364d9
meta-yocto: d02d3faaf4d6075ea03e9eb47654ec7639f929a0
oecore: 8519978592483bb096ed5192fff7af6c887b799e
yocto-docs: bcb6a7c8a401ceadf69a4c0c14dbc89f85ffdebe


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

