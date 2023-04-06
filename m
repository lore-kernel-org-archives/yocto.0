Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D97ADC76196
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 18:16:26 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web11.166275.1680804984283120110
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Apr 2023 11:16:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=L/jiLH56;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 0101018757c8b227-79cf1abe-7919-4afa-9634-ca4415075597-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1680804983; h=To:Cc:Subject:Message-Id:Date:From;
	bh=x5ujl75oZVlDcW94ddG9BeO8OfHS/MHnnMqPZMEP7jQ=;
	b=L/jiLH563lxFo3VvXuayr/b3QxSDqBCQfrEHpGSYulX+TgNQ5Pn7kbKQHAq3tp3V
	J+2xDSp5jD4jCkLTWaZ0nrt67i05VEDmRraRam1EbQf3mx9JDwWHMOhzOGK0Xukwymr
	CHjEYtFDqrQCZP+2COb741dIE6OXrsgq7tfAZB/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1680804983;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=x5ujl75oZVlDcW94ddG9BeO8OfHS/MHnnMqPZMEP7jQ=;
	b=brn0I8wdpgt4d9rjRY+FewHZhO4ApCw1D+bMZMnE8BOr+oL4SkpgfQe72JRpaX1Y
	cy0La6umoYZqg7WAyHtP9Q5hPWb3T150rgKOq0YUtbstxal/QSJ7uromuBjXu8QGjr8
	O9eQZH9ru+9uPvbIJTzmwunIb3D/wjSr32rTUE6s=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2.rc2)
Message-ID: <0101018757c8b227-79cf1abe-7919-4afa-9634-ca4415075597-000000@us-west-2.amazonses.com>
Date: Thu, 6 Apr 2023 18:16:23 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.04.06-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 18:16:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59636


    A build flagged for QA (yocto-4.2.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2.rc2


    Build hash information: 

    bitbake: ae2efb05196f9e29ef56ad9a84e2eae5fbdd8030
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: 8acd61c427bc13024df59cdf3d8217e6e2bd2ce4
meta-aws: d243fc1ad45dde57b4caa182a92b685540475cb2
meta-intel: ec3147abdd0727fedc707330d58593097357f944
meta-mingw: 250617ffa524c082b848487359b9d045703d59c2
meta-openembedded: 2e0a581bee7fc15a78f6e19ba1e596930edee414
meta-virtualization: 48c07a48a0e7d56266f20a01bb0c8ebc1085453b
oecore: 2bcb015b6fe72aa4c928741285c49d3d9ec55e85
poky: 09bdad16f3a835eaa5b6158a2f8bfb180aa4cde0


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

