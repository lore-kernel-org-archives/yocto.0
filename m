Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7088AE00655;
	Tue, 18 Sep 2012 07:46:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Sep 2012 07:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,442,1344236400"; d="scan'208";a="194393950"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 18 Sep 2012 07:46:09 -0700
Received: from [10.237.105.144] (mlindnex-mobl1.ger.corp.intel.com
	[10.237.105.144])
	by linux.intel.com (Postfix) with ESMTP id E49B02C8001;
	Tue, 18 Sep 2012 07:46:09 -0700 (PDT)
Message-ID: <5058892F.3020704@linux.intel.com>
Date: Tue, 18 Sep 2012 17:46:07 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120907 Thunderbird/15.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
	<5058675D.9020707@windriver.com>
	<1347976148.6185.49.camel@empanada>
	<50587DEA.6030508@linux.intel.com>
	<1347978192.6185.51.camel@empanada>
In-Reply-To: <1347978192.6185.51.camel@empanada>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [linux-yocto-3.0] boot-live.cfg: enable BLK_DEV_INITRD in kernel
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
X-List-Received-Date: Tue, 18 Sep 2012 14:46:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2012-09-18 17:23, Tom Zanussi wrote:
> On Tue, 2012-09-18 at 16:58 +0300, Mihai Lindner wrote:
>> On 2012-09-18 16:49, Tom Zanussi wrote:
>>> On Tue, 2012-09-18 at 08:21 -0400, Bruce Ashfield wrote:
>>>> On 12-09-18 01:59 AM, Mihai Lindner wrote:
>>>>> Please pull into linux-yocto-3.0, meta.
>>>>>
>>>>
>>>> Adding linux-yocto, Darren and Tom.
>>>>
>>>> This looks fine to me, and we should consider it for all the repositories,
>>>> not just 3.0.
>>>>
>>>> Tom/Darren. Any side effects you can think of for this change ?
>>>>
>>>
>>> No, but shouldn't it already be there, inherited from base.cfg?
>>
>> For cedartrail, at least, standard.cfg is used.
>>
> 
> And standard inherits from base, so it should be turned on.  Somehow
> it's getting turned off in cedartrail...

Yes, it the final .config file is turned off. Solved it by setting it in boot-live.
--Mihai

> 
> Tom
> 
>> --Mihai
>>
>>>
>>> Tom
>>>
>>>> Bruce
>>>>
>>>>> Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0, meta branch.
>>>>> Cedartrail (at least) cannot boot live from ISO image due to
>>>>> BLK_DEV_INITRD missing:
>>>>> "VFS: Cannot open root device "ram0" or unkown-block(0,0)"
>>>>> Should fix #3050
>>>>>
>>>>> [YOCTO #3050]
>>>>>
>>>>> Signed-off-by: Mihai Lindner<mihaix.lindner@linux.intel.com>
>>>>> ---
>>>>>
>>>>> The following changes since commit bf5ee4945ee6d748e6abe16356f2357f76b5e2f0:
>>>>>
>>>>>    meta: rename virto.scc to virtio.scc (2012-08-18 22:09:35 -0400)
>>>>>
>>>>> are available in the git repository at:
>>>>>    git://git.yoctoproject.org/poky-contrib mihai/linux-yocto-3.0/meta
>>>>>
>>>>> Mihai Lindner (1):
>>>>>        boot-live.cfg: enable BLK_DEV_INITRD in kernel
>>>>>
>>>>>   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>>>>>   1 files changed, 2 insertions(+), 0 deletions(-)
>>>>>
>>>>> Mihai Lindner (1):
>>>>>    boot-live.cfg: enable BLK_DEV_INITRD in kernel
>>>>>
>>>>>   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>>>>>   1 files changed, 2 insertions(+), 0 deletions(-)
>>>>>
>>>>
>>>
>>>
>>>
>>>
>>
>>
> 
> 
> 
> 


-- 
Mihai Lindner
Yocto Project

