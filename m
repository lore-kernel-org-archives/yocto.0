Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web08.15751.1618774504214328035
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Apr 2021 12:35:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1lYDCA-000AVO-9A
	for yocto@lists.yoctoproject.org; Sun, 18 Apr 2021 21:35:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: bitbake controlling memory use
Date: Sun, 18 Apr 2021 21:34:56 +0200
Message-ID: <5d6bff5e-89ec-1c01-19a4-a3e049ac8453@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
 <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
 <34dccddb-c5c2-16e0-d571-f86f2c6f004b@gmail.com>
 <c26ff0ee8f9cc81d0c52cda17381226fc11166c8.camel@linuxfoundation.org>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
Cc: yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org
In-Reply-To: <c26ff0ee8f9cc81d0c52cda17381226fc11166c8.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,
Op 18-04-2021 om 11:59 schreef Richard Purdie:
> On Sun, 2021-04-18 at 00:17 +0200, Gmane Admin wrote:
>> Hi,
>> Op 14-04-2021 om 06:59 schreef Richard Purdie:
>>> On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
>>>> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
>>>>> make already has -l option for limiting new instances if load average is
>>>>> too high, so it's only natural to add a RAM limiter too.
>>>>>
>>>>>      -l [N], --load-average[=N], --max-load[=N]
>>>>>                                  Don't start multiple jobs unless load is
>>>>> below N.
>>>>>
>>>>> In any case, patches welcome :)
>>>>
>>>> During today's Yocto technical call (1),
>>>> we talked about approaches to limiting the system load and avoiding
>>>> swap and/or OOM events. Here's what (little!) i recall from the
>>>> discussion, 9 busy hours later.
>>>>
>>>> In the short run, instead of independently maintaining changes to
>>>> configurations to limit parallelism or xz memory usage, etc, we
>>>> could develop an optional common include file where such limits
>>>> are shared across the community.
>>
>> I tried PARALLEL_MAKE_nodejs = "-j 1" from local.conf but that didn't work.
> 
> It would need to be:
> 
> PARALLEL_MAKE_pn-nodejs = "-j 1"
> 
>> So I watched it run for a while. It compiles with g++ and as at about
>> 0.5GB per thread, which is OK. In the end it does ld taking 4GB and it
>> tries to do 4 in parallel. And then swapping becomes so heavy the
>> desktop becomes unresponsive. Like I mentioned before ssh from another
>> machine allows me to STOP one of them, allowing the remaining to
>> complete. And then CONT the last one.
>>
>> I worked around it now, by creating a bbappend for nodejs with only
>> PARALLEL_MAKE = "-j 2"
>>>
> 
> If that works, the override above should also work. You do need the "pn-"
> prefix to the recipe name though.

And indeed it does, thanks so much for the tip.

Ferry

> Cheers,
> 
> Richard
> 
> 


