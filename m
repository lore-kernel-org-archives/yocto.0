Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4551CC7EE2A
	for <webhook@archiver.kernel.org>; Fri, 27 Jun 2025 19:35:49 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web11.1621.1751052945216986383
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jun 2025 12:35:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=gI/CV16S;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=mKbcZjVN;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 01010197b2e383a0-0a867f4c-e19b-4f1a-9a6f-59e10ffc01ef-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1751052944; h=To:Cc:Subject:Message-Id:Date:From;
	bh=tJ+XrVQG6SkM4W3KQZPp+pCTUvDBJCpyvo7ztouCWFA=;
	b=gI/CV16SzvA/y8Y/f35z+JcJBqMHi/Wx4K/p0N8S8OQOlnxXhCC8enlGZWDmTJYI
	X9RRrvwboB8aw/MtN1B3O/DqqV5s45E7uM3vfm3SuXtThm61HLCgPy/qvpWVj4RkbK0
	fxKR4KzNZOVc53bri/gGCEhd2+LKrTCVTyh5WkIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1751052944;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=tJ+XrVQG6SkM4W3KQZPp+pCTUvDBJCpyvo7ztouCWFA=;
	b=mKbcZjVNZ9QPoeZox5NUTt9cGwIOAeE6tfvZyPXTQa58yr4QE6elK/d+XIzuGx2X
	17QKmMKJVavmcA2OIYmNFFgUrs+QSBCdOXun47Ve8SrAVni3EiMTU1ZyAEgptZK/Z6E
	SKEb5FjKy+Pu6bBKAetSCPB06q0jT4QUIO0j/xpw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.28.rc1)
Message-ID: <01010197b2e383a0-0a867f4c-e19b-4f1a-9a6f-59e10ffc01ef-000000@us-west-2.amazonses.com>
Date: Fri, 27 Jun 2025 19:35:44 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.06.27-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jun 2025 19:35:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65556


A build flagged for QA (yocto-4.0.28.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.28.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1901

Build hash information: 

bitbake: 046871d9fd76efdca7b72718b328d8f545523f7e
meta-agl: d68bc4cb7cddeca1026a991ed405b9bec3d9179b
meta-arm: 6b2d97cecd1b0e4bf4caee9a65595d279b57a686
meta-aws: 12f6037467dc369f89629e1ce8d18d0a1bedde77
meta-clang: 8a1d0a1993040ab9d2fb7259b71e4c9582f5cd17
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 95eb26cd3372439443acd1f4d4265989aadeca88
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 45bddd258a3d1ded925faf8389e01bb948dc7f5b
meta-virtualization: 227cefa1261daf20b7d9737541994ec2bba629fc
oecore: 75e54301c5076eb0454aee33c870adf078f563fd
poky: 78c9cb3eaf071932567835742608404d5ce23cc4



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

