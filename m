Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C484BE0174E
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 18:50:51 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id rA62omCw022408
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 5 Nov 2013 18:50:48 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.17) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Tue, 5 Nov 2013 18:50:48 -0800
Message-ID: <5279AE87.1050609@windriver.com>
Date: Tue, 5 Nov 2013 21:50:47 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Maxwell Bottiger <sleepylight@jive-turkey.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CADi-vsxH-E=StkCnZtw9-U7RLSC6cn-RFw684GXfANEhhMAe7Q@mail.gmail.com>	<527873E7.8000103@windriver.com>	<CADi-vswgQRuh4dNwQkbX6EUAeBLEYO6WCqHtqZUPzVwQpGjqCQ@mail.gmail.com>
	<CADi-vsxj-b4E1Yf-9GPEgc1gCM-gH0RWjHKtXsWUNXt-NWx+ow@mail.gmail.com>
In-Reply-To: <CADi-vsxj-b4E1Yf-9GPEgc1gCM-gH0RWjHKtXsWUNXt-NWx+ow@mail.gmail.com>
Subject: Re: architecture mismatch during kernel build (40 to 3)
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
X-List-Received-Date: Wed, 06 Nov 2013 02:50:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-11-05 8:08 PM, Maxwell Bottiger wrote:
> Turns out this is a phantom error.  Instead of building mkimage, I had
> accidentally added it to my git master branch, but deleted it from my
> local copy.  I didn't see it for the longest time, but the whole project
> compiled correctly as soon as I removed the binary from the git repo.
>

Fantastic. I was poking around in my ARM and powerpc builds today, and
couldn't for the life of me see how you managed to build mkimage as
part of a typical build.

I had a half composed email asking for details .. it seems I don't have
to send it now :)

Bruce

> Woops.
>
> -Max
>
>
>
>
> On Tue, Nov 5, 2013 at 12:46 PM, Maxwell Bottiger
> <sleepylight@jive-turkey.net <mailto:sleepylight@jive-turkey.net>> wrote:
>
>     Ok.  so, I should backtrack a bit, just so I understand the issue
>     completely.  This is my first time putting together a bitbake
>     recipe, and the kernel is a complex little beastie.
>
>     BTW, I'm building for an Atmel ARM cpu.  Sorry didn't mention that
>     in my first message.
>
>     So, when I was building my kernel by hand, here's what I was doing:
>     make ARCH=arm at91sam9x5ek_defconfig
>     make ARCH=arm menuconfig
>     make ARCH=arm
>     ./mkimage -A arm -O linux -C none -T kernel -a 20008000 -e 20008000
>     -n linux-2.6 -d arch/arm/boot/zImage uImage-2.6.39-at91sam9x5ek.bin
>
>     I took the .config file that I'd been using and placed it in
>     depconfig, then added a line to my bb file to include that
>     configuration.  So, that's good I think.
>
>     When the compile is complete, I should have an arm zImage, and
>     mkimage should run against that.  So, my understanding would be that
>     mkimage should be an x86 executable, and the kernel should be an
>     arm, and mkimage should generate a uImage kernel.  So, the complaint
>     from do_package that the executables are different architectures
>     makes sense.
>
>     Bruce, I think what you're recommending I do is remove mkImage after
>     the compile and image creation are complete but before packaging
>     takes place, as that's where the QA is complaining.  (Which makes a
>     lot of sense)  I just want to list the details so I'm sure I
>     understand the problem completely.
>
>     To this end I've added a do_install_append to the end of my recipe
>     to remove the mkImage file.  I tried it a couple of different times,
>     but it looks like I'm seeing the same error message each time.  I
>     think the issue is I just don't understand the bb process well
>     enough.  Maybe I'm trying to delete the file at the wrong stage, or
>     maybe there's something system specific I don't know about.  I
>     copied the guts of this recipe from a linux-yocto-custom_3.6 bb
>     file, which compiled cleanly for this chip.  I'll list the bb recipe
>     below.  Any advice is greatly appreciated.
>
>     linux-yocto-custom_2.6.39.bb <http://linux-yocto-custom_2.6.39.bb>
>     -------------------------------------
>     inherit kernel
>     require recipes-kernel/linux/linux-yocto.inc
>
>     LICENSE = "GPLv2"
>     LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>     #DEFAULT_PREFERENCE = "-1"
>
>
>     LINUX_VERSION = "2.6.39"
>     LINUX_VERSION_EXTENSION ?= "-custom"
>     KBRANCH = "master"
>     META = "meta"
>
>
>     SRC_URI =
>     "git:///home/blah/blah/blah/linux-2.6.39;protocol=file;branch=master"
>     SRC_URI += "file://defconfig"
>     #SRC_URI += "file://extra-cflags-override.patch"
>
>     KERNEL_EXTRA_ARGS="LOADADDR=0x2000000  V=1
>     KCFLAGS=-mno-unaligned-access"
>
>
>     UBOOT_ENTRYPOINT="2000000"
>
>     SRCREV="master"
>
>
>     PV = "${LINUX_VERSION}"
>
>     PR = "r1"
>
>     S = "${WORKDIR}/git"
>     EXTRA_OEMAKE = "${PARALLEL_MAKE}"
>
>     KERNEL_IMAGETYPE = "uImage"
>
>
>     # Override COMPATIBLE_MACHINE to include your machine in a bbappend
>     # file. Leaving it empty here ensures an early explicit build failure.
>     #COMPATIBLE_MACHINE = "(xo1-mvs)"
>     COMPATIBLE_MACHINE = "(sama5d3xek|at91sam9x5ek)"
>
>     # clean up after module installation
>     do_install_append() {
>          rm -f mkimage
>
>     }
>
>
>     On Mon, Nov 4, 2013 at 11:28 PM, Bruce Ashfield
>     <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>>
>     wrote:
>
>         On 13-11-04 8:41 PM, Maxwell Bottiger wrote:
>
>             I'm building a custom kernel, and I think I'm nearly there.
>               I'm seeing
>             an error when running mkimage.  bitbake is complaining about an
>             architecure mismatch, but I don't know which files it is
>             comparing, or
>             if the mismatch really matters (32bit x86 vs 64bit x86 or
>             whatever)
>
>             Here's the error string:
>
>             WARNING: File '/usr/src/kernel/mkimage' from
>             linux-yocto-custom was
>             already stripped, this will prevent future debugging!
>
>             ERROR: QA Issue: Architecture did not match (40 to 3) on
>             /work/at91sam9x5ek-poky-linux-__gnueabi/linux-yocto-custom/2.__6.39-r1/packages-split/kernel-__dev/usr/src/kernel/mkimage
>
>
>         The obvious answer is .. it is mkimage that it is complaining
>         about. You
>         are packaging mkimage (which is likely an x86 elf file) into your
>         kernel-dev package (which is your target arch, likely powerpc or
>         ARM). Hence the QA error.
>
>         In your kernel recipe, you can remove the file before packaging
>         (i.e. in the do_install_append) or inhibit the QA check for your
>         recipe.
>
>         What exactly does your kernel recipe look like ? What is
>         building mkimage
>         and then getting it installed into /usr/src/kernel ?
>
>         My suggestion is to track that down, versus inhibiting the QA check.
>
>         Bruce
>
>
>             ERROR: QA run found fatal errors. Please consider fixing them.
>
>             ERROR: Function failed: do_package_qa
>
>             ERROR: Logfile of failure stored in:
>             /home/sleepylight/workspace/__yocto/poky/build-atmel/tmp/__work/at91sam9x5ek-poky-linux-__gnueabi/linux-yocto-custom/2.__6.39-r1/temp/log.do_package.__11527
>
>             ERROR: Task 18
>             (/home/sleepylight/workspace/__yocto/poky/meta-atmel/recipes-__kernel/linux/linux-yocto-__custom_2.6.39.bb
>             <http://linux-yocto-custom_2.6.39.bb>
>             <http://linux-yocto-custom_2.__6.39.bb
>             <http://linux-yocto-custom_2.6.39.bb>>, do_package) failed
>             with exit code '1'
>
>
>
>             I'm building on a 64 bit linux platform, I don't know if
>             that makes a
>             difference.
>
>             Thanks all.  I'm nearly there!
>
>             -Max
>
>
>             _________________________________________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             https://lists.yoctoproject.__org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


