Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4686.1590581358204202818
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 05:09:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu1804-ty-1.yocto.io, ip: 140.211.169.56, mailfrom: pokybuild@ubuntu1804-ty-1.yocto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D994DE01C24; Wed, 27 May 2020 05:09:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1977AE01BD8;
	Wed, 27 May 2020 05:09:15 -0700 (PDT)
Received: by ubuntu1804-ty-1.yocto.io (sSMTP sendmail emulation); Wed, 27 May 2020 12:09:14 +0000
From: pokybuild@ubuntu1804-ty-1.yocto.io
Date: Wed, 27 May 2020 12:09:14 +0000
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-2.7.4.rc2)
Message-Id: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>


A build flagged for QA (yocto-2.7.4.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2


Build hash information: 

bitbake: 7f7126211170439ac1d7d72e980786ce0edb7bb7
meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
meta-intel: 29ee4852a05931dcf856670d9d8a3c3077a40fe8
meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
oecore: db3ce703d03b18e8a4120969d32ff7f344f34fe9
poky: f65b24e9ca0918a4ede70ea48ed8b7cc4620f07f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
