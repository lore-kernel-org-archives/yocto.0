Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE808F53D7A
	for <webhook@archiver.kernel.org>; Mon, 16 Mar 2026 17:06:49 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.55863.1773680801346376967
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2026 10:06:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=yp0M1Ea5;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=4k/yT3P1;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019cf79d32a8-dcb852f5-e466-4b80-9e02-65463eec7210-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1773680800; h=To:Cc:Subject:Message-Id:Date:From;
	bh=N38SbsuiFihSe8607BqSvUsjz0uCTXNOYlah16L9u4k=;
	b=yp0M1Ea57uIt+b+ArAf8GR+JSfkAd1RBeF+xaNBvCJkfE2nisQOflpcR+IL733z2
	qhFsAP8i5dYou3xMMAKMrkS20hnqvxKFQY/YJ3ETrCHC/3/FMLqUZLrqaBaHnon6NWU
	nYFW1M9kQJYMBAROgt3iQVoiMMX0gx35lbxf097g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1773680800;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=N38SbsuiFihSe8607BqSvUsjz0uCTXNOYlah16L9u4k=;
	b=4k/yT3P1WR48d4qu3VwHErsYZ2QmXld8R9SzpqmKbG6N30Fvb5dr5MVIsLKcSaNW
	VqLmUHFNnnmlf1V1RlY+KATzbV83fA4SyY8RwpEY3qYF1wUnhIZlgTZJIUyxFy1Kn8f
	lNXF08fh9OFGQiYg9oT901FXRsz3Fw5cHIZiLQZM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3.3.rc2)
Message-ID: <0101019cf79d32a8-dcb852f5-e466-4b80-9e02-65463eec7210-000000@us-west-2.amazonses.com>
Date: Mon, 16 Mar 2026 17:06:40 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.03.16-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 17:06:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66333


    A build flagged for QA (yocto-5.3.3.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3.3.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3433

    Build hash information: 

    bitbake: 7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0
meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
meta-arm: 73460c53949658ab6c8b46269c3a69caccd3f745
meta-aws: 361115903050329832a005bd2c98ed40b6e8dfd8
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: fc9bc44c9da5e7e7bae38313615aaff5873b843f
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: 12fc4c6584e001f89108a6691ccf2028eb05ed5a
meta-qcom: 08826f0bdc9b36db8d5bcdd980b11648b185a930
meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
meta-yocto: 9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487
oecore: ab57471acad7ce2a037480dc7b301104620f1ebf
yocto-docs: 82bd1a71e6e6a707d0009725969976cf2256af36


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

