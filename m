Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1763.1614034089079686274
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 14:48:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: fedora32-ty-1.yocto.io, ip: 198.145.29.25, mailfrom: pokybuild@fedora32-ty-1.yocto.io)
Received: from fedora32-ty-1.yocto.io (unknown [172.29.10.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6319E38C06A1;
	Mon, 22 Feb 2021 22:48:08 +0000 (UTC)
Received: by fedora32-ty-1.yocto.io (Postfix, from userid 6000)
	id 50B89817FA08; Mon, 22 Feb 2021 22:48:08 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.6.rc1)
Message-Id: <20210222224808.50B89817FA08@fedora32-ty-1.yocto.io>
Date: Mon, 22 Feb 2021 22:48:08 +0000 (UTC)
From: "Pokybuild User" <pokybuild@fedora32-ty-1.yocto.io>


A build flagged for QA (yocto-3.1.6.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.6.rc1


Build hash information: 

bitbake: fa94374baea75a94e3a488126ca7d8e241a77acd
meta-arm: 02c660521619ddb7a9495d65403aaa2636747ce8
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 4bd62a7e154b8c9e8a114f452d3b062d8d058118
meta-kernel: f793168bd19af3d8c5a260dd35f387ed9a31794b
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: a8debddd6cbdd70db74e096d72f97fbee008ee63
poky: a13bda44fcda4e79e9aed39ca1495eabecb6a7b7



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 
