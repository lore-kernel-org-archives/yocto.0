Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.143.1582324346378746201
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 14:32:26 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: centos7-ty-2.yocto.io, ip: 140.211.169.56, mailfrom: pokybuild@centos7-ty-2.yocto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F384E0170D; Fri, 21 Feb 2020 14:32:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from centos7-ty-2.yocto.io (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19C0AE0170D;
	Fri, 21 Feb 2020 14:32:23 -0800 (PST)
Received: by centos7-ty-2.yocto.io (Postfix, from userid 6000)
	id D7B986126DBA; Fri, 21 Feb 2020 22:32:22 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-2.7.3.rc1)
Message-Id: <20200221223222.D7B986126DBA@centos7-ty-2.yocto.io>
Date: Fri, 21 Feb 2020 22:32:22 +0000 (UTC)
From: pokybuild@centos7-ty-2.yocto.io


A build flagged for QA (yocto-2.7.3.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1


Build hash information: 

bitbake: d411b097d810c386d35dc561f8812bb3f35c9a36
meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
meta-intel: fbd06132e6cb2b5fd43f7671aea0d431d0927a91
meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
oecore: ca019eec1304ca2a400ea744c0eaafe0a766d5d1
poky: f475afc5df0837532dcd0f3a831ddc3aec8941f1



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
