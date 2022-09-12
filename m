Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C498BECAAD5
	for <webhook@archiver.kernel.org>; Mon, 12 Sep 2022 13:00:29 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com
 (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.7167.1662987627717517988
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Sep 2022 06:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=UD97N/ZF;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30,
 mailfrom: 0101018331c968c5-da625ee2-c701-4044-8b18-3653beef77de-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1662987626; h=To:Cc:Subject:Message-Id:Date:From;
	bh=X/0ebFdxJu28vhZQvJWZKIb+mVCc7VkhE0YsvOZD6SI=;
	b=UD97N/ZFEgmOet8dxjUlk0irwyJwwnUBB07ONd+WmMBRH47NfNUEpIucrsF5FRrM
	sEJU9z/13VEhZmZyWvt6XDUsPpk6LqEYouydF2M9VISCFz/vLCgTmyGmpXusTtmVG4A
	TXkYXTq2J9h3T0vxPNAYd62C5eWRJPfH1c1DlIxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1662987626;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=X/0ebFdxJu28vhZQvJWZKIb+mVCc7VkhE0YsvOZD6SI=;
	b=N5e8AMve5Fpy9LlnEy2HU/EVX2/ZsOdFS8cYaWla6KSAZEWLCAbwhIx9O2yqizQ8
	i2o0Nn5e49bem0gt+SNw+8JlcPAkU9ATK+Y81CRYLJmUpYJtrT65+maVKTqOoUDUrRJ
	Q/usroWlLJYJUsE258/R8DfPfUHxpuJ0vf9/R41U=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.1_M3.rc2)
Message-ID: 
 <0101018331c968c5-da625ee2-c701-4044-8b18-3653beef77de-000000@us-west-2.amazonses.com>
Date: Mon, 12 Sep 2022 13:00:26 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.09.12-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Sep 2022 13:00:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58019


A build flagged for QA (yocto-4.1_M3.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.1_M3.rc2


Build hash information: 

bitbake: 6424f4b7e9c1ba8db81346e8b3a806dd035d4551
meta-agl: e4ea839db9c26e78175d61388c5408a79f6927dc
meta-arm: 261263a6701ab3530ff997643d08da502222ac20
meta-aws: a16f35a73bff26d9506f519451dc75034211d61b
meta-gplv2: 43bf0e8d5985945d19d01f94bfbbda420c4435f3
meta-intel: 9d2820d4bf436924db845de28850a807f9fdef87
meta-mingw: 8327efb6334b9187fbaf7c871de4446c6863b3c5
meta-openembedded: 09e086812aab7ca6ee480fb625966e2318174345
meta-virtualization: 538e94e674dc1be0b0fee5da54083ca040b2f7b9
oecore: bf5968bce59d5e5c777407dba431be3aec012404
poky: 987e1503f733068d774ccf440b6f4e23e833571e



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

