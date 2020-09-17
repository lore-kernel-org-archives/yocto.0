Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.2862.1600359489208918553
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 09:18:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu2004-ty-2.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@ubuntu2004-ty-2.yocto.io)
Received: from ubuntu2004-ty-2.yocto.io (unknown [172.29.10.60])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 465DD38C0717;
	Thu, 17 Sep 2020 09:18:08 -0700 (PDT)
Received: by ubuntu2004-ty-2.yocto.io (Postfix, from userid 6000)
	id 159C43A0D66; Thu, 17 Sep 2020 16:18:08 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.2_M3.rc1)
Message-Id: <20200917161808.159C43A0D66@ubuntu2004-ty-2.yocto.io>
Date: Thu, 17 Sep 2020 16:18:08 +0000 (UTC)
From: pokybuild@ubuntu2004-ty-2.yocto.io


A build flagged for QA (yocto-3.2_M3.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.2_M3.rc1


Build hash information: 

bitbake: 29081375659e3dcf1c578cd98ab2c8a2e9f07ca8
meta-arm: 1f3cf5812c91cdc15f63737bf9b30cce665b2999
meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
meta-intel: f7580d72763653893c06e1d9ece7a77c4adb8485
meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
meta-mingw: 30a051401c0a73dfff486ca4d0303b434816200f
oecore: 4e7506882cabf3936f0269c2a98f61c7d595d613
poky: c6bc20857cd1bdfd25dfc50e413be84d1d12b189



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
