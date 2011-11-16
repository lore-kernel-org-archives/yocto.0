Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F8B5E006F5
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 07:45:25 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2011 07:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="76210923"
Received: from unknown (HELO envy.home) ([10.255.15.228])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2011 07:45:24 -0800
Message-ID: <4EC3DA94.2030101@linux.intel.com>
Date: Wed, 16 Nov 2011 07:45:24 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4EC2C94E.6000202@linux.intel.com> <4EC34BE4.5030508@windriver.com>
In-Reply-To: <4EC34BE4.5030508@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH][linux-yocto] mount_root: clarify error messages for when no rootfs found (V2)
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
X-List-Received-Date: Wed, 16 Nov 2011 15:45:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 11/15/2011 09:36 PM, Bruce Ashfield wrote:
> On 11-11-15 3:19 PM, Darren Hart wrote:
>> The following is a modified version the patch at:
> 
> Works for me as well, I'll update the variant in the yocto kernel
> trees, while we wait to see if anyone upstream has any interest.

I we can't get it upstream, I'd argue we drop this. As Paul said, it is
cosmetic. When people see this error, the only place they'll find help
is here on the yocto list. They should be able to debug the kernel with
all the Linux Kernel resources out there. Having custom kernel messages
for Yocto prevents that.

--
Darren

> 
> Bruce
> 
>>
>> meta/cfg/kernel-cache/patches/boot/mount_root-clarify-error-messages-for-when-no-rootfs.patch
>>
>> in the linux-yocto-3.0 git repository. This version adds KERN_EMERG
>> so that even using loglevel=1 at boot, the end user will see:
>>
>> [    0.217462] VFS: Unable to mount root fs on unknown-block(8,2)
>> [    0.223457] User configuration error - no valid root filesystem found
>> [    0.230057] Kernel panic - not syncing: Invalid configuration from end user preg
>> [    0.238992] Pid: 1, comm: swapper Not tainted 3.0.4-yocto-standard+ #2
>> [    0.245691] Call Trace:
>> [    0.248218]  [<c04eddbc>] ? 0xc04eddbc
>> [    0.252071]  [<c05549ad>] ? 0xc05549ad
>> [    0.255928]  [<c05549fa>] ? 0xc05549fa
>> [    0.259790]  [<c0554623>] ? 0xc0554623
>> [    0.263650]  [<c0554b1c>] ? 0xc0554b1c
>> [    0.267497]  [<c055472a>] ? 0xc055472a
>> [    0.271344]  [<c04f0df6>] ? 0xc04f0df6
>>
>> Instead of just:
>>
>> [    0.230057] Kernel panic - not syncing: Invalid configuration from end user preg
>> ...
>>
>> Which is arguably no better than what this patch originally attempted to address.
>>
>> Paul, has this patch been sent upstream for inclusion? I don't see it in Linus' tree.
>>
>> Thanks,
>>
>> Darren
>>
>> ----------------------
>>
>> To an end user who doesn't really know linux that well, a
>> message like:
>>
>>    Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,0)
>>
>> may just look like cryptic computer speak indicating some
>> deep and complex problem, instead of the reality that they
>> have a simple local configuration problem.  Ideally it would
>> be nice to not use the misleading "panic" at all, but since
>> various panic notifiers are historically expecting to be
>> called when there is no valid rootfs, we can't change that.
>>
>> So instead, this tries to make it 100% clear to folks of
>> any background that it is an end user configuration issue.
>>
>> V2: Use KERN_EMERG so the printk context isn't lost when using loglevel
>>
>> Signed-off-by: Paul Gortmaker<paul.gortmaker@windriver.com>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   init/do_mounts.c |    8 ++++++--
>>   1 files changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/init/do_mounts.c b/init/do_mounts.c
>> index bb008d0..d24b8c7 100644
>> --- a/init/do_mounts.c
>> +++ b/init/do_mounts.c
>> @@ -270,7 +270,9 @@ retry:
>>   		printk("DEBUG_BLOCK_EXT_DEVT is enabled, you need to specify "
>>   		       "explicit textual name for \"root=\" boot option.\n");
>>   #endif
>> -		panic("VFS: Unable to mount root fs on %s", b);
>> +		printk(KERN_EMERG "VFS: Unable to mount root fs on %s\n", b);
>> +		printk(KERN_EMERG "User configuration error - no valid root filesystem found\n");
>> +		panic("Invalid configuration from end user prevents continuing");
>>   	}
>>
>>   	printk("List of all partitions:\n");
>> @@ -282,7 +284,9 @@ retry:
>>   #ifdef CONFIG_BLOCK
>>   	__bdevname(ROOT_DEV, b);
>>   #endif
>> -	panic("VFS: Unable to mount root fs on %s", b);
>> +	printk(KERN_EMERG "VFS: Unable to mount root fs on %s\n", b);
>> +	printk(KERN_EMERG "User configuration error - no valid root filesystem found\n");
>> +	panic("Invalid configuration from end user prevents continuing");
>>   out:
>>   	putname(fs_names);
>>   }
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

