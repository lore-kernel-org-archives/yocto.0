Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web10.899.1610044515511347075
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 10:35:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hruU3KpF;
 spf=pass (domain: gmail.com, ip: 209.85.166.41, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id z5so7081182iob.11
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 10:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=8PzkFpzXp7fYhl23F5XYuVWNfHRF8G9+vtVStl8BeYc=;
        b=hruU3KpFJAkXcvugTLPs6tw0TQxOx8s6M1xq2r9q6h3JCmsOMj890PCvTzHQbmpXGg
         XVloVWOlIT8u+XWZ7mH/WP69otqU1etNZ0iXUolirU1Yw/Dbr7GHIt/4GHyXQwop9AU0
         fNOwJH+4E6MaN+VRjKCCLh8UmjOAHUmJ8qfN6BwW/6K48ruZli3m0ssHrCLKAaQ+Vzz+
         7u/ZYd0l8znV2ekBqwxIJAs73KBXS5AFNJbsNyaApWq0F9o67GdPsq94a+Xy1U571W2n
         sJ6M9IYuNN5nZMX/xR/95wzUgxWl+oyL5+9UhWJO1twEe2CiTk1+STVxxkJCXDq4PG20
         a5Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=8PzkFpzXp7fYhl23F5XYuVWNfHRF8G9+vtVStl8BeYc=;
        b=hFwi91bHdbsyTZ5gfMZKfiD33RgptlNq69gDxlhV+N9igZc20Kbsrvft21Jv7sob9N
         UvsyYjomrzPVlfeJdV72y4VE+o1Iylmszfp7E5912bTjXgZ8RGXxllN486vEuKoDu6+V
         XaA4Ob1PetJmcdjofPtasKpvHm29PiY9evuSoa76RtLIT2WxLXgEu4/d9I+HRkcYalRQ
         5mUKTTc3kKE4Bbabvcy3mBHKtaDFLwqfUUGnRGFAlhZW+6x6XwSKmZZ/LiwUn5Ch0L9N
         oZH40Qe33h/elkr97aCAVU5Tl7DIGsUL7KD/TM3hmbF72nNDufodMcsj9K4pN/2J/azm
         sv4w==
X-Gm-Message-State: AOAM530snSMxi+wJHzKR/xQSOUJPwh66BZlMwIvIXLQXdY2hg8ksk06A
	tuNLOzXchcxgF/8LjDCbknb0WjUcCtL9WNsP/cI=
X-Google-Smtp-Source: ABdhPJwyhaxy+C4ldTgvavqyB2FVYn6tsJgWRXp9JPB6l48VlAflxVi7i1hh3f/euQqIN2YkZNFY/LZ59AOfs1IVm7Q=
X-Received: by 2002:a5d:9641:: with SMTP id d1mr2286946ios.123.1610044514603;
 Thu, 07 Jan 2021 10:35:14 -0800 (PST)
MIME-Version: 1.0
References: <CAHwRhWa6SsR=mTOX95uBTKVru4JZszHBEhc5LhYpe=jr6hYT6A@mail.gmail.com>
 <CAGAf8Lz+_aWxJSrEEVWKtzitD1kCy+BO0BrapWGhtpRVJJYHCA@mail.gmail.com>
 <CAHwRhWanj0AnPWRQcXCku6ZxnBeDWRueCO=U4BDxH8ZxFQyYrg@mail.gmail.com>
 <1657FCB4180F6472.31350@lists.yoctoproject.org> <CAGAf8Lw340un7yCNtaQNHNo6fvc03ptH1wHHO4NEWB4M8aHc8Q@mail.gmail.com>
 <CAHwRhWZSW+g0qJkAQLz5npmi5ig37XTvM6r_tJWmpk3ERMB9ew@mail.gmail.com>
In-Reply-To: <CAHwRhWZSW+g0qJkAQLz5npmi5ig37XTvM6r_tJWmpk3ERMB9ew@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 7 Jan 2021 19:35:03 +0100
Message-ID: <CAGAf8LxnddCqAxdPeMd-M9RgQsKYxqiWF=Omt9Fw1hK5hoRhUg@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> Since some variables and functions are exported in .c files, and not
> propagated into related .h files. And then this makes some confusion
> while having OOT drivers.

Quite an opposite. It must be defined to be exported, and to appear in
Module.symvers .

If it is NOT defined as exported (EXPORT_SYMBOL, EXPORT_SYMBOL_GPL),
it will behave as from your initial post, if the driver is defined as
a module.

The example for this behaviour is here:
https://github.com/ZoranStojsavljevic/mikrobus/blob/mikrobusv2-debug/mikrobus_core.c#L447

Symbol regulator_register_always_on (it is NOT exported at all,
neither in include/linux/regulator/fixed.h, neither in
drivers/regulator/fixed-helper.c).

So the mikrobus driver, being a module, produces such an error:
unknown symbol in module, or unknown parameter .
_______

Sorry for the confusion. :(

Zoran
_______


On Thu, Jan 7, 2021 at 6:55 PM Zoltan Kerenyi Nagy
<kerenyi.nagy.zoltan@gmail.com> wrote:
>
> Yep, the best would be if the driver burned into the root filesystem with bitbake. I dont want to compile that driver on the device. I'll modifile the makefile tomorrow, thanks
>
> On 2021. Jan 7., Thu at 18:20, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>>
>> If I think more... For driver development the Out Of (OOT) Tree driver
>> is a must, and so far the most efficient way is to have native tool
>> environment presence on the target, so the quick recompilation of the
>> module is a must/should be achieved... It is a pain doing this on the
>> host using cross compilation, or even building it to the kernel.
>>
>> Once the driver is stable, then it should be built-in with Y in the
>> kernel, changing the YOCTO kernel defconfig (not the topic for this
>> problem, there is a good explanation how to do that in YOCTO manuals).
>>
>> If the driver is out of shelf, it should be recompiled as built-in the kernel.
>>
>> There are differences between having an OOT driver versus a built-in driver.
>>
>> Since some variables and functions are exported in .c files, and not
>> propagated into related .h files. And then this makes some confusion
>> while having OOT drivers.
>>
>> Zoran
>> _______
>>
>> On Thu, Jan 7, 2021 at 4:27 PM Zoran via lists.yoctoproject.org
>> <zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:
>> >
>> > No, no... I did not mean in the makefile to change m to y.
>> >
>> > Please, maybe you can try to set your makefile to lookalike as these ones:
>> > https://github.com/ZoranStojsavljevic/mikrobus/blob/mikrobusv2/Makefile
>> > https://github.com/ZoranStojsavljevic/mikrobus/blob/mikrobusv2-debug/Makefile
>> >
>> > Zoran
>> > _______
>> >
>> > On Thu, Jan 7, 2021 at 4:17 PM Zoltan Kerenyi Nagy
>> > <kerenyi.nagy.zoltan@gmail.com> wrote:
>> > >
>> > > Hi Zoran,
>> > >
>> > > Thanks, I modified the Makefile:
>> > >
>> > > obj-m := huawei_cdc_ncm.o
>> > > Kconfig (obj-y := huawei_cdc_ncm.o)
>> > > SRC := $(shell pwd)
>> > > all:
>> > > $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
>> > > modules_install:
>> > > $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
>> > > clean:
>> > > rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
>> > > rm -f Module.markers Module.symvers modules.order
>> > > rm -rf .tmp_versions Modules.symvers
>> > >
>> > > but this is the error:
>> > >
>> > > ERROR: huawei-1.1-r0 do_configure: oe_runmake failed
>> > > ERROR: huawei-1.1-r0 do_configure: Function failed: do_configure (log file is located at /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488)
>> > > ERROR: Logfile of failure stored in: /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488
>> > > Log data follows:
>> > > | DEBUG: Executing shell function do_configure
>> > > | NOTE: make KERNEL_SRC=/home/kerenyiz/oe-core/build/tmp-glibc/work-shared/barix-ipam400/kernel-source clean
>> > > | ERROR: oe_runmake failed
>> > > | Makefile:2: *** empty variable name.  Stop.
>> > > | ERROR: Function failed: do_configure (log file is located at /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488)
>> > > ERROR: Task (/home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-z/kernel-modules/huawei/huawei_1.1.bb:do_configure) failed with exit code '1'
>> > > NOTE: Tasks Summary: Attempted 3880 tasks of which 3873 didn't need to be rerun and 1 failed.
>> > >
>> > > On Thu, 7 Jan 2021 at 16:03, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>> > >>
>> > >> Hello Zoltan,
>> > >>
>> > >> > root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
>> > >> > insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': unknown symbol in module, or unknown parameter
>> > >>
>> > >> Please, try to set Kconfig (obj-y := huawei_cdc_ncm.o) to y, I guess
>> > >> 99.9% that the kernel compilation (actually, driver compilation) will
>> > >> pass.
>> > >>
>> > >> I think YOCTO (recipe) behaves perfectly correctly.
>> > >>
>> > >> Other approach: try to compile the same module with Makefile above on
>> > >> the target.
>> > >>
>> > >> (my two cent thoughts)
>> > >>
>> > >> Zoran
>> > >> _______
>> > >>
>> > >> On Thu, Jan 7, 2021 at 2:46 PM Zoltan Kerenyi Nagy
>> > >> <kerenyi.nagy.zoltan@gmail.com> wrote:
>> > >> >
>> > >> > Hi Folks,
>> > >> >
>> > >> > I bitbaked a Huawei E3372h driver into the distro with this recipe file:
>> > >> >
>> > >> > SUMMARY = "Huawei Stick kernel module"
>> > >> > LICENSE = "CLOSED"
>> > >> >
>> > >> > inherit module
>> > >> >
>> > >> > SRC_URI = "file://Makefile \
>> > >> >            file://huawei_cdc_ncm.c \
>> > >> >           "
>> > >> >
>> > >> > S = "${WORKDIR}"
>> > >> >
>> > >> > The makefile looks like this:
>> > >> >
>> > >> > obj-m := huawei_cdc_ncm.o
>> > >> >
>> > >> > SRC := $(shell pwd)
>> > >> >
>> > >> > all:
>> > >> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
>> > >> >
>> > >> > modules_install:
>> > >> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
>> > >> >
>> > >> > clean:
>> > >> > rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
>> > >> > rm -f Module.markers Module.symvers modules.order
>> > >> > rm -rf .tmp_versions Modules.symvers
>> > >> >
>> > >> > The source file is the one that matches the kernel:
>> > >> >
>> > >> > https://elixir.bootlin.com/linux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c
>> > >> >
>> > >> > I included this into the conf file:
>> > >> > KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF += "lte"huawei_cdc_ncm = "options lte iProduct=E3372h iManufacturer=Huawei"
>> > >> >
>> > >> > Bitbake runs without error, however when I insert the SD card into the hardware ( barix ipam 400)
>> > >> > and boot the hardware this is the error message:
>> > >> >
>> > >> > root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
>> > >> > insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': unknown symbol in module, or unknown parameter
>> > >> >
>> > >> > To me it looks like that there was an error during the bitbake, or the header files included in the driver doesn't match the kernel.
>> > >> >
>> > >> > Do you have any idea how to procede?
>> > >> >
>> > >> > Thanks,
>> > >> >
>> > >> >
>> > >> >
>> > >> > --
>> > >> > Zolee
>> > >> >
>> > >> >
>> >
>> > 
>> >
