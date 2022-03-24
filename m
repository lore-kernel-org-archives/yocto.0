Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD68C433EF
	for <webhook@archiver.kernel.org>; Thu, 24 Mar 2022 02:35:56 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com
 (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web12.6143.1648089355728075639
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 19:35:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=L4sQ2khh;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33,
 mailfrom: 0101017fb9c7ced5-43a54b46-8bc7-4123-b8f7-0b366a9ff1fd-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1648089354; h=To:Cc:Subject:Message-Id:Date:From;
	bh=qe1h1+554kJHpjxO9FwzyHdSzOZ7tVeJY2zn75wfVt4=;
	b=L4sQ2khhJPYiS4pPWzLrAHD8LD/lmJnRodfTYTw9+jI9ZgKTX70u0DQxtAHLs4ZD
	r706PECwuiAIDpXWbRIDCQekIPeYTe7PQrB17G6qRXIaLrYwJrOh2qFIVvUcMXTIYXa
	Y2WscRQJIx7IZF0CYyc4FzmPyFvdwWu5v+haE65U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648089354;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=qe1h1+554kJHpjxO9FwzyHdSzOZ7tVeJY2zn75wfVt4=;
	b=WMSMEb6LahaKAQ9eORj8T46elRdAVwMba6OqgB9xPmjx0PzmuVoqKM80TCqxJAeO
	napOx8VWINfpfsWrKfuHGR1d/WSeQqO/IZIZZpMMIqbYrkX9jaN1E/qU3c7tRFoyQQg
	jDdoPp/7oAsFJRGH9HUPEf+JS4krNSYBEx5gC098=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.4.3.rc2)
Message-ID: 
 <0101017fb9c7ced5-43a54b46-8bc7-4123-b8f7-0b366a9ff1fd-000000@us-west-2.amazonses.com>
Date: Thu, 24 Mar 2022 02:35:54 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Mar 2022 02:35:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56543


A build flagged for QA (yocto-3.4.3.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4.3.rc2


Build hash information: 

bitbake: 1bc9f800ffc9b740cc1de0132ed04f07eadb3479
meta-agl: dd8e34ef5383d95d941a3afc9a03d3fcbba699dd
meta-arm: 33bbdc67f2ed7189398292ff58a7fee42a85a166
meta-aws: c92344938ab4d37de8bd8b799186dbbe3019a069
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: fb9e0633614dbf956da185d291333bcc1b137e5a
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: 061b7fc74f887454251307ef119b808a90654d3f
oecore: a92a10d1ac5d050619cd6f71da5e6fa86bb9ab13
poky: ca162b5063ac877eac4987c1b5312109b5157a2a



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

