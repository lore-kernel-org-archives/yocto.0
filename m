Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.11573.1613497426664048441
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 09:43:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: centos8-ty-1.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@centos8-ty-1.yocto.io)
Received: from centos8-ty-1.yocto.io (unknown [172.29.10.61])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4A8EC38C0636;
	Tue, 16 Feb 2021 17:43:46 +0000 (UTC)
Received: by centos8-ty-1.yocto.io (Postfix, from userid 6000)
	id 29A0D2A0FA6; Tue, 16 Feb 2021 17:43:46 +0000 (GMT)
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.2.2.rc1)
Message-Id: <20210216174346.29A0D2A0FA6@centos8-ty-1.yocto.io>
Date: Tue, 16 Feb 2021 17:43:46 +0000 (GMT)
From: "Pokybuild User" <pokybuild@centos8-ty-1.yocto.io>


A build flagged for QA (yocto-3.2.2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.2.2.rc1


Build hash information: 

bitbake: 0a3bf681530bd63fc0036ca81ef868ab53fde56c
meta-arm: aa63e31b6edb5197764c21434219050ab51f0fbd
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: 1d866c58534eb1d317b7a674c6e6c57ab9594fb0
meta-kernel: f793168bd19af3d8c5a260dd35f387ed9a31794b
meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
oecore: ebaaee50cb3ac75112827f935c48affaf622ce7f
poky: d5d6286a66f46f4523e35e0e3f20cd7396195fdc



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
