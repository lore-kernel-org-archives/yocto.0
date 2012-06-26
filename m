Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2F10E006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 08:35:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5QFZrg2013224
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Jun 2012 08:35:53 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 26 Jun 2012 08:35:53 -0700
Message-ID: <4FE9D6CB.1080800@windriver.com>
Date: Tue, 26 Jun 2012 11:35:39 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Markus Hubig <mhubig@imko.de>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
	<4FE9C097.60400@windriver.com>
	<CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
In-Reply-To: <CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: BSP for taskit stamp9g20
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
X-List-Received-Date: Tue, 26 Jun 2012 15:35:55 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-26 10:56 AM, Markus Hubig wrote:
> Yhea! My first successful build!
>
> Thank you very much!

nice! and no problem at all.

Cheers,

Bruce

>
> On Tue, Jun 26, 2012 at 4:00 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> On 12-06-26 09:49 AM, Markus Hubig wrote:
>>>
>>> On Tue, Jun 26, 2012 at 3:19 PM, Bruce Ashfield
>>> <bruce.ashfield@windriver.com>    wrote:
>>>>
>>>>
>>>> On 12-06-26 07:08 AM, Markus Hubig wrote:
>>>>>
>>>>>
>>>>> AT91SAM9G20 based CPU board). This is when I came across the
>>>>> YoctoProject.
>>>>> Now I'm trying to build a BSP Layer for this Board.
>>>>>
>>>>> There are a lot of documentation out there, but I still miss the whole
>>>>> picture ... :-(
>>>>>
>>>>> This is what I've done so far:
>>>>
>>>>
>>>> This is on master ? Yocto 1.2 ? Some other release ?
>>>
>>>
>>> I'm using Yocto 1.2 at the moment ...
>>>
>>>>> $ yocto-bsp create stamp9g20 arm
>>>>> ->    kernel 3.2 [y]
>>>>> ->    new machine branch [y]
>>>>> ->    machine branch to base this BSP on
>>>>> [standard/default/arm-versatile-926ejs]
>>>>> ->    Do you need SMP support? [n]
>>>>> ->    Which machine tuning would you like to use? [arm926ejs]
>>>>> ->    value for UBOOT_MACHINE [default: omap3_beagle_config]
>>>>> ->    UBOOT_ENTRYPOINT: [default: 0x80008000]
>>>>> ->    UBOOT_LOADADDRESS: [default: 0x80008000]
>>>>> ->    Do you need support for X? [n]
>>>>> ->    Does your BSP have a touchscreen? [default: n]
>>>>> ->    Does your BSP have a keyboard? [n]
>>>>>
>>>>> (U-Boot stuff needs some adjustments but I save this for later ...)
>>>>>
>>>>> Now I have a nice BSP layer for the Stamp9G20. Year! But whats the next
>>>>> step? To get the right kernel configuration for the stamp9g20 I can
>>>>> easily
>>>>> configure the kernel with:
>>>>>
>>>>> $ make ARCH=arm stamp9g20_defconfig
>>>>>
>>>>> Here is what I "think" I have to do next. Please, please correct me if I
>>>>> got it all wrong!
>>>>>
>>>>> # make a bare clone
>>>>> $ git clone --bare git://git.yoctoproject.org/linux-yocto-3.2
>>>>> <http://git.yoctoproject.org/linux-yocto-3.2>    linux-yocto-3.2.git
>>>>>
>>>>> # make a *working clone* of the *bare clone*
>>>>>
>>>>> $ git clone linux-yocto-3.2.git linux-yocto-3.2-work
>>>>>
>>>>> # create a new branch based on arm-versatile-926ejs *inside my working
>>>>> clone*
>>>>>
>>>>> $ git checkout -b yocto/standard/stamp9g20
>>>>> remotes/origin/standard/default/arm-versatile-926ejs
>>>>>
>>>>> # push the new branch back to the *bare clone*. Now I have a branch my
>>>>>
>>>>> bsp-layer is based on?!
>>>>> $ git push origin yocto/standard/stamp9g20:standard/default/stamp9g20
>>>>>
>>>>> # check out the *meta branch* inside the *working clone*
>>>>>
>>>>> $ git checkout -b meta-stamp9g20 remotes/origin/meta
>>>>>
>>>>> # now I just copy the *arm-versatile-926ejs* dir to *stamp9g20* and
>>>>>
>>>>> rename everything ...
>>>>> $ cd meta/cfg/kernel-cache/bsp
>>>>> $ cp -a arm-versatile-926ejs stamp9g20
>>>>> $ cd stamp9g20
>>>>> $ rename 's/arm-versatile-926ejs/stamp9g20/' *
>>>>> $ sed -i 's/arm-versatile-926ejs/stamp9g20/' *
>>>>>
>>>>> Now it get's in to the details. Since I have a working kernel config
>>>>> from "make ARCH=arm stamp9g20_defconfig" I *think*
>>>>> all I have to do is using the resulting .config file and put *parts of
>>>>> it* into stamp9g20.cfg, right? Later more on this, but since
>>>>>
>>>>> I'm more interested in the "big picture" I will leave these files as
>>>>> they are for now.
>>>>>
>>>>> # Add, commit and push the changes to the bare clone
>>>>> $ git add stamp9g20
>>>>> $ git commit -a -s
>>>>> $ git push origin meta-stamp9g20:meta
>>>>>
>>>>> # Now I change
>>>>> meta-stamp9g20/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>>>> # to point to my new branch
>>>>> KBRANCH_stamp9g20 = "standard/default/stamp9g20"
>>>>> YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20 = "standard/default/stamp9g20"
>>>>
>>>>
>>>>
>>>> You don't actually have an external branch, because you made the right
>>>> choice to use git to manage your BSP :P So you don't need this.
>>>
>>>
>>> OK so I just remove the YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20 line?
>>>
>>>>>
>>>>> # Clone poky-extras *into poky* ...
>>>>>
>>>>> $ git clone git://git.yoctoproject.org/poky-extras
>>>>> <http://git.yoctoproject.org/poky-extras>    poky-extras
>>>>>
>>>>>
>>>>> # edit
>>>>>
>>>>> poky-extras/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>>>> KSRC_linux_yocto_3_2 ?= "/home/mhubig/Development/linux-yocto-3.2.git"
>>>>> SRC_URI =
>>>>>
>>>>> "git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>>>>
>>>>
>>>>
>>>> This is all good, I run with this all day every day .. so far so good.
>>>
>>>
>>> OK ...
>>>
>>>>> [INFO]: checkpoint is already restored, nothing to do
>>>>> + [ 0 -ne 0 ]
>>>>> +
>>>>>
>>>>> sccs=/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
>>>>>
>>>>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
>>>>>
>>>>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
>>>>>
>>>>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
>>>>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kern
>>>>> el/linux/files/user-patches.scc
>>>>
>>>>
>>>> Aha. This is the problem, if you've decided to create a local repo,
>>>> and a BSP branch, you don't need these files outside of the tree. But
>>>> I'm betting these were created by the BSP tool .. hence the confusion
>>>> as two methods are being mixed.
>>>
>>>
>>> Aha this is hardly understandable from the Yocto Documentation ...
>>
>>
>> The BSP tool came after the sections that talk about local git trees,
>> so the docs are still debouncing a bit. They do need to make this
>> clear about the approaches, and that you should use one or the other
>> (and why).
>>
>>
>>>
>>>> If you stop using the local repository, and just use the BSP tool that
>>>> should at least clarify the error messages and I can help more after
>>>> that.
>>>
>>>
>>> OK If I got this right, I don't need the poky-extra stuff and no local
>>> kernel repository.
>>> I can just go with the yocto-bsp created meta-stamp9g20 layer? Is this
>>> right? This would
>>> make things much easier ...
>>
>>
>> That's the design. But there may of course still be issues .. there
>> always seem to be :)
>>
>>
>>>
>>> OK to summarize it again, I have two choices
>>>
>>> 1. Use a custom branch on the linux-yocto kernel repo and poky-extra
>>> to point to it
>>> 2. Use the standard linux-yocto kernel and a own meta-bsp layer.
>>>
>>> And if I go with methode 2 I just my kernel config into
>>> "meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg"?
>>
>>
>> Yes. And in method 1, you'd just put that config into the meta branch
>> where you created your BSP files based on the existing BSP.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>>
>>> Thank you, very much! ;-)
>>
>>
>
>
>


