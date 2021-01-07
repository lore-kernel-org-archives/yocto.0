Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
 by mx.groups.io with SMTP id smtpd.web11.11643.1610040025901631711
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 09:20:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vTENHlD2;
 spf=pass (domain: gmail.com, ip: 209.85.166.45, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f45.google.com with SMTP id u26so6885339iof.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 09:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PvrCFhleI3XtzfkhH0wiNMpxe/6uNvhJyEfQZNndbxY=;
        b=vTENHlD2y2TOM6A14kXDDFPQgb360PzGVj4A/V+NWNXbFXtHurwvRSbBO6u0FW5nTM
         0hoawubyzLsFwt0NiFSTHO1wbovfDKxmHz9otZQPp5ln64q/gWNlDuP5/oLssDRPbPGN
         fJR/i/RuScBhrEyWx2hyfVtziMjZdfNKIVRhUh8XvxPJscFmhPK7BEjnJrRcl0zdFbIs
         r4hRTgiWNeUGAuWi3DjmsxS5c9VlEutTFOsj5849Pmfy6QT/A2cqi4WIsHh1q4KG2xbb
         H/ELbifFYN0+ZFvRCe4CTmdOBT9kDpl9fi3adroKU6131Cerwfn1Z3tjOtQJoLDQanRx
         JBug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PvrCFhleI3XtzfkhH0wiNMpxe/6uNvhJyEfQZNndbxY=;
        b=YL/YuIPTHcAi9hFiwgD5rF0jJ8iF1kvg6YLUCYgyh+s1MxhhlwFsoDN9IQW2v8Qoh/
         EXqFCIU+/8EzPxsigXrfKNk+tKh0QchxzngUpF246lPBbD31Wrr+4x4YWCBVTMvNxpc8
         pF/G1DCDFZZ8npiUXp2Cy1iSbv5i59MdJ17STFnUSmgKrghO6lo80GriecRHmhq2ONqa
         NDOqDTR3Kpu7OLskMrfqUi0v0yEg48p7sYvHGrRqpir+m9hgGogshVzXa4LxCJgb6r+X
         IummzfjpmFpeOQkkiMvFE6p4YveveFKGDNoEDFy9mAjWhBLl7Y3YQ8F1JEkveaCA7AlK
         qw9w==
X-Gm-Message-State: AOAM531t+O0NDwFUBXY637QJUW20RW2PGRuylF5F5sRRNbnbwEl1s8ME
	iSvN4qDSwXA7KUQP8jv27f+zRCUpLTmJLhNyP0I=
X-Google-Smtp-Source: ABdhPJw8ectip71in2PD8JZTxiTfeb0/p3/9t3cU+YS6+g0oCYSqqVF5Ot2RRYCLaooPXb606AhtEaXOLHdaJX6LFPY=
X-Received: by 2002:a02:caac:: with SMTP id e12mr8710280jap.45.1610040024667;
 Thu, 07 Jan 2021 09:20:24 -0800 (PST)
MIME-Version: 1.0
References: <CAHwRhWa6SsR=mTOX95uBTKVru4JZszHBEhc5LhYpe=jr6hYT6A@mail.gmail.com>
 <CAGAf8Lz+_aWxJSrEEVWKtzitD1kCy+BO0BrapWGhtpRVJJYHCA@mail.gmail.com>
 <CAHwRhWanj0AnPWRQcXCku6ZxnBeDWRueCO=U4BDxH8ZxFQyYrg@mail.gmail.com> <1657FCB4180F6472.31350@lists.yoctoproject.org>
In-Reply-To: <1657FCB4180F6472.31350@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 7 Jan 2021 18:20:12 +0100
Message-ID: <CAGAf8Lw340un7yCNtaQNHNo6fvc03ptH1wHHO4NEWB4M8aHc8Q@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

If I think more... For driver development the Out Of (OOT) Tree driver
is a must, and so far the most efficient way is to have native tool
environment presence on the target, so the quick recompilation of the
module is a must/should be achieved... It is a pain doing this on the
host using cross compilation, or even building it to the kernel.

Once the driver is stable, then it should be built-in with Y in the
kernel, changing the YOCTO kernel defconfig (not the topic for this
problem, there is a good explanation how to do that in YOCTO manuals).

If the driver is out of shelf, it should be recompiled as built-in the kernel.

There are differences between having an OOT driver versus a built-in driver.

Since some variables and functions are exported in .c files, and not
propagated into related .h files. And then this makes some confusion
while having OOT drivers.

Zoran
_______

On Thu, Jan 7, 2021 at 4:27 PM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:
>
> No, no... I did not mean in the makefile to change m to y.
>
> Please, maybe you can try to set your makefile to lookalike as these ones:
> https://github.com/ZoranStojsavljevic/mikrobus/blob/mikrobusv2/Makefile
> https://github.com/ZoranStojsavljevic/mikrobus/blob/mikrobusv2-debug/Makefile
>
> Zoran
> _______
>
> On Thu, Jan 7, 2021 at 4:17 PM Zoltan Kerenyi Nagy
> <kerenyi.nagy.zoltan@gmail.com> wrote:
> >
> > Hi Zoran,
> >
> > Thanks, I modified the Makefile:
> >
> > obj-m := huawei_cdc_ncm.o
> > Kconfig (obj-y := huawei_cdc_ncm.o)
> > SRC := $(shell pwd)
> > all:
> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
> > modules_install:
> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
> > clean:
> > rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
> > rm -f Module.markers Module.symvers modules.order
> > rm -rf .tmp_versions Modules.symvers
> >
> > but this is the error:
> >
> > ERROR: huawei-1.1-r0 do_configure: oe_runmake failed
> > ERROR: huawei-1.1-r0 do_configure: Function failed: do_configure (log file is located at /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488)
> > ERROR: Logfile of failure stored in: /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488
> > Log data follows:
> > | DEBUG: Executing shell function do_configure
> > | NOTE: make KERNEL_SRC=/home/kerenyiz/oe-core/build/tmp-glibc/work-shared/barix-ipam400/kernel-source clean
> > | ERROR: oe_runmake failed
> > | Makefile:2: *** empty variable name.  Stop.
> > | ERROR: Function failed: do_configure (log file is located at /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488)
> > ERROR: Task (/home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-z/kernel-modules/huawei/huawei_1.1.bb:do_configure) failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 3880 tasks of which 3873 didn't need to be rerun and 1 failed.
> >
> > On Thu, 7 Jan 2021 at 16:03, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> Hello Zoltan,
> >>
> >> > root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
> >> > insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': unknown symbol in module, or unknown parameter
> >>
> >> Please, try to set Kconfig (obj-y := huawei_cdc_ncm.o) to y, I guess
> >> 99.9% that the kernel compilation (actually, driver compilation) will
> >> pass.
> >>
> >> I think YOCTO (recipe) behaves perfectly correctly.
> >>
> >> Other approach: try to compile the same module with Makefile above on
> >> the target.
> >>
> >> (my two cent thoughts)
> >>
> >> Zoran
> >> _______
> >>
> >> On Thu, Jan 7, 2021 at 2:46 PM Zoltan Kerenyi Nagy
> >> <kerenyi.nagy.zoltan@gmail.com> wrote:
> >> >
> >> > Hi Folks,
> >> >
> >> > I bitbaked a Huawei E3372h driver into the distro with this recipe file:
> >> >
> >> > SUMMARY = "Huawei Stick kernel module"
> >> > LICENSE = "CLOSED"
> >> >
> >> > inherit module
> >> >
> >> > SRC_URI = "file://Makefile \
> >> >            file://huawei_cdc_ncm.c \
> >> >           "
> >> >
> >> > S = "${WORKDIR}"
> >> >
> >> > The makefile looks like this:
> >> >
> >> > obj-m := huawei_cdc_ncm.o
> >> >
> >> > SRC := $(shell pwd)
> >> >
> >> > all:
> >> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
> >> >
> >> > modules_install:
> >> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
> >> >
> >> > clean:
> >> > rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
> >> > rm -f Module.markers Module.symvers modules.order
> >> > rm -rf .tmp_versions Modules.symvers
> >> >
> >> > The source file is the one that matches the kernel:
> >> >
> >> > https://elixir.bootlin.com/linux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c
> >> >
> >> > I included this into the conf file:
> >> > KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF += "lte"huawei_cdc_ncm = "options lte iProduct=E3372h iManufacturer=Huawei"
> >> >
> >> > Bitbake runs without error, however when I insert the SD card into the hardware ( barix ipam 400)
> >> > and boot the hardware this is the error message:
> >> >
> >> > root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
> >> > insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': unknown symbol in module, or unknown parameter
> >> >
> >> > To me it looks like that there was an error during the bitbake, or the header files included in the driver doesn't match the kernel.
> >> >
> >> > Do you have any idea how to procede?
> >> >
> >> > Thanks,
> >> >
> >> >
> >> >
> >> > --
> >> > Zolee
> >> >
> >> >
>
> 
>
