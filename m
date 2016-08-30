Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A80E00C8E; Tue, 30 Aug 2016 04:33:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC94EE00C19
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 04:33:26 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id u7UBXOUE004325
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 14:33:24 +0300
To: yocto@yoctoproject.org
References: <a32fef25-dfed-2e61-1a38-e79063078062@vitheia.com>
	<704c1142-0ba3-f5df-2801-c6d31ee19574@windriver.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <e59e7316-2027-85f0-26a4-c9bbabd504a9@vitheia.com>
Date: Tue, 30 Aug 2016 14:33:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.2.0
MIME-Version: 1.0
In-Reply-To: <704c1142-0ba3-f5df-2801-c6d31ee19574@windriver.com>
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
X-List-Received-Date: Tue, 30 Aug 2016 11:33:31 -0000
Content-Type: multipart/alternative;
	boundary="------------9D71658F8193EBAE2F2E1C1E"

--------------9D71658F8193EBAE2F2E1C1E
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Thanks for your answer Bruce !

I've applied the patch you've mentioned 
(http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&id=0fe665e69983fe9ef38319deedcb78ecd7b165cf) 
to my recipe, linux-stable_4.7.bb, providing the dtb:

KERNEL_DEVICETREE_qemuarm = "versatile-pb.dtb"
QEMU_DTB_qemuarm = "zImage-versatile-pb"

I've also updated my runqemu-internal script to add the dtb file to the 
qemu options.
For some reason the QEMU_DTB variable is empty so I hard coded the dtb 
filename just to make a test.

So now, when running the qemuarm machine, the dtb file is provided with 
the "dtb" parameter.
The result is the same, a black screen.
As mentioned, my recipe is using the 4.7.2 kernel: the Latest Stable Kernel

Then I applied the patch to the linux-yocto-dev.bb recipe (I'm on 
krogoth) - this is using kernel 4.8
This boots correctly - without the dtb patch the result is the same: 
black screen.

But I'm stuck with the 4.7.2 kernel - the Latest Stable Kernel, any 
suggestions on how to accomplish this ? It looks like the patch is not 
enough for kernel 4.7.2.

Thanks in advance.
Mircea

On 08/29/2016 04:02 PM, Bruce Ashfield wrote:
> On 2016-08-29 07:34 AM, Mircea Gliga wrote:
>> Hi
>>
>> I'm using krogoth and trying to create a qemu arm machine with the
>> latest stable kernel 4.7.2.
>> I created a recipe,recipes-kernel/linux/linux-stable_4.7.bb, in my layer
>> with the following contents:
>>
>> ---
>> inherit kernel
>> require recipes-kernel/linux/linux-yocto.inc
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>
>> KBRANCH ?= "linux-4.7.y"
>>
>> SRCREV ?= "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
>>
>> KBRANCH_sama5d4-xplained ?= "linux-4.7.y"
>> SRCREV_machine_sama5d4-xplained ?=
>> "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
>>
>> KERNEL_DEVICETREE_sama5d4-xplained = "at91-sama5d4_xplained.dtb"
>>
>> KBRANCH_qemuarm ?= "linux-4.7.y"
>>
>> SRC_URI =
>> "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;bareclone=1;branch=${KBRANCH}" 
>>
>>
>>
>> SRC_URI += "file://defconfig"
>>
>> LINUX_VERSION = "4.7.2"
>> PV = "${LINUX_VERSION}+git${SRCPV}"
>>
>> COMPATIBLE_MACHINE = "sama5d4-xplained|qemuarm"
>> ---
>>
>> As you can see, I'm planning to use this recipe for multiple machines.
>>
>> In the recipes-kernel/linux/linux-stable-4.7/qemuarm/ directory I copied
>> the defconfig file.
>> I've created this defconfig file by:
>> * sourcing my build environment, from my build directory: source
>> build-qemu/tmp/environment-setup-armv5e-poky-linux-gnueabi
>> * running "make vexpress_defconfig" in the kernel build directory. (I've
>> used this tutorial
>> https://balau82.wordpress.com/2012/03/31/compile-linux-kernel-3-2-for-arm-and-emulate-with-qemu/ 
>>
>> )
>> This outputed:
>>
>> ---
>> $ make vexpress_defconfig
>>   GEN     ./Makefile
>> #
>> # configuration written to .config
>> #
>> ---
>>
>> * renamed .config to defconfig and then copy it in
>> recipes-kernel/linux/linux-stable-4.7/qemuarm/
>>
>> In my local.conf I've added, in order to use my custom kernel for the
>> qemu machine:
>>
>> ---
>> MACHINE ??= "qemuarm"
>> PREFERRED_PROVIDER_virtual/kernel_qemuarm ?= "linux-stable"
>> ---
>>
>> Everything builds without errors (bitbake linux-stable), but when I
>> start qemu (runqemu qemuarm) I only get a black screen in the QEMU 
>> window.
>> This is the output of $ runqemu qemuarm:
>> ---
>> Continuing with the following parameters:
>> KERNEL:
>> [/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/zImage-qemuarm.bin] 
>>
>>
>> ROOTFS:
>> [/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/custom-minimal-image-qemuarm-20160823102657.rootfs.ext4] 
>>
>>
>> FSTYPE: [ext4]
>> Setting up tap interface under sudo
>> [sudo] password for user:
>> Acquiring lockfile for tap0...
>> Running qemu-system-arm...
>> /home/user/yocto-k/build-qemu/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-arm 
>>
>> -kernel
>> /home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/zImage-qemuarm.bin 
>>
>> -net nic,model=virtio -net
>> tap,vlan=0,ifname=tap0,script=no,downscript=no -M versatilepb -drive
>> file=/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/custom-minimal-image-qemuarm-20160823102657.rootfs.ext4,if=virtio,format=raw 
>>
>> -no-reboot -show-cursor -usb -usbdevice tablet -no-reboot -m 128 -serial
>> mon:vc -serial null -append "root=/dev/vda rw console=ttyAMA0,115200
>> console=tty ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=128M
>> highres=off rootfstype=ext4 "
>> ---
>>
>> This is my build configuration:
>> Build Configuration:
>> BB_VERSION        = "1.30.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "universal"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "qemuarm"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "2.1.1"
>> TUNE_FEATURES     = "arm armv5 thumb dsp"
>> TARGET_FPU        = "soft"
>> meta
>> meta-poky
>> meta-yocto-bsp    = "krogoth:12eb72ee3b02f826a156ff4e396c770f2b93571e"
>> meta-smartcom     = "master:121dbfb9f416de8442bbad1dc150271fd50b38e6"
>> meta-atmel        = "krogoth:01ff01073dd8fa1463b7841fb0a8caa44559acdd"
>> meta-oe
>> meta-networking
>> meta-python       = "krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
>>
>>
>> When I use the default linux-yocto as the preferred kernel (v 4.4)
>> everything works as expected.
>> Do you have any suggestions? Is there a problem with the defconfig file
>> provided ?
>> What is the proper way of creating this defconfig file for qemuarm ?
>> I also tried using the .config file created when building
>> linux-yocto_4.4 but got the same result.
>> I tried the defconfig used for the
>
> You need a variant of the patch I'm going to submit later today:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&id=0fe665e69983fe9ef38319deedcb78ecd7b165cf 
>
>
> I'm about to bump linux-yocto to 4.8, which ran into the device tree
> changes for the versatile/vexpress class boards. You are seeing the
> same thing.
>
>
> Bruce
>
>
>>
>> Thanks !
>>
>


--------------9D71658F8193EBAE2F2E1C1E
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Thanks for your answer Bruce !<br>
    <br>
    I've applied the patch you've mentioned
(<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&amp;id=0fe665e69983fe9ef38319deedcb78ecd7b165cf">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&amp;id=0fe665e69983fe9ef38319deedcb78ecd7b165cf</a>)
    to my recipe, linux-stable_4.7.bb, providing the dtb:<br>
    <br>
    KERNEL_DEVICETREE_qemuarm = "versatile-pb.dtb"
    <div class="add">QEMU_DTB_qemuarm = "zImage-versatile-pb"</div>
    <br>
    I've also updated my runqemu-internal script to add the dtb file to
    the qemu options.<br>
    For some reason the QEMU_DTB variable is empty so I hard coded the
    dtb filename just to make a test.<br>
    <br>
    So now, when running the qemuarm machine, the dtb file is provided
    with the "dtb" parameter.<br>
    The result is the same, a black screen.<br>
    As mentioned, my recipe is using the 4.7.2 kernel: the Latest Stable
    Kernel<br>
    <br>
    Then I applied the patch to the linux-yocto-dev.bb recipe (I'm on
    krogoth) - this is using kernel 4.8<br>
    This boots correctly - without the dtb patch the result is the same:
    black screen.<br>
    <br>
    But I'm stuck with the 4.7.2 kernel - the Latest Stable Kernel, any
    suggestions on how to accomplish this ? It looks like the patch is
    not enough for kernel 4.7.2.<br>
    <br>
    Thanks in advance.<br>
    Mircea<br>
    <br>
    <div class="moz-cite-prefix">On 08/29/2016 04:02 PM, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote
      cite="mid:704c1142-0ba3-f5df-2801-c6d31ee19574@windriver.com"
      type="cite">On 2016-08-29 07:34 AM, Mircea Gliga wrote:
      <br>
      <blockquote type="cite">Hi
        <br>
        <br>
        I'm using krogoth and trying to create a qemu arm machine with
        the
        <br>
        latest stable kernel 4.7.2.
        <br>
        I created a recipe,recipes-kernel/linux/linux-stable_4.7.bb, in
        my layer
        <br>
        with the following contents:
        <br>
        <br>
        ---
        <br>
        inherit kernel
        <br>
        require recipes-kernel/linux/linux-yocto.inc
        <br>
        <br>
        FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
        <br>
        <br>
        KBRANCH ?= "linux-4.7.y"
        <br>
        <br>
        SRCREV ?= "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
        <br>
        <br>
        KBRANCH_sama5d4-xplained ?= "linux-4.7.y"
        <br>
        SRCREV_machine_sama5d4-xplained ?=
        <br>
        "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
        <br>
        <br>
        KERNEL_DEVICETREE_sama5d4-xplained = "at91-sama5d4_xplained.dtb"
        <br>
        <br>
        KBRANCH_qemuarm ?= "linux-4.7.y"
        <br>
        <br>
        SRC_URI =
        <br>
"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;bareclone=1;branch=${KBRANCH}"
        <br>
        <br>
        <br>
        SRC_URI += <a class="moz-txt-link-rfc2396E" href="file://defconfig">"file://defconfig"</a>
        <br>
        <br>
        LINUX_VERSION = "4.7.2"
        <br>
        PV = "${LINUX_VERSION}+git${SRCPV}"
        <br>
        <br>
        COMPATIBLE_MACHINE = "sama5d4-xplained|qemuarm"
        <br>
        ---
        <br>
        <br>
        As you can see, I'm planning to use this recipe for multiple
        machines.
        <br>
        <br>
        In the recipes-kernel/linux/linux-stable-4.7/qemuarm/ directory
        I copied
        <br>
        the defconfig file.
        <br>
        I've created this defconfig file by:
        <br>
        * sourcing my build environment, from my build directory: source
        <br>
        build-qemu/tmp/environment-setup-armv5e-poky-linux-gnueabi
        <br>
        * running "make vexpress_defconfig" in the kernel build
        directory. (I've
        <br>
        used this tutorial
        <br>
<a class="moz-txt-link-freetext" href="https://balau82.wordpress.com/2012/03/31/compile-linux-kernel-3-2-for-arm-and-emulate-with-qemu/">https://balau82.wordpress.com/2012/03/31/compile-linux-kernel-3-2-for-arm-and-emulate-with-qemu/</a>
        <br>
        )
        <br>
        This outputed:
        <br>
        <br>
        ---
        <br>
        $ make vexpress_defconfig
        <br>
          GEN     ./Makefile
        <br>
        #
        <br>
        # configuration written to .config
        <br>
        #
        <br>
        ---
        <br>
        <br>
        * renamed .config to defconfig and then copy it in
        <br>
        recipes-kernel/linux/linux-stable-4.7/qemuarm/
        <br>
        <br>
        In my local.conf I've added, in order to use my custom kernel
        for the
        <br>
        qemu machine:
        <br>
        <br>
        ---
        <br>
        MACHINE ??= "qemuarm"
        <br>
        PREFERRED_PROVIDER_virtual/kernel_qemuarm ?= "linux-stable"
        <br>
        ---
        <br>
        <br>
        Everything builds without errors (bitbake linux-stable), but
        when I
        <br>
        start qemu (runqemu qemuarm) I only get a black screen in the
        QEMU window.
        <br>
        This is the output of $ runqemu qemuarm:
        <br>
        ---
        <br>
        Continuing with the following parameters:
        <br>
        KERNEL:
        <br>
[/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/zImage-qemuarm.bin]
        <br>
        <br>
        ROOTFS:
        <br>
[/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/custom-minimal-image-qemuarm-20160823102657.rootfs.ext4]
        <br>
        <br>
        FSTYPE: [ext4]
        <br>
        Setting up tap interface under sudo
        <br>
        [sudo] password for user:
        <br>
        Acquiring lockfile for tap0...
        <br>
        Running qemu-system-arm...
        <br>
/home/user/yocto-k/build-qemu/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-arm
        <br>
        -kernel
        <br>
/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/zImage-qemuarm.bin
        <br>
        -net nic,model=virtio -net
        <br>
        tap,vlan=0,ifname=tap0,script=no,downscript=no -M versatilepb
        -drive
        <br>
file=/home/user/yocto-k/build-qemu/tmp/deploy/images/qemuarm/custom-minimal-image-qemuarm-20160823102657.rootfs.ext4,if=virtio,format=raw
        <br>
        -no-reboot -show-cursor -usb -usbdevice tablet -no-reboot -m 128
        -serial
        <br>
        mon:vc -serial null -append "root=/dev/vda rw
        console=ttyAMA0,115200
        <br>
        console=tty ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=128M
        <br>
        highres=off rootfstype=ext4 "
        <br>
        ---
        <br>
        <br>
        This is my build configuration:
        <br>
        Build Configuration:
        <br>
        BB_VERSION        = "1.30.0"
        <br>
        BUILD_SYS         = "x86_64-linux"
        <br>
        NATIVELSBSTRING   = "universal"
        <br>
        TARGET_SYS        = "arm-poky-linux-gnueabi"
        <br>
        MACHINE           = "qemuarm"
        <br>
        DISTRO            = "poky"
        <br>
        DISTRO_VERSION    = "2.1.1"
        <br>
        TUNE_FEATURES     = "arm armv5 thumb dsp"
        <br>
        TARGET_FPU        = "soft"
        <br>
        meta
        <br>
        meta-poky
        <br>
        meta-yocto-bsp    =
        "krogoth:12eb72ee3b02f826a156ff4e396c770f2b93571e"
        <br>
        meta-smartcom     =
        "master:121dbfb9f416de8442bbad1dc150271fd50b38e6"
        <br>
        meta-atmel        =
        "krogoth:01ff01073dd8fa1463b7841fb0a8caa44559acdd"
        <br>
        meta-oe
        <br>
        meta-networking
        <br>
        meta-python       =
        "krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
        <br>
        <br>
        <br>
        When I use the default linux-yocto as the preferred kernel (v
        4.4)
        <br>
        everything works as expected.
        <br>
        Do you have any suggestions? Is there a problem with the
        defconfig file
        <br>
        provided ?
        <br>
        What is the proper way of creating this defconfig file for
        qemuarm ?
        <br>
        I also tried using the .config file created when building
        <br>
        linux-yocto_4.4 but got the same result.
        <br>
        I tried the defconfig used for the
        <br>
      </blockquote>
      <br>
      You need a variant of the patch I'm going to submit later today:
      <br>
      <br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&amp;id=0fe665e69983fe9ef38319deedcb78ecd7b165cf">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&amp;id=0fe665e69983fe9ef38319deedcb78ecd7b165cf</a>
      <br>
      <br>
      I'm about to bump linux-yocto to 4.8, which ran into the device
      tree
      <br>
      changes for the versatile/vexpress class boards. You are seeing
      the
      <br>
      same thing.
      <br>
      <br>
      <br>
      Bruce
      <br>
      <br>
      <br>
      <blockquote type="cite">
        <br>
        Thanks !
        <br>
        <br>
      </blockquote>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------9D71658F8193EBAE2F2E1C1E--
