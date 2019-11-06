Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 955FEE00C46; Wed,  6 Nov 2019 13:22:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C853E0078F
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 13:22:47 -0800 (PST)
Received: by mail-ed1-f65.google.com with SMTP id a21so50736edj.8
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 13:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=sDGxhfGb88xvNGaFhhYtUqZ9/AYKvhxQIRdUgRMki6M=;
	b=jq+b6/ItgxufWg0yDCIuPmphFAIt5YhGzrNyOA9jqxqyYAez/zlwuIsBCcJRIrq+OB
	gYDbcYD+rTrqFOCKeocD1a+OSduQRzhrddfeWUYY3dYDRbi1V7JBX9VwkDlFbusMV5HW
	ZLjgbOOA2eO3uDDUqWI1E5yv4CCQye7vBj0f2X3Mr05YuXg0XGA4GEJe19jL1GeYxoDu
	qawZM6Ua6HCqrtPPosNceVikeBMaEABImix0C7a64kgmWG01z12E+f41u/eAr6QRw3pM
	S6hpDN6zfoSFnTFQo84uMFGgqPIyhxKbuTF1R6ZNk/nWFKAMm874HlPIVMhbhFJ7+tQI
	QlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=sDGxhfGb88xvNGaFhhYtUqZ9/AYKvhxQIRdUgRMki6M=;
	b=HGJ9uQ0+6xi7yi5NzWGiXqR3uZVcolRsjLKd3GT2b97lT1CL5zWJGtWfjvtTxQkYXZ
	JOsNwgcJFIDhY70t2hOoK2mG+UOfvykgJdyKS9eDM5rRtfqCOxb1zthnlfjgkylUr8hA
	/RL2hxETdv+gg/U/UwykIb2nzVlH3XV3r14U7MJJn2jrDA3OY9YsCPKGISE+GT0Ixk2U
	nJSPBSQmsHSQ3vwq+hv3/YcrhgGb+977aYLNndOuU8uhvCZ/UzfODMU2qQDZcCPgZWZu
	RBj49ZuxS2qjIBl37j6miXT9cMRLNASMH7F1DsO7uswhLU3Nhz/Qi6+D0C2qSzjzqSiy
	Iu2g==
X-Gm-Message-State: APjAAAXAXTgHIE/K48pxGhCUlIgVgNn9feCaAfNBffOSi3m0ai/5K2/p
	ZY4BomgNy3lvDBSSaRtHz6HJLQpJ0xUd/gww55s=
X-Google-Smtp-Source: APXvYqzYiUkvCv0gRTfS9R95WADJNnoMwTRdIoOH+tliqbgMv9gtDxty93FPTm9U94MtsClXc3ktI5zwXuvZ+nLbRCA=
X-Received: by 2002:aa7:d496:: with SMTP id b22mr5210527edr.122.1573075365953; 
	Wed, 06 Nov 2019 13:22:45 -0800 (PST)
MIME-Version: 1.0
References: <CAM2K0np6XuF7kQfzr8guexucFNqWMg=CY5sAL+LS7BTWTStaUg@mail.gmail.com>
	<CADkTA4MMf4YJEdqGzCcA2uYT1qEujVrJY8U7TpZ2xi9zoHnQXg@mail.gmail.com>
	<CAM2K0nq7kgsbnJRXhTJNc_6yhcvBdbpFE14=QYU0-Y2D5a1GiQ@mail.gmail.com>
In-Reply-To: <CAM2K0nq7kgsbnJRXhTJNc_6yhcvBdbpFE14=QYU0-Y2D5a1GiQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 6 Nov 2019 16:22:34 -0500
Message-ID: <CADkTA4M3iULXeNJeWyQVxDcmDs7K7zVvk0H14i5otxtgJgvtGQ@mail.gmail.com>
To: Wayne Li <waynli329@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Subject: Re: Adding KVM kernel modules to Yocto Kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Nov 2019 21:22:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 6, 2019 at 11:56 AM Wayne Li <waynli329@gmail.com> wrote:
>
> The thing is I don't know how to pick specific kernel modules and add it =
to the system.  Me and my coworker were able to add missing TUN/TAP kernel =
modules using the same process I described (i.e. pulling up the GUI, saving=
 a .config file for TUN/TAP device driver support, and copying the .config =
file's content into the kernel configuration file).  And that worked and th=
e TUN module was added.  So I was just trying the same thing as that but fo=
r KVM.  I assumed that picking the right option in the GUI and using the ri=
ght .config file from there would build the right specific kernel modules i=
nto the kernel.

That will ensure the kernel is configured to build the modules, but
that doesn't mean they are installed to the image.

>
> I mean is there another way to specify specific kernel modules I want bui=
lt into the system?  What do you mean by the generic meta package "kernel-m=
odules".  Just so you know, my coworker was the one who did most of the wor=
k building the Yocto kernel.  But he's left the company so now I'm picking =
up the pieces.

The "kernel-modules" package is a meta package that installs all built
modules onto the system.

So unless you are really size constrained on the device, use it, and
you'll get everything that was configured and built as a module.

Bruce

>
> -Thanks!, Wayne Li
>
> On Wed, Nov 6, 2019 at 10:40 AM Bruce Ashfield <bruce.ashfield@gmail.com>=
 wrote:
>>
>> On Wed, Nov 6, 2019 at 11:30 AM Wayne Li <waynli329@gmail.com> wrote:
>> >
>> > Dear Yocto Developers,
>> >
>> > I'm trying to get KVM added and working on a Yocto kernel I built up f=
or a T4240 RDB (has a PowerPC CPU).  KVM isn't working and the reason why i=
t isn't working seems to be I'm missing the necessary kernel modules.  More=
 specifically, I don't seem to have a kvm.ko file that I can load.  Here's =
how I attempted to add KVM to the kernel.
>> >
>> > I went to the SDK install folder and ran ". fsl-setup-env -m t4240rdb-=
64b" and then "bitbake virtual/kernel -c menuconfig".  After the GUI comes =
up, I went to Virtualization -> KVM support for PowerPC E500MC/E5500/E6500 =
processors and hit "Save" to save the configuration.  I then went and copie=
d the content of the .config file created by this into the kernel configura=
tion file specified by the following path; "build_t4240rdb-64b/virt1.config=
".  This path was specified by the variable KERNEL_DEFCONFIG in sources/met=
a_freescale/conf/machine/t4240rdb-64b.conf.  Here's what I currently have i=
n the kernel configuration file (i.e. the virt1.config file I mentioned abo=
ve):
>> >
>> > https://gist.github.com/WayneZhenLi/4172cd4a819b71a11b85fc5aaa57ebd1
>> >
>> > After this, I built the kernel by running "bitbake -c compile -f virtu=
al/kernel" and rebuilt the full linux image.  I re-added everything to the =
SD card and booted up the T4240 RDB with the newly modified Yocto kernel.  =
At this point if I run lsmod, only the following two kernel modules show up=
:
>> >
>> > Module                  Size  Used by
>> > nfsd                  100940  11
>> > exportfs                6723  1 nfsd
>> >
>> > But if I do a "find . -name "kvm"" I get the following:
>> >
>> > ./usr/src/kernel/Documentation/virtual/kvm
>> > ./usr/src/kernel/arch/arm/kvm
>> > ./usr/src/kernel/arch/arm64/kvm
>> > ./usr/src/kernel/arch/mips/kvm
>> > ./usr/src/kernel/arch/powerpc/kvm
>> > ./usr/src/kernel/arch/s390/kvm
>> > ./usr/src/kernel/arch/tile/kvm
>> > ./usr/src/kernel/arch/x86/kvm
>> > ./usr/src/kernel/drivers/s390/kvm
>> > ./usr/src/kernel/include/config/kvm
>> > ./usr/src/kernel/include/config/have/kvm
>> > ./usr/src/kernel/include/kvm
>> > ./usr/src/kernel/virt/kvm
>> > ./dev/kvm
>> > ./sys/devices/virtual/misc/kvm
>> > ./sys/class/misc/kvm
>> > ./sys/kernel/debug/kvm
>> > ./sys/module/kvm
>> >
>> > So it does look like kvm-related files were added to the Yocto kernel =
because of the changes I made to the kernel configuration file.  But there =
is no kvm.ko (or any .ko file related to kvm) anywhere in the file system.
>>
>> Is the image you are building installing the specific kernel modules
>> you need, or the generic meta package "kernel-modules" ? Without
>> something like that, you can build the support, but the modules won't
>> be present on the image.
>>
>> Bruce
>>
>> >
>> > Is there something I'm doing wrong here?  Am I missing important lines=
 in my kernel configuration file?  Let me know your thoughts.
>> >
>> > -Thanks!, Wayne Li
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> - Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end
>> - "Use the force Harry" - Gandalf, Star Trek II



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

