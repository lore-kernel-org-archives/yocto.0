Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 597C9E00CD9; Tue, 30 Aug 2016 08:09:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16C55E00CD4
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 08:09:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u7UF96QI021021
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 30 Aug 2016 08:09:06 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 30 Aug 2016 08:09:05 -0700
To: Mircea Gliga <mircea.gliga@vitheia.com>, <yocto@yoctoproject.org>
References: <a32fef25-dfed-2e61-1a38-e79063078062@vitheia.com>
	<704c1142-0ba3-f5df-2801-c6d31ee19574@windriver.com>
	<e59e7316-2027-85f0-26a4-c9bbabd504a9@vitheia.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <706ab63f-2747-a14f-1ce6-dab3c1accbfc@windriver.com>
Date: Tue, 30 Aug 2016 11:09:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <e59e7316-2027-85f0-26a4-c9bbabd504a9@vitheia.com>
Subject: Re: custom linux kernel recipe
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
X-List-Received-Date: Tue, 30 Aug 2016 15:09:21 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-30 07:33 AM, Mircea Gliga wrote:
> Thanks for your answer Bruce !
>
> I've applied the patch you've mentioned
> (http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&id=0fe665e69983fe9ef38319deedcb78ecd7b165cf)
> to my recipe, linux-stable_4.7.bb, providing the dtb:
>
> KERNEL_DEVICETREE_qemuarm = "versatile-pb.dtb"
> QEMU_DTB_qemuarm = "zImage-versatile-pb"
>
> I've also updated my runqemu-internal script to add the dtb file to the
> qemu options.
> For some reason the QEMU_DTB variable is empty so I hard coded the dtb
> filename just to make a test.

I actually had that in the wrong place. I've since removed the variable
from the kernel recipes. Sorry about that :D

>
> So now, when running the qemuarm machine, the dtb file is provided with
> the "dtb" parameter.
> The result is the same, a black screen.
> As mentioned, my recipe is using the 4.7.2 kernel: the Latest Stable Kernel
>
> Then I applied the patch to the linux-yocto-dev.bb recipe (I'm on
> krogoth) - this is using kernel 4.8
> This boots correctly - without the dtb patch the result is the same:
> black screen.
>
> But I'm stuck with the 4.7.2 kernel - the Latest Stable Kernel, any
> suggestions on how to accomplish this ? It looks like the patch is not
> enough for kernel 4.7.2.

I'm finishing up 4.8 today, but without doing a boot test, I can't say
for sure. I'll see if I can cycle in some korg 4.7.x testing tomorrow to
see if I can get a clean boot.

Bruce

>
> Thanks in advance.
> Mircea
>
> On 08/29/2016 04:02 PM, Bruce Ashfield wrote:
>> On 2016-08-29 07:34 AM, Mircea Gliga wrote:
>>> Hi
>>>
>>> I'm using krogoth and trying to create a qemu arm machine with the
>>> latest stable kernel 4.7.2.
>>> I created a recipe,recipes-kernel/linux/linux-stable_4.7.bb, in my layer
>>> with the following contents:
>>>
>>> ---
>>> inherit kernel
>>> require recipes-kernel/linux/linux-yocto.inc
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>>
>>> KBRANCH ?= "linux-4.7.y"
>>>
>>> SRCREV ?= "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
>>>
>>> KBRANCH_sama5d4-xplained ?= "linux-4.7.y"
>>> SRCREV_machine_sama5d4-xplained ?=
>>> "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
>>>
>>> KERNEL_DEVICETREE_sama5d4-xplained = "at91-sama5d4_xplained.dtb"
>>>
>>> KBRANCH_qemuarm ?= "linux-4.7.y"
>>>
>>> SRC_URI =
>>> "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;bareclone=1;branch=${KBRANCH}"
>>>
>>>
>>>
>>> SRC_URI += "file://defconfig"
>>>
>>> LINUX_VERSION = "4.7.2"
>>> PV = "${LINUX_VERSION}+git${SRCPV}"
>>>
>>> COMPATIBLE_MACHINE = "sama5d4-xplained|qemuarm"
>>> ---
>>>
>>> As you can see, I'm planning to use this recipe for multiple machines.
>>>
>>> In the recipes-kernel/linux/linux-stable-4.7/qemuarm/ directory I copied
>>> the defconfig file.
>>> I've created this defconfig file by:
>>> * sourcing my build environment, from my build directory: source
>>> build-qemu/tmp/environment-setup-armv5e-poky-linux-gnueabi
>>> * running "make vexpress_defconfig" in the kernel build directory. (I've
>>> used this tutorial
>>> https://balau82.wordpress.com/2012/03/31/compile-linux-kernel-3-2-for-arm-and-emulate-with-qemu/
>>>
>>> )
>>> This outputed:
>>>
>>> ---
>>> $ make vexpress_defconfig
>>>   GEN     ./Makefile
>>> #
>>> # configuration written to .config
>>> #
>>> ---
>>>
>>> * renamed .config to defconfig and then copy it in
>>> recipes-kernel/linux/linux-stable-4.7/qemuarm/
>>>
>>> In my local.conf I've added, in order to use my custom kernel for the
>>> qemu machine:
>>>
>>> ---
>>> MACHINE ??= "qemuarm"
>>> PREFERRED_PROVIDER_virtual/kernel_qemuarm ?= "linux-stable"
>>> ---
>>>
>>> Everything builds without errors (bitbake linux-stable), but when I
>>> start qemu (runqemu qemuarm) I only get a black screen in the QEMU
>>> window.
>>> This is the output of $ runqemu qemuarm:
>>> ---
>>> Continuing with the following parameters:
>>> KERNEL:
>>> [/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/zImage-qemuarm.bin]
>>>
>>>
>>> ROOTFS:
>>> [/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/custom-minimal-image-qemuarm-20160823102657.rootfs.ext4]
>>>
>>>
>>> FSTYPE: [ext4]
>>> Setting up tap interface under sudo
>>> [sudo] password for user:
>>> Acquiring lockfile for tap0...
>>> Running qemu-system-arm...
>>> /home/user/yocto-k/build-qemu/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-arm
>>>
>>> -kernel
>>> /home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/zImage-qemuarm.bin
>>>
>>> -net nic,model=virtio -net
>>> tap,vlan=0,ifname=tap0,script=no,downscript=no -M versatilepb -drive
>>> file=/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/custom-minimal-image-qemuarm-20160823102657.rootfs.ext4,if=virtio,format=raw
>>>
>>> -no-reboot -show-cursor -usb -usbdevice tablet -no-reboot -m 128 -serial
>>> mon:vc -serial null -append "root=/dev/vda rw console=ttyAMA0,115200
>>> console=tty ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=128M
>>> highres=off rootfstype=ext4 "
>>> ---
>>>
>>> This is my build configuration:
>>> Build Configuration:
>>> BB_VERSION        = "1.30.0"
>>> BUILD_SYS         = "x86_64-linux"
>>> NATIVELSBSTRING   = "universal"
>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>> MACHINE           = "qemuarm"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "2.1.1"
>>> TUNE_FEATURES     = "arm armv5 thumb dsp"
>>> TARGET_FPU        = "soft"
>>> meta
>>> meta-poky
>>> meta-yocto-bsp    = "krogoth:12eb72ee3b02f826a156ff4e396c770f2b93571e"
>>> meta-smartcom     = "master:121dbfb9f416de8442bbad1dc150271fd50b38e6"
>>> meta-atmel        = "krogoth:01ff01073dd8fa1463b7841fb0a8caa44559acdd"
>>> meta-oe
>>> meta-networking
>>> meta-python       = "krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
>>>
>>>
>>> When I use the default linux-yocto as the preferred kernel (v 4.4)
>>> everything works as expected.
>>> Do you have any suggestions? Is there a problem with the defconfig file
>>> provided ?
>>> What is the proper way of creating this defconfig file for qemuarm ?
>>> I also tried using the .config file created when building
>>> linux-yocto_4.4 but got the same result.
>>> I tried the defconfig used for the
>>
>> You need a variant of the patch I'm going to submit later today:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&id=0fe665e69983fe9ef38319deedcb78ecd7b165cf
>>
>>
>> I'm about to bump linux-yocto to 4.8, which ran into the device tree
>> changes for the versatile/vexpress class boards. You are seeing the
>> same thing.
>>
>>
>> Bruce
>>
>>
>>>
>>> Thanks !
>>>
>>
>
>
>


