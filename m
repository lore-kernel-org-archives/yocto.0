Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1462.1592437778416743118
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 16:49:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu2004-ty-1.yocto.io, ip: 140.211.169.56, mailfrom: pokybuild@ubuntu2004-ty-1.yocto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2349DE01D1C; Wed, 17 Jun 2020 16:49:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from ubuntu2004-ty-1.yocto.io (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49F20E01CDB;
	Wed, 17 Jun 2020 16:49:36 -0700 (PDT)
Received: by ubuntu2004-ty-1.yocto.io (Postfix, from userid 6000)
	id 2991D1438EE; Wed, 17 Jun 2020 23:49:36 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.2_M1.rc1)
Message-Id: <20200617234936.2991D1438EE@ubuntu2004-ty-1.yocto.io>
Date: Wed, 17 Jun 2020 23:49:36 +0000 (UTC)
From: pokybuild@ubuntu2004-ty-1.yocto.io


A build flagged for QA (yocto-3.2_M1.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.2_M1.rc1


Build hash information: 

bitbake: 7689fa781646039524a655295a884e525ad8732c
meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
meta-intel: 635e8a6892163cc3334a9b947abaca70697d458f
meta-mingw: 88f9689f7dd0f634f1ac9a370bdf00585d884206
oecore: 878a8561e10017bb91ea42bbbe6d4acfc0985482
poky: 29bfa17d6cab31dbf8f1d12e473ef83dd9e92519



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
