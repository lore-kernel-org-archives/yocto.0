Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CB00E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 16:48:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7GNmPXS012402
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Aug 2012 16:48:25 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.63) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Thu, 16 Aug 2012 16:48:25 -0700
Message-ID: <502D86C8.3090805@windriver.com>
Date: Thu, 16 Aug 2012 19:48:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <073A7998-3D05-4835-AA03-113960D00553@keylevel.com>
	<502C0312.2080905@windriver.com>
	<EDAB51DE-EE48-4C30-AD1B-20E7C6B01EF6@keylevel.com>
In-Reply-To: <EDAB51DE-EE48-4C30-AD1B-20E7C6B01EF6@keylevel.com>
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: yocto-bsp create
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
X-List-Received-Date: Thu, 16 Aug 2012 23:48:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-16 4:26 PM, Chris Tapp wrote:
> On 15 Aug 2012, at 21:14, Bruce Ashfield wrote:
>
>> On 12-08-15 04:06 PM, Chris Tapp wrote:
>>> I've been looking at using yocto-bsp to create a BSP. Good job! Looks like it's going to be much easier to do it this way :-)
>>
>> You really want TomZ to answer, but I'll throw in a few comments
>> here, since I'm currently reviewing a batch of code from Tom.
>>
>>>
>>> I've got a few questions/comments:
>>>
>>> 1) The documentation (7.0.1) says that the machine branch defaults to standard/default, but that is not an option that gets presented when I created a BSP. Should that be standard/base, standard/default/base, or something else? Master shows this as standard/default/common-pc, but that still isn't one of the listed options (standard/default/common-pc/base ?).
>>
>> For the 3.2 tree, it is standard/default/base, which is a name that we
>> quickly determined was not optimal, and in the 3.4 kernel tree it is standard/base.
>> So the answer is, it depends on the kernel you are using, but the tools
>> know and have the right defaults.
>>
>>>
>>> 2) What are these machine branches anyway? As in, how do I decide which one I should choose? For an ALIX 3D3 system I used standard/default/common-pc/base. Is that reasonable?
>>
>> They are collections of functionality and configuration. So if you are
>> working on a new machine that is close to something that is already
>> in tree, you'd start from the existing machine branch. If you want to
>> do something new, standard/base, if you want the preempt-rt kernel,
>> standard/preempt-rt/base, etc.
>>
>>>
>>> 3) I selected core2 as the tune option and then had to change this in the created meta-data as I needed i586 tuning and this was not given as a tune option. Should all available tunes be offered?
>>>
>>> 4) Is there any way to select the kernel CPU (I got MATOM but needed MGEODE_LX - easily changed in the<mybsp>.cfg file)?
>>
>> AFAIK, no. Since that would imply that all the kernel tunings were parsed
>> and made available. Adding it to your .cfg is the right thing. If
>> there is a BSP that already falls into your class, and you inherit
>> it, you'd get the right tuning by default.
>>
>>>
>>> 5) The created BSP refers to various feature/x/y.scc files. Are these documented somewhere so that they can be easily re-used, or am I better off simply producing a complete defconfig? A pointer to the documentation for the whole kernel meta data structure would also be helpful.
>>
>> Tom and I were working on a way to dump these, I'm not sure if that
>> ever completed. The meta branch of the kernel repo has all the details,
>> with short descriptions in the .scc files.
>>
>> As with anything, documenting a moving source code target is hard, so
>> I suggest looking at the branch.
>>
>> Have a look at the 3.4 kernel tree, meta branch, there's a README with
>> details about the categories, and contents.
>
>
> Thanks, that's got me going in the right direction.
>
> However, I've just recreated the BSP (to use standard/default/base) and I'm now getting an error when I build the kernel:
>
> ERROR: Function failed: do_patch (see... /log.do_patch.31458 for further information)
> ERROR: Logfile of failure stored in: ... /log.do_patch.31458
> Log data follows:
> | ERROR: Function failed: do_patch (see ... /log.do_patch.31458 for further information)
> | checkpoint is already restored, nothing to do
> | error: 'refs/heads/standard/default/base' exists; cannot create 'refs/heads/standard/default/base/LX800'
> | fatal: Failed to lock ref for update: Not a directory
> | warning: could not find (or was already included): features/dmaengine/dmaengine.scc
> | warning: could not find (or was already included): features/framebuffer/vesafb.scc
> | warning: could not find (or was already included): features/intel-e1xxxx/intel-e100.scc
> | warning: could not find (or was already included): features/intel-e1xxxx/intel-e1xxxx.scc
> | warning: could not find (or was already included): features/dmaengine/dmaengine.scc
> | warning: could not find (or was already included): features/serial/8250.scc
> | warning: could not find (or was already included): features/hpet/hpet.scc
> | warning: could not find (or was already included): features/ericsson-3g/f5521gw.scc
> | warning: could not find (or was already included): features/framebuffer/vesafb.scc
> | warning: could not find (or was already included): cfg/usb-mass-storage.scc
> | warning: could not find (or was already included): cfg/boot-live.scc
> | warning: could not find (or was already included): features/power/intel.scc
> | warning: could not find (or was already included): features/logbuf/size-normal.scc
> | warning: could not find (or was already included): features/latencytop/latencytop.scc
> | warning: could not find (or was already included): features/profiling/profiling.scc
> | warning: could not find (or was already included): user-patches.scc
> | ./2-LX800-9dbd5e3915bb4ed4d3809d315087c405.sco: line 21: dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
> | ./2-LX800-9dbd5e3915bb4ed4d3809d315087c405.sco: line 33: vesafb_68b329da9893e34099c7d8ad5cb9c940: command not found
> | ./2-LX800-9dbd5e3915bb4ed4d3809d315087c405.sco: line 21: dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
> | ./2-LX800-9dbd5e3915bb4ed4d3809d315087c405.sco: line 33: vesafb_68b329da9893e34099c7d8ad5cb9c940: command not found
> | [INFO] validating against known patches  (LX800-base-meta)
> | error: Your local changes to the following files would be overwritten by checkout:
> | 	Makefile
> | 	drivers/tty/serial/pch_uart.c
> | 	drivers/usb/host/pci-quirks.c
> | 	fs/namei.c
> | 	fs/nfs/super.c
> | 	fs/splice.c
> | 	include/linux/nfs_xdr.h
> | 	kernel/time/ntp.c
> | 	net/ipv4/arp.c
> | 	scripts/mod/modpost.c
> | Please, commit your changes or stash them before you can switch branches.
> | Aborting
> | ERROR: could not checkout branch base
> | ERROR. could not update git tree
> | ERROR. Could not modify standard/default/base/LX800
> NOTE: package linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1.1: task do_patch: Failed
>
> I'm guessing this is related to using the same BSP name when I recreated it? What do I need to do to get back to something that builds (which it did before)?

ech. That means that the tree was somehow dirty and branches couldn't
be switched/checked out.

If you have a copy of your BSP layer, I can try a build here and shed
some light on what exactly went wrong.

Bruce


>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>


