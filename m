Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5470.1611739229412158818
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 01:20:29 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@embed.me.uk header.s=soverin header.b=uwJCZLhl;
 spf=softfail (domain: embed.me.uk, ip: 198.145.29.25, mailfrom: ml@embed.me.uk)
Received: from outbound.soverin.net (outbound.soverin.net [116.202.65.218])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C337638C04C2
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 09:20:28 +0000 (UTC)
Received: from smtp.soverin.net (unknown [10.10.3.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by outbound.soverin.net (Postfix) with ESMTPS id 82E2B6008F;
	Wed, 27 Jan 2021 09:20:27 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [159.69.232.138]) by soverin.net
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embed.me.uk;
	s=soverin; t=1611739227;
	bh=raAv+onzpvFpB6IvVejZiYJ69cGcow9lpSQ+2iOp4HM=;
	h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
	b=uwJCZLhl1BvDYEja6rhclwy4osLrY6SulR7QsZ/cWDf4NIPe5m6FlrJSi8IUzG8Fj
	 cesDEaaTiSLTPX6U6i/VC3OBndsgYZoUf6oHXTj7cKXYHFCmRVLvV2HKifw7YeMc5R
	 WUJEtZgDdDXnFNDBdky+9SwG9MqoTjeGafbAxmrSTOPnAKqLc3p4k/e13JAlkMuPms
	 2YW+emKP2XLe7iAdSZAHgYg8uL7O+3ohGoHH2wA91Df2FDaAqCXHHIyL32KTA2tJKR
	 sf7ewZ3ZNKkrDL76SAchiik9Z+bbR1g906Y1RlEWUPw0oJRN4ax5oNOR1bjXbYyt9a
	 S6RN7MbZQv7Sw==
Subject: Re: [yocto] any interest in an official "meta-rubygems" layer?
From: "Jack Mitchell" <ml@embed.me.uk>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
 Konrad Weihmann <kweihmann@outlook.com>
References: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
 <1a4deeb6-a63a-8ec1-ff56-d50ec2ef071d@embed.me.uk>
 <4d3d282c-60d8-e6c8-3c9-671e2f8b1f4@crashcourse.ca>
 <165E0C20A47D7481.32571@lists.yoctoproject.org>
Message-ID: <5cc0b09f-882d-a335-cee0-378d192b3c72@embed.me.uk>
Date: Wed, 27 Jan 2021 09:20:24 +0000
MIME-Version: 1.0
In-Reply-To: <165E0C20A47D7481.32571@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: 7bit

On 27/01/2021 09:17, Jack Mitchell wrote:
> On 27/01/2021 09:09, Robert P. J. Day wrote:
>> On Wed, 27 Jan 2021, Jack Mitchell wrote:
>> ... snip ...
>>
>>> Hi Robert,
>>>
>>> This is something I would be interested in. I have a developed a
>>> much more basic rubygems class privately which I had intended to
>>> opensource and create a similar later, so it would be nice to have a
>>> central place to contribute Ruby/RubyGems improvements. As you have
>>> found there are many layers with spotty Ruby support and a
>>> particular copy of an old class that is being banded about which is
>>> often insufficient.
>>
>>   cool ... care to share your rubygems.bbclass file? be great to
>> combine the best of both worlds.
>>
>> rday
>>
> 
> Please find attached, it's basically the old ruby class with only
> support for pure RubyGems (i.e. no cross-compiling) with some influence
> from the pypi class for grabbing and compiling a SRC_URI.
> 
> Cheers,
> Jack.
> 
> 

and a short example of how it's used

> cat recipes-devtools/ruby/ruby-pqueue_2.1.0.bb

inherit rubygems

LICENSE = "BSD-2-Clause"
LIC_FILES_CHKSUM = "file://License.txt;md5=8f085d0bb9ef0d1705dc5fd61aaaffa1"

SRC_URI[sha256sum] =
"8b79d9baa303a9747e83877def5a698e0e61d145d4c4275487c79fb1642102a9"


-- 
Jack Mitchell, Consultant
https://www.tuxable.co.uk
