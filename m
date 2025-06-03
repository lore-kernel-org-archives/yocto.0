Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8552C5AD49
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 00:19:33 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web10.66.1748909967410172071
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Jun 2025 17:19:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=NMm68YC7;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=FBWx5V4V;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 010101973328442e-77dc9a4e-4c12-4be8-9021-49468ec66a14-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1748909966; h=To:Cc:Subject:Message-Id:Date:From;
	bh=8l2UlPVa2RCTEWfdSHW+LyGn2Wl1wL1d2xNsifZoBeY=;
	b=NMm68YC7CzD2Et58Xk3aTSWczYC5EdRt0tNF2OulWL/U3eBhD6OV7jStCj+ulpRj
	aIpeZTfmrrndvYa/iUHSROKKeE2JiYRjMD3o04VhRjXBe4M5QJZ+/zsfLedd4nSOAyp
	4H4q70fxCDggstNMGhgiQh9i06unNf9FpQKJckcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1748909966;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=8l2UlPVa2RCTEWfdSHW+LyGn2Wl1wL1d2xNsifZoBeY=;
	b=FBWx5V4VdfqzS3qb9RlU2BwUBoFOeH4/6kI/ZTXMs3LYCmdsMzg2mD3RqOnWZ+fe
	EFKSFgI/oLT076zB7Cj2HVLC0EvMEjiWqBtHpeTOFGKliTi5f6rmIUlTH2JSNAfWPya
	Lk/SCphFugQFMOPyBG94for65KPl92PHsx9MpHkQ=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.10.rc2)
Message-ID: <010101973328442e-77dc9a4e-4c12-4be8-9021-49468ec66a14-000000@us-west-2.amazonses.com>
Date: Tue, 3 Jun 2025 00:19:26 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.06.03-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 00:19:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65447


    A build flagged for QA (yocto-5.0.10.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.10.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1707

    Build hash information: 

    bitbake: 696c2c1ef095f8b11c7d2eff36fae50f58c62e5e
meta-agl: 225c289b7245c8d9a896709e924dc0e67eff1e1f
meta-arm: 8e0f8af90fefb03f08cd2228cde7a89902a6b37c
meta-aws: 584e2a00acb65eaffa1d3b9058f0301d982a4f85
meta-clang: eaa08939eaec9f620b14742ff3ac568553683034
meta-intel: 38e75c8c1059e5f37659c140c010eaa203238fd2
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: 491671faee11ea131feab5a3a451d1a01deb2ab1
meta-virtualization: 9e040ee8dd6025558ea60ac9db60c41bfeddf221
oecore: d5342ffc570d47a723b18297d75bd2f63c2088db
poky: ac257900c33754957b2696529682029d997a8f28


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

