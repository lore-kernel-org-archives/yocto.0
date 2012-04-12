Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04CCCE0059A
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 15:57:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Apr 2012 15:56:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="128670559"
Received: from unknown (HELO envy.home) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 12 Apr 2012 15:56:59 -0700
Message-ID: <4F875D98.7020100@linux.intel.com>
Date: Thu, 12 Apr 2012 15:56:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com>
	<9AE35C40-C519-49ED-9790-0E4BC9A42F39@keylevel.com>
In-Reply-To: <9AE35C40-C519-49ED-9790-0E4BC9A42F39@keylevel.com>
X-Enigmail-Version: 1.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 12 Apr 2012 22:57:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit



On 04/12/2012 03:43 PM, Chris Tapp wrote:
> On 12 Apr 2012, at 15:34, Darren Hart wrote:
>>
>>
>> On 04/12/2012 07:08 AM, Björn Stenberg wrote:
>>> Darren Hart wrote:
>>>> /dev/md0        /build          ext4 
>>>> noauto,noatime,nodiratime,commit=6000
>>>
>>> A minor detail: 'nodiratime' is a subset of 'noatime', so there is no
>>> need to specify both.
>>
>> Excellent, thanks for the tip.
>>
>>>
>>>> I run on a beast with 12 cores, 48GB of RAM, OS and sources on a
>>>> G2 Intel SSD, with two Seagate Barracudas in a RAID0 array for my
>>>> /build partition. I run a headless Ubuntu 11.10 (x86_64)
>>>> installation running the 3.0.0-16-server kernel. I can build
>>>> core-image-minimal in < 30 minutes and core-image-sato in < 50
>>>> minutes from scratch.
>>>
>>> I'm guessing those are rather fast cores? 
>>
>> They are:
>> model name	: Intel(R) Xeon(R) CPU           X5680  @ 3.33GHz
> 
> Nice, but well out of my budget - I've got to make do with what one of your CPUs costs for the whole system ;-)
> 
>>
>>> I build on a different type
>>> of beast: 64 cores at 2.1GHz and 128 GB ram. The OS is on a single
>>> SSD and the build dir (and sources) is on a RAID0 array of Intel 520
>>> SSDs. Kernel is the same ubuntu 3.0.0-16-server as yours.
>>
>> Now that I think about it, my downloads are on the RAID0 array too.
>>
>> One thing that comes to mind is the parallel settings, BB_NUMBER_THREADS
>> and PARALLEL_MAKE. I noticed a negative impact if I increased these
>> beyond 12 and 14 respectively. I tested this with bb-matrix
>> (scripts/contrib/bb-perf/bb-matrix.sh). The script is a bit fickle, but
>> can provide useful results and killer 3D surface plots of build time
>> with BB and PM on the axis. Can't seem to find a plot image at the
>> moment for some reason...
>>
>>>
>>> Yet for all the combined horsepower, I am unable to match your time
>>> of 30 minutes for core-image-minimal. I clock in at around 37 minutes
>>> for a qemux86-64 build with ipk output:
>>>
>>> ------ NOTE: Tasks Summary: Attempted 1363 tasks of which 290 didn't
>>> need to be rerun and all succeeded.
>>>
>>> real    36m32.118s user    214m39.697s sys     108m49.152s ------
>>>
>>> These numbers also show that my build is running less than 9x
>>> realtime, indicating that 80% of my cores sit idle most of the time.
>>
>> Yup, that sounds about right. The build has a linear component to it,
>> and anything above about 12 just doesn't help. In fact the added
>> scheduling overhead seems to hurt.
>>
>>> This confirms what "ps xf" says during the builds: Only rarely is
>>> bitbake running more than a handful tasks at once, even with
>>> BB_NUMBER_THREADS at 64. And many of these tasks are in turn running
>>> sequential loops on a single core.
>>>
>>> I'm hoping to find time soon to look deeper into this issue and
>>> suggest remedies. It my distinct feeling that we should be able to
>>> build significantly faster on powerful machines.
>>>
>>
>> Reducing the dependency chains that result in the linear component of
>> the build (forcing serialized execution) is one place we've focused, and
>> could probably still use some attention. CC'ing RP as he's done a lot there.
> 
> Current plan for a 'budget' system is:
> 
> DX79TO motherboard, i7 3820, 16GB RAM, a pair of 60GB OCZ Vertex III's in RAID-0 for downloads / build, SATA HD for OS (Ubuntu 11.10 x86_64).
> 
> That'll give me a 2.7x boost just on CPU and the SSDs (and maybe some over-clocking) will give some more.
> 
> Not sure if SSDs in RAID-0 will give any boost, so I'll run some tests.
> 
> Thanks to all for the comments in this thread.

Get back to us with times, and we'll build up a wiki page.

> 
> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

