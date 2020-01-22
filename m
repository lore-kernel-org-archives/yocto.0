Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.39.1579728320192487073
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 13:25:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: debian10-ty-1.yocto.io, ip: 140.211.169.56, mailfrom: pokybuild@debian10-ty-1.yocto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E254EE015EE; Wed, 22 Jan 2020 13:25:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from debian10-ty-1.yocto.io (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBD8BE01588;
	Wed, 22 Jan 2020 13:25:18 -0800 (PST)
Received: by debian10-ty-1.yocto.io (Postfix, from userid 6000)
	id 81EF92809E3; Wed, 22 Jan 2020 21:25:18 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.1_M2.rc1)
Message-Id: <20200122212518.81EF92809E3@debian10-ty-1.yocto.io>
Date: Wed, 22 Jan 2020 21:25:18 +0000 (UTC)
From: pokybuild@debian10-ty-1.yocto.io


A build flagged for QA (yocto-3.1_M2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1_M2.rc1


Build hash information: 

bitbake: d5a4a352723258b4d499d3a51f340109c4f36f60
meta-gplv2: 6107be140fdec204586850ea1f7e4b968be7670b
meta-intel: 0c092dde58bb688dca787c653ee7a3282d58aeab
meta-mingw: e3dadc9f28c24a8d182121d0246b3d9ec048846a
oecore: 15049c610bcfd0a3e161379651b5ea117ea02715
poky: ca3993cc4b13d4e661228cee6fb9448adfd0a4ba



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
