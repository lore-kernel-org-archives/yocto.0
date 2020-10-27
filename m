Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10898.1603786520184762782
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 01:15:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: fedora30-ty-1.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@fedora30-ty-1.yocto.io)
Received: from fedora30-ty-1.yocto.io (unknown [172.29.10.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 76E2D38C089D;
	Tue, 27 Oct 2020 01:15:19 -0700 (PDT)
Received: by fedora30-ty-1.yocto.io (Postfix, from userid 6000)
	id 5550F80A5F80; Tue, 27 Oct 2020 08:15:19 +0000 (GMT)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.2.rc2)
Message-Id: <20201027081519.5550F80A5F80@fedora30-ty-1.yocto.io>
Date: Tue, 27 Oct 2020 08:15:19 +0000 (GMT)
From: pokybuild@fedora30-ty-1.yocto.io


A build flagged for QA (yocto-3.2.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.2.rc2


Build hash information: 

bitbake: fec2b85689bba1d26ad6f376bc11cc29bb27cbe5
meta-arm: 2d3ded053ae0774b9c7254bdc084451438b2150a
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: 4ee7bc0ab408db7388374e86920ffa378b7b4535
meta-kernel: dbf8bdfa6683404e5071feb47ef6aa347cab1b01
meta-mingw: d2809d7c93bdb46014e1f8b3b0a4f42030078905
oecore: d3114ca369792201a5316c1ede29eb72f0868d35
poky: 5d75168a13d00253460020e536b2a87833ec67d2



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
