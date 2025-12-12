Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C26ED59D92
	for <webhook@archiver.kernel.org>; Fri, 12 Dec 2025 20:16:53 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2828.1765570605105878613
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Dec 2025 12:16:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=aoWv8Zo8;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=M3qLR6I6;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 0101019b14356c46-c067d30b-d4f1-4c27-9264-0144cc80b869-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1765570604; h=To:Cc:Subject:Message-Id:Date:From;
	bh=k+JO6tf3Z98hhT49cDmeTzm67PB0t9LXSyjsvvgvyzA=;
	b=aoWv8Zo8O3i66DOQGuM6Vp0VMiSEH2AUPdJNxBr721db5iq6TvGMuis5Ro0abcU4
	dXgFnZoPV5vCoCS6cL9Med+0MuP5gdgpGC+P7jQIGmyBCSUlXgRU8r/XTd7hKpyIWQD
	C4BBdmGYveY7SI4VO0U3ulxGpz15pHvhLmZGJ7SQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1765570604;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=k+JO6tf3Z98hhT49cDmeTzm67PB0t9LXSyjsvvgvyzA=;
	b=M3qLR6I6LlZFMMHRUwq3jkWodhU0aY8m5BVClsRbFfrPQ2WWlE4D3FVQDH4XRtCT
	9W0fs/Flu9aeJYDyDEKHpO8BbBrf5nkxEoiQbiCBaXIOv1h9WKUVidkd/r6Bf++O5xo
	Cj8bx9P6e+Bz1gywAKj36pHdgjPDXt7cn5k/DiIo=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.32.rc1)
Message-ID: <0101019b14356c46-c067d30b-d4f1-4c27-9264-0144cc80b869-000000@us-west-2.amazonses.com>
Date: Fri, 12 Dec 2025 20:16:44 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.12.12-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Dec 2025 20:16:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66109


A build flagged for QA (yocto-4.0.32.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.32.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2852

Build hash information: 

bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
meta-agl: 3dc8b04c14305720cf7e92bbb9e541e03403764c
meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
meta-aws: e27c0573a292038f33f8d1fca05f02257ab1011d
meta-clang: 26de1c560ef3caf3cf641cd54ed0b7cbdc219ed9
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 97d4be2839754dadfc326c21948472c2fc2985ce
meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
meta-yocto: 77b40877c179ea3ce5c37c7ba1831e9c0e289266
oecore: 2ed3f8b938579dbbb804e04c45a968cc57761db7
poky: 2c05660b21c7cc1082aeac8b75d8a2d82e249f63
yocto-docs: 4b9df539fa06fb19ed8b51ef2d46e5c56779de81



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

