Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D01CE0045D
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 17:28:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r031SnTm013033
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 2 Jan 2013 17:28:49 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.18.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Wed, 2 Jan 2013 17:28:48 -0800
Message-ID: <50E4DECE.2030306@windriver.com>
Date: Wed, 2 Jan 2013 20:28:46 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Brian Smucker <bds@bsmucker.eu.org>
References: <50E4A287.3050607@bsmucker.eu.org> <50E4A2D0.8020205@windriver.com>
	<50E4AB07.9090208@bsmucker.eu.org>
	<CADkTA4OqaB2J9QHbKrp0Prq0MMM=CtKO4ZsYhbXUWi6t3Aa8rg@mail.gmail.com>
	<50E4B814.6060003@bsmucker.eu.org>
In-Reply-To: <50E4B814.6060003@bsmucker.eu.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Magic kernel config option.
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
X-List-Received-Date: Thu, 03 Jan 2013 01:28:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-01-02 5:43 PM, Brian Smucker wrote:
> I take everything back. The entry in the defconfig did the trick. My
> problem was that the recipe was grabbing its defconfig from the wrong
> directory, costing me much confusion.
>
> So sorry for the false alarm. Thanks again for your help. When you said
> the defconfig was a straight copy, the light finally dawned that there
> was something else going on.

Aha! That is good news. Thanks for following up.

>
> The silver lining to all this thrashing around for me was the fact that
> I do understand the kernel bitbake process much better.

:) Always a good thing.

Bruce

>
> Brian
>
> On 1/2/2013 2:15 PM, Bruce Ashfield wrote:
>>
>>
>>
>> On Wed, Jan 2, 2013 at 4:47 PM, Brian Smucker <bds@bsmucker.eu.org
>> <mailto:bds@bsmucker.eu.org>> wrote:
>>
>>     On 1/2/2013 1:12 PM, Bruce Ashfield wrote:
>>
>>         On 13-01-02 04:11 PM, Brian Smucker wrote:
>>
>>             On 1/2/2013 10:06 AM, Bruce Ashfield wrote:
>>             > On 12-12-24 02:59 PM, Brian Smucker wrote:
>>             >> Hi,
>>             >>
>>             >
>>             > Catching up on email from the holidays. Did you ever get
>>             an answer
>>             > to this ?
>>             Not yet, resumed my quest today.
>>
>>             >> I'm a yocto mostly-newbie, trying to find my way. I
>>             have a custom
>>             layer
>>             >> that I am using to build a kernel. The layer right now
>>             consists of a
>>             few
>>             >> kernel patches and a defconfig and is based on the
>>             standard kernel
>>             >> otherwise.
>>             >>
>>             >> When I do a diff on my defconfig and the bitbake
>>             generated .config,
>>             they
>>             >> are quite similar, but the CONFIG_UNION_FS=y line
>>             magically shows up.
>>             >> I'm wondering where it comes from and how to disable it.
>>             >
>>             > CONFIG_UNION_FS is being enabled by the standard kernel
>>             (and all
>>             > kernels that inherit it). Since you are based on that
>>             kernel, you
>>             > get the option enabled.
>>             >
>>             >>
>>             >> I can do a bitbake -c menuconfig virtual/kernel and
>>             eliminate that
>>             >> option giving me the kernel I want, but those changes
>>             are gone after a
>>             >> bitbake -c cleansstate ...
>>             >
>>             > Have you tried putting
>>             >
>>             > # CONFIG_UNION_FS is not set
>>             >
>>             > in your defconfig ? That should disable it.
>>             >
>>             I did try that, but that did not disable it.
>>
>>
>>         Hmmm. It worked here. I'll run another test shortly (I'm
>>         working on
>>         3.8-rc1 at the moment).
>>
>>
>>             So after much pain and thrashing about to figure things
>>             out, now I see
>>             that in the standard-nocfg.scc file, the unionfs feature
>>             is set. This
>>             file is found in the following path: tmp/work/..
>>             ../linux/meta/cfg/kernel-cache/ktypes/standard/ directory.
>>
>>             My current burning question is: Where is does this file
>>             come from? It
>>             does not seem to be part of the kernel git repository. I
>>             can changes
>>             this file and affect the kernel build, but again, those
>>             changes are
>>             transitory and do not persist after cleaning.
>>
>>
>>         It's from the meta branch of the kernel git repository. Those
>>         are all the fragments that are used to construct and configure
>>         the kernel. Part of the build process makes them available to the
>>         configuration phase.
>>
>>         As something else to try, call your file <foo>.cfg and add it
>>         to the
>>         SRC_URI the same way you added the defconfig. defconfig's get
>>         special
>>         processing, calling it <foo>.cfg will simply get your changes
>>         added
>>         to the end of the build and they teka precedence.
>>
>>
>>     Tried your above suggestion, didn't seem to work.
>>
>>     So with a bit of further testing it looks like by the time the
>>     defconfig and the <foo>.cfg are copied into the linux directory,
>>     the commented out config option: # CONFIG_UNION_FS is not set
>>     line is totally gone.
>>
>>
>> Interesting .. and not really possible if you are talking about the
>> version in $WORKDIR (i.e
>> the directory above the linux/ source directory). Those are straight
>> copies from your
>> layer, with zero processing. Same with the copy within the
>> linux/meta/cfg/* directory
>> structure, they are straight copies and are only processed after being
>> ordered and
>> concatenated.
>>
>>
>>
>>         That being said, if
>>         a feature with a Kconfig of the kernel has a "select UNIONFS"
>>         then you
>>         can't override it with a config/defconfig option, you need to
>>         patch
>>         the kernel.
>>
>>     Not sure what you are saying here. If you mean that the unionfs
>>     kernel option is required by another selected kernel config
>>     option, I'm pretty sure that's not the case. I can bitbake -c
>>     menuconfig virtual/kernel and merely deselect the unionfs option
>>     and the kernel is good.
>>
>>
>> I can't see your source tree, so it was always an option. I know it
>> definitely isn't
>> the case in the linux-yocto tree. But the ability to deselect it in
>> menuconfig isn't
>> contingent on something else not selecting it from within another Kconfig.
>>
>> Again, if you send me your defconfig and local.conf changes (for the
>> BSP), I'll
>> run a kernel configuration test and be able to easily tell you what is
>> happening.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>     Brian
>>
>>
>>
>>
>>
>>         If you send me your defconfig, I can run some test builds here.
>>
>>         Bruce
>>
>>
>>
>>
>>
>>             Thanks,
>>
>>             Brian
>>
>>
>>
>>
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


