Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C113CC021A0
	for <webhook@archiver.kernel.org>; Sat, 15 Feb 2025 17:52:07 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.13777.1739641925518024507
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2025 09:52:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=G6MX5vlQ;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=N6dNimvA;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 010101950abd2b72-1e207827-710f-4a40-9c8d-baf72f7d50bc-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1739641924; h=To:Cc:Subject:Message-Id:Date:From;
	bh=3nHFWn9dUBACi8FvtPoT8iWmChK7bY3+JkaqF0pG6ek=;
	b=G6MX5vlQAoA1M0r6+BM+5x7Nym1xfPavJROK/yW4sE9VEbO2q3XozF1LPq7+drp2
	a7puLWHCLsslDkW6BMRxSapyQLf6uThSkx31AttDZ61q5F9gKEfUZd0/036n8Kv3OzY
	poYcI4F7q0HHqek0AJzrudPip6ZHV2UomAFVfEbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1739641924;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=3nHFWn9dUBACi8FvtPoT8iWmChK7bY3+JkaqF0pG6ek=;
	b=N6dNimvAHkE/ZJ9fg6yp8tW8HfGYRINIyngFIYANQzfJiM9CVyWMSfTFl6dxc8US
	ZcaIPuxjwd4LxT2hH6v9IIwTDD7qqJT8hxVxX43BR00gdukFxSA4rRldEgAVFxCmkFj
	rsRprIeA7/iGityLR2wkHkm+/iwV7nUCq/y1xQHs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.25.rc2)
Message-ID: <010101950abd2b72-1e207827-710f-4a40-9c8d-baf72f7d50bc-000000@us-west-2.amazonses.com>
Date: Sat, 15 Feb 2025 17:52:04 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.02.15-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Feb 2025 17:52:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64816


A build flagged for QA (yocto-4.0.25.rc2) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.25.rc2


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1022

Build hash information: 

bitbake: e71f1ce53cf3b8320caa481ae62d1ce2900c4670
meta-agl: 9a490176e35eefbb5932f2c838eeccb5de7c8b36
meta-arm: 936c02ec13661bd86a05f7f90e1b920d5092d670
meta-aws: bc3d881492006e7283b089141a1991daf77c6f62
meta-clang: fabeeadc6a1cbf1a81fbdb7dc9fa4022c7e5e851
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: dc0948200594dacece4da91f4c501e9a9fb0394f
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: de8681b4a2a101b99dd2c48d89a7de2ccd9a961f
meta-virtualization: b5a1645250c17fb657b7f10166f1c665ce192aaf
oecore: 5a794fd244f7fdeb426bd5e3def6b4effc0e8c62
poky: b5aa03f336c121269551f9e7baed4c677c76bb39



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

