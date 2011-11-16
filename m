Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D51BE006F5
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 07:51:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAGFpnTw012186
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 Nov 2011 07:51:49 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 Nov 2011 07:51:49 -0800
Message-ID: <4EC3DC0E.2080304@windriver.com>
Date: Wed, 16 Nov 2011 10:51:42 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4EC2C94E.6000202@linux.intel.com> <4EC34BE4.5030508@windriver.com>
	<4EC3DA94.2030101@linux.intel.com>
In-Reply-To: <4EC3DA94.2030101@linux.intel.com>
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
X-List-Received-Date: Wed, 16 Nov 2011 15:51:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-11-16 10:45 AM, Darren Hart wrote:
>
>
> On 11/15/2011 09:36 PM, Bruce Ashfield wrote:
>> On 11-11-15 3:19 PM, Darren Hart wrote:
>>> The following is a modified version the patch at:
>>
>> Works for me as well, I'll update the variant in the yocto kernel
>> trees, while we wait to see if anyone upstream has any interest.
>
> I we can't get it upstream, I'd argue we drop this. As Paul said, it is
> cosmetic. When people see this error, the only place they'll find help

I have no plans to drop this. It's a value add, and simply
because not everyone wants it, doesn't mean we let it go.

We can carry it and try again if it doesn't make it upstream.

> is here on the yocto list. They should be able to debug the kernel with
> all the Linux Kernel resources out there. Having custom kernel messages
> for Yocto prevents that.

I disagree.

Bruce

>
> --
> Darren
>
>>
>> Bruce
>>
>>>
>>> meta/cfg/kernel-cache/patches/boot/mount_root-clarify-error-messages-for-when-no-rootfs.patch
>>>
>>> in the linux-yocto-3.0 git repository. This version adds KERN_EMERG
>>> so that even using loglevel=1 at boot, the end user will see:
>>>
>>> [    0.217462] VFS: Unable to mount root fs on unknown-block(8,2)
>>> [    0.223457] User configuration error - no valid root filesystem found
>>> [    0.230057] Kernel panic - not syncing: Invalid configuration from end user preg
>>> [    0.238992] Pid: 1, comm: swapper Not tainted 3.0.4-yocto-standard+ #2
>>> [    0.245691] Call Trace:
>>> [    0.248218]  [<c04eddbc>] ? 0xc04eddbc
>>> [    0.252071]  [<c05549ad>] ? 0xc05549ad
>>> [    0.255928]  [<c05549fa>] ? 0xc05549fa
>>> [    0.259790]  [<c0554623>] ? 0xc0554623
>>> [    0.263650]  [<c0554b1c>] ? 0xc0554b1c
>>> [    0.267497]  [<c055472a>] ? 0xc055472a
>>> [    0.271344]  [<c04f0df6>] ? 0xc04f0df6
>>>
>>> Instead of just:
>>>
>>> [    0.230057] Kernel panic - not syncing: Invalid configuration from end user preg
>>> ...
>>>
>>> Which is arguably no better than what this patch originally attempted to address.
>>>
>>> Paul, has this patch been sent upstream for inclusion? I don't see it in Linus' tree.
>>>
>>> Thanks,
>>>
>>> Darren
>>>
>>> ----------------------
>>>
>>> To an end user who doesn't really know linux that well, a
>>> message like:
>>>
>>>     Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,0)
>>>
>>> may just look like cryptic computer speak indicating some
>>> deep and complex problem, instead of the reality that they
>>> have a simple local configuration problem.  Ideally it would
>>> be nice to not use the misleading "panic" at all, but since
>>> various panic notifiers are historically expecting to be
>>> called when there is no valid rootfs, we can't change that.
>>>
>>> So instead, this tries to make it 100% clear to folks of
>>> any background that it is an end user configuration issue.
>>>
>>> V2: Use KERN_EMERG so the printk context isn't lost when using loglevel
>>>
>>> Signed-off-by: Paul Gortmaker<paul.gortmaker@windriver.com>
>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>> ---
>>>    init/do_mounts.c |    8 ++++++--
>>>    1 files changed, 6 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/init/do_mounts.c b/init/do_mounts.c
>>> index bb008d0..d24b8c7 100644
>>> --- a/init/do_mounts.c
>>> +++ b/init/do_mounts.c
>>> @@ -270,7 +270,9 @@ retry:
>>>    		printk("DEBUG_BLOCK_EXT_DEVT is enabled, you need to specify "
>>>    		       "explicit textual name for \"root=\" boot option.\n");
>>>    #endif
>>> -		panic("VFS: Unable to mount root fs on %s", b);
>>> +		printk(KERN_EMERG "VFS: Unable to mount root fs on %s\n", b);
>>> +		printk(KERN_EMERG "User configuration error - no valid root filesystem found\n");
>>> +		panic("Invalid configuration from end user prevents continuing");
>>>    	}
>>>
>>>    	printk("List of all partitions:\n");
>>> @@ -282,7 +284,9 @@ retry:
>>>    #ifdef CONFIG_BLOCK
>>>    	__bdevname(ROOT_DEV, b);
>>>    #endif
>>> -	panic("VFS: Unable to mount root fs on %s", b);
>>> +	printk(KERN_EMERG "VFS: Unable to mount root fs on %s\n", b);
>>> +	printk(KERN_EMERG "User configuration error - no valid root filesystem found\n");
>>> +	panic("Invalid configuration from end user prevents continuing");
>>>    out:
>>>    	putname(fs_names);
>>>    }
>>
>


