Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.10051.1603211739697490735
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 09:35:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: centos7-ty-4.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@centos7-ty-4.yocto.io)
Received: from centos7-ty-4.yocto.io (unknown [172.29.10.2])
	by mail.yoctoproject.org (Postfix) with ESMTP id 95CC838C11D0;
	Tue, 20 Oct 2020 09:35:38 -0700 (PDT)
Received: by centos7-ty-4.yocto.io (Postfix, from userid 6000)
	id 0C38244D07F; Tue, 20 Oct 2020 16:35:37 +0000 (GMT)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.2.rc1)
Message-Id: <20201020163538.0C38244D07F@centos7-ty-4.yocto.io>
Date: Tue, 20 Oct 2020 16:35:37 +0000 (GMT)
From: pokybuild@centos7-ty-4.yocto.io


A build flagged for QA (yocto-3.2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.2.rc1


Build hash information: 

bitbake: 9345d257ced432adc2d16af20ace58cc7c086aab
meta-arm: b419151acd2761d0e2723f0d0c0bbbed00c45c5b
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: 0e4b3cb01735bdc5ebf50c547927f1f59b0248d2
meta-kernel: dbf8bdfa6683404e5071feb47ef6aa347cab1b01
meta-mingw: d2809d7c93bdb46014e1f8b3b0a4f42030078905
oecore: ea8ba9a15bcec7f5fbce1f40170298f87a808249
poky: 4e4a302e37ac06543e9983773cdb4caf7728330d



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
