Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.737.1610563031996707560
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jan 2021 10:37:12 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu1804-ty-1.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@ubuntu1804-ty-1.yocto.io)
Received: from ubuntu1804-ty.yocto.io (unknown [172.29.10.111])
	by mail.yoctoproject.org (Postfix) with ESMTP id 4B67A38C051C;
	Wed, 13 Jan 2021 18:37:11 +0000 (UTC)
Received: by ubuntu1804-ty.yocto.io (Postfix, from userid 6000)
	id 2C0AF5C0221; Wed, 13 Jan 2021 18:37:11 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com, steve@sakoman.com
Subject: QA notification for completed autobuilder build (yocto-3.1.5.rc1)
Message-Id: <20210113183711.2C0AF5C0221@ubuntu1804-ty.yocto.io>
Date: Wed, 13 Jan 2021 18:37:11 +0000 (UTC)
From: pokybuild@ubuntu1804-ty-1.yocto.io


A build flagged for QA (yocto-3.1.5.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.5.rc1


Build hash information: 

bitbake: a394eeec6aeb98c6395cb5da2036ce936bdaa0a0
meta-arm: 9e2ff72858c1744217195ca4a728e0044ac28af1
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 4922e10c7b8169585ff9322b0d913dadc525c68e
meta-kernel: 8349870943ba44bbd688656897372e881f32c741
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: 72431ee8de5e3a53d259cebf420a7713ac9e1f14
poky: e32d854e33bc86c2a616df8708e021a098afcf73



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
