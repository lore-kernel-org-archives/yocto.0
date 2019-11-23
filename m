Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web09.8250.1574524413399730033
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Nov 2019 07:53:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xANFrVHc014597
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
	for <yocto@lists.yoctoproject.org>; Sat, 23 Nov 2019 09:53:32 -0600
Subject: Re: [yocto] repost: how to create a SPDX "notice file" from a build?
To: yocto@lists.yoctoproject.org
References: <alpine.LFD.2.21.1911220952340.7502@localhost.localdomain>
 <alpine.LFD.2.21.1911221159250.14879@localhost.localdomain>
 <02bee54a-3a3b-aac2-812d-50b5c395aaa3@gmail.com>
 <a126a3ecf7d93e638dc650ef92dfc2fdcebd221b.camel@linuxfoundation.org>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <136c3df4-d7b9-f17a-23f3-ac73fee31b79@kernel.crashing.org>
Date: Sat, 23 Nov 2019 09:53:30 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <a126a3ecf7d93e638dc650ef92dfc2fdcebd221b.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 11/23/19 6:01 AM, Richard Purdie wrote:
> On Fri, 2019-11-22 at 09:59 -0800, akuster808 wrote:
>>
>>
>> On 11/22/19 9:03 AM, rpjday@crashcourse.ca wrote:
>>> On Fri, 22 Nov 2019, Robert P. J. Day wrote:
>>>
>>>
>>> /////////// end /////////
>>>
>>>   i have absolutely no idea what to think of this, and am open to
>>> suggestions. does anyone have a working scenario to simply
>>> demonstrate
>>> the usage of spdx.bbclass?
>>  
>> Would you mind opening a Yocto defect.
> 
> That code hasn't been touched in a while and needs some serious
> attention. The underlying tools and processes have changed so much it
> may be a case of starting again and we should perhaps consider removing
> that class...

I think the use-cases have changed over time, even though parts and pieces are
still valid.  There are really a few groups to consider.

1) (old case) someone is building a system and wants to construct SPDX files for
the things they are building.  Contacting, uploading, getting a report from
fossology may still be the best way of doing this.

2) (new case) things could be shipped with prebuilt SPDX files (based on
fossology run by the system, maintainer, an addon layer, OSV, etc..)
In this case we would want to simply tie a recipe to an SPDX and be able to
correlate them.

3) In either case, we have a list of SPDX files, but that doesn't meet Robert's
question.  Something needs to process these SPDX files and generate notice files
and similar.  To me this is an external tool, that could optionally be invoked
at image creation time (or by the user directly.)

Further, a 4th case.. what is the license of the components I've actually
deployed.  I've wanted to do this for a long time, but using the dwarf debug
information you can determine what files were actually used to construct the
binaries in your images.  From that you can go back to the SPDX files and
correlated to exactly what was deployed including file level copyright, notice,
and license requirements (not just recipe) and produce an incredibly accurate
report.  Add to this that SPDX has the ability for custom fields that can be
used to track other IP issues like patents, legal concerns, etc.  And you could
construct a report in a form for the legal organization of a company to review
prior to product shipment.

Right now, we have an old way to do 1, but it doesn't solve Robert's issue --
even if it DID work.  and no way to do the rest (that I am aware of).

--Mark

> Cheers,
> 
> Richard
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#47394): https://lists.yoctoproject.org/g/yocto/message/47394
> Mute This Topic: https://lists.yoctoproject.org/mt/61664060/3616948
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [mark.hatle@kernel.crashing.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 
