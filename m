Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26ABC282DE
	for <webhook@archiver.kernel.org>; Tue, 11 Mar 2025 03:39:46 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.930.1741664377029626027
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Mar 2025 20:39:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=L+O2UciI;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=KwGjR1SI;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 01010195834954e6-2d7ab9c5-20aa-4966-9ca9-3546f4436395-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1741664376; h=To:Cc:Subject:Message-Id:Date:From;
	bh=2h7auJPKglNXIYgPGPt/H47yAXsr0Sgw3x32BrZN6b0=;
	b=L+O2UciI5QM2Egr00E5x2KOcrYeptPT5GUauJrFV9ZgKbfWu08hQ4kRQG4h5ucvB
	Qa25Otvuuf/CMrqiR+YuYLQKLh/oPlXbENczkJim4HvTa9TX75HRng/LKKoGNxW8k+E
	YWgl1onM1LsoSiBDURhP56BcB7qTT8xlJ6ydt/MM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1741664376;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=2h7auJPKglNXIYgPGPt/H47yAXsr0Sgw3x32BrZN6b0=;
	b=KwGjR1SIN7wx6b4S+14ruMT3bq3Hy64KFwO+k4hx9NUt7p4YYty42KsgA1zzDku7
	RATAYeLXt/LyhsJV4CKbMCwATwseQykquK8cIObf7dqqibCXhIzt8dMITBfe7dR5zAC
	eNEVH6Mqwnc8gBSjKJQqlO41DmZIgPk3S80iWk8s=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.8.rc3)
Message-ID: <01010195834954e6-2d7ab9c5-20aa-4966-9ca9-3546f4436395-000000@us-west-2.amazonses.com>
Date: Tue, 11 Mar 2025 03:39:36 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.03.11-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Mar 2025 03:39:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64937


    A build flagged for QA (yocto-5.0.8.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.8.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1161

    Build hash information: 

    bitbake: 7375d32e8c1af20c51abec4eb3b072b4ca58b239
meta-agl: 005d2b0a27ebdd21fb2aaa589c8672650474b055
meta-arm: 3cadb81ffaa9f03b92e302843cb22a9cd41df34b
meta-aws: f824b120fb367fa53cb39a68dd4fcaf474ce913c
meta-clang: 8c77b427408db01b8de4c04bd3d247c13c154f92
meta-intel: 1a7ccdcaedc965f019a9263364437356b8a2ba29
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: 6c9f1f8d4538119803bf793747b65e4d23c33544
meta-virtualization: 94ee980814d7c5824449b2745a934664adbf3007
oecore: cd2b6080a4c0f2ed2c9939ec0b87763aef595048
poky: dc4827b3660bc1a03a2bc3b0672615b50e9137ff


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

