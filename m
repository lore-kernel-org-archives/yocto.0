Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78338C46467
	for <webhook@archiver.kernel.org>; Sat,  7 Jan 2023 13:11:34 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.19645.1673097091551472938
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Jan 2023 05:11:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=AWHprgRM;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 010101858c5b95ec-635ac4e2-63b3-4a69-b6be-fae7e497ef94-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1673097090; h=To:Cc:Subject:Message-Id:Date:From;
	bh=ndwpQNlTD6aMbz/tir4MVhSKAPOoJsRycLgQ12Q/hhw=;
	b=AWHprgRM+PIVosIzyvW/q2j+zt2tN3mXKl4m66EYTl0bfRXkqxE83Xa5iK9IkK90
	kuOll0RXomFZM0gE9EEBWQVSp2zMP0eGkFZd6dGmgt5LQu1w8cSkcqcOqboNI1WJv3q
	MVycK1zooVAmU2dLi6Dn7FUX6kJ1+CKTvOFc6Hwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1673097090;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=ndwpQNlTD6aMbz/tir4MVhSKAPOoJsRycLgQ12Q/hhw=;
	b=OYFzAQf6/Ldf6KE5Yd3r4ZwPEu/4z+TwuWDPrJdPfrAGfKMme95qGmbrlt+cauFG
	87lBgA5MotBnabbkjVrBJ9yEHzwMRN+C3M9fIxOT2b36p06rCcNc3WDaZIn6/XWtalG
	aWT++U0jKhT1UoqujmWOOR7bsSL4m8Jb2qngxURI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.1.2.rc1)
Message-ID: <010101858c5b95ec-635ac4e2-63b3-4a69-b6be-fae7e497ef94-000000@us-west-2.amazonses.com>
Date: Sat, 7 Jan 2023 13:11:30 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.01.07-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 07 Jan 2023 13:11:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58934


A build flagged for QA (yocto-4.1.2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.1.2.rc1


Build hash information: 

bitbake: f0f166aee766b4bb1f8cf8b35dfc7d406c75e6a4
meta-agl: 6fe6a57bffdded98347c2eab53463179b643904c
meta-arm: 898a4aa99bd7c7a30a0613c56bb3cc6607c5b020
meta-aws: 173b444a1e49b2497e4840ae70319cc868c1bae4
meta-intel: 09e30d85e2e405e2f4a0e35c5d72aa285a2d8cbc
meta-mingw: b0067202db8573df3d23d199f82987cebe1bee2c
meta-openembedded: c354f92778c1d4bcd3680af7e0fb0d1414de2344
meta-virtualization: 8857b36ebfec3d548755755b009adc491ef320ab
oecore: 670f4f103b25897524d115c1f290ecae441fe4bd
poky: 74c92e38c701e268406bb656b45ccd68471c217e



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

