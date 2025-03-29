Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50454C36008
	for <webhook@archiver.kernel.org>; Sat, 29 Mar 2025 19:28:08 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web10.17437.1743276484405300619
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Mar 2025 12:28:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=UVFQ7yEb;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=lcdlIhIz;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 01010195e3602375-1bca3d69-ade5-4ae3-aae9-8c6d381adffa-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1743276483; h=To:Cc:Subject:Message-Id:Date:From;
	bh=iiTTCXPa42bVORMMY9pqwp3IOn5Pdo1tkORv80CkJbM=;
	b=UVFQ7yEbCTMz6x9ZOg387N/aBapnJY0dOciGqevT4M3OANh1LPqSWMgy/hfXQqsX
	dMsyGCNFeMRYYNTjDFxAFqQnZoruQcpWo6xHYtdw3GPB6u3lXcxZL0j/F3tod9dRkcZ
	zzdgLVYlX31kwoOQ02DkZm/w0wCBmbdsHLQ3KQJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1743276483;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=iiTTCXPa42bVORMMY9pqwp3IOn5Pdo1tkORv80CkJbM=;
	b=lcdlIhIzQlJhLBriyvQMHmFiVZ0MAVpyHBe0TcnQCmExpgZ67zCj+lXAevFsbO5r
	MijqrUm5n8ML1n/kXXrZXnrM7wEF4roHarkVoSBMf1INRrDEtDYHWkJ+z3svUVplQuo
	zmwuK4O0S1/fgp/04gl38ewJSt27GlOA25tZ9Gd8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.2.rc1)
Message-ID: <01010195e3602375-1bca3d69-ade5-4ae3-aae9-8c6d381adffa-000000@us-west-2.amazonses.com>
Date: Sat, 29 Mar 2025 19:28:03 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.03.29-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Mar 2025 19:28:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65033


    A build flagged for QA (yocto-5.2.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1293

    Build hash information: 

    bitbake: 5b4e20377eea8d428edf1aeb2187c18f82ca6757
meta-agl: 17fd501fae2361588f2af72c229d56612cdca40f
meta-arm: 49cad31d10e6a3d4539c171205254e1ced443e33
meta-aws: 703760eff82035093ccb89b73ac9a6f272b3539a
meta-clang: 892380133becb17d95ffae95de1df025c9d72088
meta-intel: 79b1fd3430ece279f14903ebf5d34527fb80b027
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: a2a531a61b779fc666cb161be029b8ff801d2c97
meta-virtualization: a309b738e73860781ee9099de5fc9df7ee22950c
oecore: dc2ef2cc1183a14cd3a05d388a1d0485a1bc8d20
poky: e894acce6ede8bedafc1859ea0345ee6d80e9c74


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

