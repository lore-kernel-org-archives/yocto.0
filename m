Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C63EDE00965
	for <yocto@yoctoproject.org>; Sat, 29 Mar 2014 21:11:13 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h18so2342307igc.14
	for <yocto@yoctoproject.org>; Sat, 29 Mar 2014 21:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lyKTxS6ci2uieXrAUSu1pBRihtEMI3kM9za3HcW/F0E=;
	b=S3TWuWskbm60n6lTM1L3rCXgbRXbKRqNU4AWBovUHTI2h89DFaDU4a0eZga4Ig/I3O
	SKoFV+jI5XKSgXboxMbUhY9+qoWGgIImrNINh8gLhVwYQ3mqVZXlAYkKs3Pazy0J9HHp
	Mrjph41XITFv0VZ5p33a3QuIoaTeZHElhocAyguij9Xxv2pUXELNl0wPTSg2Og5EIbvR
	/E4dKTWteqiypJf+AxGmPZyO1aYRhWZcXN3nTH+6csj3E5qdvAimXbDyIEjGcisvn9ta
	dKNelG8gLVTHz1d4CnoODHrs/p/7Rlypj90qwA43xxxa/IRsMuEf0hELLElN2Bri7oU2
	9ZIw==
X-Received: by 10.42.58.130 with SMTP id i2mr1400229ich.66.1396152671392; Sat,
	29 Mar 2014 21:11:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Sat, 29 Mar 2014 21:10:41 -0700 (PDT)
In-Reply-To: <1395379970.73879.YahooMailNeo@web160305.mail.bf1.yahoo.com>
References: <1394428241.61215.YahooMailNeo@web160301.mail.bf1.yahoo.com>
	<1395379970.73879.YahooMailNeo@web160305.mail.bf1.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 29 Mar 2014 21:10:41 -0700
Message-ID: <CAMKF1spFOns5hLH-9R+WZNwkbEwPP0JkxdgDxaK3Ty8D16sfRA@mail.gmail.com>
To: mujtaba rizwan <mmrizwan45@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fw: regarding adding custom kernel to yocto build system
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
X-List-Received-Date: Sun, 30 Mar 2014 04:11:13 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 20, 2014 at 10:32 PM, mujtaba rizwan <mmrizwan45@yahoo.com> wrote:
> my previous problem is resolved its picking my kernel from local system.i
> didn't get any reply from yocto group i'm expecting some help please help me
> out.
>
> I've compiled the msm working kernel with make then i took the zimage along
> with ramdisk and created boot.img  and flashed it to the boot partition of
> android kernel is booting fine rest of the partitions are working and
> untouched only i'm changing the boot.img.
>
> The same kernel i took and built it from yocto build system by providing
> proper defconfig file, kernel is compiled successfully got the zimage used
> it along with the working ramdisk stripped from working boot.img file and
> created the boot.img and flashed to the boot partition, i'm facing a few
> problem in booting. I've attached the boot logs and defconfig.please help me
> out to resolve this problem it is critical and i've already crossed the
> deadline...
>
> ->log messages from kernel booting:
> [    0.000000] of_mpm_init(): Cannot find irq controller for qcom,gic-parent
> [    0.000000] of_mpm_init(): Cannot find irq controller for
> qcom,gpio-parent
> [    0.000000] irq: no irq domain found for
> /soc/interrupt-controller@F9000000
>


You should try to narrow down the problem. there are several factors
firstly make sure
that kernel version you are using is compiled/booted OK with gcc 4.8,
then make sure
that resulting .config when building kernel inside OE framework is
same as you expected
it to be. There might be additional tweaks that framework will do to defconfig
and it could be thats causing problems.

Is the device tree correctly used

are there modules which are not being loaded properly since you kept
the rootfs unmodified
you will end up doing mix and match of kernel and modules.

> Thanks & Regards,
> Rizwan
>
> On Monday, March 10, 2014 10:40 AM, mujtaba rizwan <mmrizwan45@yahoo.com>
> wrote:
> Hi All,
>
> I'm trying to compile  msm linux kernel source code which is already present
> in my system. i've created a new meta layer for msm and then i've added
> machine and local mirror into local.conf file and appended bblayers with my
> layer and i've given the  SRC-URI as path to the kernel in my system  inside
> linux-yocto-custom.bb. so please let me know wether it will compile my sorce
> code or will it fetch standard code
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

