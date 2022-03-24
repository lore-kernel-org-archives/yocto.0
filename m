Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E49A6C43217
	for <webhook@archiver.kernel.org>; Thu, 24 Mar 2022 15:34:52 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com
 (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.12423.1648136091459388785
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 08:34:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=UQSgTtjS;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30,
 mailfrom: 0101017fbc90f206-a40c8f82-ad4e-4e62-aa9c-c427260a2af5-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1648136090; h=To:Cc:Subject:Message-Id:Date:From;
	bh=mrCuyjHAKEmlqxjHbQ9mhkcHoSGMlcg50fTSfiTBX2o=;
	b=UQSgTtjSpCjsUhm0eiqvz20Ejx4Isy27L4uF/C6q5aKxfq8S/Rt2rFSvE7tgih96
	TMLV/IGeM7Bg4vHK07Z/Y0yxNa55LS4tTjabxJE216mKhha6OkkSYyjdDj3QBvMLU3T
	Vwo48od85itMuIsMYDZVT3rd1Ed9+b7WD8Hp0QYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648136090;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=mrCuyjHAKEmlqxjHbQ9mhkcHoSGMlcg50fTSfiTBX2o=;
	b=bekRFetYlI6I2G8e/vRshpjndNog6elCcFLR+1Rwo4tjN9GDsoQbMVo01S1wyS+i
	l/IRiYwgvSBJjXzMg0dZ4iLgAfyAm8lRp4RgMvuDs25m85Dme/J3ijOq408vSoXV/+r
	SN/4OAm5SfdyltQ/Z9JLetYdnCf9xEcXm2GhVtTI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.4.3.rc1)
Message-ID: 
 <0101017fbc90f206-a40c8f82-ad4e-4e62-aa9c-c427260a2af5-000000@us-west-2.amazonses.com>
Date: Thu, 24 Mar 2022 15:34:50 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Mar 2022 15:34:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56550


A build flagged for QA (yocto-3.4.3.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4.3.rc1


Build hash information: 

bitbake: 43dcb2b2a2b95a5c959be57bca94fb7190ea6257
meta-agl: dd8e34ef5383d95d941a3afc9a03d3fcbba699dd
meta-arm: 33bbdc67f2ed7189398292ff58a7fee42a85a166
meta-aws: c92344938ab4d37de8bd8b799186dbbe3019a069
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: fb9e0633614dbf956da185d291333bcc1b137e5a
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: 061b7fc74f887454251307ef119b808a90654d3f
oecore: ebca8f3ac9372b7ebb3d39e8f7f930b63b481448
poky: ee68ae307fd951b9de6b31dc6713ea29186b7749



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

