Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02AA5E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:03:07 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Dec 2011 08:03:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49434132"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Dec 2011 08:03:07 -0800
Message-ID: <4EF20329.10408@linux.intel.com>
Date: Wed, 21 Dec 2011 08:02:49 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<1df27b9bdc349f658a19645a4af6f73548203aca.1324456294.git.dvhart@linux.intel.com>
	<4EF1F39F.7040003@windriver.com> <4EF200CC.4000306@linux.intel.com>
	<4EF201C4.6030707@windriver.com>
In-Reply-To: <4EF201C4.6030707@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 4/9] linux-yocto-tiny: New kernel recipe for poky-tiny distro (INCOMPLETE)
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
X-List-Received-Date: Wed, 21 Dec 2011 16:03:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/21/2011 07:56 AM, Bruce Ashfield wrote:
> On 11-12-21 10:52 AM, Darren Hart wrote:
>>
>>
>> On 12/21/2011 06:56 AM, Bruce Ashfield wrote:
>>> On 11-12-21 04:02 AM, Darren Hart wrote:
>>>> linux-yocto-tiny drops the linux-tools and sets the KMACHINE
>>>> branch to standard/tiny.
>>>>
>>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>>> ---

...

>>>> +SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta \
>>>> +           file://core.cfg \
>>>> +           file://serial.cfg \
>>>> +           file://ext2.cfg \
>>>> +           file://rtc-pc.cfg \
>>>> +           file://ramfs.cfg \
>>>> +           file://devtmpfs.cfg \
>>>> +           file://net.cfg \
>>>> +           file://debug.cfg \
>>>> +           file://lzma.cfg \
>>>> +           "
>>>
>>> So I assume that the order of these doesn't really matter, and that
>>> they are non-overlapping ? The answer must be yes, since you've been
>>> testing this, and you don't have a .scc file to control their order :)
>>>
>>
>> That's correct.
>>
>>> Other than that, it looks pretty good to me.
>>
>> Great. Did you have a close look at core.cfg? It along with things like
>> devtmpfs and ramfs are likely to form the basis of the linux-yocto tiny
>> ktype general policy.
> 
> I had a 'medium' depth look :) I didn't see anything outrageous
> or shocking. I'll loop back and have a better look later as well.

I'm mostly interested in things that are MISSING.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

