Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F27C8C369CB
	for <webhook@archiver.kernel.org>; Sun, 20 Apr 2025 02:22:27 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.1964.1745115741531750201
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Apr 2025 19:22:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=gHTsZfiG;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=tgHpvQIb;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 010101965100f948-c358e3d8-c280-4c1c-96eb-083f635841c9-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1745115740; h=To:Cc:Subject:Message-Id:Date:From;
	bh=yXa8Pa/n1e1mrfyWKNAq/LW6josxEAeO8luN1tUIGNI=;
	b=gHTsZfiG5nYfGk0USgsFdzuBxNiVnQE2lln2Vgn1yJYJgIBHtiw7LQ1jULcjqzH4
	1tJcHxfP2iCevGqZ7eAlwEJBq05coXGMDV20bGDgg6PpXigFiSS8Megu6wScf2BZmLx
	6FAYcJJOHaLFmODFQaOhIa7yTvWZCEfmlqX8whjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1745115740;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=yXa8Pa/n1e1mrfyWKNAq/LW6josxEAeO8luN1tUIGNI=;
	b=tgHpvQIbmQAO4+IvoOF+AQs7ylAibQk+liymOW7q37x5JF5+NInNz1VI0j7BkypC
	XH2YZ77+4uFP1uLRmIij4lm3Du7HxubE4FZwSedZGOaLzO9s9sDHSIn9bglnAsTRVt/
	ZWW+8TDiqS6YIBi04rOj5W7KXJ7xb8lHZyrZzglc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.9.rc1)
Message-ID: <010101965100f948-c358e3d8-c280-4c1c-96eb-083f635841c9-000000@us-west-2.amazonses.com>
Date: Sun, 20 Apr 2025 02:22:20 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.04.20-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 20 Apr 2025 02:22:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65203


    A build flagged for QA (yocto-5.0.9.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.9.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1423

    Build hash information: 

    bitbake: 696c2c1ef095f8b11c7d2eff36fae50f58c62e5e
meta-agl: 70d6b766edd16428e5a3e61c82b4bbb2dfea2de2
meta-arm: f3640941c600d03ea53ce5b9254f0fead18f8bc0
meta-aws: 66780aa4542c6603420b2a0c2edf9e15e8b99c40
meta-clang: eaa08939eaec9f620b14742ff3ac568553683034
meta-intel: 1a7ccdcaedc965f019a9263364437356b8a2ba29
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: 67ad83dd7c2485dae0c90eac345007af6195b84d
meta-virtualization: 9287a355b338361e42027ce371444111a791d64f
oecore: 04038ecd1edd6592b826665a2b787387bb7074fa
poky: bab0f9f62af9af580744948dd3240f648a99879a


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

