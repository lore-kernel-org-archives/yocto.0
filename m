Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 648A5E013DB;
	Wed, 19 Sep 2012 12:02:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q8JJ201Q029930
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Sep 2012 12:02:00 -0700 (PDT)
Received: from [147.11.4.123] (147.11.4.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Wed, 19 Sep 2012 12:02:00 -0700
Message-ID: <505A1690.60007@windriver.com>
Date: Wed, 19 Sep 2012 15:01:36 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
References: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
	<5058675D.9020707@windriver.com>
	<1347976148.6185.49.camel@empanada>
	<50587DEA.6030508@linux.intel.com>
	<1347978192.6185.51.camel@empanada>
	<5058892F.3020704@linux.intel.com> <5059E83A.9040306@windriver.com>
	<5059EB19.9070600@linux.intel.com>
In-Reply-To: <5059EB19.9070600@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>, yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 19 Sep 2012 19:02:02 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-09-19 11:56 AM, Mihai Lindner wrote:
> On 2012-09-19 18:43, Bruce Ashfield wrote:
>> On 12-09-18 10:46 AM, Mihai Lindner wrote:
>>> On 2012-09-18 17:23, Tom Zanussi wrote:
>>>> On Tue, 2012-09-18 at 16:58 +0300, Mihai Lindner wrote:
>>>>> On 2012-09-18 16:49, Tom Zanussi wrote:
>>>>>> On Tue, 2012-09-18 at 08:21 -0400, Bruce Ashfield wrote:
>>>>>>> On 12-09-18 01:59 AM, Mihai Lindner wrote:
>>>>>>>> Please pull into linux-yocto-3.0, meta.
>>>>>>>>
>>>>>>>
>>>>>>> Adding linux-yocto, Darren and Tom.
>>>>>>>
>>>>>>> This looks fine to me, and we should consider it for all the repositories,
>>>>>>> not just 3.0.
>>>>>>>
>>>>>>> Tom/Darren. Any side effects you can think of for this change ?
>>>>>>>
>>>>>>
>>>>>> No, but shouldn't it already be there, inherited from base.cfg?
>>>>>
>>>>> For cedartrail, at least, standard.cfg is used.
>>>>>
>>>>
>>>> And standard inherits from base, so it should be turned on.  Somehow
>>>> it's getting turned off in cedartrail...
>>>
>>> Yes, it the final .config file is turned off. Solved it by setting it in boot-live.
>>> --Mihai
>>
>> To follow up on this, is someone taking a closer look at this config
>> to see if we can get a root cause for that option being disabled for
>> this board ?
>>
>> I won't be able to poke at it myself for another day or so.
>>
>> Bruce
>>
> I'm still digging on this, trying to figure out what cfg files are included / omitted by `configme` and why.
> base.cfg is not included, nor stanadrd.cfg it seems.
> The list of included cfg files is way to short.

That likely means the BSP .scc file is missing and update (i.e. does
it still have scc_leaf?) and the tools aren't finding it and 
auto-generating something to get you up and running.

I just checked the meta branch here, and it looks to be updated, but
if you look at your build's linux source dir, what's in meta/top_tgt ?

Bruce


>
> --Mihai
>>>
>>>>
>>>> Tom
>>>>
>>>>> --Mihai
>>>>>
>>>>>>
>>>>>> Tom
>>>>>>
>>>>>>> Bruce
>>>>>>>
>>>>>>>> Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0, meta branch.
>>>>>>>> Cedartrail (at least) cannot boot live from ISO image due to
>>>>>>>> BLK_DEV_INITRD missing:
>>>>>>>> "VFS: Cannot open root device "ram0" or unkown-block(0,0)"
>>>>>>>> Should fix #3050
>>>>>>>>
>>>>>>>> [YOCTO #3050]
>>>>>>>>
>>>>>>>> Signed-off-by: Mihai Lindner<mihaix.lindner@linux.intel.com>
>>>>>>>> ---
>>>>>>>>
>>>>>>>> The following changes since commit bf5ee4945ee6d748e6abe16356f2357f76b5e2f0:
>>>>>>>>
>>>>>>>>      meta: rename virto.scc to virtio.scc (2012-08-18 22:09:35 -0400)
>>>>>>>>
>>>>>>>> are available in the git repository at:
>>>>>>>>      git://git.yoctoproject.org/poky-contrib mihai/linux-yocto-3.0/meta
>>>>>>>>
>>>>>>>> Mihai Lindner (1):
>>>>>>>>          boot-live.cfg: enable BLK_DEV_INITRD in kernel
>>>>>>>>
>>>>>>>>     meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>>>>>>>>     1 files changed, 2 insertions(+), 0 deletions(-)
>>>>>>>>
>>>>>>>> Mihai Lindner (1):
>>>>>>>>      boot-live.cfg: enable BLK_DEV_INITRD in kernel
>>>>>>>>
>>>>>>>>     meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>>>>>>>>     1 files changed, 2 insertions(+), 0 deletions(-)
>>>>>>>>
>>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>>
>>>>
>>>>
>>>>
>>>>
>>>
>>>
>>
>>
>>
>
>


