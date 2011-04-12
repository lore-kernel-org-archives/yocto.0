Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD5B64C80509
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2011 10:22:06 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 2456D1660715; Tue, 12 Apr 2011 09:22:05 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9798216602D4;
	Tue, 12 Apr 2011 09:22:03 -0600 (MDT)
Message-ID: <4DA46E1B.1090705@mlbassoc.com>
Date: Tue, 12 Apr 2011 09:22:03 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRnJlaXRhcw==?= <joaohf@gmail.com>
References: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>	<BCDD8C04-D97A-4B4D-931B-00357C6C59C5@dominion.thruhere.net>	<BANLkTimCSrbZ6EgverDQiiRscc24LqNsQg@mail.gmail.com>	<4D9E0519.4060909@mlbassoc.com>	<BANLkTimgL0PhaySxNvTqCzvCdOKj29wuGg@mail.gmail.com>	<4D9E1C97.2070107@mlbassoc.com>	<BANLkTimQ22OrQx6OzsfVjreSnkQxafW06w@mail.gmail.com>
	<BANLkTi=ULVfDrC7-0n0+8xLyJZ+4cjC_bw@mail.gmail.com>
In-Reply-To: <BANLkTi=ULVfDrC7-0n0+8xLyJZ+4cjC_bw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: recipes for sniffer tool
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Apr 2011 15:22:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/12/2011 09:07 AM, João Henrique Freitas wrote:
> Hi,
>
> I found the problem: host contamination.
>
> tcpdump search by pcap-config script and runs it to get where pcap
> library lives.
>
> On my ubuntu box I haven't the pcap-devel package installed. But on
> mandriva box I had.
>
> I have two question:
>
> How Yocto can protect against this situation?

Everything that the package needs to be able to build, include stuff discovered
via configure (autotools) should be built and available totally within Poky.

>
> Is any guide or hint about how I can patch a autotools based  and
> removes this host contamination?

It should not be looking at any host tools to build tcpdump.  Can you send
the config.log from each of the systems (Ubuntu which works, Mandriva which fails)?

> 2011/4/9 João Henrique Freitas<joaohf@gmail.com>:
>> Hello,
>>
>> I need to confirm same data but it works.
>>
>> I have two build hosts Ubuntu 10.10 (OK, at home) Mandriva 2010.1
>> (FAIL, at work).
>>
>> Thanks.
>>
>> 2011/4/7 Gary Thomas<gary@mlbassoc.com>:
>>> On 04/07/2011 01:48 PM, João Henrique Freitas wrote:
>>>>>
>>>>> I used this recipe, along with the attached patch to build tcpdump.
>>>>>
>>>>
>>>> I am using the same recipes, without the patch. But it fails.
>>>>
>>>> With not-building-for-solaris.patch, fails too.
>>>>
>>>> I will try delete my build and try again.
>>>
>>> Be sure and start rebuilding the tcpdump package completely.
>>> Just running 'bitbake tcpdump' is probably not good enough.
>>> Here's what I would try:
>>>   % bitbake tcpdump -c clean
>>>   % rm -f sstate-cache/sstate-tcpdump*
>>>   % bitbake tcpdump
>>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>>
>>
>>
>>
>> --
>> -----------------------------------------------------------
>> João Henrique Freitas - joaohf_at_gmail.com
>> Campinas-SP-Brasil
>> BSD051283
>> LPI 1
>> http://www.joaohfreitas.eti.br
>>
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

