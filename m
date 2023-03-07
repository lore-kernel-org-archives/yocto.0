Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47A05C678D4
	for <webhook@archiver.kernel.org>; Tue,  7 Mar 2023 07:43:23 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.9402.1678174994095786989
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Mar 2023 23:43:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=PNmcjkTm;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 01010186bb063a56-686e24af-8c58-487a-961e-b7fb780aab15-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1678174993; h=To:Cc:Subject:Message-Id:Date:From;
	bh=KQ8BXru9YHH1MqR+w7n7SZkgdrhrkrlpQLXHWmbFMYo=;
	b=PNmcjkTmzseynkUG5gnJJPj7H9qkPKCx4cXNaiwXyKTi1SPgNCyipS+ncLC+F+js
	l5ActPC0QRRSeA3fb4QQB7JYyS+vdpfgVjsJgoiAFvonM0GjM7ddjomqeOxVxRaeZUV
	epbw6npbydXqWlb0DlLFU+z4xX1F/XXcFlaMbv5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1678174993;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=KQ8BXru9YHH1MqR+w7n7SZkgdrhrkrlpQLXHWmbFMYo=;
	b=JMfbkuoftP0wz03X35xqgjezEztluzXBHD8/Wd6217PMOVVj2fE1DZ4DLjNnDNLh
	T7fTwDQEcNxwMm+7/X1JgKXNzSVemMHDrxUTOGBfZe+d7DD2k+kLLieLyaJZqW5QQqL
	VluYPVpwSmorHmhwvtRza02GEAolImoLYPMvuaGM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.1.3.rc1)
Message-ID: <01010186bb063a56-686e24af-8c58-487a-961e-b7fb780aab15-000000@us-west-2.amazonses.com>
Date: Tue, 7 Mar 2023 07:43:13 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.03.07-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Mar 2023 07:43:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59358


A build flagged for QA (yocto-4.1.3.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.1.3.rc1


Build hash information: 

bitbake: 592ee222a1c6da42925fb56801f226884b6724ec
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: 04071ec9f5091ec76da202ce610e256d8d347a60
meta-aws: 93a2f788e773b36d9813243d2164987c040d6cf4
meta-intel: de84b34a9596aa96f9cc4c187efebdccc6690d06
meta-mingw: b0067202db8573df3d23d199f82987cebe1bee2c
meta-openembedded: b5b732876da1885ecbab2aa45f80d7a3086c5262
meta-virtualization: d1cbc4c9fc44f0c5994a1276e38cdbb7bdb5bbd3
oecore: b995ea45773211bd7bdd60eabcc9bbffda6beb5c
poky: 91d0157d6daf4ea61d6b4e090c0b682d3f3ca60f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

