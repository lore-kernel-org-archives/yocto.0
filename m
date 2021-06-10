Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web08.6720.1623308992035172831
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 00:09:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1lrEp2-00087w-IV
	for yocto@lists.yoctoproject.org; Thu, 10 Jun 2021 09:09:48 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: bitbake controlling memory use
Date: Thu, 10 Jun 2021 09:09:39 +0200
Message-ID: <9a9bcc76-2d88-3211-87cc-5448e87142a1@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
 <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
 <5d293285-7ee4-8ebe-8d63-78415b4de403@gmail.com>
 <a6dde982-026e-27ca-f1d6-0208aa8230b7@windriver.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
Cc: yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org
In-Reply-To: <a6dde982-026e-27ca-f1d6-0208aa8230b7@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Op 08-06-2021 om 21:08 schreef Trevor Gamblin:
> 
> On 2021-06-05 9:35 a.m., Gmane Admin wrote:
>> [Please note: This e-mail is from an EXTERNAL e-mail address]
>>
>> Op 14-04-2021 om 06:59 schreef Richard Purdie:
>>> On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
>>>> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
>>>>> make already has -l option for limiting new instances if load 
>>>>> average is
>>>>> too high, so it's only natural to add a RAM limiter too.
>>>>>
>>>>>     -l [N], --load-average[=N], --max-load[=N]
>>>>>                                 Don't start multiple jobs unless 
>>>>> load is
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
>>>>
>>>> In the longer run, changes to how bitbake schedules work may be needed.
>>>>
>>>> Richard says that there was a make/build server idea and maybe even a
>>>> patch from a while ago. It may be in one of his poky-contrib branches.
>>>> I took a few minutes to look but nothing popped up. A set of 
>>>> keywords to
>>>> search for might help me find it.
>>>
>>> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&id=d66a327fb6189db5de8bc489859235dcba306237 
>>>
>>>
>>> Cheers,
>>>
>>> Richard
>>>
>>>
>> I like the idea. Unfortunately the patch doesn't apply to Gatesgarth, so
>> I couldn't test it. Any chance you would be doing a refresh?
> 
> I have reworked the patch and I'm doing some testing with it right now. 
> Once I have collected some data (and possibly reworked it further, 
> depending on results), perhaps I can have you test it out as well? That 
> should be in the next day or two.

Sure. But note, I reworked it too (but maybe wrongly). I builds like 90% 
of my image, but fails building cmake.


> - Trevor
> 
>>
>>
>> 
>>


