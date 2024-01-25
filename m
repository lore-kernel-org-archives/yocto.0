Return-Path: <philip@balister.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF247C47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 22:58:47 +0000 (UTC)
Received: from smtp7.emailarray.com (smtp7.emailarray.com [65.39.216.66])
 by mx.groups.io with SMTP id smtpd.web11.535.1706223520500642489
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 14:58:41 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: balister.org, ip: 65.39.216.66, mailfrom: philip@balister.org)
Received: (qmail 34480 invoked by uid 89); 25 Jan 2024 22:58:39 -0000
X-Orig-Sender: philip@balister.org
Received: from unknown (HELO ?192.168.11.155?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0A3My4xNTIuMTM0LjE1Mg==) (POLARISLOCAL)  
  by smtp7.emailarray.com with SMTP; 25 Jan 2024 22:58:39 -0000
Message-ID: <1426bf2a-b18a-4589-974b-3b5f9c40a904@balister.org>
Date: Thu, 25 Jan 2024 17:58:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] bmap-tools repository closes
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com,
 Tim Orling <ticotimo@gmail.com>, Michael Halstead <michael@yoctoproject.org>
Cc: JPEWhacker@gmail.com, dedekind1@gmail.com
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
 <20240124175901.GA22635@localhost>
 <CAJdd5GaMEKDF=T-udE9K4pdoQTs-WV4EXPL0QUUNwkdCAGxkgA@mail.gmail.com>
 <CANx9H-BPNxygNezUyDeHf3GseETi0N9n8D=cwdDrZWWK1W0jBw@mail.gmail.com>
 <20240125165853.GA16381@localhost>
From: Philip Balister <philip@balister.org>
In-Reply-To: <20240125165853.GA16381@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 22:58:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62296

On 1/25/24 11:58, Trevor Woerner wrote:
> On Wed 2024-01-24 @ 03:16:04 PM, Tim Orling wrote:
>> On Wed, Jan 24, 2024 at 2:02 PM Joshua Watt <JPEWhacker@gmail.com> wrote:
>>
>>> On Wed, Jan 24, 2024 at 10:59 AM Trevor Woerner <twoerner@gmail.com>
>>> wrote:
>>>>
>>>> Hi Artem,
>>>>
>>>> On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:
>>>>> Hello Yocto community,
>>>>>
>>>>> some parts of Yocto software (MIC?) use the 'bmap-tools' project to
>>> speed up
>>>>> image flashing.
>>>>>
>>>>> https://github.com/intel/bmap-tools
>>>>>
>>>>> I am the original author of the software, and I created it many years
>>> ago to
>>>>> speed up Tizen image flashing, and it helped a lot back at the time.
>>> It was also
>>>>> my first python project, so it was a lot of fun learning python while
>>> also
>>>>> creating something useful.
>>>>
>>>> Thank you for your contribution, this tool has been quite useful for me
>>> over
>>>> the years.
>>>>
>>>>> But after that, I stopped working on it and it was mostly Yocto folks
>>> who
>>>>> contributed changes here and there. I never had time and enough
>>> motivation to
>>>>> maintain the project further, but other folks helped.
>>>>>
>>>>> Simon McVitte was active maintainer, but he said he does not have time
>>> for it
>>>>> now as well.
>>>>>
>>>>> The project is in "github.com/intel" space, and Intel is going to
>>> archive the
>>>>> git repository soon. This basically means the repository becomes
>>> read-only soon.
>>>>
>>>> Thank you for this update and letting us know ahead of time.
>>>>
>>>>> Would Yocto community have enthusiasts to fork it and maintain the
>>> fork?
>>>>
>>>> Yes, I'll volunteer to maintain it going forward. My non-stackoverflow
>>> python
>>>> knowledge is minimal, but I recently dug deeply into bmaptools to solve
>>> an
>>>> issue I had noticed. So I'm confident enough to take it over if nobody
>>> else is
>>>> interested.
>>>
>>> Ya, it's an awesome tool and a huge time saver for us, so can also
>>> help maintain it
>>>
>>
>> We can probably move it under the https://github.com/yoctoproject umbrella?
>> I can also help maintain this tremendous time saver.
> 
> https://github.com/yoctoproject and the github workflow is fine with me as
> long as I can commit to it from my @gmail identity.
> 
> @tim do you want to import the current repository from intel? Then we can
> update the recipe in oe-core and go from there.
> 

Michael, if you need any support from the Yocto Project advisory board 
to move bmaptool to the yoctoproject github, I can help with that.

Philip

> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62295): https://lists.yoctoproject.org/g/yocto/message/62295
> Mute This Topic: https://lists.yoctoproject.org/mt/103930262/384425
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [philip@balister.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

