Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA464C54ED1
	for <webhook@archiver.kernel.org>; Sat, 24 May 2025 17:09:05 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web10.10994.1748106535601882023
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 May 2025 10:08:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=TuLZwnVA;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=m8wUhY/s;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 010101970344de7e-a0658898-c111-477b-b2ac-093e5ac89415-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1748106534; h=To:Cc:Subject:Message-Id:Date:From;
	bh=o/z57IQHqh30F8lthsX6qZ8K+mzvOVOA0HxyghQIUvQ=;
	b=TuLZwnVAROWknUxUL0bcn+2CQMLJJalLONHso6i9Pel1rTSFSe7glQGKrIvsbGDs
	hsV3F9RwukVUwg5EoDdu9dFpCmOkK3D6uHiGW/lhJIRPTCJqUgMdbCBlldmaKWrvv8M
	REmwxIKknj3Fx8XdbPXrpsDQilaoI9fbUpKbkjME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1748106534;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=o/z57IQHqh30F8lthsX6qZ8K+mzvOVOA0HxyghQIUvQ=;
	b=m8wUhY/s3iBDsX7bjY5DZtZaIQ2edq63DwNUXRjYuiaAQPHgauPCRvV76GUZK2j9
	45h1QnbA67iEAQojadMwWmWImF3qQqX266GXv4NqUM+Pyuw8s05lsT+Rn4bGrOEu7nc
	zVlRBFl6qfIUPuKlvT/nFpbtHos8tRzzmJsTL04k=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.2.1.rc1)
Message-ID: <010101970344de7e-a0658898-c111-477b-b2ac-093e5ac89415-000000@us-west-2.amazonses.com>
Date: Sat, 24 May 2025 17:08:54 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.05.24-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 May 2025 17:09:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65416


    A build flagged for QA (yocto-5.2.1.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2.1.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1654

    Build hash information: 

    bitbake: 5b4e20377eea8d428edf1aeb2187c18f82ca6757
meta-agl: e66db9b71ee6566d5931f590e5491661e94b5e13
meta-arm: 4f8d2f4b2fa23b89098a8e7347d6bb26228acd68
meta-aws: a28a159b336db6531e5482ca5c6f92b25231b184
meta-clang: b3e5449f0156884d18c17efff99654cde8251411
meta-intel: b5c65864faeff4ed95f4f75daf5535a95a809e5e
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: 2169c9afcc0945045bea49f58011080942d4ddb4
meta-virtualization: b54f05a85be5e2b80c111506b7c4d35d7d4eb54d
oecore: 17affdaa600896282e07fb4d64cb23195673baa1
poky: fd9b605507a20d850a9991316cd190c1d20dc4a6


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

