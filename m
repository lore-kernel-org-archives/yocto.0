Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web11.38221.1599472799833026019
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 03:00:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=ZPoMOwzA;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id bb453796
	for <yocto@lists.yoctoproject.org>;
	Mon, 7 Sep 2020 11:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; s=obsd; bh=
	Jinp9UFvFfLOUjvJ6ankPgS71B6pd5/TRgMk5iu+eyw=; b=ZPoMOwzAye/ukztG
	ar7Rg0rtPE9DVHuZsfqmmQWUfyd4KX+RvDaySaB1MAlyKM4YDGIZvUduKzy+IwK+
	ADNa7sMHNdkI/4lbNY/chOhYRm9AkCxuj/Up3xIDEGMrAlx5H3YlgUIkfxvuqTLo
	7KeI1vRi8UgvPd6VT+PPfJHsSI9s3ToKQPbpyzTktR2BHutF7j62yHHAoEFDoEvf
	3rHsNtPRCA+uTSGcfbRVLWfrgXHZWnIKT/BceQW14r3h/PdYT+gsihQvVZPXoc/m
	R5R/qVGyewhrRqIVvUDq7Cw1d3m1zhX7SSy+5b6OWyAh8WRF7ipffMjpXDJ4cGb2
	PZ8j7g==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=obsd; b=i9G/u3
	yChWSCP4gb8wFdr63dooV+oMII7tmSFiXWHRA0mWFlPn+QnLwJIGQNVvvx+B2LCM
	ky1TzAyheimGvcHi4s+o2QCSd06JDEQetXiPLydB5JZHcqNL5lzQ76tiyUlmDkgS
	07B/AuUji1LIBu2BDWR0hmqbVsgeYhQ/dWy9ZBmBbbHAbPiU8tmO4rCzVfCUIAeE
	tOVml4Wgfo3+ZbR8mvrp3YCK9ZSV8uP10B1/Jb1d4jL1ubY9dlaXPmQfZ2uYxp4i
	H2tx4a6BioPEDw6+GJiovIKYR7pwcDbU+XO6tQKg5t63M401kCc9uxhE3pI2WkCM
	OUoKUTmT3awmy+kA==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 6490086b (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Mon, 7 Sep 2020 11:59:56 +0200 (CEST)
Subject: Re: [yocto] bitbake recipe / Network UPS tool
To: yocto@lists.yoctoproject.org
References: <731bd3a4-f5e5-6b2b-a537-a2bcb87d986a@optimcloud.com>
 <22fba728-c053-d538-7faa-84e39c9f3206@3mdeb.com>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <cf7d62d9-b83f-f8f6-0511-e0697862ce65@optimcloud.com>
Date: Mon, 7 Sep 2020 16:58:43 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <22fba728-c053-d538-7faa-84e39c9f3206@3mdeb.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 9/7/20 1:23 PM, Maciej Pijanowski wrote:
>
> Hi,
>
> I happen to have this recipe lying around. I have not upstreamed it 
> for some
> reason (probably lack of time and I have not been using this package 
> at the end,
> so it is not properly tested out). I gave it a try today and at least 
> it builds.
>
> Please try it out: 
> https://github.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83c
>
> If it works for you, please let me know. I would be happy to push the 
> patches upstream.
>
wow... much appreciated, probably just saved me a few headaches and a 
ton of time.

Ill get it onboard and configured and let you know how i make out!

I was actually surprised to not find it already in the tree....

Thanks

