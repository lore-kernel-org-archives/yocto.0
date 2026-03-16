Return-Path: <flix.yocto@benfm.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83D8CF46442
	for <webhook@archiver.kernel.org>; Mon, 16 Mar 2026 09:51:10 +0000 (UTC)
Received: from mail.benfm.de (mail.benfm.de [85.215.152.190])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.46827.1773654664384174790
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2026 02:51:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@benfm.de header.s=2024 header.b=fcnTfBx9;
 spf=pass (domain: benfm.de, ip: 85.215.152.190, mailfrom: flix.yocto@benfm.de)
Message-ID: <daba1903-07be-4e44-9f80-d4ec0573f34f@benfm.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=benfm.de; s=2024;
	t=1773654661;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ycQHZwSt5qQuuNkfvtkGcZdkT74bXQnI3lUly/961GU=;
	b=fcnTfBx9Y8k6lGxEaJ6EOA0zLcHCRMWM8QKtZuGRao4scKaekJTA3PVKMTQm7xlY2cx+Up
	K1R/yyEIweSB72evC9O8HUrDIH+SHvZCjRPSuZbNhFEFcIkEYr01cFswOfrCEI2iTLE4Md
	dHb78IBPqqufgoGyceGQhD0eCJcSNH1oY1PgcZnynAN1JCpN2G7IU+LnWk1Gp3xQUZmqX6
	u5MUCT7Vyzv12A9zkBTHr4hfsLhPHySlQrKl0hj7ChW8r3yFhCAMNcenVYoF8cqKsJQK5f
	Txl6CqG3nPxudsv/5JVtphwHKnI+iIDz194yIJDUg90ZEWIHFGcWAAM0U0pDuA==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=flix@benfm.de smtp.mailfrom=flix.yocto@benfm.de
Date: Mon, 16 Mar 2026 10:51:00 +0100
MIME-Version: 1.0
Subject: Re: [yocto] [scarthgap] DISTRO_VERSION not bumped in 5.0.16 tag
To: Yoann Congal <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
References: <dd66f7a6-c58a-4b4a-bb80-d6a95d92b4d8@benfm.de>
 <DH41EOSC2W84.2MEDCQR70GLRW@smile.fr>
Content-Language: en-US
From: Felix Mellmann <flix.yocto@benfm.de>
In-Reply-To: <DH41EOSC2W84.2MEDCQR70GLRW@smile.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 09:51:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66332

Thank you for your quick response.

I'm so sorry. I didn't saw that the tag dated back to 16th Feb and not 
today (16th March), so I thought "maybe someone could fix it right now 
before the rest of the world is complaining...". But I was 4 weeks late.


Regards,

Felix

On 3/16/26 08:44, Yoann Congal wrote:
> On Mon Mar 16, 2026 at 8:39 AM CET, Felix Mellmann via lists.yoctoproject.org wrote:
>> Hi,
> Hello,
>
>> The Yocto 5.0.16 (scarthgap) tagged release (1d54d1) still has
>> DISTRO_VERSION set to "5.0.15" in meta-poky/conf/distro/poky.conf.
>>
>> It looks like the version bump was missed before tagging.
> Yes, it did: https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/RELEASENOTES:
>> ---------------
>>   Known Issues
>> ---------------
>> The poky DISTRO_VERSION was incorrectly left at 5.0.15. This is a minor issue, if a workaround is needed please cherry-pick:
>>   - poky commit 06210079b2e10d6d3fb943afe87864267e329821, or
>>   - meta-yocto commit 03f93c769ec99e5086e492d8145eb308a718e8d3.
>> Could this be corrected?
> The tag will not be moved but you can apply one of the quoted patch
> above to fix this in your setup.
>
> Sorry about this,
>
> Regards,

