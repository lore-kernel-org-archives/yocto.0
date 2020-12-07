Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.8566.1607357704478209160
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 08:15:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: centos7-ty-4.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@centos7-ty-4.yocto.io)
Received: from centos7-ty-4.yocto.io (unknown [172.29.10.2])
	by mail.yoctoproject.org (Postfix) with ESMTP id D2ECD38C088D;
	Mon,  7 Dec 2020 16:15:03 +0000 (UTC)
Received: by centos7-ty-4.yocto.io (Postfix, from userid 6000)
	id 7F6DD248FC; Mon,  7 Dec 2020 16:15:02 +0000 (GMT)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.2.1.rc1)
Message-Id: <20201207161503.7F6DD248FC@centos7-ty-4.yocto.io>
Date: Mon,  7 Dec 2020 16:15:02 +0000 (GMT)
From: "Pokybuild User" <pokybuild@centos7-ty-4.yocto.io>


A build flagged for QA (yocto-3.2.1.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.2.1.rc1


Build hash information: 

bitbake: fec2b85689bba1d26ad6f376bc11cc29bb27cbe5
meta-arm: 03f2d78e456160f8f6f1ffe693a7bd1ad123e5d5
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: 5492270c796daf8b7a7cc9cd93880c2bb25523c0
meta-kernel: f9d30c65d08c9cef20d6487a7aff0fff40acc823
meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
oecore: e525592e83062ed9a9b2d3cb37c8dbbcfe8759a9
poky: 333f24caec0bb498804dd77cbe762f2f4d9b2225



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
