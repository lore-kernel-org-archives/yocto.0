Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8A9C25B47
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 22:05:49 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web11.27779.1698444346285460775
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 15:05:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=W219z/a/;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=WyVSUE1P;
 spf=pass (domain: automation.yoctoproject.org, ip: 54.240.27.33, mailfrom: 0101018b732bfffb-12002d52-9058-4b77-ab53-1fa728765bda-000000@automation.yoctoproject.org)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1698444345; h=To:Cc:Subject:Message-Id:Date:From;
	bh=s8pdefjHNZ4pAYGp+nGWYki19RgrB/f6jRCTKUZCyFE=;
	b=W219z/a/vQFYWMrlfTTwN7axh/c07Y3AWRmgW/cgUx+g94aK8RfRN3pLX6L9/hZ6
	GyfHKwF88KVz7JBoujXiAc+eb8wtkHNXLDZOmgcWesBXi07NJ6HFgLlo6bENExyDZW6
	dVOoM/ZtF8aCqlN2UW//OYZeHj+PHp24XGTt6GN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1698444345;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=s8pdefjHNZ4pAYGp+nGWYki19RgrB/f6jRCTKUZCyFE=;
	b=WyVSUE1PaDH1vIPbM42xYjBeNVcEqINvY5Co4c1ytNtAAOAU0F41sLpAYYdH4frL
	IAy6j+DC/KpGe64/MoD6A/nArCsNN3jnsz2qiCMA4Yw7cVPcI7Kqeru098qBDskdG+r
	UNr5h5i9cIHtgqXvk3w7+XZ9z8Eigd2upRMtgcVI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.29.rc1)
Message-ID: <0101018b732bfffb-12002d52-9058-4b77-ab53-1fa728765bda-000000@us-west-2.amazonses.com>
Date: Fri, 27 Oct 2023 22:05:45 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.10.27-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 22:05:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61503


A build flagged for QA (yocto-3.1.29.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.29.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6111

Build hash information: 

bitbake: dd826595414c5dc1a649f45a9dd2430bf6d4699b
meta-agl: 280f7e70af30eefd885f6e60bd29863b46bb2eab
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
meta-aws: 6e3ace380b609dadf58c81c734ef2061e9636914
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
meta-openembedded: 300be975359fdb3a3b2bf7c6fe15dea7acac575d
meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
oecore: 0dbf3a15321b8033ff8ed86c6aa261fdb9c3d5bb
poky: aeac1034661725b5c83e79f76238429fb236b090



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

