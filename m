Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.8662.1607575873746349185
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 20:51:13 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ubuntu1804-ty-3.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@ubuntu1804-ty-3.yocto.io)
Received: from ubuntu1804-ty-3.yocto.io (unknown [172.29.10.115])
	by mail.yoctoproject.org (Postfix) with ESMTP id 201DF38C0657;
	Thu, 10 Dec 2020 04:51:13 +0000 (UTC)
Received: by ubuntu1804-ty-3.yocto.io (Postfix, from userid 6000)
	id F08ED7E084A; Thu, 10 Dec 2020 04:51:12 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.3_M1.rc2)
Message-Id: <20201210045112.F08ED7E084A@ubuntu1804-ty-3.yocto.io>
Date: Thu, 10 Dec 2020 04:51:12 +0000 (UTC)
From: pokybuild@ubuntu1804-ty-3.yocto.io


A build flagged for QA (yocto-3.3_M1.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.3_M1.rc2


Build hash information: 

bitbake: 5775d9463ecedf8681cb6c919b240b80fe70f5a3
meta-arm: 2a530c34199e9aaff2bab1ac53d81f112f34647f
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: 7d79beb5093da8adf0f9b106a33d8e0904a50a48
meta-kernel: e5a0723a3f3dadd880893bccf9bff88a9b46843d
meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
oecore: a55b01a3a1faf9a52d7edad074c76327f637aaa2
poky: f36484e88d21346357bd1fa1bef6fdcc42bed54a



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
