Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1414.1581494155114429065
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 23:55:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: centos7-ty-3.yocto.io, ip: 140.211.169.56, mailfrom: pokybuild@centos7-ty-3.yocto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFC4FE01682; Tue, 11 Feb 2020 23:55:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from centos7-ty-3.localdomain (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB601E0167E;
	Tue, 11 Feb 2020 23:55:51 -0800 (PST)
Received: by centos7-ty-3.localdomain (Postfix, from userid 6000)
	id ACC13480E2; Wed, 12 Feb 2020 07:55:51 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.0.2.rc2)
Message-Id: <20200212075551.ACC13480E2@centos7-ty-3.localdomain>
Date: Wed, 12 Feb 2020 07:55:51 +0000 (UTC)
From: pokybuild@centos7-ty-3.yocto.io


A build flagged for QA (yocto-3.0.2.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.0.2.rc2


Build hash information: 

bitbake: 95687be83e716220eb3893b67428f97fd59fc2c5
meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
meta-intel: b04e1edb9300a57e200a187a3255f67b50519202
meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
oecore: 799b3cd1016bd765f4452a5e81ea5613c9089bce
poky: fe857e4179355bcfb79303c16baf3ad87fca59a4



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
