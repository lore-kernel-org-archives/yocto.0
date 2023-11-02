Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4673BC4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 18:16:40 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.39227.1698948990315505607
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 11:16:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=mzs0Xt0L;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5F76F60003;
	Thu,  2 Nov 2023 18:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698948987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XmMIoEvKoOxIKaeT1nFb3+Uqw6mSeDToDbiJ/r8I+kY=;
	b=mzs0Xt0LZDX1g3y1fUmx0+RDaJwKm21laCcInzAPJtib1a4JeR8LAOyFE1WYSiO3mWjQDk
	TrhJ+MlP4IvgUKCeLj4zBkfYlk0MzN5h/4Sd7eBqgqLSfxTzgmyczoBYBzVBvQEvkyT4Fg
	Sd4/fRdmEdH/jaCGx+ZBBwAgoBmtusZvsDjcYkxFruZUMec5ygvQfv1BxnP6U5MGVz3GE7
	AL8L1U2l/EzkpzHix7YUSkQRwC1TtuVc+138uGjvIjfFK2GL9WA3jZhVEUNAPUCVURHVMY
	ORe/BgJIdMQxqqK4H3Q6VnfH+SVwXaBBN4Ri0yLGD8IAWd+s/WvtrTe5dGNiNA==
Message-ID: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com>
Date: Thu, 2 Nov 2023 19:16:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@bootlin.com,
 Regan BUSSY-SOCRATE <regan.bussy-socrate@navocap.com>
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Package dependencies not generated?
Organization: Bootlin
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 18:16:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61583

Greetings,

I compiled rsyslog from meta-oe:
bitbake rsyslog

I set up a binary feed ("bitbake package-index") and a webserver to 
serve it, and when I try to install the rsyslog package, I get:
$ opkg install rsyslog
  * Solver encountered 1 problem(s):
  * Problem 1/1:
  *   - conflicting requests
  *   - nothing provides libestr0 >= 0.1.11 needed by 
rsyslog-8.2306.0-r0.core2-64

Indeed, no "*libestr*" package(s) got generated. Why not?

I checked RDEPENDS:rsyslog and it contains "logrotate" for which a 
package was indeed generated. I thought that shared libraries 
dependencies were automatically detected and added to runtime 
dependencies. That's confirmed by 
https://docs.yoctoproject.org/dev/overview-manual/concepts.html#automatically-added-runtime-dependencies 
. Why didn't it happen?

I checked that libestr got compiled (it's part of the DEPENDS for 
rsyslog), but I can't find any package for it, even in the working area.

It sounds like a very basic misconception between my keyboard and my 
chair. What did I get wrong?

Thanks in advance for your insights.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


