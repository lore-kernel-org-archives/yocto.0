Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2967.1611205533214636066
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jan 2021 21:05:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: debian8-ty-1.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@debian8-ty-1.yocto.io)
Received: from debian8-ty-1.yocto.io (unknown [172.29.10.7])
	by mail.yoctoproject.org (Postfix) with ESMTP id 95C3C38C07D7;
	Thu, 21 Jan 2021 05:05:32 +0000 (UTC)
Received: by debian8-ty-1.yocto.io (Postfix, from userid 6000)
	id 465241A30A4; Thu, 21 Jan 2021 05:05:28 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.3_M2.rc1)
Message-Id: <20210121050529.465241A30A4@debian8-ty-1.yocto.io>
Date: Thu, 21 Jan 2021 05:05:28 +0000 (UTC)
From: pokybuild@debian8-ty-1.yocto.io


A build flagged for QA (yocto-3.3_M2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.3_M2.rc1


Build hash information: 

bitbake: 01e901c44ab0f496606b1d45c8953dc54970204c
meta-arm: a8f32f990a0d9dc1db310892c70d5a994c698b32
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: b4e5d33affeaa223459c0935a853485137b4591d
meta-kernel: 8349870943ba44bbd688656897372e881f32c741
meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
oecore: 79821d5a185e25384f5b6b5158b238bbee17c79e
poky: b5e634644b69a968a93aad0dd0502cf479d3973a



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
