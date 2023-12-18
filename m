Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC028C35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 14:43:25 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web11.45427.1702910599691247497
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 06:43:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=cu6wmZUX;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=pvxY8bJa;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 0101018c7d619dc0-ba8b9b23-ffab-4656-ae64-fadc60b755dd-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1702910598; h=To:Cc:Subject:Message-Id:Date:From;
	bh=gx8ic2AegWzQIc5U8iZFeYz9aVYyFFI5upq3ByG5OPQ=;
	b=cu6wmZUXQHuAyeVRp4c24quvJXnZpOv0IKVGajBjEEr7xuTMaRcusl0D886t4wbF
	+/fXkKnB4JTzXPvsqzncKU+FugPioQrQFBJAGZFH2O65KL7QIDBde816NOi5XTpSJbv
	HfN4qog8IkskG8OfiqIcdEn0QwftPP1JwYwfT7gQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1702910598;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=gx8ic2AegWzQIc5U8iZFeYz9aVYyFFI5upq3ByG5OPQ=;
	b=pvxY8bJaIf2yBznOkn7mwnYqwPzVhluT8IWgLRqk/zSonVpkhP027kgVYl16A4qi
	b+ZtZ6cIccmDbGoqGW69sDlg9jCcN/0CBw9DBU4KU+dJWJLrpsZNU2oBNo+fkfdo8xS
	XO1pCJssEkgj9FIIVb9lriD5E/BcEkWu1qrmMjNs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0_M1.rc3)
Message-ID: <0101018c7d619dc0-ba8b9b23-ffab-4656-ae64-fadc60b755dd-000000@us-west-2.amazonses.com>
Date: Mon, 18 Dec 2023 14:43:18 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.12.18-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 14:43:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61965


    A build flagged for QA (yocto-5.0_M1.rc3) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0_M1.rc3


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6345

    Build hash information: 

    bitbake: 8295ac1b6672c25bee595cff6e000b2af817f904
meta-agl: 266ac5373b4458d7fcb78b1e8948eb2b33f18b5d
meta-arm: e6e7ac4d99f103d26a0ffefd6d0a5d2deef5b17c
meta-aws: 7915e6bafd876ab3d654a26629dbf501479caae0
meta-intel: 5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f
meta-mingw: e01d47d183945caeaf3c5c086539af0a925ddc32
meta-openembedded: 0a0ea87b8dda01a2887a525cef78eb6c3f4c2c32
meta-virtualization: caa14c63f158fdd13382ccf1ff4e20a8ba6ad667
oecore: 6b729088dce302eb3a967cb6839f00488025be0e
poky: 33112178d164ddd9ef0b1115c254ad4341ec3ad1


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

