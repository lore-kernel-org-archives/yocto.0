Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2908.1794721371265996429
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Nov 2026 21:42:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=bmfIDgle;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=GNEQ5wQT;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 010101a1ddbad075-cf5f1ecb-344d-4aec-aac6-a49f61539b2a-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1794721370; h=To:Cc:Subject:Message-Id:Date:From;
	bh=wWQHlPPeufwq1JUKCyLaOg/ak5nt9Ps/Eph0DWbjPXE=;
	b=bmfIDgle/wmb6QLhATV93JRC6UOZwlj1jjk3SSPoZAz/kHfmkhM/2X9J3ejimYrb
	1E3xsxKWAZBdM8IGvwMBeRsHZNHjkqmDzBSzsV4Y7SqGGtgtp1e4uVW/cGpCmcHuKQw
	PsIjxd0VO1dzht/Yj3Xm87eIj5hVL5vo9nWLifa0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1794721370;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=wWQHlPPeufwq1JUKCyLaOg/ak5nt9Ps/Eph0DWbjPXE=;
	b=GNEQ5wQTuL9M388ZWQOCT5uTe0YH6nXzmmP7us0CwhHp3kUVh7o9MSqghNRK2nbC
	hju2o2TH62nrvhD7OvUhEY11axrQXEYMzH2yQzjxn5n++P1vGmVtMUy7HSiaFlxtrPN
	d9uyfKoFTndfwAErDQ2wQI6Uas30l9Azh0DFOTwg=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.1.1.rc1)
Message-ID: <010101a1ddbad075-cf5f1ecb-344d-4aec-aac6-a49f61539b2a-000000@us-west-2.amazonses.com>
Date: Sun, 15 Nov 2026 05:42:50 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.11.15-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Sun, 15 Nov 2026 05:43:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit


    A build flagged for QA (yocto-6.1.1.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.1.1.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/5126

    Build hash information: 

    bitbake: 7f7ae8cd58993a389adbd130b07ea5de8415d2f9
meta-agl: c36f0e0bbed6000f28cfd10417c280c9fdca37cd
meta-arm: 5f432e5ac06f7679a58ae4da5df40e62d8ea3b35
meta-aws: 945fa75b8f716f1e9ffa7d1e19780d729c7e28b8
meta-clang: 555882484074bbc97f3bd2e6ced7c34f1ad548f8
meta-intel: 25dd9e467e0675430073801c8b931af0a4758b30
meta-mingw: 2697806adf824708e86d57ad68e0978a0af812fb
meta-openembedded: bb956bf8ff7a32f31deaa83e96880d10ab564d14
meta-qcom: cba1f2af0105e17a3b04f319b5db92ed5fff068c
meta-virtualization: 7b0154418de3350fd23a0bd868742f2b570b24d3
meta-yocto: c5b4882e75c926e44e141efcdb7e3f75945389ab
oecore: 5b458838c126051c884c8cb5225c7265d1483ea6
yocto-docs: 28a708ecb3c2ce1669094f9f4c1bdcbc28438bcc


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     
