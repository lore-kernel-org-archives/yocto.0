Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5516BC3ABC9
	for <webhook@archiver.kernel.org>; Fri, 16 May 2025 19:40:17 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.21682.1747424414883606646
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 May 2025 12:40:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=L4GtC9EO;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=DRNjTJXq;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 01010196da9c898e-ea7e03e6-5552-402b-a021-4e0f3dc851d0-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1747424414; h=To:Cc:Subject:Message-Id:Date:From;
	bh=sKsFveOoZSekCjDcFRKpj+K8alHzC36w8FT0sgSTf7I=;
	b=L4GtC9EOfnXl9pvba8tRCNKU4Q/Ds2LTNizvwcq+fj7b/P6rvpL0EnHqC5P/XNKj
	8JlvwVNp9oQEbMKCnr9U7dhlTpi7/nSoVziXn4zNfuboseahkO/wQtC/vekArQOxNOb
	926Zo0Juu99xYbKUcBVroksARz7Ja3Qgs13Wm4hM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1747424414;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=sKsFveOoZSekCjDcFRKpj+K8alHzC36w8FT0sgSTf7I=;
	b=DRNjTJXqo3GNNg7kwSnGS0hL4KRLM0K1gxMhflv8swp9nboUoXyzkIvhFhTlggkt
	W/QceCbvxOwIVQmSONl2AlkJHE+FLPTnCKZf2FhUsCjHLzdlU0A+LybR2mxdajyhUBW
	O1jE0tHIrNPtFw3YDst+YOoAQ+x5Yt6eUFO5iSuc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.27.rc1)
Message-ID: <01010196da9c898e-ea7e03e6-5552-402b-a021-4e0f3dc851d0-000000@us-west-2.amazonses.com>
Date: Fri, 16 May 2025 19:40:14 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.05.16-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 May 2025 19:40:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65349


A build flagged for QA (yocto-4.0.27.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.27.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1605

Build hash information: 

bitbake: 046871d9fd76efdca7b72718b328d8f545523f7e
meta-agl: d655b47bb267e6e167baaa49421b1ae26c25f74c
meta-arm: 6b2d97cecd1b0e4bf4caee9a65595d279b57a686
meta-aws: 9dd75f69c59f19125ac96a796bc97f06c4dc8a40
meta-clang: 8a1d0a1993040ab9d2fb7259b71e4c9582f5cd17
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: dc0948200594dacece4da91f4c501e9a9fb0394f
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: e42549cef364ae09b3b7c8b64bbeab32e50f1bb0
meta-virtualization: 227cefa1261daf20b7d9737541994ec2bba629fc
oecore: e8be08a624b2d024715a5c8b0c37f2345a02336b
poky: ab9a994a8cd8e06b519a693db444030999d273b7



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

