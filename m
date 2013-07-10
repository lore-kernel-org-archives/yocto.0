Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D564CE01466
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 20:17:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Jul 2013 20:15:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1033,1363158000"; d="scan'208";a="367542827"
Received: from unknown (HELO [10.255.13.73]) ([10.255.13.73])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2013 20:17:50 -0700
Message-ID: <51DCD25E.80105@linux.intel.com>
Date: Tue, 09 Jul 2013 20:17:50 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>, Khem Raj <raj.khem@gmail.com>
References: <6C54348E-3ADA-4621-9F72-3663C23B5445@keylevel.com>
	<045D8888-C821-4AB7-81B7-75A5C94E2962@keylevel.com>
	<CAP9ODKoK2JktR+3D0FjZZM5KUCsQue-cVCO0Ch7ebKrA5hs2wA@mail.gmail.com>
	<38DD74DA-F7B4-4D72-B00B-4B81076D784B@keylevel.com>
	<20130709205006.GW3288@jama>
In-Reply-To: <20130709205006.GW3288@jama>
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
X-List-Received-Date: Wed, 10 Jul 2013 03:17:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/09/2013 01:50 PM, Martin Jansa wrote:
> On Tue, Jul 09, 2013 at 09:25:30PM +0100, Chris Tapp wrote:
>> Forwarding to Yocto mailing list:
>>
>> On 9 Jul 2013, at 21:21, Otavio Salvador wrote:
>>
>>> On Tue, Jul 9, 2013 at 5:19 PM, Chris Tapp <opensource@keylevel.com> wrote:
>>>>
>>>> On 9 Jul 2013, at 20:09, Chris Tapp wrote:
>>>>
>>>>> I'm getting a failure in do_compile when building boost_1.54.0 using master-next for the wandboard-quad.
>>>>>
>>>>> The log is about 1.5MB, but the important bit seems to be that uintptr_t isn't defined but is required by /boost/atomic/atomic.hpp.
>>>>>
>>>>> Has anyone seen this before?
>>>>
>>>> I also meant to say that adding:
>>>>
>>>> typedef unsigned long long uintptr_t;
>>>>
>>>> to atomic.hpp 'fixes' the build, but this is not a good solution ;-)
>>>
>>> It needs to be checked against normal Poky to ensure it is BSP
>>> specific; I doubt it is.
>
> See
> http://lists.openembedded.org/pipermail/openembedded-devel/2013-July/091331.html
>
> But maybe it wasn't caused by eglibc upgrade (and header cleanup in
> eglibc) but by boost upgrade.
>
I did the boost update and with the older eglibc, which is why it seemed 
to work for me.

I just did another build with the updated boost and both eglibc version 
2.17 and 2.18, seems like the 2.18 version causes this breakage, as it 
built fine with 2.17, I also tried to revert the boost updated and build 
the older boost with 2.18 and it worked.

So it must be something with the newer boost and eglibc in combination, 
more digging is required.

Sau!

>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

