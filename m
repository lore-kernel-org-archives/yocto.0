Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.690.1606364063756370971
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 20:14:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: debian10-ty-2.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@debian10-ty-2.yocto.io)
Received: from debian10-ty-2.yocto.io (unknown [172.29.10.56])
	by mail.yoctoproject.org (Postfix) with ESMTP id 81B1A38C0881;
	Thu, 26 Nov 2020 04:14:23 +0000 (UTC)
Received: by debian10-ty-2.yocto.io (Postfix, from userid 6000)
	id 5FD5F86048A; Thu, 26 Nov 2020 04:14:23 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com, steve@sakoman.com
Subject: QA notification for completed autobuilder build (yocto-3.1.4.rc1)
Message-Id: <20201126041423.5FD5F86048A@debian10-ty-2.yocto.io>
Date: Thu, 26 Nov 2020 04:14:23 +0000 (UTC)
From: pokybuild@debian10-ty-2.yocto.io


A build flagged for QA (yocto-3.1.4.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.4.rc1


Build hash information: 

bitbake: 89fc9450abefd682266efcbfa031d1ef115ff1a7
meta-arm: e18ee052f75da60655fb434ff24a463a8fb36781
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 541c7256c1b6acba35d1116a1483b6594d189e3a
meta-kernel: f9d30c65d08c9cef20d6487a7aff0fff40acc823
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: b885888df67eb5cdb3b82f4f0a07369a449e223b
poky: 424296bf9bb4bae27febf91bce0118df09ce5fa1



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
