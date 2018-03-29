Return-Path: <jussi.laako@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46B6BE008E4; Wed, 28 Mar 2018 23:42:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4225AE00857
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 23:42:07 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Mar 2018 23:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,375,1517904000"; d="scan'208";a="43140738"
Received: from jlaako-mobl.ger.corp.intel.com (HELO [10.252.8.113])
	([10.252.8.113])
	by orsmga001.jf.intel.com with ESMTP; 28 Mar 2018 23:42:06 -0700
To: yocto@yoctoproject.org
References: <12dbba60-2346-0020-64c8-db2dac948684@nedap.com>
	<CAJ86T=WE6khW6vfL2_z3HdXjB-pxSSaTAb=Fz-NSczhTGxV=HQ@mail.gmail.com>
From: Jussi Laako <jussi.laako@linux.intel.com>
Message-ID: <6b79bb3a-7cda-cd72-776e-2a8f46602adc@linux.intel.com>
Date: Thu, 29 Mar 2018 09:42:04 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=WE6khW6vfL2_z3HdXjB-pxSSaTAb=Fz-NSczhTGxV=HQ@mail.gmail.com>
Subject: Re: CPU Load
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
X-List-Received-Date: Thu, 29 Mar 2018 06:42:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 29.03.2018 04:24, Andre McCurdy wrote:
> On Tue, Mar 27, 2018 at 4:44 AM, Ryan Meulenkamp
> <Ryan.Meulenkamp@nedap.com> wrote:
>> Hi y'all,
>>
>> I have some questions about CPU load and performance, but first some
>> background information.
>>
>> We have small embedded system running an openembedded classic (Angström)
>> distro. Now to get ourselves up-to-date we started working on a new
>> iteration of the OS based on openembedded core and Yocto. It is nearly
>> finished now, if it weren't for one problem: The CPU load (/proc/loadavg) of
>> the core/yocto based OS is more than double that of the classic/Angström OS.
>>
>> So the way I see it this could be caused by a number of factors:
>>
>>  - loadavg's calculation changed
>>  - certain newer versions of applications run heavier
>>  - The kernel itself is heavier (we upgraded from 2.6.35.14+ to 4.9.28+)
>>   - Possibly caused by some configs
>>  - ...
>>
>> My question: is there something that changed since OE-classic that you know
>> could be the cause of this? If not, how would I go about finding the cause?
>> I don't think the top command is sufficient for this, because it's precision
>> is such that many processes' CPU usage just become 0%.
>
> You don't say what the CPU doubled from or too. 1% to 2%, or 50% to
> 100% ? Unless the absolute increase is very small, you can probably
> ignore the processes which top reports as 0%.
>
> Does the new build have any significant processes running which
> weren't there in the old build? Or is it the same basic set of apps
> running in each?

Changes in really small loads could change even due to differences in 
kernel process accounting. For example if timer granularity has changed.

IIRC, for Meltdown/Spectre mitigations, there have been changes in use 
of TSC for timing (depending on which CPU model and microcode level is 
being used).

So it is good to at least check which clock source is being used by 
kernel in each case. Because the accounting values are at least rounded 
to the timer granularity.


