Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web11.9903.1610033241974364193
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 07:27:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oyi/lhn2;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id q5so7045552ilc.10
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 07:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vaYJz7+q08af5z+H8Idb2a8OJoyrAEMZ9xc9D449TXE=;
        b=oyi/lhn2uCzWTZFiOadeAMHkRSWyIhv7YOxWKX/AWO/tk8O1f6ZgROAHl8/KWn3eg6
         SrE0h0ajCzacUUAUsLo14Wa0AJ8/0bIlS1tfqF4tT29t80pbx7dVRTbW3kQWYz0MZu27
         BYNbyT4Qqphh6kGGWxoyOHj6vbbM5RRaPgeEHrJY4q1KOm46dc1wqJDYJ++rIL/3Y085
         8msiJWTS4i+psHsOPYDljnozJclQvialuuQIcjfyjOXul4+qhbZ9R8bPxUdCE9cJfphM
         H+zLWQbLfg6k8li4fuBr/V7DezunC0BKAmquhttQW/wNiNPClf1pYS17gBx9a1AOXsiS
         kOfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vaYJz7+q08af5z+H8Idb2a8OJoyrAEMZ9xc9D449TXE=;
        b=KzT3/4jQK1CGIh0yVmxXolj1r2k5vyk/Vkf2dc7h+gGoze1NsKLoQ6RS+dPmQCdh1T
         6WzmzKM+fsDVLsal42yF1zLqzsZkwK+YWQKYuQKZKIdAD+faqx7ZeZKtzKTbDxuu7RMv
         E9lQBdEYYoogHBla11zxYz1+hiS4n2lniL3R0VFc9HfyeXU1bccyqqXHzFW9mXI6ck9x
         zUAf3ftFGQ68Lrc9ERRDGEnV7MhvcnfgvyIaoVAo39G++IxjsNyWf8h6aCZvFMaqw9b+
         k3m93MOOMJY31hhZKXj1V0EbO3w5JjNinlYdguTCgYgzgC8ggwpymtP0/QTf9CsGnd9X
         fvmw==
X-Gm-Message-State: AOAM532xPnVboJTfamvgk1JY5Q3zYg6tFQBDHdLpYH6u7BDDgBiTw8i4
	vP2vG+Efa5ucjO8atVBlyz38hfl03Z5Y90Ycz74=
X-Google-Smtp-Source: ABdhPJyt78aKXaw+ULMQjR++L4FkYQH0RXPV6A4qzbY2C3g+rNgqnOXrobDiYNNhJwovVT9HRhQRqPDys+yxMqdgJzY=
X-Received: by 2002:a05:6e02:1605:: with SMTP id t5mr9437439ilu.232.1610033241187;
 Thu, 07 Jan 2021 07:27:21 -0800 (PST)
MIME-Version: 1.0
References: <CAHwRhWa6SsR=mTOX95uBTKVru4JZszHBEhc5LhYpe=jr6hYT6A@mail.gmail.com>
 <CAGAf8Lz+_aWxJSrEEVWKtzitD1kCy+BO0BrapWGhtpRVJJYHCA@mail.gmail.com> <CAHwRhWanj0AnPWRQcXCku6ZxnBeDWRueCO=U4BDxH8ZxFQyYrg@mail.gmail.com>
In-Reply-To: <CAHwRhWanj0AnPWRQcXCku6ZxnBeDWRueCO=U4BDxH8ZxFQyYrg@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 7 Jan 2021 16:27:10 +0100
Message-ID: <CAGAf8Lxkz+9tMH67EEupvPjBCkhYP9Yyc4Oux0VxgjH2SQjFXw@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

No, no... I did not mean in the makefile to change m to y.

Please, maybe you can try to set your makefile to lookalike as these ones:
https://github.com/ZoranStojsavljevic/mikrobus/blob/mikrobusv2/Makefile
https://github.com/ZoranStojsavljevic/mikrobus/blob/mikrobusv2-debug/Makefile

Zoran
_______

On Thu, Jan 7, 2021 at 4:17 PM Zoltan Kerenyi Nagy
<kerenyi.nagy.zoltan@gmail.com> wrote:
>
> Hi Zoran,
>
> Thanks, I modified the Makefile:
>
> obj-m := huawei_cdc_ncm.o
> Kconfig (obj-y := huawei_cdc_ncm.o)
> SRC := $(shell pwd)
> all:
> $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
> modules_install:
> $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
> clean:
> rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
> rm -f Module.markers Module.symvers modules.order
> rm -rf .tmp_versions Modules.symvers
>
> but this is the error:
>
> ERROR: huawei-1.1-r0 do_configure: oe_runmake failed
> ERROR: huawei-1.1-r0 do_configure: Function failed: do_configure (log file is located at /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488)
> ERROR: Logfile of failure stored in: /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488
> Log data follows:
> | DEBUG: Executing shell function do_configure
> | NOTE: make KERNEL_SRC=/home/kerenyiz/oe-core/build/tmp-glibc/work-shared/barix-ipam400/kernel-source clean
> | ERROR: oe_runmake failed
> | Makefile:2: *** empty variable name.  Stop.
> | ERROR: Function failed: do_configure (log file is located at /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488)
> ERROR: Task (/home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-z/kernel-modules/huawei/huawei_1.1.bb:do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3880 tasks of which 3873 didn't need to be rerun and 1 failed.
>
> On Thu, 7 Jan 2021 at 16:03, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>>
>> Hello Zoltan,
>>
>> > root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
>> > insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': unknown symbol in module, or unknown parameter
>>
>> Please, try to set Kconfig (obj-y := huawei_cdc_ncm.o) to y, I guess
>> 99.9% that the kernel compilation (actually, driver compilation) will
>> pass.
>>
>> I think YOCTO (recipe) behaves perfectly correctly.
>>
>> Other approach: try to compile the same module with Makefile above on
>> the target.
>>
>> (my two cent thoughts)
>>
>> Zoran
>> _______
>>
>> On Thu, Jan 7, 2021 at 2:46 PM Zoltan Kerenyi Nagy
>> <kerenyi.nagy.zoltan@gmail.com> wrote:
>> >
>> > Hi Folks,
>> >
>> > I bitbaked a Huawei E3372h driver into the distro with this recipe file:
>> >
>> > SUMMARY = "Huawei Stick kernel module"
>> > LICENSE = "CLOSED"
>> >
>> > inherit module
>> >
>> > SRC_URI = "file://Makefile \
>> >            file://huawei_cdc_ncm.c \
>> >           "
>> >
>> > S = "${WORKDIR}"
>> >
>> > The makefile looks like this:
>> >
>> > obj-m := huawei_cdc_ncm.o
>> >
>> > SRC := $(shell pwd)
>> >
>> > all:
>> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
>> >
>> > modules_install:
>> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
>> >
>> > clean:
>> > rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
>> > rm -f Module.markers Module.symvers modules.order
>> > rm -rf .tmp_versions Modules.symvers
>> >
>> > The source file is the one that matches the kernel:
>> >
>> > https://elixir.bootlin.com/linux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c
>> >
>> > I included this into the conf file:
>> > KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF += "lte"huawei_cdc_ncm = "options lte iProduct=E3372h iManufacturer=Huawei"
>> >
>> > Bitbake runs without error, however when I insert the SD card into the hardware ( barix ipam 400)
>> > and boot the hardware this is the error message:
>> >
>> > root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
>> > insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': unknown symbol in module, or unknown parameter
>> >
>> > To me it looks like that there was an error during the bitbake, or the header files included in the driver doesn't match the kernel.
>> >
>> > Do you have any idea how to procede?
>> >
>> > Thanks,
>> >
>> >
>> >
>> > --
>> > Zolee
>> > 
>> >
