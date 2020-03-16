Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.64177.1584351589468710370
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 02:39:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu1804-ty-2.yocto.io, ip: 140.211.169.56, mailfrom: pokybuild@ubuntu1804-ty-2.yocto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D615E01861; Mon, 16 Mar 2020 02:39:49 -0700 (PDT)
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
Received: from ubuntu1804-ty-2.yocto.io (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 62939E0185D;
	Mon, 16 Mar 2020 02:39:44 -0700 (PDT)
Received: by ubuntu1804-ty-2.yocto.io (sSMTP sendmail emulation); Mon, 16 Mar 2020 09:39:44 +0000
From: pokybuild@ubuntu1804-ty-2.yocto.io
Date: Mon, 16 Mar 2020 09:39:44 +0000
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.1_M3.rc1)
Message-Id: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>


A build flagged for QA (yocto-3.1_M3.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1_M3.rc1


Build hash information: 

bitbake: e67dfa4a4d0d63e4752655f25367582e5a95f1da
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 60773e8496370d821309e00f2c312128a130c22b
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: 61d80b07bcfa4adf5f1feb2904fec0a8d09c89f6
poky: 6f02caa39985fb89d9ad49e1f788a9a8dd6e12d7



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
