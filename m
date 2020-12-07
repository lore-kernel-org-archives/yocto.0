Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.517.1607383505364299796
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 15:25:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu1804-ty-2.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@ubuntu1804-ty-2.yocto.io)
Received: from ubuntu1804-ty-2.yocto.io (unknown [172.29.10.113])
	by mail.yoctoproject.org (Postfix) with ESMTP id 63B1D38C1471;
	Mon,  7 Dec 2020 23:25:04 +0000 (UTC)
Received: by ubuntu1804-ty-2.yocto.io (Postfix, from userid 6000)
	id 27A422A066A; Mon,  7 Dec 2020 23:25:03 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Subject: QA notification for completed autobuilder build (yocto-3.2.1.rc2)
Message-Id: <20201207232504.27A422A066A@ubuntu1804-ty-2.yocto.io>
Date: Mon,  7 Dec 2020 23:25:03 +0000 (UTC)
From: pokybuild@ubuntu1804-ty-2.yocto.io


A build flagged for QA (yocto-3.2.1.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.2.1.rc2


Build hash information: 

bitbake: fec2b85689bba1d26ad6f376bc11cc29bb27cbe5
meta-arm: afa281b7a997bf265bfe221d1693a8a5bd4a243d
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: 5492270c796daf8b7a7cc9cd93880c2bb25523c0
meta-kernel: f9d30c65d08c9cef20d6487a7aff0fff40acc823
meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
oecore: d11ab9cb77bf91f939035417b757773a5d80242c
poky: 943ef2fad8428f002850e3655a3312e13d0dcb2c



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
