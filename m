Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF6A4EB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 19:08:28 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web10.6697.1687547305677221697
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 12:08:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=DFrkWCFj;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 01010188e9a85af3-ef64f2f8-a9ee-4dcf-8070-b9af7ad4da0d-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1687547304; h=To:Cc:Subject:Message-Id:Date:From;
	bh=HIAquhn5TgNbzlvx3xFs+qA5YKQAWwm+yHgC+5Jq1tQ=;
	b=DFrkWCFjtK3mm/LDNx7ctvET1vqvMCpkzL3yBNpL4ozASzwPPHtw3Y5KODGL8Kaj
	G3uxkzmv+CkofI8CSHZ1Qjtss2oLVw3/OcQCrJfSsGTwZAQm0m8yukLLmpaQnfW8xf/
	P2Ypq5OSK2n/5shSWJBQrocDVacyQMp8Qg8nuaNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1687547304;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=HIAquhn5TgNbzlvx3xFs+qA5YKQAWwm+yHgC+5Jq1tQ=;
	b=iOhwVW55s1kT94KGsldC90QfEnQoZwVgN8Ea/weIim2B9qSrm7htAevKEhEW+833
	MhNs0WKVsREFJrnSMsMS/TvJwyThCt0QPbFZ6XutUVgvRaPgN+dnF3avyNAhmeK9n/T
	C0b6R2rp/IyyOjCFwE50qQX1AZr1BSPatsdk/XHE=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.11.rc1)
Message-ID: <01010188e9a85af3-ef64f2f8-a9ee-4dcf-8070-b9af7ad4da0d-000000@us-west-2.amazonses.com>
Date: Fri, 23 Jun 2023 19:08:24 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.06.23-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 19:08:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60419


A build flagged for QA (yocto-4.0.11.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.11.rc1


Build hash information: 

bitbake: 0c6f86b60cfba67c20733516957c0a654eb2b44c
meta-agl: 1b0cad77090b75fc040f9de5db06374203fe34c5
meta-arm: 96aad3b29aa7a5ee4df5cf617a6336e5218fa9bd
meta-aws: 7c498bc8f0d51b9c2546b8f7e3347cc6e61d74ec
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 7fab6b8f1a3030bc6d2f1cf48789599af3dc3e78
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: a82d92c8a6525da01524bf8f4a60bf6b35dcbb3d
meta-virtualization: b3b3dbc67504e8cd498d6db202ddcf5a9dd26a9d
oecore: 7949e786cf8e50f716ff1f1c4797136637205e0c
poky: fc697fe87412b9b179ae3a68d266ace85bb1fcc6



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

