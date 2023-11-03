Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69A9C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 18:07:17 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.60353.1699034832993619399
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 11:07:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=YhMITbxX;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7EBB520007;
	Fri,  3 Nov 2023 18:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699034830;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HaH5P3ZyVbMFgJ7htqYdoVCl+IEIR+UbT8WHIhvzFUM=;
	b=YhMITbxX2DtjR4dR5bR5LZqOjuUeNPJEhmT1A8r+U7qVfNLQw4NYLGXFqpsQErQbNGg7Cf
	poOZMy7p9VjEfDVnIEZHmcNrqUMRvvSaBaleoGfJd6JtXrYnEmiohBOnjhSGrT3VYqof/d
	1Db09Ao/8Y+Qj63LdbBFLdVWIp2Q9VouijP4iLoqPqVGUaWdBdC/mQvH2RohiXeVV4BilX
	gi5BS8qMUUuCzRlspl/GyrHsl+nS6673BripmcHcCOqvtITzTtYQu9APmUmlBkRqT7vUTb
	z4KYcLE6oG+b9BMfNh5xbJLATjfvKkkhXRn/s2VtAjlP3LgZwrFN5Ev8gwCmog==
Message-ID: <e1829478-022e-4a68-a222-311a7115ee68@bootlin.com>
Date: Fri, 3 Nov 2023 19:07:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 Regan BUSSY-SOCRATE <regan.bussy-socrate@navocap.com>
Subject: Re: [yocto] Package dependencies not generated?
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>
References: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com>
 <CAMKF1spMQvq2J1CrjzD9VSfv0_VbtZxKRjcxvnDGTY71T0ATSQ@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAMKF1spMQvq2J1CrjzD9VSfv0_VbtZxKRjcxvnDGTY71T0ATSQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 18:07:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61605

Hi Khem,

Thank you for helping!

On 03.11.23 at 18:36, Khem Raj wrote:
> On Thu, Nov 2, 2023 at 11:16 AM Michael Opdenacker via
> lists.yoctoproject.org
> <michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>> Greetings,
>>
>> I compiled rsyslog from meta-oe:
>> bitbake rsyslog
>>
>> I set up a binary feed ("bitbake package-index") and a webserver to
>> serve it, and when I try to install the rsyslog package, I get:
>> $ opkg install rsyslog
> I see you ran bitbake package-index so thats good. maybe you did but
> let me ask did you run opkg update before doing opkg install ?


Yes, I did. And anyway I checked in tmp/deploy/ipk that no ipk package 
for libestr got generated.
Weird.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


