Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8086.1576221289349214483
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Dec 2019 23:14:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu1804-ty-1.yocto.io, ip: 140.211.169.56, mailfrom: pokybuild@ubuntu1804-ty-1.yocto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B67E8E01080; Thu, 12 Dec 2019 23:14:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,MISSING_MID,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 MISSING_MID Missing Message-Id: header
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from ubuntu1804-ty-1.yocto.io (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 67D9EE0107D;
	Thu, 12 Dec 2019 23:14:45 -0800 (PST)
Received: by ubuntu1804-ty-1.yocto.io (sSMTP sendmail emulation); Fri, 13 Dec 2019 07:14:45 +0000
From: pokybuild@ubuntu1804-ty-1.yocto.io
Date: Fri, 13 Dec 2019 07:14:45 +0000
To: yocto@yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, chin.huat.ang@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.1_M1.rc8)
Message-Id: <20191213071448.B67E8E01080@yocto-www.yoctoproject.org>


A build flagged for QA (yocto-3.1_M1.rc8) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1_M1.rc8


Build hash information: 

bitbake: 99d46107ccfcec576238d32cfe7903440857038d
meta-gplv2: a67a5fd160f97129a6afd65f107cd2cbdfec41e7
meta-intel: e1b373f3cbb9acd71efe84d782675025d59b6035
meta-mingw: 126efdad243e1a3bead5b695df6656e94353dd46
oecore: 0f04e81c797d5d337ece4e8638a6b71c75bc0a00
poky: 1abffc542a0571f0d1512b92c1a59d138cf3ea6a



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
