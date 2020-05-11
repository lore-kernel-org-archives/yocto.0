Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1335.1589222618429630370
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2020 11:43:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 140.211.169.56, mailfrom: mark.hatle@kernel.crashing.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06532E01B3F; Mon, 11 May 2020 11:43:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 332 seconds by postgrey-1.32 at yocto-www; Mon, 11 May 2020 11:43:34 PDT
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7398AE01B3D
	for <yocto@yoctoproject.org>; Mon, 11 May 2020 11:43:34 -0700 (PDT)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 04BIbhBg032378
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Mon, 11 May 2020 13:37:52 -0500
Subject: Re: [oe][yocto][bitbake] Fetching source using different protocols
To: Quentin Schulz <quentin.schulz@streamunlimited.com>,
        Dawod <mhm.dawod@gmail.com>
Cc: openembedded-core@lists.openembedded.org, yocto@yoctoproject.org
References: <CAGCTLNQW1WWHmy1zaE+LF-AKBQa-UpY8sfOy=HH3tt0rJLJFLg@mail.gmail.com>
 <20200511091703.l53b4t74xc36vgdo@qschulz>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <e183edd5-cea8-8870-eef3-2d3b7ecbc05a@kernel.crashing.org>
Date: Mon, 11 May 2020 13:37:43 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200511091703.l53b4t74xc36vgdo@qschulz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/11/20 4:17 AM, Quentin Schulz wrote:
> Hi Mohamed,
> 
> On Mon, May 11, 2020 at 11:03:26AM +0200, Dawod wrote:
>> Hello,
>>
>> I need to fetch a git repo using 2 different protocols ( ssh & https )
>> So that when I run bitbake, It will fetch using ssh protocol first and if
>> it fails to fetch, It will try to fetch using https protocol.
>>
> 
> Why? What's the exact use case?
> 
>> can I do some thing like that or I will have to change it manually every
>> time ?
>>
> 
> Maybe you could play with PREMIRROS? (I've never explicitly used that
> variable though):
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-PREMIRRORS

This is what I would suggest.  Have the recipe itself set the fallback URI as
the main URL.


SRC_URI = "git://example.com/my/repository/uri;proto=https"

PREMIRRORS_prepend = "git://example.com/my/repository/uri;proto=https
git://example.com/my/otherrepo/uri;proto=ssh \n"

(the \n is literally '\' and 'n')

The above should, when it sees the SRC_URI, try the ssh protocol first.. if that
doesn't work it will fall back to SRC_URI.

--Mark

> I guess the asterisk parts could be removed and the path to more or less your
> source could be used (ssh first, to http path in your SRC_URI)?
> 
> That's a shot in the dark for me but something to test I'd say :)
> 
> Quentin
> 
> 
> 
> 
