Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web11.11579.1574613459651702712
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Nov 2019 08:37:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xAOGbaen021259
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
	for <yocto@lists.yoctoproject.org>; Sun, 24 Nov 2019 10:37:38 -0600
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Subject: Re: [yocto] repost: how to create a SPDX "notice file" from a build?
To: yocto@lists.yoctoproject.org
References: <alpine.LFD.2.21.1911220952340.7502@localhost.localdomain>
 <alpine.LFD.2.21.1911221159250.14879@localhost.localdomain>
 <02bee54a-3a3b-aac2-812d-50b5c395aaa3@gmail.com>
 <a126a3ecf7d93e638dc650ef92dfc2fdcebd221b.camel@linuxfoundation.org>
 <alpine.LFD.2.21.1911240508040.6069@localhost.localdomain>
Message-ID: <c2204d9c-9970-c6de-9cd8-f94f7a6cdb9e@kernel.crashing.org>
Date: Sun, 24 Nov 2019 10:37:36 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.1911240508040.6069@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit

(resending, the list rejected the first reply)

On 11/24/19 4:11 AM, rpjday@crashcourse.ca wrote:
> On Sat, 23 Nov 2019, Richard Purdie wrote:
> 
>> On Fri, 2019-11-22 at 09:59 -0800, akuster808 wrote:
>>>
>>>
>>> On 11/22/19 9:03 AM, rpjday@crashcourse.ca wrote:
>>>> On Fri, 22 Nov 2019, Robert P. J. Day wrote:
>>>>
>>>>
>>>> /////////// end /////////
>>>>
>>>>   i have absolutely no idea what to think of this, and am open to
>>>> suggestions. does anyone have a working scenario to simply
>>>> demonstrate
>>>> the usage of spdx.bbclass?
>>>
>>> Would you mind opening a Yocto defect.
>>
>> That code hasn't been touched in a while and needs some serious
>> attention. The underlying tools and processes have changed so much
>> it may be a case of starting again and we should perhaps consider
>> removing that class...
> 
>   as one more followup to this, first, i was asked by a colleague
> about the possibility of generating an "SPDX notice file," and as i
> don't know what the format of one of those things is, it's hard for me
> to know how to answer. it seems clear at this point that spdx.bbclass
> is not going to cut it, as richard points out.
> 
>   more to the point, has anyone had to do something that seems to
> resemble what i was asked about? i'm open to suggestions as to what
> *is* supported so i can try it out and hand it over and at least say,
> "is this close to what you're looking for?"

I know individual companies have created their own tools to do this, but since
it's both required and could include liability (if you get it wrong), I'm not
aware of any open source way of doing this.

If there is one, it would likely be published as part of the SPDX
project/mailing lists.

--Mark

>   thanks for any pointers.
> 
> rday
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#47399): https://lists.yoctoproject.org/g/yocto/message/47399
> Mute This Topic: https://lists.yoctoproject.org/mt/61664060/3616948
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [mark.hatle@kernel.crashing.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 
