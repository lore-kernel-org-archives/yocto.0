Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC896E006BA
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 13:01:58 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Nov 2011 13:01:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,517,1315206000"; d="scan'208";a="90963075"
Received: from unknown (HELO envy.home) ([10.255.12.20])
	by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2011 13:01:40 -0800
Message-ID: <4EC2D334.50105@linux.intel.com>
Date: Tue, 15 Nov 2011 13:01:40 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Paul Gortmaker <paul.gortmaker@windriver.com>
References: <4EC2C94E.6000202@linux.intel.com> <4EC2D1E1.60204@windriver.com>
In-Reply-To: <4EC2D1E1.60204@windriver.com>
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
X-List-Received-Date: Tue, 15 Nov 2011 21:01:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 11/15/2011 12:56 PM, Paul Gortmaker wrote:
> On 11-11-15 03:19 PM, Darren Hart wrote:
>> The following is a modified version the patch at:
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
> 
> No, I never sent it upstream.  It seemed like such a trivial and
> cosmetic change.  If you want to put the V2 comment below the ---
> and send it upstream, feel free to do so.
> 

OK. We really shouldn't be holding on to patches like these. If they are
good for us, they should be good for upstream. If they are not good for
upstream, then we don't want to differ in such a way that causes
confusion for people trying to debug.

For example, I saw the latter message, thought it was due to the new
bootloader I was trying, and the bootloader author couldn't find that
string in the upstream kernel sources he develops with.

--
Darren

> P.
> 
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
>>   Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,0)
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
>> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
>> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>> ---
>>  init/do_mounts.c |    8 ++++++--
>>  1 files changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/init/do_mounts.c b/init/do_mounts.c
>> index bb008d0..d24b8c7 100644
>> --- a/init/do_mounts.c
>> +++ b/init/do_mounts.c
>> @@ -270,7 +270,9 @@ retry:
>>  		printk("DEBUG_BLOCK_EXT_DEVT is enabled, you need to specify "
>>  		       "explicit textual name for \"root=\" boot option.\n");
>>  #endif
>> -		panic("VFS: Unable to mount root fs on %s", b);
>> +		printk(KERN_EMERG "VFS: Unable to mount root fs on %s\n", b);
>> +		printk(KERN_EMERG "User configuration error - no valid root filesystem found\n");
>> +		panic("Invalid configuration from end user prevents continuing");
>>  	}
>>  
>>  	printk("List of all partitions:\n");
>> @@ -282,7 +284,9 @@ retry:
>>  #ifdef CONFIG_BLOCK
>>  	__bdevname(ROOT_DEV, b);
>>  #endif
>> -	panic("VFS: Unable to mount root fs on %s", b);
>> +	printk(KERN_EMERG "VFS: Unable to mount root fs on %s\n", b);
>> +	printk(KERN_EMERG "User configuration error - no valid root filesystem found\n");
>> +	panic("Invalid configuration from end user prevents continuing");
>>  out:
>>  	putname(fs_names);
>>  }

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

