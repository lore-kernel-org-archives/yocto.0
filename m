Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43B6FE013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 12:27:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jul 2013 12:28:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,1045,1367996400"; d="scan'208";a="368791176"
Received: from unknown (HELO [10.255.13.73]) ([10.255.13.73])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2013 12:27:13 -0700
Message-ID: <51DF0711.1040905@linux.intel.com>
Date: Thu, 11 Jul 2013 12:27:13 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <6C54348E-3ADA-4621-9F72-3663C23B5445@keylevel.com>
	<045D8888-C821-4AB7-81B7-75A5C94E2962@keylevel.com>
	<CAP9ODKoK2JktR+3D0FjZZM5KUCsQue-cVCO0Ch7ebKrA5hs2wA@mail.gmail.com>
	<38DD74DA-F7B4-4D72-B00B-4B81076D784B@keylevel.com>
	<20130709205006.GW3288@jama>
	<C2C2584F-0108-426E-9303-4921E97E4D92@gmail.com>
In-Reply-To: <C2C2584F-0108-426E-9303-4921E97E4D92@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-freescale] Compile error for boost_1.54.0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Jul 2013 19:27:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


OK, I finally tracked this bugger down to the eglibc update to 2.18 and 
specifically

> ../../../eglibc/2.18-r0/eglibc-2.18/libc/ChangeLog:     * include/features.h (__GLIBC_HAVE_LONG_LONG): Remove.

Turns out that in boost code there is a check for the 
__GLIBC_HAVE_LONG_LONG in cstdint.hpp and this was not getting triggered 
any more.

The include issue for g++ was kind of a red herring in this case, that 
issue still exists, but this is a different problem.  And there is a 
patch for that in the SVN master, I will pull it!

Sau!


On 07/09/2013 10:04 PM, Khem Raj wrote:
>
> On Jul 9, 2013, at 1:50 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>
>> On Tue, Jul 09, 2013 at 09:25:30PM +0100, Chris Tapp wrote:
>>> Forwarding to Yocto mailing list:
>>>
>>> On 9 Jul 2013, at 21:21, Otavio Salvador wrote:
>>>
>>>> On Tue, Jul 9, 2013 at 5:19 PM, Chris Tapp <opensource@keylevel.com> wrote:
>>>>>
>>>>> On 9 Jul 2013, at 20:09, Chris Tapp wrote:
>>>>>
>>>>>> I'm getting a failure in do_compile when building boost_1.54.0 using master-next for the wandboard-quad.
>>>>>>
>>>>>> The log is about 1.5MB, but the important bit seems to be that uintptr_t isn't defined but is required by /boost/atomic/atomic.hpp.
>>>>>>
>>>>>> Has anyone seen this before?
>>>>>
>>>>> I also meant to say that adding:
>>>>>
>>>>> typedef unsigned long long uintptr_t;
>>>>>
>>>>> to atomic.hpp 'fixes' the build, but this is not a good solution ;-)
>>>>
>>>> It needs to be checked against normal Poky to ensure it is BSP
>>>> specific; I doubt it is.
>>
>> See
>> http://lists.openembedded.org/pipermail/openembedded-devel/2013-July/091331.html
>
> in above thread answering to your question if you want to include <cstblib> you need to specify
> -std=gnu++0x or -std=c++0x to cppflags. above container is not supported prior to c++0x standard
>
>
>>
>> But maybe it wasn't caused by eglibc upgrade (and header cleanup in
>> eglibc) but by boost upgrade.
>>
>> --
>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

