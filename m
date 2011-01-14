Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 41A8E4C80039
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 19:41:25 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0E1fLxU004774;
	Thu, 13 Jan 2011 17:41:21 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 13 Jan 2011 17:41:21 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.9]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 13 Jan 2011 17:41:20 -0800
Message-ID: <4D2FA9BE.80303@windriver.com>
Date: Thu, 13 Jan 2011 20:41:18 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRnJlaXRhcw==?= <joaohf@gmail.com>
References: <4D2F2977.90007@intel.com>	<4D2F2A4A.8030305@windriver.com>	<1294937243.9232.2.camel@elmorro>
	<AANLkTime7E3HN64prTXoxfu_yb6BqW56_=jU7L38S_MP@mail.gmail.com>
In-Reply-To: <AANLkTime7E3HN64prTXoxfu_yb6BqW56_=jU7L38S_MP@mail.gmail.com>
X-OriginalArrivalTime: 14 Jan 2011 01:41:21.0136 (UTC)
	FILETIME=[25373700:01CBB38C]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Current Build Failures for d82f205cfa790b40e132e11b7937050bc3b97ff3
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
X-List-Received-Date: Fri, 14 Jan 2011 01:41:25 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11-01-13 8:37 PM, João Henrique Freitas wrote:
> Hi,
>
> I have two build machines:
>
> x86 ubuntu 10.04 at work
> x86_64 ubuntu 10.04 at home
>
> At home all things goes ok. But at work perf has failed.

Are your package lists identical ? Sounds like host contamination
to me and perf is deciding to build perl or not perl based on
what the host has installed.

>
> The problem is LIBPERL. I can't understand why but at work the
> Makefile from perf does not have the flag NO_LIBPERL.
>
> To 'solve'  it I put:
>
> do_compile_perf() {
> 	oe_runmake -C ${S}/tools/perf CC="${CC}" LD="${LD}" prefix=${prefix}
> NO_LIBPERL=1

This works .. or to get the functionality back, we get perl
in the package list and kindly ask perf to look in our sysroot
for what it needs :)

Thanks for the digging on this.

Bruce

> }
>
> in linux-tools.inc
>
> Thanks.
>
> On Thu, Jan 13, 2011 at 2:47 PM, Tom Zanussi<tom.zanussi@intel.com>  wrote:
>> On Thu, 2011-01-13 at 08:37 -0800, Bruce Ashfield wrote:
>>> On 11-01-13 11:33 AM, Elizabeth Flanagan wrote:
>>>> All,
>>>>
>>>> The current nightly based on d82f205cfa790b40e132e11b7937050bc3b97ff3 is
>>>> showing 3 build failures so far.
>>>>
>>>> Machine: qemux86
>>>> Failure: intermittent tasks_0.18 failure at do_compile
>>>> Description: Tasks_0.18 has failed during one buildset, however it's not
>>>> failing on the other.
>>>>
>>>>
>>>> Machine: arm
>>>> Failure: sanity tests time out and cause cascading failures.
>>>> Description: I'm patching the autobuilder today so that sanity tests
>>>> timing out shouldn't cause a cascading failure, however the arm sanity
>>>> tests are still timing out.
>>>>
>>>> Machine: qemux86-64
>>>> Failure: linux-yocto_git failing at do_compile_perf
>>>> Description:
>>>> |     CC util/scripting-engines/trace-event-perl.o
>>>> | cc1: warnings being treated as errors
>>>> | cc1: error: include location "/usr/local/include" is unsafe for
>>>> cross-compilation
>>>
>>> I saw this one as well, but hadn't gone back to look at
>>> it yet. Did something change underneath us?
>>>
>>> I haven't updated any parts of the recipes or kernel that
>>> would have triggered the new failure. Or at least nothing
>>> that has ever showed up in my testing.
>>>
>>
>> Yeah, it's strange that this starts happening seemingly out of the blue
>> - nothing wrt this has changed recently AFAICS.
>>
>>> Darren/Tom: you guys have been into perf/trace recently,
>>> any ideas (or time) for a quick fix ? I'm going to be
>>> pegged for the day trying to sort out some other items.
>>>
>>
>> Coincidentally, I was going to look at perf scripting next week - guess
>> I'll start this week instead.  Don't have a quick fix off the top of my
>> head - will start looking into it later today/tonight...
>>
>> Tom
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>> | make: *** [util/scripting-engines/trace-event-perl.o] Error 1
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>


