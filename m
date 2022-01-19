Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9397C433EF
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 13:59:53 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web09.6565.1642600792922668185
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 05:59:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AE9451C0009;
	Wed, 19 Jan 2022 13:59:50 +0000 (UTC)
Subject: Re: [yocto] Invalid checksums for SRC_URI ignored?
To: Peter Bergin <peter@berginkonsult.se>, yocto@lists.yoctoproject.org,
 Ross Burton <ross@burtonini.com>
References: <f4fc69b8-7ead-d9c5-a52b-32bdf77b4143@bootlin.com>
 <4cb625ab-23f3-f0e0-f8c4-b4feb65caddd@berginkonsult.se>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <c6038301-7fde-ba25-a75a-bc1c4f614271@bootlin.com>
Date: Wed, 19 Jan 2022 14:59:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <4cb625ab-23f3-f0e0-f8c4-b4feb65caddd@berginkonsult.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 13:59:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55912

Peter, Ross

On 1/19/22 1:56 PM, Peter Bergin wrote:
> Hi,
>
> On 2022-01-19 13:16, Michael Opdenacker wrote:
>> Greetings,
>>
>> I reused a simple "hello" recipe and added a non-matching checksum to
>> it:
>>
>> ...
>> SRC_URI = "file://helloworld.c"
>> SRC_URI[md5sum] = "34f0efd76b4f18888888888833cdd129"
>> ...
>>
>> The rest of the recipe comes from
>> https://git.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-skeleton/hello-single.
>>
>>
>> Why doesn't Bitbake stop, reporting that the checksum doesn't match the
>> source file?
>> Anyway, why does the recipe build without a checksum? Shouldn't
>> checksums be mandatory?
>
> No they are not mandatory for all fetchers. They are only used for
> content downloaded from non-local archives.
> https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-fetching.html#the-download-fetch
>
>
> https://github.com/openembedded/bitbake/blob/32180d5057c818a69987aada482e82acf3c72ef2/lib/bb/fetch2/__init__.py#L1268
>
>
> ^^ here you can see the selection of URI's that automatically needs a
> checksum.


Thanks for your replies. This all makes perfect sense then.
Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


