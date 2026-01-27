Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB00D19512
	for <webhook@archiver.kernel.org>; Tue, 27 Jan 2026 01:55:23 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.299.1769478914720213491
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jan 2026 17:55:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=YPoXXTDK;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=lYebT6rK;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 0101019bfd297f46-e2a1665f-20ce-4d02-971b-927affd30204-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1769478914; h=To:Cc:Subject:Message-Id:Date:From;
	bh=OZYYGwMoTjNQ+GxJ+t6Albs30gtk50U8j9nOChE7xpY=;
	b=YPoXXTDKBa/Ep9xxOMW8uXqcPGEy9g/Phf2BRoU3u6bZTTdWwfHc9nnBx/9d9aIh
	cEhdOjyvtJX+9k/1wpZbX4TwNuY4XL32//SjbVq+LqahMdxPvXeMVImyg3y3eI4Swbk
	js4gJqpSm0DnnCFAxO1OiQdsPOVql2fRn+uhQcno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1769478914;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=OZYYGwMoTjNQ+GxJ+t6Albs30gtk50U8j9nOChE7xpY=;
	b=lYebT6rKkqb6gmZtlNeSaWfENEhaVIMhqu/06HNNZw2wcqip7Rv+CEOFCsN39lgZ
	lVd8+0cuJ+fO9NuY+WOLkq49TayJp9C76OFYsyYrY+KcGqtBmNHw1UXOp2IwzwUTO+I
	4YuXUEHUgauaP30HHtJwBi70amQWP1K4uZWRnvhA=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.33.rc3)
Message-ID: <0101019bfd297f46-e2a1665f-20ce-4d02-971b-927affd30204-000000@us-west-2.amazonses.com>
Date: Tue, 27 Jan 2026 01:55:13 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.01.27-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jan 2026 01:55:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66187


A build flagged for QA (yocto-4.0.33.rc3) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.33.rc3


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3125

Build hash information: 

bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
meta-agl: 12daee6a859f48d3d65545d4fe79849fc312fa21
meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
meta-aws: 18a067493e82243b061c52a167c463df9298a392
meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 8f5f5cf4b335a09313c48394c62bfb614868fc1e
meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
meta-yocto: 677379f21941363d50f9d946963542b4ccb7e27c
oecore: 036f76ea35c49a78d612093dcd8eb1fac7ded8d7
poky: ff118ede826a9ae45eb35025a5f7f612880fba01
yocto-docs: 6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

