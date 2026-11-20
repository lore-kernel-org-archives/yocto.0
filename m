Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7563.1795186195075436689
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Nov 2026 06:49:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=r33OPEdm;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=sM6nn9/j;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 010101a1f96f774d-78432ac4-7ac8-4131-a918-627d037a8112-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1795186194; h=To:Cc:Subject:Message-Id:Date:From;
	bh=fSPjJOTRPiNPlSwnIdnCeFiOo0+coVGbfehqNcuUxxU=;
	b=r33OPEdmt5z/Uq0rqRO8+v3P+RIbOg7iY5DmOW/zCzkUfC79gvdVDsMs4JTjc0fG
	JVelkdwCSaGykAxuakpXTmb5+3DNv/t84MPVR8uYo8gF64MwkTYt9TDL+zh0xzQaBu6
	F4j4HkFJDgHSLtn/XOQaAhl0rgg/eXfdKFOKePfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1795186194;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=fSPjJOTRPiNPlSwnIdnCeFiOo0+coVGbfehqNcuUxxU=;
	b=sM6nn9/j4fV4S4NmI4idJyMFdWr0W+gxj22vTEkaRX1WL6KxAJPJg1+D2+VioAdG
	gtamQBdgL6uC2s+hN8rJj88p2u2P1krdiyCINktWgXIRknW0TaVC4hc1pI8aueNaGYC
	K1H2qoiMJNOh3JHfBcTOBfUE4PjQ/ZkpUsUJhm5U=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0.5.rc1)
Message-ID: <010101a1f96f774d-78432ac4-7ac8-4131-a918-627d037a8112-000000@us-west-2.amazonses.com>
Date: Fri, 20 Nov 2026 14:49:54 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.11.20-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2026 14:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66808
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit


    A build flagged for QA (yocto-6.0.5.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0.5.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/5161

    Build hash information: 

    bitbake: 6e260eb6ab1631607ea414d9ff8ede1155faa5d9
meta-agl: f5bae8295caf377908099079d810321d3acc2463
meta-arm: 673e8d7c5dcd14de58092eb73e6ecc5eee5c1735
meta-aws: a498da240af9a9c80a8a3d4bd494c2e12165c74e
meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
meta-intel: fcd2544222aa8e2f6caf100b854971cf1618a8fe
meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
meta-openembedded: c0fcd7cca3760ef24e087ac4a31b8f357cb204da
meta-qcom: baecdeaf8f7fed25f553d4cc8f6ee554f548c6b6
meta-virtualization: f27e2594ab43f4e596eb8e287e7e446ef4064810
meta-yocto: e941c69844c28fc40c4f149251f7281207525abe
mixin-wrynose-linux-firmware: d0fd372d1da9cacca04585f7a1b088fdfb32b77e
oecore: 16a03ed6c2db2fa1d7edac4f288a74958a00eb9f
yocto-docs: a361ccfc75eb853805e5acd4ab32b439f6d0af06


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     
