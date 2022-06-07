Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A85EC433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 09:30:40 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web08.10588.1654594229180648961
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 02:30:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=AwvyL0J1;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 6435060003;
	Tue,  7 Jun 2022 09:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1654594227;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rkpyB+YWzF0b7shV/fi+FRSAM4w07WWjD86GJQ6LeqY=;
	b=AwvyL0J1TQOmSmzr5Z6/7fHM83ibWz2fpqw7B7lOMmaOu08ihO5dBnmfRStwOtRU+d//W0
	AUNV8Rf+mDE7TbIUwIRM1dC2CZXzHcSnp3tlSViWwjQbo02Tjpgzii9ypHPFd7YrzfTDd3
	dNppE/qaJSZqZ8buXr7ou07Ss9+F9btviOu0GYxna1dFBeRp5PZS/CJG4IfxZR+MBdJDFP
	VjeFvCllAYPg1uIAXUpP932G/EitGSdpwDClphecKO2ZHi1GkemNzsHAxG6iTW9+qYemr9
	C0IU5soI9qLzFzDdKni+cxpLJVf6ihkb3oebATZedXz7lVg2B/s2xv/1737Vxg==
Message-ID: <a018a9e5-039c-51c4-c454-47e500f3a6dc@bootlin.com>
Date: Tue, 7 Jun 2022 11:30:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [PATCH 1/2] manuals: SYSTEMD_SERVICE allows multiple
 services
Content-Language: en-US
To: Paulo Neves <ptsneves@gmail.com>, yocto@lists.yoctoproject.org
References: <20220603163521.146659-1-ptsneves@gmail.com>
 <c62f5f40-b99d-5682-6310-0cc9af10ff25@bootlin.com>
 <b06583f9-7b00-f5b1-a2c6-b257bbab24b0@gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <b06583f9-7b00-f5b1-a2c6-b257bbab24b0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 09:30:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57282

Hi Paulo

On 6/7/22 10:33, Paulo Neves wrote:
> I think so, given we have a deprecation mechanism enforced in code.
> The confusion definitely came up, and this is why a documentation
> clarification was needed.


That's done on the documentation side. Then, what about proposing a
patch to openembedded-core to introduce a new SYSTEMD_SERVICES variable
and deprecate SYSTEMD_SERVICE?
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


