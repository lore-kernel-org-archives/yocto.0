Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D43EF459F7
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 15:58:57 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.159539.1775836734246650719
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 08:58:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=J0DJgFgF;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=l7Y4cpJr;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101019d781e1f38-346b1fbf-b6d6-4223-ba68-6571cc4c046c-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1775836733; h=To:Cc:Subject:Message-Id:Date:From;
	bh=0K/WAnYSYcEl9mlyz5w0iTtbwLifamDaTHjMJZgOASU=;
	b=J0DJgFgFUaxDzpCCLevasJnXb1HqI8dv9rIftgKFkJmSuUgDmN+NrzDonptHdkMS
	8fwOMOynA3bKocebVtqa4hMmqr7jLEFzbNjmmHnfz9Av1/zBRdKdG6HmxkScVK0kS8Z
	6HqEIQpn7b7oGtarmzfn0tua/EeCDggjxUZar5n8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1775836733;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=0K/WAnYSYcEl9mlyz5w0iTtbwLifamDaTHjMJZgOASU=;
	b=l7Y4cpJraVrKeA7Xla8TjV7QMaROZkThU1clHGrOCL382PlVhjM33I9AFr2ohBPY
	eilVAqoYCNq7FrviY57THEMBRdagTYSXMJSxTaiHiZJbv9LS9D1NSxeop12zbtwmG1b
	mcB09SN1putAC61UNmObgXx0F0MPi09TOzH4oTf8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0_M3.rc1)
Message-ID: <0101019d781e1f38-346b1fbf-b6d6-4223-ba68-6571cc4c046c-000000@us-west-2.amazonses.com>
Date: Fri, 10 Apr 2026 15:58:53 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.04.10-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Apr 2026 15:58:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66395


    A build flagged for QA (yocto-6.0_M3.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0_M3.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3639

    Build hash information: 

    bitbake: 5d722b5d65e4eef7befe6376983385421e993f86
meta-agl: f5590359796fc6453a17849904a281095257ee38
meta-arm: d987a5945802dcbbc06be91a0d34f00431ea840e
meta-aws: 172c1f12366c50f58c317a4ed58d6de79e7afa1c
meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
meta-intel: bf06e8360baf2c84257e82f4153e13e62708568a
meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
meta-openembedded: d793c367e067c49956d38caf6eb84cb112c9c9b7
meta-qcom: 5d1eabf99f52bc5ed4c629ba4a28f567ee69e564
meta-virtualization: 4dddf149832ef19233c13af31987bcd6b1faf4cd
meta-yocto: 49cbb01d52521bfe557395c9ebfae6b1c162581e
oecore: 5a60dca0fb81695e26149e45aad9a9eee7c955ec
yocto-docs: 560bc33c0c2ecd60d68ba06a2edff8c25b9a3f90


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

