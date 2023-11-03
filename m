Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E7CAC4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 18:25:28 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.60796.1699035922542183617
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 11:25:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=OZqsbCL2;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D093160006;
	Fri,  3 Nov 2023 18:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699035920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gZNk+FGCinEhInV7hX8E2KlBj5vQbClzR1ifIsOgNTY=;
	b=OZqsbCL20eVPkvwFel8c2R0HnTbNjLHC1CdKP8YnwwasYkwcSKkCF2Bikr+yjdl4fP367u
	m5VZ0050xyTqossuRxHzTcIzo0QgP+DjILW8iezinFq8OnY3TCA5gnnrjM+bdCQB/tEKeu
	/m3g2yrg4T/9Gns99rvD6ST6BB4sRNwzhpkQgfxYu1+DulzKLdG9Huk3kmKeEyPefN5c1U
	2YpZpCE1YnX3IRyVIfKkIlwdfwdty599W2x8iQCy6P6mENuvw3FYJ/xsAqMMAcNhIcne/b
	5O4jiM6zpYq/YcMY4u0vWh8jlYybz70dXXAe8nSDZuLE7lIuP5qw66Ey7tpBkA==
Message-ID: <c11aa79d-39fa-4a8f-bb11-7a18f70fbdd1@bootlin.com>
Date: Fri, 3 Nov 2023 19:25:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 Regan BUSSY-SOCRATE <regan.bussy-socrate@navocap.com>
Subject: Re: [yocto] Package dependencies not generated?
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>
References: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com>
 <CAMKF1spMQvq2J1CrjzD9VSfv0_VbtZxKRjcxvnDGTY71T0ATSQ@mail.gmail.com>
 <17942F2DE16EB129.30622@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <17942F2DE16EB129.30622@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 18:25:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61606


On 03.11.23 at 19:07, Michael Opdenacker via lists.yoctoproject.org wrote:
> Hi Khem,
>
> Thank you for helping!
>
> On 03.11.23 at 18:36, Khem Raj wrote:
>> On Thu, Nov 2, 2023 at 11:16 AM Michael Opdenacker via
>> lists.yoctoproject.org
>> <michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>>> Greetings,
>>>
>>> I compiled rsyslog from meta-oe:
>>> bitbake rsyslog
>>>
>>> I set up a binary feed ("bitbake package-index") and a webserver to
>>> serve it, and when I try to install the rsyslog package, I get:
>>> $ opkg install rsyslog
>> I see you ran bitbake package-index so thats good. maybe you did but
>> let me ask did you run opkg update before doing opkg install ?
>
>
> Yes, I did. And anyway I checked in tmp/deploy/ipk that no ipk package 
> for libestr got generated.
> Weird.


I took another example, this time "opus-tools" from from meta-multimedia:

$ bitbake opus-tools
$ bitbake package-index

And on the target:
root@qemux86-64:~# opkg update
Downloading http://10.0.2.2:8000/all/Packages.gz.
Updated source 'uri-all-0'.
Downloading http://10.0.2.2:8000/core2-64/Packages.gz.
Updated source 'uri-core2-64-0'.
Downloading http://10.0.2.2:8000/qemux86_64/Packages.gz.
Updated source 'uri-qemux86_64-0'.

root@qemux86-64:~# opkg install opus-tools
  * Solver encountered 1 problem(s):
  * Problem 1/1:
  *   - conflicting requests
  *   - nothing provides libopus0 >= 1.4 needed by 
opus-tools-0.2-r0.core2-64
  *
  * Solution 1:
  *   - do not ask to install a package providing opus-tools

So, that's the exact same issue. I am missing a bitbake target or 
variable for building the packages for dependencies as well?

I also ran "bitbake world" on OE-core, and got no problem to install a 
package and its dependencies got pulled automatically too. It seems the 
issue happens when I build a package alone.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


