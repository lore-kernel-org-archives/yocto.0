Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD934C3DA4A
	for <webhook@archiver.kernel.org>; Sat, 10 Aug 2024 20:24:01 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web10.12639.1723321432346371879
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Aug 2024 13:23:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=K/d0rUut;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=MWi7sX4Q;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 010101913df63521-cd4206a2-d62e-4e3d-b569-433d8de9d111-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1723321431; h=To:Cc:Subject:Message-Id:Date:From;
	bh=uReyvfGbatg9OhOUv8WBOx/LyD77a+Np3UoTXlD/M5w=;
	b=K/d0rUutl3wbuYUuVEDFFOBQi98wpJ2+wHDyCINvhIGPhVjyYCdT2aQ1VqI2iBBw
	l/HVtgRRXo9gll+Kgk8UsZp8iL2Osh/D48wKM1SYQ5sUYfb/YSQ2AGzaZGe0cAuy+Vp
	kUQ/TOD83yl9vSDe18ePj1xpBM7sFbLy0vrmS6m4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1723321431;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=uReyvfGbatg9OhOUv8WBOx/LyD77a+Np3UoTXlD/M5w=;
	b=MWi7sX4Q0xJEcEw6Ou2ERV9DI115ejZr8HWedluHBIWeLDxMOmHkevUoFf8O2P1b
	IQa0EnQeVyytwS6ebOgyyMdD89PB45fZLNWl5vx4p46Is/8oCFMBtTDDA61Vm7PG5op
	pMpBVhGClEoyVOh3hiWZhLiTijhwVaMsJf0p+YX8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.3.rc1)
Message-ID: <010101913df63521-cd4206a2-d62e-4e3d-b569-433d8de9d111-000000@us-west-2.amazonses.com>
Date: Sat, 10 Aug 2024 20:23:51 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.08.10-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Aug 2024 20:24:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63682


    A build flagged for QA (yocto-5.0.3.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0.3.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7230

    Build hash information: 

    bitbake: 11d83170922a2c6b9db1f6e8c23e533526984b2c
meta-agl: 2505bfc2876271663216a95e87cf01cab6585019
meta-arm: 38bce82e42ea093333a53c4a10e51d1b26cbc989
meta-aws: b5eedbddb3f75f04d49ca7851d9569f5147e5e3e
meta-clang: fe561f41aef0cff9e6f96730ab59f28dca2eb682
meta-intel: d172a00f487a8ea4391b96e0f6cef5279c5a07d7
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: 2338409efc51cf2022ff5610a9fb689251706e2b
meta-virtualization: 54b806b1985f3989722ee308e1073530fe3328c1
oecore: 236ac1b43308df722a78d3aa20aef065dfae5b2b
poky: 0b37512fb4b231cc106768e2a7328431009b3b70


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

