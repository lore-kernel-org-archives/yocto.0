Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1749.1595577487643300274
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 00:58:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: debian10-ty-1.yocto.io, ip: 140.211.169.56, mailfrom: pokybuild@debian10-ty-1.yocto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C045E01EF8; Fri, 24 Jul 2020 00:58:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC164E01EB9;
	Fri, 24 Jul 2020 00:58:04 -0700 (PDT)
Received: by debian10-ty-1.yocto.io (Postfix, from userid 6000)
	id 747FD280D94; Fri, 24 Jul 2020 07:58:04 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com, steve@sakoman.com
Subject: QA notification for completed autobuilder build (yocto-3.1.2.rc1)
Message-Id: <20200724075804.747FD280D94@debian10-ty-1.yocto.io>
Date: Fri, 24 Jul 2020 07:58:04 +0000 (UTC)
From: "Pokybuild User" <pokybuild@debian10-ty-1.yocto.io>


A build flagged for QA (yocto-3.1.2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.2.rc1


Build hash information: 

bitbake: cc11dfa4eb3616547a8a3909f89da0cc4f35dc57
meta-arm: 4812a66527e88ebdc5351d5dbd63765abe4abf62
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 77831443738885d33bfa3a738fe6c4f0361e4892
meta-kernel: 58a589c5aad5417abd099a961e3c1a5b083cdb90
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: ea886d57db917a41a0d106a15e1e96c72d6407b0
poky: 569b1f5d67c57de957e243997c53ec2f81dc8dfe



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
