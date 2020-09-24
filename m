Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.8124.1600917769413131744
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 20:22:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu2004-ty-2.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@ubuntu2004-ty-2.yocto.io)
Received: from ubuntu2004-ty-2.yocto.io (unknown [172.29.10.60])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 25F1A38C1238;
	Wed, 23 Sep 2020 20:22:48 -0700 (PDT)
Received: by ubuntu2004-ty-2.yocto.io (Postfix, from userid 6000)
	id 1A6EF3A07BF; Thu, 24 Sep 2020 03:22:39 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.2_M3.rc2)
Message-Id: <20200924032241.1A6EF3A07BF@ubuntu2004-ty-2.yocto.io>
Date: Thu, 24 Sep 2020 03:22:39 +0000 (UTC)
From: "Pokybuild User" <pokybuild@ubuntu2004-ty-2.yocto.io>


A build flagged for QA (yocto-3.2_M3.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.2_M3.rc2


Build hash information: 

bitbake: 27b53186fa67d281d29b2f8e15bcff8dc2557b8a
meta-arm: c7a1a5f9fd415e3ae1078c2a1d6af9c25e9e6498
meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
meta-intel: 254e3a79b3a37045f829848e0a5e04801bec1439
meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
meta-mingw: f1e1d5a803a48ed70f2b0eaf0ef15ade70479fce
oecore: e68df923e1bf9e82662ee2619ac9e2f239e8f7be
poky: 0a243cd21263f498b6eca7c0b168e655dd823e22



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
