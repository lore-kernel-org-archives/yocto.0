Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03504C00140
	for <webhook@archiver.kernel.org>; Wed, 10 Aug 2022 19:11:36 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com
 (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web08.2380.1660158688082115593
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 12:11:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=GwQwfs0e;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29,
 mailfrom: 01010182892b36b2-4fcb2ae7-b8ca-4547-9fa3-8136464d7fad-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1660158687; h=To:Cc:Subject:Message-Id:Date:From;
	bh=d2LOvr+cN73PiL1FjGoY80Nne9rmTrbEQor4NAs3ieY=;
	b=GwQwfs0et2olwfoVOJKwDFBOVkBPstAThM5p5BSN5+CGcus0dv2yjKPi4O519DaY
	gRe0FqgOKp4ug7lzNZ6L7+WC02a3fR7kO7XWub8LsDdXovX/kf+e6pEaCH4nOtedU5n
	fQLDrA+fi++3pXx14uzAXtWN5dLmz8pK8e0xN2es=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660158687;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=d2LOvr+cN73PiL1FjGoY80Nne9rmTrbEQor4NAs3ieY=;
	b=Lw+VDC5SxJwwcvM8H/zQz4PTZf5jNlEe+LPwO9STfvxcg0TeOiUrtHEhIAZpr+29
	TKIQTcK9KHGLCAX5jSYAkiQUfc1mmrjiYyXqV8Noi2FHriCrE2+4LOa3AgyMgz1iyUC
	Q8GCYLsF6PYkWppU0rZTcgAZaRuIM0809V4gT5fw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.3.rc1)
Message-ID: 
 <01010182892b36b2-4fcb2ae7-b8ca-4547-9fa3-8136464d7fad-000000@us-west-2.amazonses.com>
Date: Wed, 10 Aug 2022 19:11:27 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Aug 2022 19:11:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57822


A build flagged for QA (yocto-4.0.3.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.3.rc1


Build hash information: 

bitbake: b8fd6f5d9959d27176ea016c249cf6d35ac8ba03
meta-agl: 3ff972228b08c37adf41b760c2bbc5313b90715f
meta-arm: cf9365fcec2e741c56ad88db7f3838f636e29cae
meta-aws: 4ffc63cf28ff925bb67477cbaf7e390e968b1f8e
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: ef3aa3064b9bbfa19f600eafb1e7d3473f62af74
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 8f2dc1023482863e2630d1b94052c41ce748b38f
meta-virtualization: 26a361a39ff5ab6fae22efbdc582f84d13330ba2
oecore: 2cafa6ed5f0aa9df5a120b6353755d56c7c7800d
poky: 387ab5f18b17c3af3e9e30dc58584641a70f359f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

