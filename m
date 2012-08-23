Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4DCCE002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 09:26:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7NGQaVl020072
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 23 Aug 2012 09:26:36 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 23 Aug 2012 09:26:36 -0700
Message-ID: <503659B6.6090207@windriver.com>
Date: Thu, 23 Aug 2012 12:26:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>, Markus Hubig <mhubig@imko.de>
References: <20120823151259.f1550eb3-e33f-4100-93dc-f39eab90e4b1.mhubig@imko.de>
	<503630A3.90606@windriver.com>
	<20120823163126.ddbd0076-38df-4053-a9ae-7fa318879d54.mhubig@imko.de>
In-Reply-To: <20120823163126.ddbd0076-38df-4053-a9ae-7fa318879d54.mhubig@imko.de>
Subject: Re: 1.3_M3 do_kernel_config failes, config_frag.txt is crippled.
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
X-List-Received-Date: Thu, 23 Aug 2012 16:26:37 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-08-23 12:18 PM, Markus Hubig wrote:
> On Thu, Aug 23, 2012 at 09:31:15AM -0400, Bruce Ashfield wrote:
>> On 12-08-23 09:24 AM, Markus Hubig wrote:
>
> <snipp>
>
>>> And again a bit deeper I found that the file
>>>
>>> | ./meta/cfg/standard/portuxg20/config_frag.txt
>>>
>>> is somewhat crippled:
>>>
>>> | ...
>>> | /kernel-cache/ktypes/standard/standard.cfg
>>> | /kernel-cache/cfg/devtmpfs.cfg
>>> | /kernel-cache/cfg/debugfs.cfg
>>> | portuxg20
>>>    ^^^^^^^^^
>
> That was a typo. Fixed!
>
>>> | hardware.cfg
>>> | non-hardware.cfg
>
> These files were living in "meta-stamp9g20/recipes-kernel/files"
>
>>> | /kernel-cache/features/usb-net/usb-net.cfg
>
>>> | portuxg20
>>> | hardware.cfg
>>> | non-hardware.cfg
>>> | /kernel-cache/features/usb-net/usb-net.cfg
>
> Here we have the same thing a second time.
>
>>> | /hardware.cfg
>>> | /non-hardware.cfg
>>> | /portuxg20/portuxg20.cfg
>
> And a third time, but with a correct path.
>
> After changing my BSP-Kernel layout from:
>
> | ▾ recipes-kernel/
> |   ▾ linux/
> |     ▾ files/
> |         hardware.cfg
> |         non-hardware.cfg
> |       ▾ portuxg20/
> |           portuxg20-preempt-rt.scc
> |           portuxg20-standard.scc
> |           portuxg20.cfg
> |           portuxg20.scc
> |       ▾ stamp9g20/
> |           stamp9g20-preempt-rt.scc
> |           stamp9g20-standard.scc
> |           stamp9g20.cfg
> |           stamp9g20.scc
>
> To this:
>
> | ▾ recipes-kernel/
> |   ▾ linux/
> |     ▾ files/
> |       ▾ portuxg20/
> |           hardware.cfg
> |           non-hardware.cfg
> |           portuxg20-preempt-rt.scc
> |           portuxg20-standard.scc
> |           portuxg20.cfg
> |           portuxg20.scc
> |       ▾ stamp9g20/
> |           hardware.cfg
> |           non-hardware.cfg
> |           stamp9g20-preempt-rt.scc
> |           stamp9g20-standard.scc
> |           stamp9g20.cfg
> |           stamp9g20.scc
>
> and using
>
> | SRC_URI_append_portuxg20 = "\
> |         file://portuxg20-standard.scc   \
> |         file://portuxg20-preempt-rt.scc \
> |         file://portuxg20.scc            \
> |         file://portuxg20.cfg            \
> |         file://hardware.cfg             \
> |         file://non-hardware.cfg         \
> |         "
> |
> | SRC_URI_append_stamp9g20 = "
> |         file://stamp9g20-standard.scc   \
> |         file://stamp9g20-preempt-rt.scc \
> |         file://stamp9g20.scc            \
> |         file://stamp9g20.cfg            \
> |         file://hardware.cfg             \
> |         file://non-hardware.cfg         \
> |         "
>
> instead of this:
>
> | SRC_URI += "\
> |         file://hardware.cfg             \
> |         file://non-hardware.cfg         \
> |         "
> |
> | SRC_URI_append_portuxg20 = "\
> |         file://portuxg20-standard.scc   \
> |         file://portuxg20-preempt-rt.scc \
> |         file://portuxg20.scc            \
> |         file://portuxg20.cfg            \
> |         "
> |
> | SRC_URI_append_stamp9g20 = "
> |         file://stamp9g20-standard.scc   \
> |         file://stamp9g20-preempt-rt.scc \
> |         file://stamp9g20.scc            \
> |         file://stamp9g20.cfg            \
> |         "
>
> I get this config_frag.txt but at the cost of duplicating the
> hardware.cfg and non-hardware.cfg files.
>
> | /kernel-cache/ktypes/base/base.cfg
> | /kernel-cache/features/kgdb/kgdb.cfg
> | /kernel-cache/features/lttng/lttng.cfg
> | /kernel-cache/features/blktrace/blktrace.cfg
> | /kernel-cache/features/systemtap/systemtap.cfg
> | /kernel-cache/features/utrace/utrace.cfg
> | /kernel-cache/arch/arm/arm.cfg
> | /kernel-cache/features/hrt/hrt.cfg
> | /kernel-cache/features/ftrace/ftrace.cfg
> | /kernel-cache/features/unionfs/unionfs.cfg
> | /kernel-cache/features/cgroups/cgroups.cfg
> | /kernel-cache/features/namespaces/namespaces.cfg
> | /kernel-cache/features/namespaces/namespaces-experimental.cfg
> | /kernel-cache/features/fuse/fuse.cfg
> | /kernel-cache/ktypes/standard/standard.cfg
> | /kernel-cache/cfg/devtmpfs.cfg
> | /kernel-cache/cfg/debugfs.cfg
> | /portuxg20/portuxg20.cfg
> | /portuxg20/hardware.cfg
> | /portuxg20/non-hardware.cfg
> | /kernel-cache/features/usb-net/usb-net.cfg
> | /portuxg20/portuxg20.cfg
> | /portuxg20/hardware.cfg
> | /portuxg20/non-hardware.cfg
> | /kernel-cache/features/usb-net/usb-net.cfg
> | /kernel-cache/features/netfilter/netfilter.cfg
> | /kernel-cache/features/taskstats/taskstats.cfg
>
> Whitch looks way better! And now I get this config check again:
>
> | This BSP sets 2 invalid/obsolete kernel options.
> | These config options are not offered anywhere within this kernel.
> | The full list can be found in your kernel src dir at:
> | meta/cfg/standard/portuxg20/invalid.cfg
> |
> | This BSP sets 11 kernel options that are possibly non-hardware related.
> | The full list can be found in your kernel src dir at:
> | meta/cfg/standard/portuxg20/specified_non_hdw.cfg
> |
> | WARNING: There were 1 hardware options requested that do not
> |          have a corresponding value present in the final ".config" file.
> |          This probably means you aren't getting the config you wanted.
> | The full list can be found in your kernel src dir at:
> | meta/cfg/standard/portuxg20/mismatch.cfg
> |
> | Waiting a second to make sure you get a chance to see this...
>
> Surprisingly if I remove the *.cfg files from the SRC_URI
>
> | SRC_URI_append_portuxg20 = "\
> |         file://portuxg20-standard.scc   \
> |         file://portuxg20-preempt-rt.scc \
> |         file://portuxg20.scc            \
> |         "
> |
> | SRC_URI_append_stamp9g20 = "
> |         file://stamp9g20-standard.scc   \
> |         file://stamp9g20-preempt-rt.scc \
> |         file://stamp9g20.scc            \
>
> it also works ...

Yes, and I can explain this part. When a .scc file is detected, the
entire directory contents are propagated to the kernel build, since
.scc files can refer to patches, configs, etc, and some elements are
optional, they are all made available.

So if you reference .cfgs and patches in your .scc files, you don't
need them in the SRC_URI, just the .scc file.

>
> Some more tests showed that if I make a flat layout like
> this:
>
> | ▾ recipes-kernel/
> |   ▾ linux/
> |     ▾ files/
> |         hardware.cfg
> |         non-hardware.cfg
> |         portuxg20-preempt-rt.scc
> |         portuxg20-standard.scc
> |         portuxg20.cfg
> |         portuxg20.scc
> |         stamp9g20-preempt-rt.scc
> |         stamp9g20-standard.scc
> |         stamp9g20.cfg
> |         stamp9g20.scc
>
> and change my linux-yocto_3.2.bbappend file so it just includes
> the *.scc files
>
> | FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> |
> | PR := "${PR}.1"
> |
> | KEEPUIMAGE = "no"
> |
> | COMPATIBLE_MACHINE_stamp9g20 = "stamp9g20"
> | KBRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs"
> | KMACHINE_stamp9g20  = "stamp9g20"
> |
> | COMPATIBLE_MACHINE_portuxg20 = "portuxg20"
> | KBRANCH_portuxg20  = "standard/default/arm-versatile-926ejs"
> | KMACHINE_portuxg20  = "portuxg20"
> |
> | SRC_URI_append_portuxg20 = "\
> |         file://portuxg20-standard.scc   \
> |         file://portuxg20-preempt-rt.scc \
> |         file://portuxg20.scc            \
> |         "
> |
> | SRC_URI_append_stamp9g20 = "\
> |         file://stamp9g20-standard.scc   \
> |         file://stamp9g20-preempt-rt.scc \
> |         file://stamp9g20.scc            \
> |         "
>
> everything works. But it's a bit confusing!

See above. Sounds like we need to clarify/make this explicit in the
docs.

>
> To summarize my expirience a bit:
>
> All files in "FILESEXTRAPATHS_prepend" get copied to "meta/cfg/files",
> but only the *.scc files I include into "SRC_URI" will be used to make
> the kernel config file.

Correct, although if you put a .cfg on the SRC_URI and no associated
.scc file references one, the build will automatically generate a .scc
file and ensure that the fragment is added.

>
>> Were you using yocto-bsp to create the BSP framework?
>
> Yes but later I changed everything ...
>
>> I did some test builds of the layer you previously sent me, and I didn't
>> reproduce the problem, but this is the same thing that you had seen last
>> week.
>
> Strange ...

Definitely. But I'm also getting some other strange errors with guarded
files, etc, and am running some slightly newer tools, so you never know.

>
>> Do you have an updated layer that I can try against master ?
>
> Yes in some hours, i'll send you a ping if I included my new changes.

No rush, I just wanted to make sure, so I can stop flailing against
the older one I have :)

Cheers,

Bruce

>
> Cheers, Markus
>


