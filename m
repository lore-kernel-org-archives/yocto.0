Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCAFEE007A2; Sun, 15 Jan 2017 05:09:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C54DE0077F
	for <yocto@yoctoproject.org>; Sun, 15 Jan 2017 05:09:10 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2905268A01C; Sun, 15 Jan 2017 13:09:10 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1AFC668A019;
	Sun, 15 Jan 2017 13:08:52 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B1A946740223;
	Sun, 15 Jan 2017 14:08:51 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <a45b57bd-6bf8-4bf1-1bf3-5228d43c12f1@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <785f1ba4-4c20-8d2b-d429-36ef968ee2a1@mlbassoc.com>
Date: Sun, 15 Jan 2017 14:08:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <a45b57bd-6bf8-4bf1-1bf3-5228d43c12f1@mlbassoc.com>
Subject: Re: Debugging question
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
X-List-Received-Date: Sun, 15 Jan 2017 13:09:29 -0000
X-Groupsio-MsgNum: 33832
Content-Type: multipart/mixed; boundary="------------1A0D05D8EE547437669CEFA5"

--------------1A0D05D8EE547437669CEFA5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-15 13:44, Gary Thomas wrote:
> I'm trying to find a problem I have with recent [master] OE-core.
> In particular, the X server is crashing on launch, so I thought
> I'd run GDB:
>
> root@teton-p0382:~# gdb /usr/bin/X
>    <... boilerplate snipped ...>
> Reading symbols from /usr/bin/X...Reading symbols from /usr/bin/.debug/Xorg...done.
> done.
> (gdb) r
> Starting program: /usr/bin/X
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library "/lib/libthread_db.so.1".
>
> Program received signal SIGILL, Illegal instruction.
> 0xb6f4a8e8 in ?? () from /usr/lib/libcrypto.so.1.0.0
> _armv7_tick () at armv4cpuid.S:94
> 94              mrrc    p15,1,r0,r1,c14         @ CNTVCT
> (gdb) bt
> #0  _armv7_tick () at armv4cpuid.S:94
> #1  0xb6e6c7d4 in OPENSSL_cpuid_setup () from /usr/lib/libcrypto.so.1.0.0
> #2  0xb6fdf34c in call_init (l=<optimized out>, argc=argc@entry=1, argv=argv@entry=0xbefffe14,
>     env=env@entry=0xbefffe1c) at /usr/src/debug/glibc/2.24-r0/git/elf/dl-init.c:72
> #3  0xb6fdf4a8 in call_init (env=<optimized out>, argv=<optimized out>, argc=<optimized out>,
>     l=<optimized out>) at /usr/src/debug/glibc/2.24-r0/git/elf/dl-init.c:30
> #4  _dl_init (main_map=0xb6fff958, argc=1, argv=0xbefffe14, env=0xbefffe1c)
>     at /usr/src/debug/glibc/2.24-r0/git/elf/dl-init.c:120
> #5  0xb6fcfac4 in _dl_start_user () from /lib/ld-linux-armhf.so.3
> Backtrace stopped: previous frame identical to this frame (corrupt stack?)
> (gdb) info sharedlibrary
> From        To          Syms Read   Shared Object Library
> 0xb6fcf800  0xb6feaad4  Yes         /lib/ld-linux-armhf.so.3
> 0xb6fa5538  0xb6fba9c0  Yes (*)     /lib/libudev.so.1
> 0xb6e6c680  0xb6f4af50  Yes (*)     /usr/lib/libcrypto.so.1.0.0
> 0xb6e1792c  0xb6e187e8  Yes         /lib/libdl.so.2
> 0xb6e02800  0xb6e06848  Yes         /usr/lib/libpciaccess.so.0
> 0xb6de807c  0xb6def3d4  Yes         /usr/lib/libdrm.so.2
> 0xb6d5e028  0xb6dce8b0  Yes         /usr/lib/libpixman-1.so.0
> 0xb6d1f9c0  0xb6d42dd4  Yes         /usr/lib/libXfont2.so.2
> 0xb6d0ba00  0xb6d0c5b0  Yes         /usr/lib/libXau.so.6
> 0xb6cf7f80  0xb6cf9614  Yes         /usr/lib/libXdmcp.so.6
> 0xb6c7cd38  0xb6cb0530  Yes         /lib/libm.so.6
> 0xb6c550c0  0xb6c63d74  Yes         /lib/libpthread.so.0
> 0xb6b2b000  0xb6c1d070  Yes         /lib/libc.so.6
> 0xb6b00cfc  0xb6b035dc  Yes         /usr/lib/libfontenc.so.1
> 0xb6a7e6cc  0xb6ad84c4  Yes         /usr/lib/libfreetype.so.6
> 0xb6a588e8  0xb6a649e0  Yes         /lib/libz.so.1
> (*): Shared library is missing debugging information.
>
> Questions
>
> * Any ideas how upgrading the X server now calls into openssl?
>   I've bisected this error down to the change in the X server
>   recipe to v1.19 from v1.18.4
> * What about the illegal instruction?  I'm running on an i.MX6Q
>   which is cortexa9hf-neon
>
> In trying to track this down, I made a patch to the openssl recipe.
> Madness followed as a TON of packages had to be rebuilt and I can't
> see from the dependencies (or recipes) why.  Here's my build log and
> the dependencies for my build.  Maybe someone can point out what went
> so wacky?
>
> Thanks
>

Sorry, wrong build log file :-(

To be clear, I had a completed build which I was debugging.  I only changed
the openssl recipe and rebuilt my image and this log shows all the stuff
that happened.


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------1A0D05D8EE547437669CEFA5
Content-Type: text/x-log;
 name="20170115080040.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="20170115080040.log"

NOTE: Started PRServer with DBfile: /tmp/testing-p0382/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 41002, PID: 18751
WARNING: No recipes available for:
  /tmp/poky-cutting-edge/meta-amltd/packages/wpa-supplicant/wpa-supplicant_2.6.bbappend
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-amltd-linux-gnueabi"
MACHINE           = "teton-p0382"
DISTRO            = "amltd"
DISTRO_VERSION    = "2.2+snapshot-20170115"
TUNE_FEATURES     = "arm armv7a vfp thumb neon       callconvention-hard cortexa9"
TARGET_FPU        = "hard"
meta              = "HEAD:1207d6d32e94d2c702b2f470d7e2dcf680e5db68"
meta-oe           = "cutting-edge:c023e04552612f450f626362daec6b56579eb3b7"
meta-amltd        = "cutting-edge:1754631d5ec585f3cacddc5ada6b20e244530700"
meta-teton-imx6-p0382 = "cutting-edge:a99bf487336f8771e347d623f66f03072e48176b"
meta-freescale    = "HEAD:5495f2b9bc4d90c9f4197574a547df43c664a928"
meta-freescale-3rdparty = "cutting-edge:69ed94bb781a9c1bfbba4fb3026e4cbf3a194878"
meta-webserver    = "cutting-edge:5f5eaf541aa5445c517ef6c7d22839812c02d5b9"
meta-browser      = "cutting-edge:fb4e542079958b6afde324a1e9bfdd695842aeeb"

NOTE: Executing SetScene Tasks
NOTE: Running setscene task 637 of 1613 (/tmp/poky-cutting-edge/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-theme_0.15.bb:do_package_qa_setscene)
NOTE: Running setscene task 642 of 1613 (/tmp/poky-cutting-edge/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.8.bb:do_package_qa_setscene)
NOTE: Running setscene task 675 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/run-postinsts/run-postinsts_1.0.bb:do_package_qa_setscene)
NOTE: Running setscene task 687 of 1613 (/tmp/poky-cutting-edge/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.8.bb:do_package_write_ipk_setscene)
NOTE: recipe hicolor-icon-theme-0.15-r0: task do_package_qa_setscene: Started
NOTE: recipe run-postinsts-1.0-r9: task do_package_qa_setscene: Started
NOTE: recipe linux-libc-headers-4.8-r0: task do_package_qa_setscene: Started
NOTE: recipe linux-libc-headers-4.8-r0: task do_package_write_ipk_setscene: Started
NOTE: recipe hicolor-icon-theme-0.15-r0: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 703 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_populate_lic_setscene)
NOTE: recipe run-postinsts-1.0-r9: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 729 of 1613 (/tmp/poky-cutting-edge/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb:do_package_qa_setscene)
NOTE: recipe linux-libc-headers-4.8-r0: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 748 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb:do_package_qa_setscene)
NOTE: recipe linux-libc-headers-4.8-r0: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 769 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/mklibs/mklibs-native_0.1.41.bb:do_populate_sysroot_setscene)
NOTE: recipe openssl-native-1.0.2j-r0: task do_populate_lic_setscene: Started
NOTE: recipe update-rc.d-0.7-r5: task do_package_qa_setscene: Started
NOTE: recipe mklibs-native-0.1.41-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe liberation-fonts-1_1.04-r4: task do_package_qa_setscene: Started
NOTE: recipe update-rc.d-0.7-r5: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 785 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb:do_package_write_ipk_setscene)
NOTE: recipe liberation-fonts-1_1.04-r4: task do_package_write_ipk_setscene: Started
NOTE: recipe liberation-fonts-1_1.04-r4: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 812 of 1613 (/tmp/poky-cutting-edge/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb:do_package_write_ipk_setscene)
NOTE: recipe update-rc.d-0.7-r5: task do_package_write_ipk_setscene: Started
NOTE: recipe openssl-native-1.0.2j-r0: task do_populate_lic_setscene: Succeeded
NOTE: Running setscene task 823 of 1613 (/tmp/poky-cutting-edge/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_package_write_ipk_setscene)
NOTE: recipe liberation-fonts-1_1.04-r4: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 829 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb:do_populate_sysroot_setscene)
NOTE: recipe liberation-fonts-1_1.04-r4: task do_populate_sysroot_setscene: Started
NOTE: recipe update-rc.d-0.7-r5: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 843 of 1613 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow-securetty_4.2.1.bb:do_package_qa_setscene)
NOTE: recipe mklibs-native-0.1.41-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 857 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_package_qa_setscene)
NOTE: recipe liberation-fonts-1_1.04-r4: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 864 of 1613 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow-securetty_4.2.1.bb:do_package_write_ipk_setscene)
NOTE: recipe formfactor-0.0-r45: task do_package_write_ipk_setscene: Started
NOTE: recipe qemuwrapper-cross-1.0-r0: task do_package_qa_setscene: Started
NOTE: recipe formfactor-0.0-r45: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 865 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb:do_package_write_ipk_setscene)
NOTE: recipe shadow-securetty-4.2.1-r3: task do_package_qa_setscene: Started
NOTE: recipe shadow-securetty-4.2.1-r3: task do_package_write_ipk_setscene: Started
NOTE: recipe qemuwrapper-cross-1.0-r0: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 900 of 1613 (/tmp/poky-cutting-edge/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb:do_package_qa_setscene)
NOTE: recipe shadow-securetty-4.2.1-r3: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 907 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_package_write_ipk_setscene)
NOTE: recipe encodings-1_1.0.4-r2.1: task do_package_write_ipk_setscene: Started
NOTE: recipe qemuwrapper-cross-1.0-r0: task do_package_write_ipk_setscene: Started
NOTE: recipe linux-firmware-1_0.0+gitAUTOINC+42ad5367dd-r0: task do_package_qa_setscene: Started
NOTE: recipe shadow-securetty-4.2.1-r3: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 908 of 1613 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow-securetty_4.2.1.bb:do_packagedata_setscene)
NOTE: recipe shadow-securetty-4.2.1-r3: task do_packagedata_setscene: Started
NOTE: recipe qemuwrapper-cross-1.0-r0: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 909 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_packagedata_setscene)
NOTE: recipe encodings-1_1.0.4-r2.1: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 911 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/xcursor-transparent-theme/xcursor-transparent-theme_git.bb:do_package_qa_setscene)
NOTE: recipe qemuwrapper-cross-1.0-r0: task do_packagedata_setscene: Started
NOTE: recipe linux-firmware-1_0.0+gitAUTOINC+42ad5367dd-r0: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 918 of 1613 (/tmp/poky-cutting-edge/meta-amltd/packages/feed-config/amltd-feed-config-opkg_1.0.bb:do_package_qa_setscene)
NOTE: recipe xcursor-transparent-theme-0.1.1+gitAUTOINC+23c8af5ba4-r0: task do_package_qa_setscene: Started
NOTE: recipe amltd-feed-config-opkg-1.0-r1: task do_package_qa_setscene: Started
NOTE: recipe shadow-securetty-4.2.1-r3: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 942 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb:do_package_qa_setscene)
NOTE: recipe encodings-1_1.0.4-r2.1: task do_package_qa_setscene: Started
NOTE: recipe amltd-feed-config-opkg-1.0-r1: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 945 of 1613 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_populate_lic_setscene)
NOTE: recipe xcursor-transparent-theme-0.1.1+gitAUTOINC+23c8af5ba4-r0: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 990 of 1613 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb:do_package_write_ipk_setscene)
NOTE: recipe openssl-1.0.2j-r0: task do_populate_lic_setscene: Started
NOTE: recipe encodings-1_1.0.4-r2.1: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 1003 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/xcursor-transparent-theme/xcursor-transparent-theme_git.bb:do_package_write_ipk_setscene)
NOTE: recipe qemuwrapper-cross-1.0-r0: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1010 of 1613 (/tmp/poky-cutting-edge/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb:do_package_write_ipk_setscene)
NOTE: recipe xcursor-transparent-theme-0.1.1+gitAUTOINC+23c8af5ba4-r0: task do_package_write_ipk_setscene: Started
NOTE: recipe sysvinit-inittab-2.88dsf-r10: task do_package_write_ipk_setscene: Started
NOTE: recipe linux-firmware-1_0.0+gitAUTOINC+42ad5367dd-r0: task do_package_write_ipk_setscene: Started
NOTE: recipe xcursor-transparent-theme-0.1.1+gitAUTOINC+23c8af5ba4-r0: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 1011 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/xcursor-transparent-theme/xcursor-transparent-theme_git.bb:do_packagedata_setscene)
NOTE: recipe xcursor-transparent-theme-0.1.1+gitAUTOINC+23c8af5ba4-r0: task do_packagedata_setscene: Started
NOTE: recipe openssl-1.0.2j-r0: task do_populate_lic_setscene: Succeeded
NOTE: Running setscene task 1027 of 1613 (/tmp/poky-cutting-edge/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_package_qa_setscene)
NOTE: recipe sysvinit-inittab-2.88dsf-r10: task do_package_write_ipk_setscene: Succeeded
NOTE: recipe formfactor-0.0-r45: task do_package_qa_setscene: Started
NOTE: Running setscene task 1109 of 1613 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/adwaita-icon-theme_3.22.0.bb:do_package_qa_setscene)
NOTE: recipe xcursor-transparent-theme-0.1.1+gitAUTOINC+23c8af5ba4-r0: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1115 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/run-postinsts/run-postinsts_1.0.bb:do_package_write_ipk_setscene)
NOTE: recipe run-postinsts-1.0-r9: task do_package_write_ipk_setscene: Started
NOTE: recipe formfactor-0.0-r45: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 1116 of 1613 (/tmp/poky-cutting-edge/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_packagedata_setscene)
NOTE: recipe formfactor-0.0-r45: task do_packagedata_setscene: Started
NOTE: recipe adwaita-icon-theme-3.22.0-r0: task do_package_qa_setscene: Started
NOTE: recipe run-postinsts-1.0-r9: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 1117 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/run-postinsts/run-postinsts_1.0.bb:do_packagedata_setscene)
NOTE: recipe run-postinsts-1.0-r9: task do_packagedata_setscene: Started
NOTE: recipe formfactor-0.0-r45: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1118 of 1613 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/adwaita-icon-theme_3.22.0.bb:do_populate_sysroot_setscene)
NOTE: recipe adwaita-icon-theme-3.22.0-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe adwaita-icon-theme-3.22.0-r0: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 1125 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb:do_packagedata_setscene)
NOTE: recipe liberation-fonts-1_1.04-r4: task do_packagedata_setscene: Started
NOTE: recipe run-postinsts-1.0-r9: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1157 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_populate_sysroot_setscene)
NOTE: recipe shared-mime-info-native-1.6-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe liberation-fonts-1_1.04-r4: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1212 of 1613 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb:do_package_qa_setscene)
NOTE: recipe sysvinit-inittab-2.88dsf-r10: task do_package_qa_setscene: Started
NOTE: recipe sysvinit-inittab-2.88dsf-r10: task do_package_qa_setscene: Succeeded
NOTE: Running setscene task 1221 of 1613 (/tmp/poky-cutting-edge/meta-amltd/packages/feed-config/amltd-feed-config-opkg_1.0.bb:do_package_write_ipk_setscene)
NOTE: recipe amltd-feed-config-opkg-1.0-r1: task do_package_write_ipk_setscene: Started
NOTE: recipe shared-mime-info-native-1.6-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1229 of 1613 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb:do_packagedata_setscene)
NOTE: recipe sysvinit-inittab-2.88dsf-r10: task do_packagedata_setscene: Started
NOTE: recipe amltd-feed-config-opkg-1.0-r1: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 1230 of 1613 (/tmp/poky-cutting-edge/meta-amltd/packages/feed-config/amltd-feed-config-opkg_1.0.bb:do_packagedata_setscene)
NOTE: recipe amltd-feed-config-opkg-1.0-r1: task do_packagedata_setscene: Started
NOTE: recipe sysvinit-inittab-2.88dsf-r10: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1245 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_populate_sysroot_setscene)
NOTE: recipe amltd-feed-config-opkg-1.0-r1: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1382 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-bsp/u-boot/u-boot-mkimage_2016.11.bb:do_populate_sysroot_setscene)
NOTE: recipe gconf-native-3.2.6-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe u-boot-mkimage-native-1_2016.11-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe gconf-native-3.2.6-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1418 of 1613 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/adwaita-icon-theme_3.22.0.bb:do_package_write_ipk_setscene)
NOTE: recipe u-boot-mkimage-native-1_2016.11-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1460 of 1613 (/tmp/poky-cutting-edge/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-theme_0.15.bb:do_package_write_ipk_setscene)
NOTE: recipe hicolor-icon-theme-0.15-r0: task do_package_write_ipk_setscene: Started
NOTE: recipe adwaita-icon-theme-3.22.0-r0: task do_package_write_ipk_setscene: Started
NOTE: recipe adwaita-icon-theme-3.22.0-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1473 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-support/libxslt/libxslt_1.1.29.bb:do_populate_sysroot_setscene)
NOTE: recipe hicolor-icon-theme-0.15-r0: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 1516 of 1613 (/tmp/poky-cutting-edge/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb:do_packagedata_setscene)
NOTE: recipe update-rc.d-0.7-r5: task do_packagedata_setscene: Started
NOTE: recipe adwaita-icon-theme-3.22.0-r0: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 1517 of 1613 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/adwaita-icon-theme_3.22.0.bb:do_packagedata_setscene)
NOTE: recipe adwaita-icon-theme-3.22.0-r0: task do_packagedata_setscene: Started
NOTE: recipe update-rc.d-0.7-r5: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1533 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_populate_sysroot_setscene)
NOTE: recipe adwaita-icon-theme-3.22.0-r0: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1535 of 1613 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk-icon-utils-native_3.22.1.bb:do_populate_sysroot_setscene)
NOTE: recipe libxslt-native-1.1.29-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe dbus-glib-native-0.106-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe linux-firmware-1_0.0+gitAUTOINC+42ad5367dd-r0: task do_package_write_ipk_setscene: Succeeded
NOTE: Running setscene task 1536 of 1613 (/tmp/poky-cutting-edge/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb:do_packagedata_setscene)
NOTE: recipe gtk-icon-utils-native-3.22.1-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe linux-firmware-1_0.0+gitAUTOINC+42ad5367dd-r0: task do_packagedata_setscene: Started
NOTE: recipe libxslt-native-1.1.29-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1537 of 1613 (/tmp/poky-cutting-edge/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-theme_0.15.bb:do_packagedata_setscene)
NOTE: recipe hicolor-icon-theme-0.15-r0: task do_packagedata_setscene: Started
NOTE: recipe gtk-icon-utils-native-3.22.1-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1539 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-gnome/librsvg/librsvg_2.40.16.bb:do_populate_sysroot_setscene)
NOTE: recipe dbus-glib-native-0.106-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1544 of 1613 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb:do_packagedata_setscene)
NOTE: recipe encodings-1_1.0.4-r2.1: task do_packagedata_setscene: Started
NOTE: recipe linux-firmware-1_0.0+gitAUTOINC+42ad5367dd-r0: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1597 of 1613 (/tmp/poky-cutting-edge/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.8.bb:do_packagedata_setscene)
NOTE: recipe librsvg-native-2.40.16-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe linux-libc-headers-4.8-r0: task do_packagedata_setscene: Started
NOTE: recipe encodings-1_1.0.4-r2.1: task do_packagedata_setscene: Succeeded
NOTE: recipe hicolor-icon-theme-0.15-r0: task do_packagedata_setscene: Succeeded
NOTE: recipe linux-libc-headers-4.8-r0: task do_packagedata_setscene: Succeeded
NOTE: Running setscene task 1601 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-devtools/rpm/rpm_5.4.16.bb:do_populate_sysroot_setscene)
NOTE: recipe librsvg-native-2.40.16-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1602 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_populate_sysroot_setscene)
NOTE: Running setscene task 1603 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_populate_sysroot_setscene)
NOTE: Running setscene task 1604 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-support/libcroco/libcroco_0.6.11.bb:do_populate_sysroot_setscene)
NOTE: recipe rpm-native-5.4.16-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe pango-native-1.40.3-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe gdk-pixbuf-native-2.36.0-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe libcroco-native-0.6.11-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe libcroco-native-0.6.11-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1605 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_populate_sysroot_setscene)
NOTE: recipe pango-native-1.40.3-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1606 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_populate_sysroot_setscene)
NOTE: recipe gdk-pixbuf-native-2.36.0-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1607 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-devtools/qemu/qemu_2.7.0.bb:do_populate_sysroot_setscene)
NOTE: recipe harfbuzz-native-1.3.3-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe libxml2-native-2.9.4-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe qemu-native-2.7.0-r1: task do_populate_sysroot_setscene: Started
NOTE: recipe harfbuzz-native-1.3.3-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1608 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_populate_sysroot_setscene)
NOTE: recipe libxml2-native-2.9.4-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1609 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_populate_sysroot_setscene)
NOTE: recipe rpm-native-5.4.16-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1610 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python-native_2.7.12.bb:do_populate_sysroot_setscene)
NOTE: recipe cairo-native-1.14.6-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe gobject-introspection-native-1.50.0-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe python-native-2.7.12-r1.1: task do_populate_sysroot_setscene: Started
NOTE: recipe cairo-native-1.14.6-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: recipe gobject-introspection-native-1.50.0-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: recipe qemu-native-2.7.0-r1: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1611 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_populate_sysroot_setscene)
NOTE: recipe glib-2.0-native-1_2.50.1-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe glib-2.0-native-1_2.50.1-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1612 of 1613 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3-native_3.5.2.bb:do_populate_sysroot_setscene)
NOTE: recipe python3-native-3.5.2-r1.0: task do_populate_sysroot_setscene: Started
NOTE: recipe python-native-2.7.12-r1.1: task do_populate_sysroot_setscene: Succeeded
NOTE: recipe python3-native-3.5.2-r1.0: task do_populate_sysroot_setscene: Succeeded
NOTE: Running setscene task 1613 of 1613 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_populate_sysroot_setscene)
NOTE: recipe openssl-native-1.0.2j-r0: task do_populate_sysroot_setscene: Started
NOTE: recipe openssl-native-1.0.2j-r0: task do_populate_sysroot_setscene: Succeeded
NOTE: Executing RunQueue Tasks
NOTE: Running task 370 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc_2.24.bb:do_package)
NOTE: Running task 620 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_configure)
NOTE: Running task 636 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_fetch)
NOTE: Running task 688 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_configure)
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_configure: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_configure: Started
NOTE: recipe glibc-2.24-r0: task do_package: Started
NOTE: recipe openssl-1.0.2j-r0: task do_fetch: Started
NOTE: recipe openssl-1.0.2j-r0: task do_fetch: Succeeded
NOTE: Running task 689 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_unpack)
NOTE: recipe openssl-1.0.2j-r0: task do_unpack: Started
NOTE: recipe openssl-1.0.2j-r0: task do_unpack: Succeeded
NOTE: Running task 690 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_patch)
NOTE: recipe openssl-1.0.2j-r0: task do_patch: Started
NOTE: recipe openssl-1.0.2j-r0: task do_patch: Succeeded
NOTE: Running task 691 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_configure)
NOTE: recipe openssl-1.0.2j-r0: task do_configure: Started
NOTE: recipe openssl-1.0.2j-r0: task do_configure: Succeeded
NOTE: Running task 692 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_compile)
NOTE: recipe openssl-1.0.2j-r0: task do_compile: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_configure: Succeeded
NOTE: Running task 693 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_compile)
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_compile: Started
NOTE: recipe glibc-2.24-r0: task do_package: Succeeded
NOTE: Running task 694 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc_2.24.bb:do_packagedata)
NOTE: recipe glibc-2.24-r0: task do_packagedata: Started
NOTE: recipe glibc-2.24-r0: task do_packagedata: Succeeded
NOTE: Running task 695 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/libgcc_6.2.bb:do_package)
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_compile: Succeeded
NOTE: Running task 696 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_install)
NOTE: recipe libgcc-6.2.0-r0: task do_package: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_install: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_install: Succeeded
NOTE: Running task 749 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_populate_sysroot)
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_populate_sysroot: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1129 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb:do_package)
NOTE: recipe base-files-3.0.14-r89: task do_package: Started
NOTE: recipe libgcc-6.2.0-r0: task do_package: Succeeded
NOTE: Running task 1130 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/libgcc_6.2.bb:do_packagedata)
NOTE: recipe libgcc-6.2.0-r0: task do_packagedata: Started
NOTE: recipe libgcc-6.2.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1131 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-runtime_6.2.bb:do_package)
NOTE: recipe base-files-3.0.14-r89: task do_package: Succeeded
NOTE: Running task 1132 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb:do_packagedata)
NOTE: recipe gcc-runtime-6.2.0-r0: task do_package: Started
NOTE: recipe base-files-3.0.14-r89: task do_packagedata: Started
NOTE: recipe base-files-3.0.14-r89: task do_packagedata: Succeeded
NOTE: Running task 1180 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_configure)
NOTE: recipe linux-boundary-4.1.15-r0: task do_configure: Started
NOTE: recipe gcc-runtime-6.2.0-r0: task do_package: Succeeded
NOTE: Running task 1181 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-runtime_6.2.bb:do_packagedata)
NOTE: recipe gcc-runtime-6.2.0-r0: task do_packagedata: Started
NOTE: recipe gcc-runtime-6.2.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1182 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-util/util-macros_1.19.0.bb:do_package)
NOTE: recipe util-macros-1_1.19.0-r0: task do_package: Started
NOTE: recipe util-macros-1_1.19.0-r0: task do_package: Succeeded
NOTE: Running task 1183 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-util/util-macros_1.19.0.bb:do_packagedata)
NOTE: recipe util-macros-1_1.19.0-r0: task do_packagedata: Started
NOTE: recipe util-macros-1_1.19.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1184 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/expat/expat_2.2.0.bb:do_package)
NOTE: recipe expat-2.2.0-r0: task do_package: Started
NOTE: recipe expat-2.2.0-r0: task do_package: Succeeded
NOTE: Running task 1185 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/expat/expat_2.2.0.bb:do_packagedata)
NOTE: recipe expat-2.2.0-r0: task do_packagedata: Started
NOTE: recipe expat-2.2.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1186 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_package)
NOTE: recipe gettext-0.19.8.1-r0: task do_package: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_configure: Succeeded
NOTE: Running task 1187 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xproto_7.0.31.bb:do_package)
NOTE: recipe xproto-1_7.0.31-r0: task do_package: Started
NOTE: recipe xproto-1_7.0.31-r0: task do_package: Succeeded
NOTE: Running task 1188 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xproto_7.0.31.bb:do_packagedata)
NOTE: recipe xproto-1_7.0.31-r0: task do_packagedata: Started
NOTE: recipe xproto-1_7.0.31-r0: task do_packagedata: Succeeded
NOTE: Running task 1189 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/zlib/zlib_1.2.8.bb:do_package)
NOTE: recipe zlib-1.2.8-r0: task do_package: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_configure: Succeeded
NOTE: Running task 1190 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb:do_package)
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package: Started
NOTE: recipe zlib-1.2.8-r0: task do_package: Succeeded
NOTE: Running task 1191 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/zlib/zlib_1.2.8.bb:do_packagedata)
NOTE: recipe zlib-1.2.8-r0: task do_packagedata: Started
NOTE: recipe zlib-1.2.8-r0: task do_packagedata: Succeeded
NOTE: Running task 1192 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_compile)
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_compile: Started
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package: Succeeded
NOTE: Running task 1193 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb:do_packagedata)
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_packagedata: Started
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_packagedata: Succeeded
NOTE: Running task 1194 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpthread-stubs_0.3.bb:do_package)
NOTE: recipe libpthread-stubs-0.3-r0: task do_package: Started
NOTE: recipe libpthread-stubs-0.3-r0: task do_package: Succeeded
NOTE: Running task 1195 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpthread-stubs_0.3.bb:do_packagedata)
NOTE: recipe libpthread-stubs-0.3-r0: task do_packagedata: Started
NOTE: recipe libpthread-stubs-0.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1196 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcb-proto_1.12.bb:do_package)
NOTE: recipe xcb-proto-1.12-r0: task do_package: Started
NOTE: recipe xcb-proto-1.12-r0: task do_package: Succeeded
NOTE: Running task 1197 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcb-proto_1.12.bb:do_packagedata)
NOTE: recipe xcb-proto-1.12-r0: task do_packagedata: Started
NOTE: recipe xcb-proto-1.12-r0: task do_packagedata: Succeeded
NOTE: Running task 1198 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/kbproto_1.0.7.bb:do_package)
NOTE: recipe kbproto-1_1.0.7-r0: task do_package: Started
NOTE: recipe kbproto-1_1.0.7-r0: task do_package: Succeeded
NOTE: Running task 1199 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/kbproto_1.0.7.bb:do_packagedata)
NOTE: recipe kbproto-1_1.0.7-r0: task do_packagedata: Started
NOTE: recipe kbproto-1_1.0.7-r0: task do_packagedata: Succeeded
NOTE: Running task 1200 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.4.bb:do_package)
NOTE: recipe gettext-0.19.8.1-r0: task do_package: Succeeded
NOTE: Running task 1201 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_packagedata)
NOTE: recipe gettext-0.19.8.1-r0: task do_packagedata: Started
NOTE: recipe gettext-0.19.8.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1202 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xextproto_7.3.0.bb:do_package)
NOTE: recipe bash-completion-2.4-r0: task do_package: Started
NOTE: recipe xextproto-1_7.3.0-r0: task do_package: Started
NOTE: recipe xextproto-1_7.3.0-r0: task do_package: Succeeded
NOTE: Running task 1203 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xextproto_7.3.0.bb:do_packagedata)
NOTE: recipe xextproto-1_7.3.0-r0: task do_packagedata: Started
NOTE: recipe xextproto-1_7.3.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1204 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xtrans_1.3.5.bb:do_package)
NOTE: recipe xtrans-1_1.3.5-r0: task do_package: Started
NOTE: recipe xtrans-1_1.3.5-r0: task do_package: Succeeded
NOTE: Running task 1205 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xtrans_1.3.5.bb:do_packagedata)
NOTE: recipe xtrans-1_1.3.5-r0: task do_packagedata: Started
NOTE: recipe xtrans-1_1.3.5-r0: task do_packagedata: Succeeded
NOTE: Running task 1206 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/inputproto_2.3.2.bb:do_package)
NOTE: recipe bash-completion-2.4-r0: task do_package: Succeeded
NOTE: Running task 1207 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.2.bb:do_package)
NOTE: recipe inputproto-1_2.3.2-r0: task do_package: Started
NOTE: recipe libxdmcp-1_1.1.2-r0: task do_package: Started
NOTE: recipe inputproto-1_2.3.2-r0: task do_package: Succeeded
NOTE: Running task 1208 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/inputproto_2.3.2.bb:do_packagedata)
NOTE: recipe inputproto-1_2.3.2-r0: task do_packagedata: Started
NOTE: recipe inputproto-1_2.3.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1209 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxau_1.0.8.bb:do_package)
NOTE: recipe libxau-1_1.0.8-r0: task do_package: Started
NOTE: recipe libxdmcp-1_1.1.2-r0: task do_package: Succeeded
NOTE: Running task 1210 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.2.bb:do_packagedata)
NOTE: recipe libxdmcp-1_1.1.2-r0: task do_packagedata: Started
NOTE: recipe libxdmcp-1_1.1.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1211 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.4.bb:do_packagedata)
NOTE: recipe bash-completion-2.4-r0: task do_packagedata: Started
NOTE: recipe bash-completion-2.4-r0: task do_packagedata: Succeeded
NOTE: Running task 1212 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/ncurses/ncurses_6.0+20160625.bb:do_package)
NOTE: recipe libxau-1_1.0.8-r0: task do_package: Succeeded
NOTE: Running task 1213 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxau_1.0.8.bb:do_packagedata)
NOTE: recipe libxau-1_1.0.8-r0: task do_packagedata: Started
NOTE: recipe ncurses-6.0+20160625-r0: task do_package: Started
NOTE: recipe libxau-1_1.0.8-r0: task do_packagedata: Succeeded
NOTE: Running task 1214 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcb_1.12.bb:do_package)
NOTE: recipe libxcb-1.12-r0: task do_package: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_compile: Succeeded
NOTE: Running task 1215 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_install)
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_install: Started
NOTE: recipe libxcb-1.12-r0: task do_package: Succeeded
NOTE: Running task 1216 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcb_1.12.bb:do_packagedata)
NOTE: recipe libxcb-1.12-r0: task do_packagedata: Started
NOTE: recipe libxcb-1.12-r0: task do_packagedata: Succeeded
NOTE: Running task 1217 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libx11_1.6.4.bb:do_package)
NOTE: recipe libx11-1_1.6.4-r0: task do_package: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_install: Succeeded
NOTE: Running task 1218 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_populate_sysroot)
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_populate_sysroot: Started
NOTE: recipe ncurses-6.0+20160625-r0: task do_package: Succeeded
NOTE: Running task 1219 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/ncurses/ncurses_6.0+20160625.bb:do_packagedata)
NOTE: recipe ncurses-6.0+20160625-r0: task do_packagedata: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1220 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libffi/libffi_3.2.1.bb:do_package)
NOTE: recipe ncurses-6.0+20160625-r0: task do_packagedata: Succeeded
NOTE: Running task 1221 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_configure)
NOTE: recipe eudev-3.2-r0: task do_configure: Started
NOTE: recipe libffi-3.2.1-r0: task do_package: Started
NOTE: recipe libffi-3.2.1-r0: task do_package: Succeeded
NOTE: Running task 1222 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libffi/libffi_3.2.1.bb:do_packagedata)
NOTE: recipe libffi-3.2.1-r0: task do_packagedata: Started
NOTE: recipe libffi-3.2.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1223 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_package)
NOTE: recipe bzip2-1.0.6-r5: task do_package: Started
NOTE: recipe bzip2-1.0.6-r5: task do_package: Succeeded
NOTE: Running task 1224 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_packagedata)
NOTE: recipe bzip2-1.0.6-r5: task do_packagedata: Started
NOTE: recipe bzip2-1.0.6-r5: task do_packagedata: Succeeded
NOTE: Running task 1225 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/util-linux/util-linux_2.28.1.bb:do_package)
NOTE: recipe util-linux-2.28.1-r0: task do_package: Started
NOTE: recipe libx11-1_1.6.4-r0: task do_package: Succeeded
NOTE: Running task 1226 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libx11_1.6.4.bb:do_packagedata)
NOTE: recipe libx11-1_1.6.4-r0: task do_packagedata: Started
NOTE: recipe openssl-1.0.2j-r0: task do_compile: Succeeded
NOTE: Running task 1227 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_install)
NOTE: recipe libx11-1_1.6.4-r0: task do_packagedata: Succeeded
NOTE: Running task 1228 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fixesproto_5.0.bb:do_package)
NOTE: recipe openssl-1.0.2j-r0: task do_install: Started
NOTE: recipe fixesproto-1_5.0-r1: task do_package: Started
NOTE: recipe fixesproto-1_5.0-r1: task do_package: Succeeded
NOTE: Running task 1229 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fixesproto_5.0.bb:do_packagedata)
NOTE: recipe fixesproto-1_5.0-r1: task do_packagedata: Started
NOTE: recipe fixesproto-1_5.0-r1: task do_packagedata: Succeeded
NOTE: Running task 1230 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfixes_5.0.3.bb:do_package)
NOTE: recipe libxfixes-1_5.0.3-r0: task do_package: Started
NOTE: recipe libxfixes-1_5.0.3-r0: task do_package: Succeeded
NOTE: Running task 1231 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxext_1.3.3.bb:do_package)
NOTE: recipe libxext-1_1.3.3-r0: task do_package: Started
NOTE: recipe libxext-1_1.3.3-r0: task do_package: Succeeded
NOTE: Running task 1232 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfixes_5.0.3.bb:do_packagedata)
NOTE: recipe libxfixes-1_5.0.3-r0: task do_packagedata: Started
NOTE: recipe libxfixes-1_5.0.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1233 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxext_1.3.3.bb:do_packagedata)
NOTE: recipe libxext-1_1.3.3-r0: task do_packagedata: Started
NOTE: recipe libxext-1_1.3.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1234 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libpcre/libpcre_8.39.bb:do_package)
NOTE: recipe libpcre-8.39-r0: task do_package: Started
NOTE: recipe eudev-3.2-r0: task do_configure: Succeeded
NOTE: Running task 1235 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_compile)
NOTE: recipe eudev-3.2-r0: task do_compile: Started
NOTE: recipe libpcre-8.39-r0: task do_package: Succeeded
NOTE: Running task 1236 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libpcre/libpcre_8.39.bb:do_packagedata)
NOTE: recipe libpcre-8.39-r0: task do_packagedata: Started
NOTE: recipe libpcre-8.39-r0: task do_packagedata: Succeeded
NOTE: Running task 1237 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_package)
NOTE: recipe cryptodev-linux-1.8-r0: task do_package: Started
NOTE: recipe cryptodev-linux-1.8-r0: task do_package: Succeeded
NOTE: Running task 1238 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_packagedata)
NOTE: recipe cryptodev-linux-1.8-r0: task do_packagedata: Started
NOTE: recipe cryptodev-linux-1.8-r0: task do_packagedata: Succeeded
NOTE: Running task 1239 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libpng/libpng_1.6.26.bb:do_package)
NOTE: recipe util-linux-2.28.1-r0: task do_package: Succeeded
NOTE: Running task 1240 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/util-linux/util-linux_2.28.1.bb:do_packagedata)
NOTE: recipe libpng-1.6.26-r0: task do_package: Started
NOTE: recipe util-linux-2.28.1-r0: task do_packagedata: Started
NOTE: recipe util-linux-2.28.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1241 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_package)
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_package: Started
NOTE: recipe libpng-1.6.26-r0: task do_package: Succeeded
NOTE: Running task 1242 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libpng/libpng_1.6.26.bb:do_packagedata)
NOTE: recipe libpng-1.6.26-r0: task do_packagedata: Started
NOTE: recipe eudev-3.2-r0: task do_compile: Succeeded
NOTE: Running task 1243 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_install)
NOTE: recipe libpng-1.6.26-r0: task do_packagedata: Succeeded
NOTE: Running task 1244 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/initscripts/initscripts_1.0.bb:do_package)
NOTE: recipe eudev-3.2-r0: task do_install: Started
NOTE: recipe initscripts-1.0-r155: task do_package: Started
NOTE: recipe eudev-3.2-r0: task do_install: Succeeded
NOTE: Running task 1245 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_populate_sysroot)
NOTE: recipe eudev-3.2-r0: task do_populate_sysroot: Started
NOTE: recipe eudev-3.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1246 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_configure)
NOTE: recipe libdrm-2.4.74-r0: task do_configure: Started
NOTE: recipe initscripts-1.0-r155: task do_package: Succeeded
NOTE: Running task 1247 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/initscripts/initscripts_1.0.bb:do_packagedata)
NOTE: recipe initscripts-1.0-r155: task do_packagedata: Started
NOTE: recipe initscripts-1.0-r155: task do_packagedata: Succeeded
NOTE: Running task 1248 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/freetype/freetype_2.7.bb:do_package)
NOTE: recipe freetype-2.7-r0: task do_package: Started
NOTE: recipe openssl-1.0.2j-r0: task do_install: Succeeded
NOTE: Running task 1249 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_populate_sysroot)
NOTE: recipe openssl-1.0.2j-r0: task do_populate_sysroot: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_package: Succeeded
NOTE: Running task 1250 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_packagedata)
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_packagedata: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1251 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_package)
NOTE: recipe openssl-1.0.2j-r0: task do_package: Started
NOTE: recipe openssl-1.0.2j-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1252 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_configure)
NOTE: recipe python3-3.5.2-r1.0: task do_configure: Started
NOTE: recipe freetype-2.7-r0: task do_package: Succeeded
NOTE: Running task 1253 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/freetype/freetype_2.7.bb:do_packagedata)
NOTE: recipe freetype-2.7-r0: task do_packagedata: Started
NOTE: recipe freetype-2.7-r0: task do_packagedata: Succeeded
NOTE: Running task 1254 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb:do_package)
NOTE: recipe damageproto-1_1.2.1-r1: task do_package: Started
NOTE: recipe damageproto-1_1.2.1-r1: task do_package: Succeeded
NOTE: Running task 1255 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb:do_packagedata)
NOTE: recipe damageproto-1_1.2.1-r1: task do_packagedata: Started
NOTE: recipe damageproto-1_1.2.1-r1: task do_packagedata: Succeeded
NOTE: Running task 1256 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdamage_1.1.4.bb:do_package)
NOTE: recipe libxdamage-1_1.1.4-r0: task do_package: Started
NOTE: recipe libxdamage-1_1.1.4-r0: task do_package: Succeeded
NOTE: Running task 1257 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdamage_1.1.4.bb:do_packagedata)
NOTE: recipe libxdamage-1_1.1.4-r0: task do_packagedata: Started
NOTE: recipe libxdamage-1_1.1.4-r0: task do_packagedata: Succeeded
NOTE: Running task 1258 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/sqlite/sqlite3_3.15.1.bb:do_package)
NOTE: recipe sqlite3-3_3.15.1-r0: task do_package: Started
NOTE: recipe openssl-1.0.2j-r0: task do_package: Succeeded
NOTE: Running task 1259 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_packagedata)
NOTE: recipe sqlite3-3_3.15.1-r0: task do_package: Succeeded
NOTE: Running task 1260 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gdbm/gdbm_1.12.bb:do_package)
NOTE: recipe openssl-1.0.2j-r0: task do_packagedata: Started
NOTE: recipe openssl-1.0.2j-r0: task do_packagedata: Succeeded
NOTE: Running task 1261 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/db/db_6.0.35.bb:do_package)
NOTE: recipe gdbm-1.12-r0: task do_package: Started
NOTE: recipe db-6.0.35-r1: task do_package: Started
NOTE: recipe libdrm-2.4.74-r0: task do_configure: Succeeded
NOTE: Running task 1262 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_compile)
NOTE: recipe libdrm-2.4.74-r0: task do_compile: Started
NOTE: recipe gdbm-1.12-r0: task do_package: Succeeded
NOTE: Running task 1263 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/sqlite/sqlite3_3.15.1.bb:do_packagedata)
NOTE: recipe sqlite3-3_3.15.1-r0: task do_packagedata: Started
NOTE: recipe sqlite3-3_3.15.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1264 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/readline/readline_7.0.bb:do_package)
NOTE: recipe readline-7.0-r0: task do_package: Started
NOTE: recipe readline-7.0-r0: task do_package: Succeeded
NOTE: Running task 1265 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gdbm/gdbm_1.12.bb:do_packagedata)
NOTE: recipe gdbm-1.12-r0: task do_packagedata: Started
NOTE: recipe gdbm-1.12-r0: task do_packagedata: Succeeded
NOTE: Running task 1266 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/readline/readline_7.0.bb:do_packagedata)
NOTE: recipe readline-7.0-r0: task do_packagedata: Started
NOTE: recipe readline-7.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1267 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb:do_package)
NOTE: recipe renderproto-1_0.11.1-r1: task do_package: Started
NOTE: recipe libdrm-2.4.74-r0: task do_compile: Succeeded
NOTE: Running task 1268 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_install)
NOTE: recipe libdrm-2.4.74-r0: task do_install: Started
NOTE: recipe renderproto-1_0.11.1-r1: task do_package: Succeeded
NOTE: Running task 1269 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libice_1.0.9.bb:do_package)
NOTE: recipe libdrm-2.4.74-r0: task do_install: Succeeded
NOTE: Running task 1270 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_populate_sysroot)
NOTE: recipe libdrm-2.4.74-r0: task do_populate_sysroot: Started
NOTE: recipe libice-1_1.0.9-r0: task do_package: Started
NOTE: recipe libdrm-2.4.74-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1271 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_configure)
NOTE: recipe mesa-2_13.0.2-r0: task do_configure: Started
NOTE: recipe libice-1_1.0.9-r0: task do_package: Succeeded
NOTE: Running task 1272 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb:do_packagedata)
NOTE: recipe renderproto-1_0.11.1-r1: task do_packagedata: Started
NOTE: recipe renderproto-1_0.11.1-r1: task do_packagedata: Succeeded
NOTE: Running task 1273 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libice_1.0.9.bb:do_packagedata)
NOTE: recipe libice-1_1.0.9-r0: task do_packagedata: Started
NOTE: recipe libice-1_1.0.9-r0: task do_packagedata: Succeeded
NOTE: Running task 1274 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libsm_1.2.2.bb:do_package)
NOTE: recipe libsm-1_1.2.2-r0: task do_package: Started
NOTE: recipe libsm-1_1.2.2-r0: task do_package: Succeeded
NOTE: Running task 1275 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libsm_1.2.2.bb:do_packagedata)
NOTE: recipe libsm-1_1.2.2-r0: task do_packagedata: Started
NOTE: recipe libsm-1_1.2.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1276 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrender_0.9.10.bb:do_package)
NOTE: recipe libxrender-1_0.9.10-r0: task do_package: Started
NOTE: recipe libxrender-1_0.9.10-r0: task do_package: Succeeded
NOTE: Running task 1277 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrender_0.9.10.bb:do_packagedata)
NOTE: recipe libxrender-1_0.9.10-r0: task do_packagedata: Started
NOTE: recipe db-6.0.35-r1: task do_package: Succeeded
NOTE: Running task 1278 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/db/db_6.0.35.bb:do_packagedata)
NOTE: recipe db-6.0.35-r1: task do_packagedata: Started
NOTE: recipe libxrender-1_0.9.10-r0: task do_packagedata: Succeeded
NOTE: Running task 1279 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/fontconfig/fontconfig_2.12.1.bb:do_package)
NOTE: recipe db-6.0.35-r1: task do_packagedata: Succeeded
NOTE: Running task 1280 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_package)
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_package: Started
NOTE: recipe fontconfig-2.12.1-r0: task do_package: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_package: Succeeded
NOTE: Running task 1281 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_packagedata)
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_packagedata: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_packagedata: Succeeded
NOTE: Running task 1282 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/xz/xz_5.2.2.bb:do_package)
NOTE: recipe xz-5.2.2-r0: task do_package: Started
NOTE: recipe fontconfig-2.12.1-r0: task do_package: Succeeded
NOTE: Running task 1283 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/fontconfig/fontconfig_2.12.1.bb:do_packagedata)
NOTE: recipe fontconfig-2.12.1-r0: task do_packagedata: Started
NOTE: recipe fontconfig-2.12.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1284 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_package)
NOTE: recipe eudev-3.2-r0: task do_package: Started
NOTE: recipe xz-5.2.2-r0: task do_package: Succeeded
NOTE: Running task 1285 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/xz/xz_5.2.2.bb:do_packagedata)
NOTE: recipe xz-5.2.2-r0: task do_packagedata: Started
NOTE: recipe xz-5.2.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1286 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpciaccess_0.13.4.bb:do_package)
NOTE: recipe libpciaccess-0.13.4-r0: task do_package: Started
NOTE: recipe eudev-3.2-r0: task do_package: Succeeded
NOTE: Running task 1287 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_packagedata)
NOTE: recipe eudev-3.2-r0: task do_packagedata: Started
NOTE: recipe eudev-3.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1288 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb:do_package)
NOTE: recipe xf86vidmodeproto-1_2.3.1-r1: task do_package: Started
NOTE: recipe libpciaccess-0.13.4-r0: task do_package: Succeeded
NOTE: Running task 1289 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpciaccess_0.13.4.bb:do_packagedata)
NOTE: recipe libpciaccess-0.13.4-r0: task do_packagedata: Started
NOTE: recipe libpciaccess-0.13.4-r0: task do_packagedata: Succeeded
NOTE: Running task 1290 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_package)
NOTE: recipe xf86vidmodeproto-1_2.3.1-r1: task do_package: Succeeded
NOTE: Running task 1291 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb:do_packagedata)
NOTE: recipe libdrm-2.4.74-r0: task do_package: Started
NOTE: recipe xf86vidmodeproto-1_2.3.1-r1: task do_packagedata: Started
NOTE: recipe xf86vidmodeproto-1_2.3.1-r1: task do_packagedata: Succeeded
NOTE: Running task 1292 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/glproto_1.4.17.bb:do_package)
NOTE: recipe glproto-1_1.4.17-r0: task do_package: Started
NOTE: recipe glproto-1_1.4.17-r0: task do_package: Succeeded
NOTE: Running task 1293 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/dri2proto_2.8.bb:do_package)
NOTE: recipe dri2proto-2.8-r0: task do_package: Started
NOTE: recipe dri2proto-2.8-r0: task do_package: Succeeded
NOTE: Running task 1294 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb:do_package)
NOTE: recipe xf86driproto-1_2.1.1-r0: task do_package: Started
NOTE: recipe libdrm-2.4.74-r0: task do_package: Succeeded
NOTE: Running task 1295 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_packagedata)
NOTE: recipe libdrm-2.4.74-r0: task do_packagedata: Started
NOTE: recipe xf86driproto-1_2.1.1-r0: task do_package: Succeeded
NOTE: Running task 1296 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/glproto_1.4.17.bb:do_packagedata)
NOTE: recipe glproto-1_1.4.17-r0: task do_packagedata: Started
NOTE: recipe libdrm-2.4.74-r0: task do_packagedata: Succeeded
NOTE: Running task 1297 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/dri2proto_2.8.bb:do_packagedata)
NOTE: recipe dri2proto-2.8-r0: task do_packagedata: Started
NOTE: recipe glproto-1_1.4.17-r0: task do_packagedata: Succeeded
NOTE: Running task 1298 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb:do_packagedata)
NOTE: recipe xf86driproto-1_2.1.1-r0: task do_packagedata: Started
NOTE: recipe dri2proto-2.8-r0: task do_packagedata: Succeeded
NOTE: Running task 1299 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.4.bb:do_package)
NOTE: recipe xf86driproto-1_2.1.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1300 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow_4.2.1.bb:do_package)
NOTE: recipe shadow-4.2.1-r0: task do_package: Started
NOTE: recipe libxxf86vm-1_1.1.4-r0: task do_package: Started
NOTE: recipe libxxf86vm-1_1.1.4-r0: task do_package: Succeeded
NOTE: Running task 1301 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.4.bb:do_packagedata)
NOTE: recipe libxxf86vm-1_1.1.4-r0: task do_packagedata: Started
NOTE: recipe libxxf86vm-1_1.1.4-r0: task do_packagedata: Succeeded
NOTE: Running task 1302 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_configure)
NOTE: recipe python-2.7.12-r1: task do_configure: Started
NOTE: recipe python3-3.5.2-r1.0: task do_configure: Succeeded
NOTE: Running task 1303 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_compile)
NOTE: recipe python3-3.5.2-r1.0: task do_compile: Started
NOTE: recipe shadow-4.2.1-r0: task do_package: Succeeded
NOTE: Running task 1304 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow_4.2.1.bb:do_packagedata)
NOTE: recipe shadow-4.2.1-r0: task do_packagedata: Started
NOTE: recipe shadow-4.2.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1305 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_compile)
NOTE: recipe linux-boundary-4.1.15-r0: task do_compile: Started
NOTE: recipe mesa-2_13.0.2-r0: task do_configure: Succeeded
NOTE: Running task 1306 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_compile)
NOTE: recipe mesa-2_13.0.2-r0: task do_compile: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_compile: Succeeded
NOTE: Running task 1315 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus_1.10.10.bb:do_package)
NOTE: recipe dbus-1.10.10-r0: task do_package: Started
NOTE: recipe dbus-1.10.10-r0: task do_package: Succeeded
NOTE: Running task 1316 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus_1.10.10.bb:do_packagedata)
NOTE: recipe dbus-1.10.10-r0: task do_packagedata: Started
NOTE: recipe dbus-1.10.10-r0: task do_packagedata: Succeeded
NOTE: Running task 1325 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/pixman_0.34.0.bb:do_package)
NOTE: recipe pixman-1_0.34.0-r0: task do_package: Started
NOTE: recipe pixman-1_0.34.0-r0: task do_package: Succeeded
NOTE: Running task 1326 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/pixman_0.34.0.bb:do_packagedata)
NOTE: recipe pixman-1_0.34.0-r0: task do_packagedata: Started
NOTE: recipe pixman-1_0.34.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1327 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxi_1.7.7.bb:do_package)
NOTE: recipe libxi-1_1.7.7-r0: task do_package: Started
NOTE: recipe libxi-1_1.7.7-r0: task do_package: Succeeded
NOTE: Running task 1330 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxi_1.7.7.bb:do_packagedata)
NOTE: recipe libxi-1_1.7.7-r0: task do_packagedata: Started
NOTE: recipe libxi-1_1.7.7-r0: task do_packagedata: Succeeded
NOTE: Running task 1386 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/jpeg/libjpeg-turbo_1.5.1.bb:do_package)
NOTE: recipe libjpeg-turbo-1_1.5.1-r0: task do_package: Started
NOTE: recipe python3-3.5.2-r1.0: task do_compile: Succeeded
NOTE: Running task 1387 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_install)
NOTE: recipe python3-3.5.2-r1.0: task do_install: Started
NOTE: recipe libjpeg-turbo-1_1.5.1-r0: task do_package: Succeeded
NOTE: Running task 1388 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/jpeg/libjpeg-turbo_1.5.1.bb:do_packagedata)
NOTE: recipe libjpeg-turbo-1_1.5.1-r0: task do_packagedata: Started
NOTE: recipe libjpeg-turbo-1_1.5.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1413 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_configure)
NOTE: recipe dbus-glib-0.106-r0: task do_configure: Started
NOTE: recipe python-2.7.12-r1: task do_configure: Succeeded
NOTE: Running task 1414 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_compile)
NOTE: recipe python-2.7.12-r1: task do_compile: Started
NOTE: recipe dbus-glib-0.106-r0: task do_configure: Succeeded
NOTE: Running task 1415 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_compile)
NOTE: recipe dbus-glib-0.106-r0: task do_compile: Started
NOTE: recipe dbus-glib-0.106-r0: task do_compile: Succeeded
NOTE: Running task 1416 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_install)
NOTE: recipe dbus-glib-0.106-r0: task do_install: Started
NOTE: recipe dbus-glib-0.106-r0: task do_install: Succeeded
NOTE: Running task 1420 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/recordproto_1.14.2.bb:do_package)
NOTE: recipe recordproto-1_1.14.2-r1: task do_package: Started
NOTE: recipe recordproto-1_1.14.2-r1: task do_package: Succeeded
NOTE: Running task 1425 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/recordproto_1.14.2.bb:do_packagedata)
NOTE: recipe recordproto-1_1.14.2-r1: task do_packagedata: Started
NOTE: recipe recordproto-1_1.14.2-r1: task do_packagedata: Succeeded
NOTE: Running task 1431 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/randrproto_1.5.0.bb:do_package)
NOTE: recipe randrproto-1_1.5.0-r0: task do_package: Started
NOTE: recipe randrproto-1_1.5.0-r0: task do_package: Succeeded
NOTE: Running task 1435 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/randrproto_1.5.0.bb:do_packagedata)
NOTE: recipe randrproto-1_1.5.0-r0: task do_packagedata: Started
NOTE: recipe randrproto-1_1.5.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1451 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb:do_package)
NOTE: recipe compositeproto-1_0.4.2-r1: task do_package: Started
NOTE: recipe compositeproto-1_0.4.2-r1: task do_package: Succeeded
NOTE: Running task 1452 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxft_2.3.2.bb:do_package)
NOTE: recipe libxft-1_2.3.2-r0: task do_package: Started
NOTE: recipe libxft-1_2.3.2-r0: task do_package: Succeeded
NOTE: Running task 1453 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb:do_packagedata)
NOTE: recipe compositeproto-1_0.4.2-r1: task do_packagedata: Started
NOTE: recipe compositeproto-1_0.4.2-r1: task do_packagedata: Succeeded
NOTE: Running task 1458 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxft_2.3.2.bb:do_packagedata)
NOTE: recipe libxft-1_2.3.2-r0: task do_packagedata: Started
NOTE: recipe libxft-1_2.3.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1459 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_shared_workdir)
NOTE: recipe linux-boundary-4.1.15-r0: task do_shared_workdir: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_shared_workdir: Succeeded
NOTE: Running task 1463 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxtst_1.2.3.bb:do_package)
NOTE: recipe libxtst-1_1.2.3-r0: task do_package: Started
NOTE: recipe python3-3.5.2-r1.0: task do_install: Succeeded
NOTE: Running task 1464 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_populate_sysroot)
NOTE: recipe python3-3.5.2-r1.0: task do_populate_sysroot: Started
NOTE: recipe libxtst-1_1.2.3-r0: task do_package: Succeeded
NOTE: Running task 1465 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_package)
NOTE: recipe python3-3.5.2-r1.0: task do_package: Started
NOTE: recipe python3-3.5.2-r1.0: task do_populate_sysroot: Succeeded
NOTE: Running task 1466 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_configure)
NOTE: recipe gobject-introspection-1.50.0-r0: task do_configure: Started
NOTE: recipe mesa-2_13.0.2-r0: task do_compile: Succeeded
NOTE: Running task 1467 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_install)
NOTE: recipe mesa-2_13.0.2-r0: task do_install: Started
NOTE: recipe mesa-2_13.0.2-r0: task do_install: Succeeded
NOTE: Running task 1468 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_populate_sysroot)
NOTE: recipe mesa-2_13.0.2-r0: task do_populate_sysroot: Started
NOTE: recipe mesa-2_13.0.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1469 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_configure)
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_configure: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_configure: Succeeded
NOTE: Running task 1470 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_compile)
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_compile: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_compile: Succeeded
NOTE: Running task 1471 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_install)
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_install: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_install: Succeeded
NOTE: Running task 1472 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_populate_sysroot)
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_populate_sysroot: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1473 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_configure)
NOTE: recipe cairo-1.14.6-r0: task do_configure: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_configure: Succeeded
NOTE: Running task 1474 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_compile)
NOTE: recipe gobject-introspection-1.50.0-r0: task do_compile: Started
NOTE: recipe python3-3.5.2-r1.0: task do_package: Succeeded
NOTE: Running task 1475 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_packagedata)
NOTE: recipe python3-3.5.2-r1.0: task do_packagedata: Started
NOTE: recipe python3-3.5.2-r1.0: task do_packagedata: Succeeded
NOTE: Running task 1476 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_package)
NOTE: recipe mesa-2_13.0.2-r0: task do_package: Started
NOTE: recipe mesa-2_13.0.2-r0: task do_package: Succeeded
NOTE: Running task 1477 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_packagedata)
NOTE: recipe mesa-2_13.0.2-r0: task do_packagedata: Started
NOTE: recipe mesa-2_13.0.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1478 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_package)
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_package: Started
NOTE: recipe python-2.7.12-r1: task do_compile: Succeeded
NOTE: Running task 1479 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_install)
NOTE: recipe python-2.7.12-r1: task do_install: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_package: Succeeded
NOTE: Running task 1480 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_packagedata)
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_packagedata: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_packagedata: Succeeded
NOTE: Running task 1481 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_configure)
NOTE: recipe libepoxy-1.3.1-r0: task do_configure: Started
NOTE: recipe cairo-1.14.6-r0: task do_configure: Succeeded
NOTE: Running task 1482 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_compile)
NOTE: recipe cairo-1.14.6-r0: task do_compile: Started
NOTE: recipe libepoxy-1.3.1-r0: task do_configure: Succeeded
NOTE: Running task 1483 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_compile)
NOTE: recipe libepoxy-1.3.1-r0: task do_compile: Started
NOTE: recipe python-2.7.12-r1: task do_install: Succeeded
NOTE: Running task 1484 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_populate_sysroot)
NOTE: recipe python-2.7.12-r1: task do_populate_sysroot: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_compile: Succeeded
NOTE: Running task 1485 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_install)
NOTE: recipe gobject-introspection-1.50.0-r0: task do_install: Started
NOTE: recipe python-2.7.12-r1: task do_populate_sysroot: Succeeded
NOTE: Running task 1486 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_configure)
NOTE: recipe libxml2-2.9.4-r0: task do_configure: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_install: Succeeded
NOTE: Running task 1487 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_populate_sysroot)
NOTE: recipe gobject-introspection-1.50.0-r0: task do_populate_sysroot: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1488 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_package)
NOTE: recipe gobject-introspection-1.50.0-r0: task do_package: Started
NOTE: recipe libepoxy-1.3.1-r0: task do_compile: Succeeded
NOTE: Running task 1489 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_configure)
NOTE: recipe atk-2.22.0-r0: task do_configure: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_package: Succeeded
NOTE: Running task 1490 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_packagedata)
NOTE: recipe gobject-introspection-1.50.0-r0: task do_packagedata: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1491 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_configure)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_configure: Started
NOTE: recipe libxml2-2.9.4-r0: task do_configure: Succeeded
NOTE: Running task 1492 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_configure)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_configure: Started
NOTE: recipe atk-2.22.0-r0: task do_configure: Succeeded
NOTE: Running task 1493 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_compile)
NOTE: recipe atk-2.22.0-r0: task do_compile: Started
NOTE: recipe at-spi2-core-2.22.0-r0: task do_configure: Succeeded
NOTE: Running task 1494 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_compile)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_compile: Started
NOTE: recipe atk-2.22.0-r0: task do_compile: Succeeded
NOTE: Running task 1495 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_install)
NOTE: recipe atk-2.22.0-r0: task do_install: Started
NOTE: recipe at-spi2-core-2.22.0-r0: task do_compile: Succeeded
NOTE: Running task 1496 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_install)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_install: Started
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_configure: Succeeded
NOTE: Running task 1497 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_compile)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_compile: Started
NOTE: recipe atk-2.22.0-r0: task do_install: Succeeded
NOTE: Running task 1498 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_populate_sysroot)
NOTE: recipe atk-2.22.0-r0: task do_populate_sysroot: Started
NOTE: recipe atk-2.22.0-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1499 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_install)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_install: Succeeded
NOTE: Running task 1500 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_populate_sysroot)
NOTE: recipe libepoxy-1.3.1-r0: task do_install: Started
NOTE: recipe at-spi2-core-2.22.0-r0: task do_populate_sysroot: Started
NOTE: recipe libepoxy-1.3.1-r0: task do_install: Succeeded
NOTE: Running task 1501 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_compile)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1502 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_configure)
NOTE: recipe libxml2-2.9.4-r0: task do_compile: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_configure: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_configure: Succeeded
NOTE: Running task 1503 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_compile)
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_compile: Started
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_compile: Succeeded
NOTE: Running task 1504 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_install)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_install: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_compile: Succeeded
NOTE: Running task 1505 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_install)
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_install: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_install: Succeeded
NOTE: Running task 1506 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_package)
NOTE: recipe atk-2.22.0-r0: task do_package: Started
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_install: Succeeded
NOTE: Running task 1507 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_populate_sysroot)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_populate_sysroot: Started
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1508 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_populate_sysroot)
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_populate_sysroot: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1509 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_populate_sysroot)
NOTE: recipe libepoxy-1.3.1-r0: task do_populate_sysroot: Started
NOTE: recipe libepoxy-1.3.1-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1510 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_package)
NOTE: recipe python-2.7.12-r1: task do_package: Started
NOTE: recipe atk-2.22.0-r0: task do_package: Succeeded
NOTE: Running task 1511 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_packagedata)
NOTE: recipe atk-2.22.0-r0: task do_packagedata: Started
NOTE: recipe atk-2.22.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1514 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxtst_1.2.3.bb:do_packagedata)
NOTE: recipe libxtst-1_1.2.3-r0: task do_packagedata: Started
NOTE: recipe libxtst-1_1.2.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1515 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libogg/libogg_1.3.2.bb:do_package)
NOTE: recipe libogg-1.3.2-r0: task do_package: Started
NOTE: recipe libogg-1.3.2-r0: task do_package: Succeeded
NOTE: Running task 1519 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libogg/libogg_1.3.2.bb:do_packagedata)
NOTE: recipe libogg-1.3.2-r0: task do_packagedata: Started
NOTE: recipe libogg-1.3.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1526 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/font-util_1.3.1.bb:do_package)
NOTE: recipe font-util-1.3.1-r0: task do_package: Started
NOTE: recipe font-util-1.3.1-r0: task do_package: Succeeded
NOTE: Running task 1531 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/icu/icu_58.1.bb:do_package)
NOTE: recipe icu-58.1-r0: task do_package: Started
NOTE: recipe cairo-1.14.6-r0: task do_compile: Succeeded
NOTE: Running task 1532 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_install)
NOTE: recipe cairo-1.14.6-r0: task do_install: Started
NOTE: recipe cairo-1.14.6-r0: task do_install: Succeeded
NOTE: Running task 1533 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_populate_sysroot)
NOTE: recipe cairo-1.14.6-r0: task do_populate_sysroot: Started
NOTE: recipe cairo-1.14.6-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1534 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_configure)
NOTE: recipe harfbuzz-1.3.3-r0: task do_configure: Started
NOTE: recipe python-2.7.12-r1: task do_package: Succeeded
NOTE: Running task 1535 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_package)
NOTE: recipe cairo-1.14.6-r0: task do_package: Started
NOTE: recipe icu-58.1-r0: task do_package: Succeeded
NOTE: Running task 1536 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_packagedata)
NOTE: recipe python-2.7.12-r1: task do_packagedata: Started
NOTE: recipe python-2.7.12-r1: task do_packagedata: Succeeded
NOTE: Running task 1537 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/font-util_1.3.1.bb:do_packagedata)
NOTE: recipe font-util-1.3.1-r0: task do_packagedata: Started
NOTE: recipe font-util-1.3.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1538 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_populate_sysroot)
NOTE: recipe dbus-glib-0.106-r0: task do_populate_sysroot: Started
NOTE: recipe dbus-glib-0.106-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1545 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/icu/icu_58.1.bb:do_packagedata)
NOTE: recipe icu-58.1-r0: task do_packagedata: Started
NOTE: recipe icu-58.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1546 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcursor_1.1.14.bb:do_package)
NOTE: recipe libxcursor-1_1.1.14-r0: task do_package: Started
NOTE: recipe cairo-1.14.6-r0: task do_package: Succeeded
NOTE: Running task 1547 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_packagedata)
NOTE: recipe cairo-1.14.6-r0: task do_packagedata: Started
NOTE: recipe libxcursor-1_1.1.14-r0: task do_package: Succeeded
NOTE: Running task 1560 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_fetch)
NOTE: recipe libxfont2-2.0.1-r0: task do_fetch: Started
NOTE: recipe cairo-1.14.6-r0: task do_packagedata: Succeeded
NOTE: Running task 1597 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcursor_1.1.14.bb:do_packagedata)
NOTE: recipe libxfont2-2.0.1-r0: task do_fetch: Succeeded
NOTE: Running task 1598 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_unpack)
NOTE: recipe libxcursor-1_1.1.14-r0: task do_packagedata: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_unpack: Started
NOTE: recipe libxcursor-1_1.1.14-r0: task do_packagedata: Succeeded
NOTE: Running task 1599 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_package)
NOTE: recipe libxfont2-2.0.1-r0: task do_unpack: Succeeded
NOTE: Running task 1600 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_patch)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_package: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_patch: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_patch: Succeeded
NOTE: Running task 1601 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_configure)
NOTE: recipe libxfont2-2.0.1-r0: task do_configure: Started
NOTE: recipe at-spi2-core-2.22.0-r0: task do_package: Succeeded
NOTE: Running task 1605 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_compile_kernelmodules)
NOTE: recipe linux-boundary-4.1.15-r0: task do_compile_kernelmodules: Started
NOTE: recipe harfbuzz-1.3.3-r0: task do_configure: Succeeded
NOTE: Running task 1606 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_compile)
NOTE: recipe harfbuzz-1.3.3-r0: task do_compile: Started
NOTE: recipe libxml2-2.9.4-r0: task do_compile: Succeeded
NOTE: Running task 1607 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_install)
NOTE: recipe libxml2-2.9.4-r0: task do_install: Started
NOTE: recipe libxml2-2.9.4-r0: task do_install: Succeeded
NOTE: Running task 1608 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_populate_sysroot)
NOTE: recipe libxml2-2.9.4-r0: task do_populate_sysroot: Started
NOTE: recipe libxml2-2.9.4-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1613 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_packagedata)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_packagedata: Started
NOTE: recipe at-spi2-core-2.22.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1614 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_package)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_package: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_compile_kernelmodules: Succeeded
NOTE: Running task 1615 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fontsproto_2.1.3.bb:do_package)
NOTE: recipe fontsproto-1_2.1.3-r0: task do_package: Started
NOTE: recipe fontsproto-1_2.1.3-r0: task do_package: Succeeded
NOTE: Running task 1616 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_package)
NOTE: recipe libxml2-2.9.4-r0: task do_package: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_configure: Succeeded
NOTE: Running task 1617 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_compile)
NOTE: recipe libxfont2-2.0.1-r0: task do_compile: Started
NOTE: recipe harfbuzz-1.3.3-r0: task do_compile: Succeeded
NOTE: Running task 1618 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_install)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_package: Succeeded
NOTE: Running task 1623 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.4.bb:do_package)
NOTE: recipe libxml2-2.9.4-r0: task do_package: Succeeded
NOTE: Running task 1624 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrandr_1.5.1.bb:do_package)
NOTE: recipe harfbuzz-1.3.3-r0: task do_install: Started
NOTE: recipe harfbuzz-1.3.3-r0: task do_install: Succeeded
NOTE: Running task 1625 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_populate_sysroot)
NOTE: recipe harfbuzz-1.3.3-r0: task do_populate_sysroot: Started
NOTE: recipe libxrandr-1_1.5.1-r0: task do_package: Started
NOTE: recipe libxcomposite-1_0.4.4-r0: task do_package: Started
NOTE: recipe harfbuzz-1.3.3-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1626 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_configure)
NOTE: recipe pango-1.40.3-r0: task do_configure: Started
NOTE: recipe libxcomposite-1_0.4.4-r0: task do_package: Succeeded
NOTE: Running task 1627 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_package)
NOTE: recipe libxrandr-1_1.5.1-r0: task do_package: Succeeded
NOTE: Running task 1628 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_package)
NOTE: recipe harfbuzz-1.3.3-r0: task do_package: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_package: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_compile: Succeeded
NOTE: Running task 1629 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_install)
NOTE: recipe libxfont2-2.0.1-r0: task do_install: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_install: Succeeded
NOTE: Running task 1630 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_package)
NOTE: recipe libepoxy-1.3.1-r0: task do_package: Started
NOTE: recipe harfbuzz-1.3.3-r0: task do_package: Succeeded
NOTE: Running task 1631 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_packagedata)
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_package: Succeeded
NOTE: Running task 1632 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fontsproto_2.1.3.bb:do_packagedata)
NOTE: recipe harfbuzz-1.3.3-r0: task do_packagedata: Started
NOTE: recipe fontsproto-1_2.1.3-r0: task do_packagedata: Started
NOTE: recipe harfbuzz-1.3.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1633 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_packagedata)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_packagedata: Started
NOTE: recipe fontsproto-1_2.1.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1638 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_configure)
NOTE: recipe gconf-3.2.6-r0: task do_configure: Started
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1639 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_packagedata)
NOTE: recipe libxml2-2.9.4-r0: task do_packagedata: Started
NOTE: recipe libepoxy-1.3.1-r0: task do_package: Succeeded
NOTE: Running task 1643 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.4.bb:do_packagedata)
NOTE: recipe libxml2-2.9.4-r0: task do_packagedata: Succeeded
NOTE: Running task 1644 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_packagedata)
NOTE: recipe libxcomposite-1_0.4.4-r0: task do_packagedata: Started
NOTE: recipe libepoxy-1.3.1-r0: task do_packagedata: Started
NOTE: recipe libxcomposite-1_0.4.4-r0: task do_packagedata: Succeeded
NOTE: Running task 1645 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrandr_1.5.1.bb:do_packagedata)
NOTE: recipe libepoxy-1.3.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1646 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_packagedata)
NOTE: recipe libxrandr-1_1.5.1-r0: task do_packagedata: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_packagedata: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_packagedata: Succeeded
NOTE: recipe libxrandr-1_1.5.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1654 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_strip)
NOTE: Running task 1655 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_uboot_mkimage)
NOTE: recipe linux-boundary-4.1.15-r0: task do_strip: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_uboot_mkimage: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_uboot_mkimage: Succeeded
NOTE: recipe linux-boundary-4.1.15-r0: task do_strip: Succeeded
NOTE: Running task 1663 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_sizecheck)
NOTE: Running task 1673 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libfontenc_1.1.3.bb:do_package)
NOTE: recipe linux-boundary-4.1.15-r0: task do_sizecheck: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_sizecheck: Succeeded
NOTE: Running task 1674 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_install)
NOTE: recipe linux-boundary-4.1.15-r0: task do_install: Started
NOTE: recipe libfontenc-1_1.1.3-r0: task do_package: Started
NOTE: recipe libfontenc-1_1.1.3-r0: task do_package: Succeeded
NOTE: Running task 1678 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_package)
NOTE: recipe dbus-glib-0.106-r0: task do_package: Started
NOTE: recipe dbus-glib-0.106-r0: task do_package: Succeeded
NOTE: Running task 1688 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libfontenc_1.1.3.bb:do_packagedata)
NOTE: recipe libfontenc-1_1.1.3-r0: task do_packagedata: Started
NOTE: recipe libfontenc-1_1.1.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1695 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_packagedata)
NOTE: recipe dbus-glib-0.106-r0: task do_packagedata: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_install: Succeeded
NOTE: Running task 1704 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-lib_1.1.2.bb:do_package)
NOTE: recipe dbus-glib-0.106-r0: task do_packagedata: Succeeded
NOTE: Running task 1705 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_fetch)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_fetch: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_fetch: Succeeded
NOTE: Running task 1706 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_unpack)
NOTE: recipe alsa-lib-1.1.2-r0: task do_package: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_unpack: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_unpack: Succeeded
NOTE: Running task 1707 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_patch)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_patch: Started
NOTE: recipe pango-1.40.3-r0: task do_configure: Succeeded
NOTE: Running task 1708 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_compile)
NOTE: recipe pango-1.40.3-r0: task do_compile: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_patch: Succeeded
NOTE: Running task 1709 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb:do_package)
NOTE: recipe alsa-lib-1.1.2-r0: task do_package: Succeeded
NOTE: Running task 1711 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gmp/gmp_6.1.1.bb:do_package)
NOTE: recipe gconf-3.2.6-r0: task do_configure: Succeeded
NOTE: Running task 1712 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_compile)
NOTE: recipe gconf-3.2.6-r0: task do_compile: Started
NOTE: recipe gmp-6.1.1-r0: task do_package: Started
NOTE: recipe xcb-util-0.4.0-r0: task do_package: Started
NOTE: recipe xcb-util-0.4.0-r0: task do_package: Succeeded
NOTE: Running task 1719 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_populate_sysroot)
NOTE: recipe libxfont2-2.0.1-r0: task do_populate_sysroot: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1721 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_configure)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_configure: Started
NOTE: recipe gmp-6.1.1-r0: task do_package: Succeeded
NOTE: Running task 1722 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-lib_1.1.2.bb:do_packagedata)
NOTE: recipe alsa-lib-1.1.2-r0: task do_packagedata: Started
NOTE: recipe alsa-lib-1.1.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1723 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb:do_packagedata)
NOTE: recipe xcb-util-0.4.0-r0: task do_packagedata: Started
NOTE: recipe xcb-util-0.4.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1724 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb:do_package)
NOTE: recipe xf86miscproto-1_0.9.3-r1: task do_package: Started
NOTE: recipe xf86miscproto-1_0.9.3-r1: task do_package: Succeeded
NOTE: Running task 1725 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gmp/gmp_6.1.1.bb:do_packagedata)
NOTE: recipe gmp-6.1.1-r0: task do_packagedata: Started
NOTE: recipe gmp-6.1.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1747 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.9.bb:do_package)
NOTE: recipe libxkbfile-1_1.0.9-r0: task do_package: Started
NOTE: recipe libxkbfile-1_1.0.9-r0: task do_package: Succeeded
NOTE: Running task 1751 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bash/bash_4.3.30.bb:do_package)
NOTE: recipe bash-4.3.30-r0: task do_package: Started
NOTE: recipe gconf-3.2.6-r0: task do_compile: Succeeded
NOTE: Running task 1752 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_install)
NOTE: recipe bash-4.3.30-r0: task do_package: Succeeded
NOTE: Running task 1753 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb:do_packagedata)
NOTE: recipe xf86miscproto-1_0.9.3-r1: task do_packagedata: Started
NOTE: recipe gconf-3.2.6-r0: task do_install: Started
NOTE: recipe xf86miscproto-1_0.9.3-r1: task do_packagedata: Succeeded
NOTE: Running task 1763 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_configure)
NOTE: recipe libidn-1.33-r0: task do_configure: Started
NOTE: recipe gconf-3.2.6-r0: task do_install: Succeeded
NOTE: Running task 1766 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/startup-notification/startup-notification_0.12.bb:do_package)
NOTE: recipe startup-notification-0.12-r2: task do_package: Started
NOTE: recipe startup-notification-0.12-r2: task do_package: Succeeded
NOTE: Running task 1786 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.9.bb:do_packagedata)
NOTE: recipe pango-1.40.3-r0: task do_compile: Succeeded
NOTE: Running task 1787 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_install)
NOTE: recipe libxkbfile-1_1.0.9-r0: task do_packagedata: Started
NOTE: recipe libxkbfile-1_1.0.9-r0: task do_packagedata: Succeeded
NOTE: recipe pango-1.40.3-r0: task do_install: Started
NOTE: Running task 1792 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc_2.24.bb:do_package_write_ipk)
NOTE: recipe glibc-2.24-r0: task do_package_write_ipk: Started
NOTE: recipe pango-1.40.3-r0: task do_install: Succeeded
NOTE: Running task 1793 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_populate_sysroot)
NOTE: recipe pango-1.40.3-r0: task do_populate_sysroot: Started
NOTE: recipe pango-1.40.3-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1794 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_configure)
NOTE: recipe gtk+3-3.22.1-r0: task do_configure: Started
NOTE: recipe glibc-2.24-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 1795 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_package)
NOTE: recipe pango-1.40.3-r0: task do_package: Started
NOTE: recipe pango-1.40.3-r0: task do_package: Succeeded
NOTE: Running task 1796 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_packagedata)
NOTE: recipe pango-1.40.3-r0: task do_packagedata: Started
NOTE: recipe pango-1.40.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1797 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/videoproto_2.3.3.bb:do_package)
NOTE: recipe videoproto-1_2.3.3-r0: task do_package: Started
NOTE: recipe videoproto-1_2.3.3-r0: task do_package: Succeeded
NOTE: Running task 1802 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/libgcc_6.2.bb:do_package_write_ipk)
NOTE: recipe libgcc-6.2.0-r0: task do_package_write_ipk: Started
NOTE: recipe libgcc-6.2.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 1807 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-runtime_6.2.bb:do_package_write_ipk)
NOTE: recipe gcc-runtime-6.2.0-r0: task do_package_write_ipk: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_configure: Succeeded
NOTE: Running task 1808 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_compile)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_compile: Started
NOTE: recipe gcc-runtime-6.2.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 1809 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/startup-notification/startup-notification_0.12.bb:do_packagedata)
NOTE: recipe startup-notification-0.12-r2: task do_packagedata: Started
NOTE: recipe startup-notification-0.12-r2: task do_packagedata: Succeeded
NOTE: Running task 1822 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_package)
NOTE: recipe linux-boundary-4.1.15-r0: task do_package: Started
NOTE: recipe libidn-1.33-r0: task do_configure: Succeeded
NOTE: Running task 1823 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_compile)
NOTE: recipe libidn-1.33-r0: task do_compile: Started
NOTE: recipe gtk+3-3.22.1-r0: task do_configure: Succeeded
NOTE: Running task 1824 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_compile)
NOTE: recipe gtk+3-3.22.1-r0: task do_compile: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_package: Succeeded
NOTE: Running task 1828 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/videoproto_2.3.3.bb:do_packagedata)
NOTE: recipe videoproto-1_2.3.3-r0: task do_packagedata: Started
NOTE: recipe videoproto-1_2.3.3-r0: task do_packagedata: Succeeded
NOTE: Running task 1836 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_package)
NOTE: recipe gconf-3.2.6-r0: task do_package: Started
NOTE: recipe libidn-1.33-r0: task do_compile: Succeeded
NOTE: Running task 1837 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_install)
NOTE: recipe libidn-1.33-r0: task do_install: Started
NOTE: recipe libidn-1.33-r0: task do_install: Succeeded
NOTE: Running task 1841 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_populate_sysroot)
NOTE: recipe gconf-3.2.6-r0: task do_populate_sysroot: Started
NOTE: recipe gconf-3.2.6-r0: task do_package: Succeeded
NOTE: Running task 1842 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/presentproto_git.bb:do_package)
NOTE: recipe gconf-3.2.6-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1843 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb:do_package)
NOTE: recipe xf86dgaproto-1_2.1-r2: task do_package: Started
NOTE: recipe presentproto-1.0+gitAUTOINC+24f3a56e54-r1: task do_package: Started
NOTE: recipe presentproto-1.0+gitAUTOINC+24f3a56e54-r1: task do_package: Succeeded
NOTE: Running task 1844 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/resourceproto_1.2.0.bb:do_package)
NOTE: recipe xf86dgaproto-1_2.1-r2: task do_package: Succeeded
NOTE: Running task 1845 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb:do_package)
NOTE: recipe xineramaproto-1_1.2.1-r0: task do_package: Started
NOTE: recipe resourceproto-1_1.2.0-r1: task do_package: Started
NOTE: recipe xineramaproto-1_1.2.1-r0: task do_package: Succeeded
NOTE: Running task 1846 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.2.bb:do_package)
NOTE: recipe resourceproto-1_1.2.0-r1: task do_package: Succeeded
NOTE: Running task 1847 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.2.bb:do_package)
NOTE: recipe xcmiscproto-1_1.2.2-r0: task do_package: Started
NOTE: recipe bigreqsproto-1_1.1.2-r0: task do_package: Started
NOTE: recipe bigreqsproto-1_1.1.2-r0: task do_package: Succeeded
NOTE: Running task 1848 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.2.bb:do_package)
NOTE: recipe xcmiscproto-1_1.2.2-r0: task do_package: Succeeded
NOTE: Running task 1849 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_package)
NOTE: recipe libxfont2-2.0.1-r0: task do_package: Started
NOTE: recipe scrnsaverproto-1_1.2.2-r0: task do_package: Started
NOTE: recipe scrnsaverproto-1_1.2.2-r0: task do_package: Succeeded
NOTE: Running task 1856 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_packagedata)
NOTE: recipe gconf-3.2.6-r0: task do_packagedata: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_package: Succeeded
NOTE: Running task 1857 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libvorbis/libvorbis_1.3.5.bb:do_package)
NOTE: recipe gconf-3.2.6-r0: task do_packagedata: Succeeded
NOTE: Running task 1858 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/flac/flac_1.3.1.bb:do_package)
NOTE: recipe libvorbis-1.3.5-r0: task do_package: Started
NOTE: recipe flac-1.3.1-r0: task do_package: Started
NOTE: recipe flac-1.3.1-r0: task do_package: Succeeded
NOTE: Running task 1859 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.2.bb:do_packagedata)
NOTE: recipe libvorbis-1.3.5-r0: task do_package: Succeeded
NOTE: Running task 1860 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb:do_packagedata)
NOTE: recipe scrnsaverproto-1_1.2.2-r0: task do_packagedata: Started
NOTE: recipe xf86dgaproto-1_2.1-r2: task do_packagedata: Started
NOTE: recipe scrnsaverproto-1_1.2.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1861 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/resourceproto_1.2.0.bb:do_packagedata)
NOTE: recipe xf86dgaproto-1_2.1-r2: task do_packagedata: Succeeded
NOTE: Running task 1862 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb:do_packagedata)
NOTE: recipe resourceproto-1_1.2.0-r1: task do_packagedata: Started
NOTE: recipe xineramaproto-1_1.2.1-r0: task do_packagedata: Started
NOTE: recipe resourceproto-1_1.2.0-r1: task do_packagedata: Succeeded
NOTE: Running task 1863 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/presentproto_git.bb:do_packagedata)
NOTE: recipe xineramaproto-1_1.2.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1864 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.2.bb:do_packagedata)
NOTE: recipe presentproto-1.0+gitAUTOINC+24f3a56e54-r1: task do_packagedata: Started
NOTE: recipe xcmiscproto-1_1.2.2-r0: task do_packagedata: Started
NOTE: recipe presentproto-1.0+gitAUTOINC+24f3a56e54-r1: task do_packagedata: Succeeded
NOTE: Running task 1865 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.2.bb:do_packagedata)
NOTE: recipe xcmiscproto-1_1.2.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1866 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_packagedata)
NOTE: recipe bigreqsproto-1_1.1.2-r0: task do_packagedata: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_packagedata: Started
NOTE: recipe bigreqsproto-1_1.1.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1867 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_packagedata)
NOTE: recipe libxfont2-2.0.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1873 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bash/bash_4.3.30.bb:do_packagedata)
NOTE: recipe linux-boundary-4.1.15-r0: task do_packagedata: Started
NOTE: recipe bash-4.3.30-r0: task do_packagedata: Started
NOTE: recipe bash-4.3.30-r0: task do_packagedata: Succeeded
NOTE: Running task 1879 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libvorbis/libvorbis_1.3.5.bb:do_packagedata)
NOTE: recipe linux-boundary-4.1.15-r0: task do_packagedata: Succeeded
NOTE: Running task 1880 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/flac/flac_1.3.1.bb:do_packagedata)
NOTE: recipe libvorbis-1.3.5-r0: task do_packagedata: Started
NOTE: recipe flac-1.3.1-r0: task do_packagedata: Started
NOTE: recipe libvorbis-1.3.5-r0: task do_packagedata: Succeeded
NOTE: Running task 1881 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxt_1.1.5.bb:do_package)
NOTE: recipe flac-1.3.1-r0: task do_packagedata: Succeeded
NOTE: Running task 1886 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-passwd/base-passwd_3.5.29.bb:do_package)
NOTE: recipe base-passwd-3.5.29-r0: task do_package: Started
NOTE: recipe libxt-1_1.1.5-r0: task do_package: Started
NOTE: recipe base-passwd-3.5.29-r0: task do_package: Succeeded
NOTE: Running task 1887 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libcap/libcap_2.25.bb:do_package)
NOTE: recipe libcap-2.25-r0: task do_package: Started
NOTE: recipe libxt-1_1.1.5-r0: task do_package: Succeeded
NOTE: Running task 1888 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libevdev/libevdev_1.5.4.bb:do_package)
NOTE: recipe libevdev-1.5.4-r0: task do_package: Started
NOTE: recipe libcap-2.25-r0: task do_package: Succeeded
NOTE: Running task 1889 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/mtdev_1.1.5.bb:do_package)
NOTE: recipe libevdev-1.5.4-r0: task do_package: Succeeded
NOTE: Running task 1893 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/attr_2.4.47.bb:do_package)
NOTE: recipe mtdev-1.1.5-r0: task do_package: Started
NOTE: recipe attr-2.4.47-r0: task do_package: Started
NOTE: recipe mtdev-1.1.5-r0: task do_package: Succeeded
NOTE: Running task 1898 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/expat/expat_2.2.0.bb:do_package_write_ipk)
NOTE: recipe expat-2.2.0-r0: task do_package_write_ipk: Started
NOTE: recipe expat-2.2.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 1899 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxt_1.1.5.bb:do_packagedata)
NOTE: recipe libxt-1_1.1.5-r0: task do_packagedata: Started
NOTE: recipe libxt-1_1.1.5-r0: task do_packagedata: Succeeded
NOTE: Running task 1903 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_package_write_ipk)
NOTE: recipe attr-2.4.47-r0: task do_package: Succeeded
NOTE: Running task 1904 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libcap/libcap_2.25.bb:do_packagedata)
NOTE: recipe libcap-2.25-r0: task do_packagedata: Started
NOTE: recipe gettext-0.19.8.1-r0: task do_package_write_ipk: Started
NOTE: recipe libcap-2.25-r0: task do_packagedata: Succeeded
NOTE: Running task 1905 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libevdev/libevdev_1.5.4.bb:do_packagedata)
NOTE: recipe libevdev-1.5.4-r0: task do_packagedata: Started
NOTE: recipe libevdev-1.5.4-r0: task do_packagedata: Succeeded
NOTE: Running task 1906 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/mtdev_1.1.5.bb:do_packagedata)
NOTE: recipe mtdev-1.1.5-r0: task do_packagedata: Started
NOTE: recipe mtdev-1.1.5-r0: task do_packagedata: Succeeded
NOTE: Running task 1907 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/attr_2.4.47.bb:do_packagedata)
NOTE: recipe attr-2.4.47-r0: task do_packagedata: Started
NOTE: recipe attr-2.4.47-r0: task do_packagedata: Succeeded
NOTE: Running task 1908 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_configure)
NOTE: recipe libinput-1.5.0-r0: task do_configure: Started
NOTE: recipe gettext-0.19.8.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 1909 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.27.bb:do_package)
NOTE: recipe libsndfile1-1.0.27-r0: task do_package: Started
NOTE: recipe libinput-1.5.0-r0: task do_configure: Succeeded
NOTE: Running task 1910 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_compile)
NOTE: recipe libinput-1.5.0-r0: task do_compile: Started
NOTE: recipe libsndfile1-1.0.27-r0: task do_package: Succeeded
NOTE: Running task 1938 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_configure)
NOTE: recipe libarchive-3.2.2-r0: task do_configure: Started
NOTE: recipe libinput-1.5.0-r0: task do_compile: Succeeded
NOTE: Running task 1939 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_install)
NOTE: recipe libinput-1.5.0-r0: task do_install: Started
NOTE: recipe libinput-1.5.0-r0: task do_install: Succeeded
NOTE: Running task 1940 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-passwd/base-passwd_3.5.29.bb:do_packagedata)
NOTE: recipe base-passwd-3.5.29-r0: task do_packagedata: Started
NOTE: recipe base-passwd-3.5.29-r0: task do_packagedata: Succeeded
NOTE: Running task 1941 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxmu_1.1.2.bb:do_package)
NOTE: recipe libxmu-1_1.1.2-r0: task do_package: Started
NOTE: recipe libxmu-1_1.1.2-r0: task do_package: Succeeded
NOTE: Running task 1945 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.27.bb:do_packagedata)
NOTE: recipe libsndfile1-1.0.27-r0: task do_packagedata: Started
NOTE: recipe libsndfile1-1.0.27-r0: task do_packagedata: Succeeded
NOTE: Running task 1946 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_populate_sysroot)
NOTE: recipe libidn-1.33-r0: task do_populate_sysroot: Started
NOTE: recipe libidn-1.33-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1952 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_configure)
NOTE: recipe matchbox-wm-1.2.2-r0: task do_configure: Started
NOTE: recipe matchbox-wm-1.2.2-r0: task do_configure: Succeeded
NOTE: Running task 1959 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_configure)
NOTE: recipe gnutls-3.5.6-r0: task do_configure: Started
NOTE: recipe libarchive-3.2.2-r0: task do_configure: Succeeded
NOTE: Running task 1960 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_compile)
NOTE: recipe libarchive-3.2.2-r0: task do_compile: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_compile: Succeeded
NOTE: Running task 1961 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_install)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_install: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_install: Succeeded
NOTE: Running task 1962 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_package)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_package: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_package: Succeeded
NOTE: Running task 1963 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_packagedata)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_packagedata: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_packagedata: Succeeded
NOTE: Running task 1972 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_compile)
NOTE: recipe matchbox-wm-1.2.2-r0: task do_compile: Started
NOTE: recipe matchbox-wm-1.2.2-r0: task do_compile: Succeeded
NOTE: Running task 1974 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_install)
NOTE: recipe matchbox-wm-1.2.2-r0: task do_install: Started
NOTE: recipe matchbox-wm-1.2.2-r0: task do_install: Succeeded
NOTE: Running task 1981 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libnl/libnl_3.2.28.bb:do_package)
NOTE: recipe libnl-1_3.2.28-r0: task do_package: Started
NOTE: recipe libarchive-3.2.2-r0: task do_compile: Succeeded
NOTE: Running task 1982 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_install)
NOTE: recipe libarchive-3.2.2-r0: task do_install: Started
NOTE: recipe libarchive-3.2.2-r0: task do_install: Succeeded
NOTE: Running task 1987 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_populate_sysroot)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_populate_sysroot: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 1988 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/zlib/zlib_1.2.8.bb:do_package_write_ipk)
NOTE: recipe zlib-1.2.8-r0: task do_package_write_ipk: Started
NOTE: recipe zlib-1.2.8-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 1989 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxmu_1.1.2.bb:do_packagedata)
NOTE: recipe libxmu-1_1.1.2-r0: task do_packagedata: Started
NOTE: recipe libxmu-1_1.1.2-r0: task do_packagedata: Succeeded
NOTE: Running task 1990 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libmatchbox/libmatchbox_1.12.bb:do_package)
NOTE: recipe libmatchbox-1.12-r0: task do_package: Started
NOTE: recipe libnl-1_3.2.28-r0: task do_package: Succeeded
NOTE: Running task 1991 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb1_1.0.20.bb:do_package)
NOTE: recipe libmatchbox-1.12-r0: task do_package: Succeeded
NOTE: Running task 1992 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgpg-error/libgpg-error_1.25.bb:do_package)
NOTE: recipe libusb1-1.0.20-r0: task do_package: Started
NOTE: recipe libgpg-error-1.25-r0: task do_package: Started
NOTE: recipe libusb1-1.0.20-r0: task do_package: Succeeded
NOTE: Running task 1993 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_package)
NOTE: recipe libidn-1.33-r0: task do_package: Started
NOTE: recipe libgpg-error-1.25-r0: task do_package: Succeeded
NOTE: Running task 1994 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/libtool/libtool_2.4.6.bb:do_package)
NOTE: recipe libidn-1.33-r0: task do_package: Succeeded
NOTE: Running task 1995 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/nettle/nettle_3.3.bb:do_package)
NOTE: recipe libtool-2.4.6-r0: task do_package: Started
NOTE: recipe nettle-3.3-r0: task do_package: Started
NOTE: recipe libtool-2.4.6-r0: task do_package: Succeeded
NOTE: Running task 2008 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libnl/libnl_3.2.28.bb:do_packagedata)
NOTE: recipe libnl-1_3.2.28-r0: task do_packagedata: Started
NOTE: recipe libnl-1_3.2.28-r0: task do_packagedata: Succeeded
NOTE: Running task 2014 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-util/util-macros_1.19.0.bb:do_package_write_ipk)
NOTE: recipe util-macros-1_1.19.0-r0: task do_package_write_ipk: Started
NOTE: recipe util-macros-1_1.19.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2016 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_populate_sysroot)
NOTE: recipe linux-boundary-4.1.15-r0: task do_populate_sysroot: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2017 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gdbm/gdbm_1.12.bb:do_package_write_ipk)
NOTE: recipe gdbm-1.12-r0: task do_package_write_ipk: Started
NOTE: recipe nettle-3.3-r0: task do_package: Succeeded
NOTE: Running task 2018 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/db/db_6.0.35.bb:do_package_write_ipk)
NOTE: recipe db-6.0.35-r1: task do_package_write_ipk: Started
NOTE: recipe gdbm-1.12-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2019 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/sqlite/sqlite3_3.15.1.bb:do_package_write_ipk)
NOTE: recipe sqlite3-3_3.15.1-r0: task do_package_write_ipk: Started
NOTE: recipe sqlite3-3_3.15.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2020 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/nettle/nettle_3.3.bb:do_packagedata)
NOTE: recipe nettle-3.3-r0: task do_packagedata: Started
NOTE: recipe nettle-3.3-r0: task do_packagedata: Succeeded
NOTE: Running task 2021 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb1_1.0.20.bb:do_packagedata)
NOTE: recipe libusb1-1.0.20-r0: task do_packagedata: Started
NOTE: recipe libusb1-1.0.20-r0: task do_packagedata: Succeeded
NOTE: Running task 2022 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgpg-error/libgpg-error_1.25.bb:do_packagedata)
NOTE: recipe libgpg-error-1.25-r0: task do_packagedata: Started
NOTE: recipe libgpg-error-1.25-r0: task do_packagedata: Succeeded
NOTE: Running task 2023 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libmatchbox/libmatchbox_1.12.bb:do_packagedata)
NOTE: recipe libmatchbox-1.12-r0: task do_packagedata: Started
NOTE: recipe libmatchbox-1.12-r0: task do_packagedata: Succeeded
NOTE: Running task 2024 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_packagedata)
NOTE: recipe libidn-1.33-r0: task do_packagedata: Started
NOTE: recipe libidn-1.33-r0: task do_packagedata: Succeeded
NOTE: Running task 2025 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/libtool/libtool_2.4.6.bb:do_packagedata)
NOTE: recipe libtool-2.4.6-r0: task do_packagedata: Started
NOTE: recipe libtool-2.4.6-r0: task do_packagedata: Succeeded
NOTE: Running task 2026 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.9.bb:do_package)
NOTE: recipe libsamplerate0-0.1.9-r1: task do_package: Started
NOTE: recipe gnutls-3.5.6-r0: task do_configure: Succeeded
NOTE: Running task 2027 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_compile)
NOTE: recipe gnutls-3.5.6-r0: task do_compile: Started
NOTE: recipe libsamplerate0-0.1.9-r1: task do_package: Succeeded
NOTE: Running task 2028 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_package_write_ipk)
NOTE: recipe cryptodev-linux-1.8-r0: task do_package_write_ipk: Started
NOTE: recipe cryptodev-linux-1.8-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2029 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libffi/libffi_3.2.1.bb:do_package_write_ipk)
NOTE: recipe libffi-3.2.1-r0: task do_package_write_ipk: Started
NOTE: recipe db-6.0.35-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 2030 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_package_write_ipk)
NOTE: recipe openssl-1.0.2j-r0: task do_package_write_ipk: Started
NOTE: recipe libffi-3.2.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2031 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_package_write_ipk)
NOTE: recipe python-2.7.12-r1: task do_package_write_ipk: Started
NOTE: recipe openssl-1.0.2j-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2032 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/ncurses/ncurses_6.0+20160625.bb:do_package_write_ipk)
NOTE: recipe ncurses-6.0+20160625-r0: task do_package_write_ipk: Started
NOTE: recipe ncurses-6.0+20160625-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2033 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb:do_package_write_ipk)
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package_write_ipk: Started
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2034 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/readline/readline_7.0.bb:do_package_write_ipk)
NOTE: recipe readline-7.0-r0: task do_package_write_ipk: Started
NOTE: recipe readline-7.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2035 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_package_write_ipk)
NOTE: recipe bzip2-1.0.6-r5: task do_package_write_ipk: Started
NOTE: recipe python-2.7.12-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 2036 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/liburcu/liburcu_0.9.2.bb:do_package)
NOTE: recipe bzip2-1.0.6-r5: task do_package_write_ipk: Succeeded
NOTE: Running task 2046 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_configure)
NOTE: recipe liburcu-0.9.2-r0: task do_package: Started
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_configure: Started
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_configure: Succeeded
NOTE: Running task 2050 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_make_scripts)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_make_scripts: Started
NOTE: recipe liburcu-0.9.2-r0: task do_package: Succeeded
NOTE: Running task 2070 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_package)
NOTE: recipe libarchive-3.2.2-r0: task do_package: Started
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_make_scripts: Succeeded
NOTE: Running task 2071 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_compile)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_compile: Started
NOTE: recipe libarchive-3.2.2-r0: task do_package: Succeeded
NOTE: Running task 2072 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_package)
NOTE: recipe libinput-1.5.0-r0: task do_package: Started
NOTE: recipe libinput-1.5.0-r0: task do_package: Succeeded
NOTE: Running task 2090 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.9.bb:do_packagedata)
NOTE: recipe libsamplerate0-0.1.9-r1: task do_packagedata: Started
NOTE: recipe libsamplerate0-0.1.9-r1: task do_packagedata: Succeeded
NOTE: Running task 2098 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/liburcu/liburcu_0.9.2.bb:do_packagedata)
NOTE: recipe liburcu-0.9.2-r0: task do_packagedata: Started
NOTE: recipe liburcu-0.9.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2099 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontscale_1.1.2.bb:do_package)
NOTE: recipe mkfontscale-1.1.2-r0: task do_package: Started
NOTE: recipe mkfontscale-1.1.2-r0: task do_package: Succeeded
NOTE: Running task 2107 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb-compat_0.1.5.bb:do_package)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_compile: Succeeded
NOTE: Running task 2108 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_install)
NOTE: recipe libusb-compat-1_0.1.5-r0: task do_package: Started
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_install: Started
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_install: Succeeded
NOTE: Running task 2109 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_package)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_package: Started
NOTE: recipe libusb-compat-1_0.1.5-r0: task do_package: Succeeded
NOTE: Running task 2110 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/iptables/iptables_1.6.0.bb:do_package)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_package: Succeeded
NOTE: Running task 2111 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/acl_2.2.52.bb:do_package)
NOTE: recipe iptables-1.6.0-r0: task do_package: Started
NOTE: recipe acl-2.2.52-r0: task do_package: Started
NOTE: recipe acl-2.2.52-r0: task do_package: Succeeded
NOTE: Running task 2112 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/popt/popt_1.16.bb:do_package)
NOTE: recipe popt-1.16-r3: task do_package: Started
NOTE: recipe popt-1.16-r3: task do_package: Succeeded
NOTE: Running task 2113 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_package)
NOTE: recipe matchbox-wm-1.2.2-r0: task do_package: Started
NOTE: recipe matchbox-wm-1.2.2-r0: task do_package: Succeeded
NOTE: Running task 2115 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/elfutils/elfutils_0.166.bb:do_package)
NOTE: recipe elfutils-0.166-r0: task do_package: Started
NOTE: recipe gnutls-3.5.6-r0: task do_compile: Succeeded
NOTE: Running task 2116 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_install)
NOTE: recipe gnutls-3.5.6-r0: task do_install: Started
NOTE: recipe iptables-1.6.0-r0: task do_package: Succeeded
NOTE: Running task 2117 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/libsocketcan_0.0.8.bb:do_package)
NOTE: recipe libsocketcan-0.0.8-r0: task do_package: Started
NOTE: recipe gnutls-3.5.6-r0: task do_install: Succeeded
NOTE: Running task 2118 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_package)
NOTE: recipe gnutls-3.5.6-r0: task do_package: Started
NOTE: recipe libsocketcan-0.0.8-r0: task do_package: Succeeded
NOTE: Running task 2119 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgcrypt/libgcrypt_1.7.3.bb:do_package)
NOTE: recipe libgcrypt-1.7.3-r0: task do_package: Started
NOTE: recipe elfutils-0.166-r0: task do_package: Succeeded
NOTE: Running task 2122 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_packagedata)
NOTE: recipe libarchive-3.2.2-r0: task do_packagedata: Started
NOTE: recipe libarchive-3.2.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2125 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb:do_package_write_ipk)
NOTE: recipe base-files-3.0.14-r89: task do_package_write_ipk: Started
NOTE: recipe base-files-3.0.14-r89: task do_package_write_ipk: Succeeded
NOTE: Running task 2126 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xproto_7.0.31.bb:do_package_write_ipk)
NOTE: recipe xproto-1_7.0.31-r0: task do_package_write_ipk: Started
NOTE: recipe xproto-1_7.0.31-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2128 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bash/bash_4.3.30.bb:do_package_write_ipk)
NOTE: recipe bash-4.3.30-r0: task do_package_write_ipk: Started
NOTE: recipe libgcrypt-1.7.3-r0: task do_package: Succeeded
NOTE: Running task 2138 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_packagedata)
NOTE: recipe libinput-1.5.0-r0: task do_packagedata: Started
NOTE: recipe libinput-1.5.0-r0: task do_packagedata: Succeeded
NOTE: Running task 2145 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpthread-stubs_0.3.bb:do_package_write_ipk)
NOTE: recipe libpthread-stubs-0.3-r0: task do_package_write_ipk: Started
NOTE: recipe bash-4.3.30-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2157 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.4.bb:do_package_write_ipk)
NOTE: recipe gnutls-3.5.6-r0: task do_package: Succeeded
NOTE: Running task 2158 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xtrans_1.3.5.bb:do_package_write_ipk)
NOTE: recipe libpthread-stubs-0.3-r0: task do_package_write_ipk: Succeeded
NOTE: recipe bash-completion-2.4-r0: task do_package_write_ipk: Started
NOTE: Running task 2159 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxau_1.0.8.bb:do_package_write_ipk)
NOTE: recipe xtrans-1_1.3.5-r0: task do_package_write_ipk: Started
NOTE: recipe libxau-1_1.0.8-r0: task do_package_write_ipk: Started
NOTE: recipe bash-completion-2.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2160 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.2.bb:do_package_write_ipk)
NOTE: recipe xtrans-1_1.3.5-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2161 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcb-proto_1.12.bb:do_package_write_ipk)
NOTE: recipe libxdmcp-1_1.1.2-r0: task do_package_write_ipk: Started
NOTE: recipe libxau-1_1.0.8-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2166 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcb_1.12.bb:do_package_write_ipk)
NOTE: recipe xcb-proto-1.12-r0: task do_package_write_ipk: Started
NOTE: recipe libxcb-1.12-r0: task do_package_write_ipk: Started
NOTE: recipe libxdmcp-1_1.1.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2179 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xextproto_7.3.0.bb:do_package_write_ipk)
NOTE: recipe xcb-proto-1.12-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2180 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/inputproto_2.3.2.bb:do_package_write_ipk)
NOTE: recipe xextproto-1_7.3.0-r0: task do_package_write_ipk: Started
NOTE: recipe inputproto-1_2.3.2-r0: task do_package_write_ipk: Started
NOTE: recipe xextproto-1_7.3.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2181 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/kbproto_1.0.7.bb:do_package_write_ipk)
NOTE: recipe kbproto-1_1.0.7-r0: task do_package_write_ipk: Started
NOTE: recipe inputproto-1_2.3.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2195 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libx11_1.6.4.bb:do_package_write_ipk)
NOTE: recipe libx11-1_1.6.4-r0: task do_package_write_ipk: Started
NOTE: recipe kbproto-1_1.0.7-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2199 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_configure)
NOTE: recipe shared-mime-info-1.6-r0: task do_configure: Started
NOTE: recipe libxcb-1.12-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2209 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc-locale_2.24.bb:do_package)
NOTE: recipe glibc-locale-2.24-r0: task do_package: Started
NOTE: recipe libx11-1_1.6.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2215 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/util-linux/util-linux_2.28.1.bb:do_package_write_ipk)
NOTE: recipe util-linux-2.28.1-r0: task do_package_write_ipk: Started
NOTE: recipe shared-mime-info-1.6-r0: task do_configure: Succeeded
NOTE: Running task 2216 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_compile)
NOTE: recipe shared-mime-info-1.6-r0: task do_compile: Started
NOTE: recipe shared-mime-info-1.6-r0: task do_compile: Succeeded
NOTE: Running task 2217 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_install)
NOTE: recipe shared-mime-info-1.6-r0: task do_install: Started
NOTE: recipe shared-mime-info-1.6-r0: task do_install: Succeeded
NOTE: Running task 2218 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_package)
NOTE: recipe shared-mime-info-1.6-r0: task do_package: Started
NOTE: recipe shared-mime-info-1.6-r0: task do_package: Succeeded
NOTE: Running task 2219 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_packagedata)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_packagedata: Started
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_packagedata: Succeeded
NOTE: Running task 2220 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontdir_1.0.7.bb:do_package)
NOTE: recipe mkfontdir-1_1.0.7-r8.0: task do_package: Started
NOTE: recipe mkfontdir-1_1.0.7-r8.0: task do_package: Succeeded
NOTE: Running task 2221 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontscale_1.1.2.bb:do_packagedata)
NOTE: recipe mkfontscale-1.1.2-r0: task do_packagedata: Started
NOTE: recipe mkfontscale-1.1.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2222 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/elfutils/elfutils_0.166.bb:do_packagedata)
NOTE: recipe elfutils-0.166-r0: task do_packagedata: Started
NOTE: recipe elfutils-0.166-r0: task do_packagedata: Succeeded
NOTE: Running task 2223 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgcrypt/libgcrypt_1.7.3.bb:do_packagedata)
NOTE: recipe libgcrypt-1.7.3-r0: task do_packagedata: Started
NOTE: recipe libgcrypt-1.7.3-r0: task do_packagedata: Succeeded
NOTE: Running task 2224 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_packagedata)
NOTE: recipe matchbox-wm-1.2.2-r0: task do_packagedata: Started
NOTE: recipe matchbox-wm-1.2.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2225 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb-compat_0.1.5.bb:do_packagedata)
NOTE: recipe libusb-compat-1_0.1.5-r0: task do_packagedata: Started
NOTE: recipe util-linux-2.28.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2226 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/acl_2.2.52.bb:do_packagedata)
NOTE: recipe acl-2.2.52-r0: task do_packagedata: Started
NOTE: recipe libusb-compat-1_0.1.5-r0: task do_packagedata: Succeeded
NOTE: Running task 2227 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/libsocketcan_0.0.8.bb:do_packagedata)
NOTE: recipe libsocketcan-0.0.8-r0: task do_packagedata: Started
NOTE: recipe acl-2.2.52-r0: task do_packagedata: Succeeded
NOTE: Running task 2228 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/popt/popt_1.16.bb:do_packagedata)
NOTE: recipe popt-1.16-r3: task do_packagedata: Started
NOTE: recipe libsocketcan-0.0.8-r0: task do_packagedata: Succeeded
NOTE: Running task 2229 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/iptables/iptables_1.6.0.bb:do_packagedata)
NOTE: recipe iptables-1.6.0-r0: task do_packagedata: Started
NOTE: recipe popt-1.16-r3: task do_packagedata: Succeeded
NOTE: Running task 2230 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_packagedata)
NOTE: recipe iptables-1.6.0-r0: task do_packagedata: Succeeded
NOTE: recipe gnutls-3.5.6-r0: task do_packagedata: Started
NOTE: Running task 2238 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb:do_package)
NOTE: recipe gnutls-3.5.6-r0: task do_packagedata: Succeeded
NOTE: Running task 2239 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/lttng/lttng-ust_git.bb:do_package)
NOTE: recipe libxxf86misc-1_1.0.3-r0: task do_package: Started
NOTE: recipe lttng-ust-2_2.8.1+gitAUTOINC+514a87f3b6-r0: task do_package: Started
NOTE: recipe libxxf86misc-1_1.0.3-r0: task do_package: Succeeded
NOTE: Running task 2240 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_configure)
NOTE: recipe alsa-utils-1.1.2-r0: task do_configure: Started
NOTE: recipe lttng-ust-2_2.8.1+gitAUTOINC+514a87f3b6-r0: task do_package: Succeeded
NOTE: Running task 2241 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libfakekey/libfakekey_git.bb:do_package)
NOTE: recipe libfakekey-0.0+gitAUTOINC+e327ff049b-r0: task do_package: Started
NOTE: recipe libfakekey-0.0+gitAUTOINC+e327ff049b-r0: task do_package: Succeeded
NOTE: Running task 2348 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/initscripts/initscripts_1.0.bb:do_package_write_ipk)
NOTE: recipe initscripts-1.0-r155: task do_package_write_ipk: Started
NOTE: recipe initscripts-1.0-r155: task do_package_write_ipk: Succeeded
NOTE: Running task 2365 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/netbase/netbase_5.3.bb:do_package)
NOTE: recipe netbase-1_5.3-r0: task do_package: Started
NOTE: recipe netbase-1_5.3-r0: task do_package: Succeeded
NOTE: Running task 2368 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_configure)
NOTE: recipe xkeyboard-config-2.19-r0: task do_configure: Started
NOTE: recipe alsa-utils-1.1.2-r0: task do_configure: Succeeded
NOTE: Running task 2369 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_compile)
NOTE: recipe alsa-utils-1.1.2-r0: task do_compile: Started
NOTE: recipe xkeyboard-config-2.19-r0: task do_configure: Succeeded
NOTE: Running task 2375 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_compile)
NOTE: recipe xkeyboard-config-2.19-r0: task do_compile: Started
NOTE: recipe xkeyboard-config-2.19-r0: task do_compile: Succeeded
NOTE: Running task 2378 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_install)
NOTE: recipe xkeyboard-config-2.19-r0: task do_install: Started
NOTE: recipe xkeyboard-config-2.19-r0: task do_install: Succeeded
NOTE: recipe alsa-utils-1.1.2-r0: task do_compile: Succeeded
NOTE: Running task 2379 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_install)
NOTE: Running task 2381 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_populate_sysroot)
NOTE: recipe libinput-1.5.0-r0: task do_populate_sysroot: Started
NOTE: recipe alsa-utils-1.1.2-r0: task do_install: Started
NOTE: recipe libinput-1.5.0-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2382 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb:do_package)
NOTE: recipe xserver-xf86-config-0.1-r33: task do_package: Started
NOTE: recipe xserver-xf86-config-0.1-r33: task do_package: Succeeded
NOTE: Running task 2383 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/rgb_1.0.6.bb:do_package)
NOTE: recipe alsa-utils-1.1.2-r0: task do_install: Succeeded
NOTE: Running task 2384 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_package)
NOTE: recipe alsa-utils-1.1.2-r0: task do_package: Started
NOTE: recipe rgb-1_1.0.6-r0: task do_package: Started
NOTE: recipe rgb-1_1.0.6-r0: task do_package: Succeeded
NOTE: Running task 2385 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_package)
NOTE: recipe xkeyboard-config-2.19-r0: task do_package: Started
NOTE: recipe xkeyboard-config-2.19-r0: task do_package: Succeeded
NOTE: Running task 2386 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xkbcomp_1.3.1.bb:do_package)
NOTE: recipe alsa-utils-1.1.2-r0: task do_package: Succeeded
NOTE: Running task 2388 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_configure)
NOTE: recipe xkbcomp-1.3.1-r8.0: task do_package: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_configure: Started
NOTE: recipe xkbcomp-1.3.1-r8.0: task do_package: Succeeded
NOTE: Running task 2390 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/lttng/lttng-ust_git.bb:do_packagedata)
NOTE: recipe lttng-ust-2_2.8.1+gitAUTOINC+514a87f3b6-r0: task do_packagedata: Started
NOTE: recipe lttng-ust-2_2.8.1+gitAUTOINC+514a87f3b6-r0: task do_packagedata: Succeeded
NOTE: Running task 2391 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb:do_packagedata)
NOTE: recipe libxxf86misc-1_1.0.3-r0: task do_packagedata: Started
NOTE: recipe libxxf86misc-1_1.0.3-r0: task do_packagedata: Succeeded
NOTE: Running task 2392 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libfakekey/libfakekey_git.bb:do_packagedata)
NOTE: recipe libfakekey-0.0+gitAUTOINC+e327ff049b-r0: task do_packagedata: Started
NOTE: recipe libfakekey-0.0+gitAUTOINC+e327ff049b-r0: task do_packagedata: Succeeded
NOTE: Running task 2394 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libpcre/libpcre_8.39.bb:do_package_write_ipk)
NOTE: recipe libpcre-8.39-r0: task do_package_write_ipk: Started
NOTE: recipe libpcre-8.39-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2395 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/alsa-state/alsa-state.bb:do_package)
NOTE: recipe alsa-state-0.2.0-r5: task do_package: Started
NOTE: recipe alsa-state-0.2.0-r5: task do_package: Succeeded
NOTE: Running task 2396 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_package_write_ipk)
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_package_write_ipk: Started
NOTE: recipe gtk+3-3.22.1-r0: task do_compile: Succeeded
NOTE: Running task 2397 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_install)
NOTE: recipe gtk+3-3.22.1-r0: task do_install: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_configure: Succeeded
NOTE: Running task 2398 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_compile)
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_compile: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_compile: Succeeded
NOTE: Running task 2399 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_install)
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_install: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_install: Succeeded
NOTE: Running task 2400 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_package)
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_package: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_package: Succeeded
NOTE: Running task 2464 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_packagedata)
NOTE: recipe alsa-utils-1.1.2-r0: task do_packagedata: Started
NOTE: recipe alsa-utils-1.1.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2467 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_packagedata)
NOTE: recipe shared-mime-info-1.6-r0: task do_packagedata: Started
NOTE: recipe shared-mime-info-1.6-r0: task do_packagedata: Succeeded
NOTE: Running task 2483 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontdir_1.0.7.bb:do_packagedata)
NOTE: recipe mkfontdir-1_1.0.7-r8.0: task do_packagedata: Started
NOTE: recipe mkfontdir-1_1.0.7-r8.0: task do_packagedata: Succeeded
NOTE: Running task 2487 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg-arch-config_1.0.bb:do_package)
NOTE: recipe opkg-arch-config-1.0-r1: task do_package: Started
NOTE: recipe opkg-arch-config-1.0-r1: task do_package: Succeeded
NOTE: Running task 2488 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog-config.bb:do_package)
NOTE: recipe watchdog-config-1.0-r0: task do_package: Started
NOTE: recipe watchdog-config-1.0-r0: task do_package: Succeeded
NOTE: Running task 2490 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/perl/perl_5.24.0.bb:do_package)
NOTE: recipe gtk+3-3.22.1-r0: task do_install: Succeeded
NOTE: Running task 2491 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_populate_sysroot)
NOTE: recipe gtk+3-3.22.1-r0: task do_populate_sysroot: Started
NOTE: recipe perl-5.24.0-r0: task do_package: Started
NOTE: recipe gtk+3-3.22.1-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2492 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_package)
NOTE: recipe gtk+3-3.22.1-r0: task do_package: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2493 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_configure: Started
NOTE: recipe matchbox-panel-2-2.11-r0: task do_configure: Succeeded
NOTE: Running task 2494 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_compile)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_compile: Started
NOTE: recipe gtk+3-3.22.1-r0: task do_package: Succeeded
NOTE: Running task 2495 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_packagedata)
NOTE: recipe gtk+3-3.22.1-r0: task do_packagedata: Started
NOTE: recipe gtk+3-3.22.1-r0: task do_packagedata: Succeeded
NOTE: Running task 2496 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_configure)
NOTE: recipe vte-0.44.2-r0: task do_configure: Started
NOTE: recipe matchbox-panel-2-2.11-r0: task do_compile: Succeeded
NOTE: Running task 2497 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_install)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_install: Started
NOTE: recipe matchbox-panel-2-2.11-r0: task do_install: Succeeded
NOTE: Running task 2498 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_package)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_package: Started
NOTE: recipe vte-0.44.2-r0: task do_configure: Succeeded
NOTE: Running task 2499 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_compile)
NOTE: recipe vte-0.44.2-r0: task do_compile: Started
NOTE: recipe perl-5.24.0-r0: task do_package: Succeeded
NOTE: Running task 2509 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_populate_sysroot)
NOTE: recipe gnutls-3.5.6-r0: task do_populate_sysroot: Started
NOTE: recipe gnutls-3.5.6-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2517 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_populate_sysroot)
NOTE: recipe matchbox-wm-1.2.2-r0: task do_populate_sysroot: Started
NOTE: recipe matchbox-wm-1.2.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2518 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_populate_sysroot)
NOTE: recipe libarchive-3.2.2-r0: task do_populate_sysroot: Started
NOTE: recipe libarchive-3.2.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2519 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxext_1.3.3.bb:do_package_write_ipk)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_package: Succeeded
NOTE: Running task 2520 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_packagedata)
NOTE: recipe libxext-1_1.3.3-r0: task do_package_write_ipk: Started
NOTE: recipe matchbox-panel-2-2.11-r0: task do_packagedata: Started
NOTE: recipe libxext-1_1.3.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2522 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_configure)
NOTE: recipe pciutils-3.5.2-r0: task do_configure: Started
NOTE: recipe pciutils-3.5.2-r0: task do_configure: Succeeded
NOTE: Running task 2524 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_configure)
NOTE: recipe wpa-supplicant-2.5-r0: task do_configure: Started
NOTE: recipe wpa-supplicant-2.5-r0: task do_configure: Succeeded
NOTE: Running task 2529 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_configure)
NOTE: recipe matchbox-desktop-2.1-r0: task do_configure: Started
NOTE: recipe matchbox-panel-2-2.11-r0: task do_packagedata: Succeeded
NOTE: Running task 2531 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_configure)
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_configure: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_configure: Succeeded
NOTE: Running task 2535 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_configure)
NOTE: recipe usbutils-008-r0: task do_configure: Started
NOTE: recipe matchbox-desktop-2.1-r0: task do_configure: Succeeded
NOTE: Running task 2536 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_configure)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_configure: Started
NOTE: recipe vte-0.44.2-r0: task do_compile: Succeeded
NOTE: Running task 2537 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_install)
NOTE: recipe vte-0.44.2-r0: task do_install: Started
NOTE: recipe vte-0.44.2-r0: task do_install: Succeeded
NOTE: Running task 2538 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_package)
NOTE: recipe vte-0.44.2-r0: task do_package: Started
NOTE: recipe vte-0.44.2-r0: task do_package: Succeeded
NOTE: Running task 2539 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_packagedata)
NOTE: recipe vte-0.44.2-r0: task do_packagedata: Started
NOTE: recipe vte-0.44.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2548 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_configure)
NOTE: recipe settings-daemon-0.0.2-r0: task do_configure: Started
NOTE: recipe glibc-locale-2.24-r0: task do_package: Succeeded
NOTE: Running task 2549 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc-locale_2.24.bb:do_packagedata)
NOTE: recipe glibc-locale-2.24-r0: task do_packagedata: Started
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_configure: Succeeded
NOTE: Running task 2551 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_configure)
NOTE: recipe opkg-1_0.3.3-r0: task do_configure: Started
NOTE: recipe glibc-locale-2.24-r0: task do_packagedata: Succeeded
NOTE: Running task 2553 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_configure)
NOTE: recipe openssh-7.3p1-r0: task do_configure: Started
NOTE: recipe settings-daemon-0.0.2-r0: task do_configure: Succeeded
NOTE: Running task 2560 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_compile)
NOTE: recipe wpa-supplicant-2.5-r0: task do_compile: Started
NOTE: recipe usbutils-008-r0: task do_configure: Succeeded
NOTE: Running task 2561 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_compile)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_compile: Started
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_compile: Succeeded
NOTE: Running task 2562 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_compile)
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_compile: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_compile: Succeeded
NOTE: Running task 2573 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_compile)
NOTE: recipe settings-daemon-0.0.2-r0: task do_compile: Started
NOTE: recipe settings-daemon-0.0.2-r0: task do_compile: Succeeded
NOTE: Running task 2583 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_compile)
NOTE: recipe matchbox-desktop-2.1-r0: task do_compile: Started
NOTE: recipe opkg-1_0.3.3-r0: task do_configure: Succeeded
NOTE: Running task 2584 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_compile)
NOTE: recipe opkg-1_0.3.3-r0: task do_compile: Started
NOTE: recipe matchbox-desktop-2.1-r0: task do_compile: Succeeded
NOTE: Running task 2585 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_compile)
NOTE: recipe usbutils-008-r0: task do_compile: Started
NOTE: recipe wpa-supplicant-2.5-r0: task do_compile: Succeeded
NOTE: Running task 2587 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_compile)
NOTE: recipe pciutils-3.5.2-r0: task do_compile: Started
NOTE: recipe usbutils-008-r0: task do_compile: Succeeded
NOTE: Running task 2591 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_install)
NOTE: recipe wpa-supplicant-2.5-r0: task do_install: Started
NOTE: recipe wpa-supplicant-2.5-r0: task do_install: Succeeded
NOTE: Running task 2607 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_install)
NOTE: recipe settings-daemon-0.0.2-r0: task do_install: Started
NOTE: recipe settings-daemon-0.0.2-r0: task do_install: Succeeded
NOTE: Running task 2611 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_install)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_install: Started
NOTE: recipe pciutils-3.5.2-r0: task do_compile: Succeeded
NOTE: Running task 2614 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_install)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_install: Succeeded
NOTE: Running task 2615 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_install)
NOTE: recipe opkg-1_0.3.3-r0: task do_compile: Succeeded
NOTE: Running task 2616 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_install)
NOTE: recipe usbutils-008-r0: task do_install: Started
NOTE: recipe usbutils-008-r0: task do_install: Succeeded
NOTE: Running task 2617 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_install)
NOTE: recipe pciutils-3.5.2-r0: task do_install: Started
NOTE: recipe opkg-1_0.3.3-r0: task do_install: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_install: Started
NOTE: recipe opkg-1_0.3.3-r0: task do_install: Succeeded
NOTE: Running task 2618 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_install)
NOTE: recipe pciutils-3.5.2-r0: task do_install: Succeeded
NOTE: Running task 2619 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/netbase/netbase_5.3.bb:do_packagedata)
NOTE: recipe netbase-1_5.3-r0: task do_packagedata: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_install: Succeeded
NOTE: Running task 2620 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/can-utils_git.bb:do_package)
NOTE: recipe matchbox-desktop-2.1-r0: task do_install: Started
NOTE: recipe netbase-1_5.3-r0: task do_packagedata: Succeeded
NOTE: Running task 2621 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_package)
NOTE: recipe matchbox-desktop-2.1-r0: task do_install: Succeeded
NOTE: Running task 2622 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_package)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_package: Started
NOTE: recipe can-utils-git-r0: task do_package: Started
NOTE: recipe sysvinit-2.88dsf-r14: task do_package: Started
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_package: Succeeded
NOTE: Running task 2623 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_package)
NOTE: recipe opkg-1_0.3.3-r0: task do_package: Started
NOTE: recipe opkg-1_0.3.3-r0: task do_package: Succeeded
NOTE: Running task 2624 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/firmware-imx/firmware-imx_5.4.bb:do_package)
NOTE: recipe firmware-imx-1_5.4-r0: task do_package: Started
NOTE: recipe can-utils-git-r0: task do_package: Succeeded
NOTE: Running task 2625 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/coreutils/coreutils_8.25.bb:do_package)
NOTE: recipe sysvinit-2.88dsf-r14: task do_package: Succeeded
NOTE: Running task 2627 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-session/matchbox-session_0.1.bb:do_package)
NOTE: recipe matchbox-session-0.1-r4: task do_package: Started
NOTE: recipe coreutils-8.25-r0: task do_package: Started
NOTE: recipe matchbox-session-0.1-r4: task do_package: Succeeded
NOTE: Running task 2628 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xinit_1.3.4.bb:do_package)
NOTE: recipe firmware-imx-1_5.4-r0: task do_package: Succeeded
NOTE: Running task 2629 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/rsync/rsync_3.1.2.bb:do_package)
NOTE: recipe rsync-3.1.2-r0: task do_package: Started
NOTE: recipe xinit-1_1.3.4-r0: task do_package: Started
NOTE: recipe xinit-1_1.3.4-r0: task do_package: Succeeded
NOTE: Running task 2630 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/ethtool/ethtool_4.8.bb:do_package)
NOTE: recipe rsync-3.1.2-r0: task do_package: Succeeded
NOTE: Running task 2631 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/modutils-initscripts/modutils-initscripts.bb:do_package)
NOTE: recipe ethtool-4.8-r0: task do_package: Started
NOTE: recipe modutils-initscripts-1.0-r7: task do_package: Started
NOTE: recipe modutils-initscripts-1.0-r7: task do_package: Succeeded
NOTE: Running task 2632 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_package)
NOTE: recipe wpa-supplicant-2.5-r0: task do_package: Started
NOTE: recipe ethtool-4.8-r0: task do_package: Succeeded
NOTE: Running task 2633 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iproute2/iproute2_4.7.0.bb:do_package)
NOTE: recipe iproute2-4.7.0-r0: task do_package: Started
NOTE: recipe wpa-supplicant-2.5-r0: task do_package: Succeeded
NOTE: Running task 2634 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package)
NOTE: recipe busybox-1.24.1-r0: task do_package: Started
NOTE: recipe iproute2-4.7.0-r0: task do_package: Succeeded
NOTE: Running task 2635 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog_5.15.bb:do_package)
NOTE: recipe watchdog-5.15-r0: task do_package: Started
NOTE: recipe busybox-1.24.1-r0: task do_package: Succeeded
NOTE: Running task 2636 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_package)
NOTE: recipe usbutils-008-r0: task do_package: Started
NOTE: recipe watchdog-5.15-r0: task do_package: Succeeded
NOTE: Running task 2637 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/init-ifupdown/init-ifupdown_1.0.bb:do_package)
NOTE: recipe usbutils-008-r0: task do_package: Succeeded
NOTE: Running task 2638 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wireless-tools/wireless-tools_30.pre9.bb:do_package)
NOTE: recipe init-ifupdown-1.0-r7: task do_package: Started
NOTE: recipe wireless-tools-1_30.pre9-r0: task do_package: Started
NOTE: recipe init-ifupdown-1.0-r7: task do_package: Succeeded
NOTE: Running task 2639 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus-wait/dbus-wait_git.bb:do_package)
NOTE: recipe dbus-wait-0.1+gitAUTOINC+6cc6077a36-r2: task do_package: Started
NOTE: recipe coreutils-8.25-r0: task do_package: Succeeded
NOTE: Running task 2640 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/tar/tar_1.29.bb:do_package)
NOTE: recipe tar-1.29-r0: task do_package: Started
NOTE: recipe dbus-wait-0.1+gitAUTOINC+6cc6077a36-r2: task do_package: Succeeded
NOTE: Running task 2642 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iw/iw_4.9.bb:do_package)
NOTE: recipe wireless-tools-1_30.pre9-r0: task do_package: Succeeded
NOTE: Running task 2643 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_package)
NOTE: recipe matchbox-desktop-2.1-r0: task do_package: Started
NOTE: recipe iw-4.9-r0: task do_package: Started
NOTE: recipe matchbox-desktop-2.1-r0: task do_package: Succeeded
NOTE: Running task 2644 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/udev-extraconf_1.1.bb:do_package)
NOTE: recipe udev-extraconf-1.1-r0: task do_package: Started
NOTE: recipe iw-4.9-r0: task do_package: Succeeded
NOTE: Running task 2645 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_package)
NOTE: recipe udev-extraconf-1.1-r0: task do_package: Succeeded
NOTE: Running task 2646 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-core/udev/udev-rules-imx.bb:do_package)
NOTE: recipe settings-daemon-0.0.2-r0: task do_package: Started
NOTE: recipe udev-rules-imx-1.0-r0: task do_package: Started
NOTE: recipe udev-rules-imx-1.0-r0: task do_package: Succeeded
NOTE: Running task 2647 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_package)
NOTE: recipe settings-daemon-0.0.2-r0: task do_package: Succeeded
NOTE: Running task 2648 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_package)
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_package: Started
NOTE: recipe pciutils-3.5.2-r0: task do_package: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_package: Succeeded
NOTE: Running task 2649 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/alsa/alsa-config_0.0.bb:do_package)
NOTE: recipe alsa-config-0.0-r1: task do_package: Started
NOTE: recipe tar-1.29-r0: task do_package: Succeeded
NOTE: Running task 2650 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/i2c-tools/i2c-tools_3.1.2.bb:do_package)
NOTE: recipe pciutils-3.5.2-r0: task do_package: Succeeded
NOTE: Running task 2652 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_package_write_ipk)
NOTE: recipe alsa-config-0.0-r1: task do_package: Succeeded
NOTE: Running task 2653 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fixesproto_5.0.bb:do_package_write_ipk)
NOTE: recipe i2c-tools-3.1.2-r0: task do_package: Started
NOTE: recipe fixesproto-1_5.0-r1: task do_package_write_ipk: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_package_write_ipk: Started
NOTE: recipe openssh-7.3p1-r0: task do_configure: Succeeded
NOTE: Running task 2654 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_compile)
NOTE: recipe openssh-7.3p1-r0: task do_compile: Started
NOTE: recipe fixesproto-1_5.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 2655 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libice_1.0.9.bb:do_package_write_ipk)
NOTE: recipe libice-1_1.0.9-r0: task do_package_write_ipk: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2656 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_package_write_ipk)
NOTE: recipe eudev-3.2-r0: task do_package_write_ipk: Started
NOTE: recipe libice-1_1.0.9-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2657 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfixes_5.0.3.bb:do_package_write_ipk)
NOTE: recipe libxfixes-1_5.0.3-r0: task do_package_write_ipk: Started
NOTE: recipe i2c-tools-3.1.2-r0: task do_package: Succeeded
NOTE: Running task 2658 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libsm_1.2.2.bb:do_package_write_ipk)
NOTE: recipe libxfixes-1_5.0.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2659 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xkbcomp_1.3.1.bb:do_packagedata)
NOTE: recipe xkbcomp-1.3.1-r8.0: task do_packagedata: Started
NOTE: recipe libsm-1_1.2.2-r0: task do_package_write_ipk: Started
NOTE: recipe xkbcomp-1.3.1-r8.0: task do_packagedata: Succeeded
NOTE: Running task 2660 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb:do_packagedata)
NOTE: recipe xserver-xf86-config-0.1-r33: task do_packagedata: Started
NOTE: recipe xserver-xf86-config-0.1-r33: task do_packagedata: Succeeded
NOTE: Running task 2661 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/rgb_1.0.6.bb:do_packagedata)
NOTE: recipe rgb-1_1.0.6-r0: task do_packagedata: Started
NOTE: recipe rgb-1_1.0.6-r0: task do_packagedata: Succeeded
NOTE: Running task 2662 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_packagedata)
NOTE: recipe xkeyboard-config-2.19-r0: task do_packagedata: Started
NOTE: recipe libsm-1_1.2.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2663 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/freetype/freetype_2.7.bb:do_package_write_ipk)
NOTE: recipe xkeyboard-config-2.19-r0: task do_packagedata: Succeeded
NOTE: Running task 2664 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/alsa-state/alsa-state.bb:do_packagedata)
NOTE: recipe alsa-state-0.2.0-r5: task do_packagedata: Started
NOTE: recipe alsa-state-0.2.0-r5: task do_packagedata: Succeeded
NOTE: Running task 2665 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_packagedata)
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_packagedata: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_packagedata: Succeeded
NOTE: Running task 2666 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_package_write_ipk)
NOTE: recipe linux-boundary-4.1.15-r0: task do_package_write_ipk: Started
NOTE: recipe freetype-2.7-r0: task do_package_write_ipk: Started
NOTE: recipe eudev-3.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2667 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-passwd/base-passwd_3.5.29.bb:do_package_write_ipk)
NOTE: recipe base-passwd-3.5.29-r0: task do_package_write_ipk: Started
NOTE: recipe base-passwd-3.5.29-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2669 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/perl/perl_5.24.0.bb:do_packagedata)
NOTE: recipe perl-5.24.0-r0: task do_packagedata: Started
NOTE: recipe perl-5.24.0-r0: task do_packagedata: Succeeded
NOTE: Running task 2670 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg-arch-config_1.0.bb:do_packagedata)
NOTE: recipe opkg-arch-config-1.0-r1: task do_packagedata: Started
NOTE: recipe freetype-2.7-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2671 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog-config.bb:do_packagedata)
NOTE: recipe watchdog-config-1.0-r0: task do_packagedata: Started
NOTE: recipe opkg-arch-config-1.0-r1: task do_packagedata: Succeeded
NOTE: Running task 2673 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_populate_sysroot)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_populate_sysroot: Started
NOTE: recipe watchdog-config-1.0-r0: task do_packagedata: Succeeded
NOTE: Running task 2675 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_populate_sysroot)
NOTE: recipe vte-0.44.2-r0: task do_populate_sysroot: Started
NOTE: recipe vte-0.44.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2678 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb:do_package_write_ipk)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2679 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libpng/libpng_1.6.26.bb:do_package_write_ipk)
NOTE: recipe libpng-1.6.26-r0: task do_package_write_ipk: Started
NOTE: recipe renderproto-1_0.11.1-r1: task do_package_write_ipk: Started
NOTE: recipe openssh-7.3p1-r0: task do_compile: Succeeded
NOTE: Running task 2680 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_install)
NOTE: recipe openssh-7.3p1-r0: task do_install: Started
NOTE: recipe renderproto-1_0.11.1-r1: task do_package_write_ipk: Succeeded
NOTE: Running noexec task 2687 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd.bb:do_configure)
NOTE: Running task 2688 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_configure)
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_configure: Started
NOTE: recipe openssh-7.3p1-r0: task do_install: Succeeded
NOTE: Running task 2689 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_package)
NOTE: recipe openssh-7.3p1-r0: task do_package: Started
NOTE: recipe libpng-1.6.26-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2692 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_configure)
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_configure: Started
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_configure: Succeeded
NOTE: Running task 2696 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_configure)
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_configure: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2697 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_configure)
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_configure: Started
NOTE: recipe openssh-7.3p1-r0: task do_package: Succeeded
NOTE: Running task 2700 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_configure)
NOTE: recipe matchbox-terminal-0.1-r0: task do_configure: Started
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_configure: Succeeded
NOTE: Running task 2702 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_configure)
NOTE: recipe matchbox-session-sato-0.1-r30: task do_configure: Started
NOTE: recipe matchbox-terminal-0.1-r0: task do_configure: Succeeded
NOTE: Running noexec task 2704 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd.bb:do_compile)
NOTE: Running task 2708 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_compile)
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_compile: Started
NOTE: recipe matchbox-session-sato-0.1-r30: task do_configure: Succeeded
NOTE: Running task 2716 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_compile)
NOTE: recipe matchbox-session-sato-0.1-r30: task do_compile: Started
NOTE: recipe matchbox-session-sato-0.1-r30: task do_compile: Succeeded
NOTE: Running task 2717 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_compile)
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_compile: Started
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_compile: Succeeded
NOTE: Running task 2720 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_compile)
NOTE: recipe matchbox-terminal-0.1-r0: task do_compile: Started
NOTE: recipe matchbox-terminal-0.1-r0: task do_compile: Succeeded
NOTE: Running noexec task 2722 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd.bb:do_install)
NOTE: Running task 2729 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_install)
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_configure: Succeeded
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_compile: Succeeded
NOTE: Running task 2730 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_compile)
NOTE: Running task 2735 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_install)
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_compile: Started
NOTE: recipe matchbox-terminal-0.1-r0: task do_install: Started
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_configure: Succeeded
NOTE: Running task 2736 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_compile)
NOTE: recipe matchbox-session-sato-0.1-r30: task do_install: Started
NOTE: recipe matchbox-terminal-0.1-r0: task do_install: Succeeded
NOTE: Running task 2740 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_install)
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_compile: Started
NOTE: recipe matchbox-session-sato-0.1-r30: task do_install: Succeeded
NOTE: Running task 2743 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_install)
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_install: Started
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_install: Succeeded
NOTE: Running task 2744 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_packagedata)
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_install: Started
NOTE: recipe sysvinit-2.88dsf-r14: task do_packagedata: Started
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_install: Succeeded
NOTE: Running task 2745 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_packagedata)
NOTE: recipe wpa-supplicant-2.5-r0: task do_packagedata: Started
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_compile: Succeeded
NOTE: Running task 2746 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_install)
NOTE: recipe sysvinit-2.88dsf-r14: task do_packagedata: Succeeded
NOTE: Running task 2747 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_packagedata)
NOTE: recipe wpa-supplicant-2.5-r0: task do_packagedata: Succeeded
NOTE: Running task 2748 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-session/matchbox-session_0.1.bb:do_packagedata)
NOTE: recipe settings-daemon-0.0.2-r0: task do_packagedata: Started
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_install: Started
NOTE: recipe matchbox-session-0.1-r4: task do_packagedata: Started
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_install: Succeeded
NOTE: Running task 2749 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/init-ifupdown/init-ifupdown_1.0.bb:do_packagedata)
NOTE: recipe matchbox-session-0.1-r4: task do_packagedata: Succeeded
NOTE: Running task 2750 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_packagedata)
NOTE: recipe settings-daemon-0.0.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2751 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/can-utils_git.bb:do_packagedata)
NOTE: recipe init-ifupdown-1.0-r7: task do_packagedata: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_packagedata: Started
NOTE: recipe can-utils-git-r0: task do_packagedata: Started
NOTE: recipe init-ifupdown-1.0-r7: task do_packagedata: Succeeded
NOTE: Running task 2752 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/rsync/rsync_3.1.2.bb:do_packagedata)
NOTE: recipe can-utils-git-r0: task do_packagedata: Succeeded
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2753 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iproute2/iproute2_4.7.0.bb:do_packagedata)
NOTE: Running task 2754 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/ethtool/ethtool_4.8.bb:do_packagedata)
NOTE: recipe rsync-3.1.2-r0: task do_packagedata: Started
NOTE: recipe iproute2-4.7.0-r0: task do_packagedata: Started
NOTE: recipe ethtool-4.8-r0: task do_packagedata: Started
NOTE: recipe rsync-3.1.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2756 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-core/udev/udev-rules-imx.bb:do_packagedata)
NOTE: recipe ethtool-4.8-r0: task do_packagedata: Succeeded
NOTE: Running task 2757 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/udev-extraconf_1.1.bb:do_packagedata)
NOTE: recipe udev-rules-imx-1.0-r0: task do_packagedata: Started
NOTE: recipe iproute2-4.7.0-r0: task do_packagedata: Succeeded
NOTE: Running task 2758 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_packagedata)
NOTE: recipe udev-extraconf-1.1-r0: task do_packagedata: Started
NOTE: recipe pciutils-3.5.2-r0: task do_packagedata: Started
NOTE: recipe udev-rules-imx-1.0-r0: task do_packagedata: Succeeded
NOTE: Running task 2759 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/coreutils/coreutils_8.25.bb:do_packagedata)
NOTE: recipe pciutils-3.5.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2760 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_packagedata)
NOTE: recipe udev-extraconf-1.1-r0: task do_packagedata: Succeeded
NOTE: Running task 2761 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/i2c-tools/i2c-tools_3.1.2.bb:do_packagedata)
NOTE: recipe opkg-1_0.3.3-r0: task do_packagedata: Started
NOTE: recipe i2c-tools-3.1.2-r0: task do_packagedata: Started
NOTE: recipe coreutils-8.25-r0: task do_packagedata: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_compile: Succeeded
NOTE: Running task 2762 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_install)
NOTE: recipe opkg-1_0.3.3-r0: task do_packagedata: Succeeded
NOTE: recipe i2c-tools-3.1.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2763 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/tar/tar_1.29.bb:do_packagedata)
NOTE: Running task 2764 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/alsa/alsa-config_0.0.bb:do_packagedata)
NOTE: recipe coreutils-8.25-r0: task do_packagedata: Succeeded
NOTE: Running task 2765 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/modutils-initscripts/modutils-initscripts.bb:do_packagedata)
NOTE: recipe modutils-initscripts-1.0-r7: task do_packagedata: Started
NOTE: recipe alsa-config-0.0-r1: task do_packagedata: Started
NOTE: recipe tar-1.29-r0: task do_packagedata: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_install: Started
NOTE: recipe alsa-config-0.0-r1: task do_packagedata: Succeeded
NOTE: Running task 2766 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/firmware-imx/firmware-imx_5.4.bb:do_packagedata)
NOTE: recipe tar-1.29-r0: task do_packagedata: Succeeded
NOTE: Running task 2767 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog_5.15.bb:do_packagedata)
NOTE: recipe modutils-initscripts-1.0-r7: task do_packagedata: Succeeded
NOTE: Running task 2768 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/busybox/busybox_1.24.1.bb:do_packagedata)
NOTE: recipe firmware-imx-1_5.4-r0: task do_packagedata: Started
NOTE: recipe watchdog-5.15-r0: task do_packagedata: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_install: Succeeded
NOTE: Running task 2769 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_packagedata)
NOTE: recipe busybox-1.24.1-r0: task do_packagedata: Started
NOTE: recipe matchbox-desktop-2.1-r0: task do_packagedata: Started
NOTE: recipe firmware-imx-1_5.4-r0: task do_packagedata: Succeeded
NOTE: Running task 2770 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus-wait/dbus-wait_git.bb:do_packagedata)
NOTE: recipe watchdog-5.15-r0: task do_packagedata: Succeeded
NOTE: Running task 2771 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wireless-tools/wireless-tools_30.pre9.bb:do_packagedata)
NOTE: recipe matchbox-desktop-2.1-r0: task do_packagedata: Succeeded
NOTE: Running task 2772 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iw/iw_4.9.bb:do_packagedata)
NOTE: recipe dbus-wait-0.1+gitAUTOINC+6cc6077a36-r2: task do_packagedata: Started
NOTE: recipe wireless-tools-1_30.pre9-r0: task do_packagedata: Started
NOTE: recipe iw-4.9-r0: task do_packagedata: Started
NOTE: recipe dbus-wait-0.1+gitAUTOINC+6cc6077a36-r2: task do_packagedata: Succeeded
NOTE: Running task 2774 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_packagedata)
NOTE: recipe wireless-tools-1_30.pre9-r0: task do_packagedata: Succeeded
NOTE: recipe busybox-1.24.1-r0: task do_packagedata: Succeeded
NOTE: Running task 2775 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_packagedata)
NOTE: Running task 2776 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xinit_1.3.4.bb:do_packagedata)
NOTE: recipe usbutils-008-r0: task do_packagedata: Started
NOTE: recipe openssh-7.3p1-r0: task do_packagedata: Started
NOTE: recipe xinit-1_1.3.4-r0: task do_packagedata: Started
NOTE: recipe iw-4.9-r0: task do_packagedata: Succeeded
NOTE: Running task 2777 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_packagedata)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_packagedata: Started
NOTE: recipe usbutils-008-r0: task do_packagedata: Succeeded
NOTE: Running task 2778 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/xz/xz_5.2.2.bb:do_package_write_ipk)
NOTE: recipe openssh-7.3p1-r0: task do_packagedata: Succeeded
NOTE: Running task 2779 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow_4.2.1.bb:do_package_write_ipk)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_packagedata: Succeeded
NOTE: Running task 2782 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-can.bb:do_package)
NOTE: recipe xinit-1_1.3.4-r0: task do_packagedata: Succeeded
NOTE: Running task 2783 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-pci.bb:do_package)
NOTE: recipe xz-5.2.2-r0: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-can-1.0-r1: task do_package: Started
NOTE: recipe packagegroup-amltd-pci-1.0-r0: task do_package: Started
NOTE: recipe packagegroup-amltd-pci-1.0-r0: task do_package: Succeeded
NOTE: Running task 2784 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_package)
NOTE: recipe matchbox-session-sato-0.1-r30: task do_package: Started
NOTE: recipe packagegroup-amltd-can-1.0-r1: task do_package: Succeeded
NOTE: Running task 2786 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-wifi.bb:do_package)
NOTE: recipe shadow-4.2.1-r0: task do_package_write_ipk: Started
NOTE: recipe matchbox-session-sato-0.1-r30: task do_package: Succeeded
NOTE: Running task 2788 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_package)
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_package: Started
NOTE: recipe packagegroup-amltd-wifi-1.0-r1: task do_package: Started
NOTE: recipe packagegroup-amltd-wifi-1.0-r1: task do_package: Succeeded
NOTE: Running task 2789 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gdb/gdb_7.11.1.bb:do_package)
NOTE: recipe gdb-7.11.1-r0: task do_package: Started
NOTE: recipe xz-5.2.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2790 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_package)
NOTE: recipe matchbox-terminal-0.1-r0: task do_package: Started
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_package: Succeeded
NOTE: Running task 2791 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-usbhost.bb:do_package)
NOTE: recipe matchbox-terminal-0.1-r0: task do_package: Succeeded
NOTE: Running task 2792 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-touchscreen.bb:do_package)
NOTE: recipe packagegroup-amltd-usbhost-1.0-r1: task do_package: Started
NOTE: recipe packagegroup-amltd-touchscreen-1.0-r1: task do_package: Started
NOTE: recipe packagegroup-amltd-usbhost-1.0-r1: task do_package: Succeeded
NOTE: Running task 2793 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-i2c.bb:do_package)
NOTE: recipe packagegroup-amltd-touchscreen-1.0-r1: task do_package: Succeeded
NOTE: Running task 2794 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_package)
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_package: Started
NOTE: recipe packagegroup-amltd-i2c-1.0-r1: task do_package: Started
NOTE: recipe packagegroup-amltd-i2c-1.0-r1: task do_package: Succeeded
NOTE: Running task 2795 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xauth_1.0.9.bb:do_package)
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_package: Succeeded
NOTE: Running task 2796 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_package)
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_package: Started
NOTE: recipe xauth-1_1.0.9-r0: task do_package: Started
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_package: Succeeded
NOTE: Running task 2797 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_package)
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_package: Started
NOTE: recipe xauth-1_1.0.9-r0: task do_package: Succeeded
NOTE: Running task 2798 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd.bb:do_package)
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_package: Succeeded
NOTE: Running task 2799 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/x11-common/xserver-nodm-init_3.0.bb:do_package)
NOTE: recipe packagegroup-amltd-1.0-r1: task do_package: Started
NOTE: recipe packagegroup-amltd-1.0-r1: task do_package: Succeeded
NOTE: Running task 2800 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xset_1.2.3.bb:do_package)
NOTE: recipe xserver-nodm-init-3.0-r31: task do_package: Started
NOTE: recipe xset-1_1.2.3-r0: task do_package: Started
NOTE: recipe shadow-4.2.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2801 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xhost_1.0.7.bb:do_package)
NOTE: recipe xserver-nodm-init-3.0-r31: task do_package: Succeeded
NOTE: Running task 2802 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/psplash/psplash_git.bb:do_package)
NOTE: recipe xhost-1_1.0.7-r0: task do_package: Started
NOTE: recipe psplash-0.1+gitAUTOINC+88343ad23c-r15: task do_package: Started
NOTE: recipe xhost-1_1.0.7-r0: task do_package: Succeeded
NOTE: Running task 2803 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-alsa.bb:do_package)
NOTE: recipe xset-1_1.2.3-r0: task do_package: Succeeded
NOTE: Running task 2804 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-alsa-1.0-r1: task do_package: Started
NOTE: recipe damageproto-1_1.2.1-r1: task do_package_write_ipk: Started
NOTE: recipe psplash-0.1+gitAUTOINC+88343ad23c-r15: task do_package: Succeeded
NOTE: Running task 2805 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-alsa-1.0-r1: task do_package: Succeeded
NOTE: Running task 2806 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb:do_package_write_ipk)
NOTE: recipe python3-3.5.2-r1.0: task do_package_write_ipk: Started
NOTE: recipe damageproto-1_1.2.1-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 2807 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpciaccess_0.13.4.bb:do_package_write_ipk)
NOTE: recipe xf86vidmodeproto-1_2.3.1-r1: task do_package_write_ipk: Started
NOTE: recipe xf86vidmodeproto-1_2.3.1-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 2811 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.4.bb:do_package_write_ipk)
NOTE: recipe libpciaccess-0.13.4-r0: task do_package_write_ipk: Started
NOTE: recipe libxxf86vm-1_1.1.4-r0: task do_package_write_ipk: Started
NOTE: recipe gdb-7.11.1-r0: task do_package: Succeeded
NOTE: Running task 2812 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb:do_package_write_ipk)
NOTE: recipe xf86driproto-1_2.1.1-r0: task do_package_write_ipk: Started
NOTE: recipe libpciaccess-0.13.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2813 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/glproto_1.4.17.bb:do_package_write_ipk)
NOTE: recipe glproto-1_1.4.17-r0: task do_package_write_ipk: Started
NOTE: recipe xf86driproto-1_2.1.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2814 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/dri2proto_2.8.bb:do_package_write_ipk)
NOTE: recipe libxxf86vm-1_1.1.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2815 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdamage_1.1.4.bb:do_package_write_ipk)
NOTE: recipe dri2proto-2.8-r0: task do_package_write_ipk: Started
NOTE: recipe libxdamage-1_1.1.4-r0: task do_package_write_ipk: Started
NOTE: recipe glproto-1_1.4.17-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2816 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_package_write_ipk)
NOTE: recipe libdrm-2.4.74-r0: task do_package_write_ipk: Started
NOTE: recipe dri2proto-2.8-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2821 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_package_write_ipk)
NOTE: recipe libxdamage-1_1.1.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2822 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrender_0.9.10.bb:do_package_write_ipk)
NOTE: recipe mesa-2_13.0.2-r0: task do_package_write_ipk: Started
NOTE: recipe libxrender-1_0.9.10-r0: task do_package_write_ipk: Started
NOTE: recipe libxrender-1_0.9.10-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2823 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_package_write_ipk)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_package_write_ipk: Started
NOTE: recipe libdrm-2.4.74-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2824 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus_1.10.10.bb:do_package_write_ipk)
NOTE: recipe dbus-1.10.10-r0: task do_package_write_ipk: Started
NOTE: recipe mesa-2_13.0.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2825 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_bundle_initramfs)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2826 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_package_write_ipk)
NOTE: recipe linux-boundary-4.1.15-r0: task do_bundle_initramfs: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_bundle_initramfs: Succeeded
NOTE: Running task 2827 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_deploy)
NOTE: recipe linux-boundary-4.1.15-r0: task do_deploy: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_package_write_ipk: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_deploy: Succeeded
NOTE: Running task 2828 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/recordproto_1.14.2.bb:do_package_write_ipk)
NOTE: recipe dbus-1.10.10-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2830 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_package_write_ipk)
NOTE: recipe recordproto-1_1.14.2-r1: task do_package_write_ipk: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_package_write_ipk: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2835 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/fontconfig/fontconfig_2.12.1.bb:do_package_write_ipk)
NOTE: recipe fontconfig-2.12.1-r0: task do_package_write_ipk: Started
NOTE: recipe recordproto-1_1.14.2-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 2846 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_package_write_ipk)
NOTE: recipe libxml2-2.9.4-r0: task do_package_write_ipk: Started
NOTE: recipe libxml2-2.9.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2847 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/pixman_0.34.0.bb:do_package_write_ipk)
NOTE: recipe fontconfig-2.12.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2848 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb:do_package_write_ipk)
NOTE: recipe compositeproto-1_0.4.2-r1: task do_package_write_ipk: Started
NOTE: recipe pixman-1_0.34.0-r0: task do_package_write_ipk: Started
NOTE: recipe compositeproto-1_0.4.2-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 2849 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/randrproto_1.5.0.bb:do_package_write_ipk)
NOTE: recipe randrproto-1_1.5.0-r0: task do_package_write_ipk: Started
NOTE: recipe pixman-1_0.34.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2850 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxi_1.7.7.bb:do_package_write_ipk)
NOTE: recipe randrproto-1_1.5.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2851 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/jpeg/libjpeg-turbo_1.5.1.bb:do_package_write_ipk)
NOTE: recipe libxi-1_1.7.7-r0: task do_package_write_ipk: Started
NOTE: recipe libjpeg-turbo-1_1.5.1-r0: task do_package_write_ipk: Started
NOTE: recipe libxi-1_1.7.7-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2852 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxft_2.3.2.bb:do_package_write_ipk)
NOTE: recipe libxft-1_2.3.2-r0: task do_package_write_ipk: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2853 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxtst_1.2.3.bb:do_package_write_ipk)
NOTE: recipe libjpeg-turbo-1_1.5.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2854 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_package_write_ipk)
NOTE: recipe libxtst-1_1.2.3-r0: task do_package_write_ipk: Started
NOTE: recipe cairo-1.14.6-r0: task do_package_write_ipk: Started
NOTE: recipe libxtst-1_1.2.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2855 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/icu/icu_58.1.bb:do_package_write_ipk)
NOTE: recipe libxft-1_2.3.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2856 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcursor_1.1.14.bb:do_package_write_ipk)
NOTE: recipe icu-58.1-r0: task do_package_write_ipk: Started
NOTE: recipe libxcursor-1_1.1.14-r0: task do_package_write_ipk: Started
NOTE: recipe cairo-1.14.6-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2857 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-usbhost.bb:do_packagedata)
NOTE: recipe libxcursor-1_1.1.14-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2858 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_packagedata)
NOTE: recipe packagegroup-amltd-usbhost-1.0-r1: task do_packagedata: Started
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_packagedata: Started
NOTE: recipe packagegroup-amltd-usbhost-1.0-r1: task do_packagedata: Succeeded
NOTE: Running task 2859 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-pci.bb:do_packagedata)
NOTE: recipe packagegroup-amltd-pci-1.0-r0: task do_packagedata: Started
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_packagedata: Succeeded
NOTE: Running task 2860 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd.bb:do_packagedata)
NOTE: recipe packagegroup-amltd-1.0-r1: task do_packagedata: Started
NOTE: recipe packagegroup-amltd-pci-1.0-r0: task do_packagedata: Succeeded
NOTE: Running task 2861 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_packagedata)
NOTE: recipe matchbox-terminal-0.1-r0: task do_packagedata: Started
NOTE: recipe packagegroup-amltd-1.0-r1: task do_packagedata: Succeeded
NOTE: Running task 2862 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/x11-common/xserver-nodm-init_3.0.bb:do_packagedata)
NOTE: recipe xserver-nodm-init-3.0-r31: task do_packagedata: Started
NOTE: recipe matchbox-terminal-0.1-r0: task do_packagedata: Succeeded
NOTE: Running task 2863 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xhost_1.0.7.bb:do_packagedata)
NOTE: recipe xhost-1_1.0.7-r0: task do_packagedata: Started
NOTE: recipe xhost-1_1.0.7-r0: task do_packagedata: Succeeded
NOTE: recipe xserver-nodm-init-3.0-r31: task do_packagedata: Succeeded
NOTE: Running task 2865 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-i2c.bb:do_packagedata)
NOTE: Running task 2866 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_packagedata)
NOTE: recipe packagegroup-amltd-i2c-1.0-r1: task do_packagedata: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_packagedata: Started
NOTE: recipe packagegroup-amltd-i2c-1.0-r1: task do_packagedata: Succeeded
NOTE: Running task 2867 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gdb/gdb_7.11.1.bb:do_packagedata)
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_packagedata: Succeeded
NOTE: Running task 2868 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-alsa.bb:do_packagedata)
NOTE: recipe packagegroup-amltd-alsa-1.0-r1: task do_packagedata: Started
NOTE: recipe gdb-7.11.1-r0: task do_packagedata: Started
NOTE: recipe packagegroup-amltd-alsa-1.0-r1: task do_packagedata: Succeeded
NOTE: Running task 2869 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-touchscreen.bb:do_packagedata)
NOTE: recipe gdb-7.11.1-r0: task do_packagedata: Succeeded
NOTE: Running task 2870 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_packagedata)
NOTE: recipe packagegroup-amltd-touchscreen-1.0-r1: task do_packagedata: Started
NOTE: recipe matchbox-session-sato-0.1-r30: task do_packagedata: Started
NOTE: recipe matchbox-session-sato-0.1-r30: task do_packagedata: Succeeded
NOTE: Running task 2871 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_packagedata)
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_packagedata: Started
NOTE: recipe packagegroup-amltd-touchscreen-1.0-r1: task do_packagedata: Succeeded
NOTE: Running task 2873 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-can.bb:do_packagedata)
NOTE: recipe packagegroup-amltd-can-1.0-r1: task do_packagedata: Started
NOTE: recipe packagegroup-amltd-can-1.0-r1: task do_packagedata: Succeeded
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_packagedata: Succeeded
NOTE: Running task 2874 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_packagedata)
NOTE: Running task 2875 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xauth_1.0.9.bb:do_packagedata)
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_packagedata: Started
NOTE: recipe xauth-1_1.0.9-r0: task do_packagedata: Started
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_packagedata: Succeeded
NOTE: Running task 2876 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/psplash/psplash_git.bb:do_packagedata)
NOTE: recipe xauth-1_1.0.9-r0: task do_packagedata: Succeeded
NOTE: Running task 2877 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-wifi.bb:do_packagedata)
NOTE: recipe psplash-0.1+gitAUTOINC+88343ad23c-r15: task do_packagedata: Started
NOTE: recipe packagegroup-amltd-wifi-1.0-r1: task do_packagedata: Started
NOTE: recipe psplash-0.1+gitAUTOINC+88343ad23c-r15: task do_packagedata: Succeeded
NOTE: Running task 2878 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xset_1.2.3.bb:do_packagedata)
NOTE: recipe packagegroup-amltd-wifi-1.0-r1: task do_packagedata: Succeeded
NOTE: Running task 2880 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_package_write_ipk)
NOTE: recipe xset-1_1.2.3-r0: task do_packagedata: Started
NOTE: recipe python3-3.5.2-r1.0: task do_package_write_ipk: Succeeded
NOTE: Running task 2881 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_package_write_ipk)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_package_write_ipk: Started
NOTE: recipe atk-2.22.0-r0: task do_package_write_ipk: Started
NOTE: recipe xset-1_1.2.3-r0: task do_packagedata: Succeeded
NOTE: Running task 2882 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_package_write_ipk)
NOTE: recipe harfbuzz-1.3.3-r0: task do_package_write_ipk: Started
NOTE: recipe harfbuzz-1.3.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2885 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_package_write_ipk)
NOTE: recipe libepoxy-1.3.1-r0: task do_package_write_ipk: Started
NOTE: recipe libepoxy-1.3.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2886 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_package_write_ipk)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_package_write_ipk: Started
NOTE: recipe icu-58.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2887 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_package_write_ipk)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2889 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_package_write_ipk)
NOTE: recipe shared-mime-info-1.6-r0: task do_package_write_ipk: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_package_write_ipk: Started
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2891 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrandr_1.5.1.bb:do_package_write_ipk)
NOTE: recipe shared-mime-info-1.6-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2892 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.4.bb:do_package_write_ipk)
NOTE: recipe libxrandr-1_1.5.1-r0: task do_package_write_ipk: Started
NOTE: recipe libxcomposite-1_0.4.4-r0: task do_package_write_ipk: Started
NOTE: recipe libxrandr-1_1.5.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2893 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_package_write_ipk)
NOTE: recipe libxcomposite-1_0.4.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2894 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc-locale_2.24.bb:do_package_write_ipk)
NOTE: recipe pango-1.40.3-r0: task do_package_write_ipk: Started
NOTE: recipe glibc-locale-2.24-r0: task do_package_write_ipk: Started
NOTE: recipe pango-1.40.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2895 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libogg/libogg_1.3.2.bb:do_package_write_ipk)
NOTE: recipe atk-2.22.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2896 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_package_write_ipk)
NOTE: recipe gtk+3-3.22.1-r0: task do_package_write_ipk: Started
NOTE: recipe libogg-1.3.2-r0: task do_package_write_ipk: Started
NOTE: recipe libogg-1.3.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2897 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontscale_1.1.2.bb:do_package_write_ipk)
NOTE: recipe mkfontscale-1.1.2-r0: task do_package_write_ipk: Started
NOTE: recipe mkfontscale-1.1.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2898 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontdir_1.0.7.bb:do_package_write_ipk)
NOTE: recipe mkfontdir-1_1.0.7-r8.0: task do_package_write_ipk: Started
NOTE: recipe mkfontdir-1_1.0.7-r8.0: task do_package_write_ipk: Succeeded
NOTE: Running task 2899 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libfontenc_1.1.3.bb:do_package_write_ipk)
NOTE: recipe libfontenc-1_1.1.3-r0: task do_package_write_ipk: Started
NOTE: recipe libfontenc-1_1.1.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2900 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/font-util_1.3.1.bb:do_package_write_ipk)
NOTE: recipe font-util-1.3.1-r0: task do_package_write_ipk: Started
NOTE: recipe font-util-1.3.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2901 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_package_write_ipk)
NOTE: recipe dbus-glib-0.106-r0: task do_package_write_ipk: Started
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 2902 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-lib_1.1.2.bb:do_package_write_ipk)
NOTE: recipe alsa-lib-1.1.2-r0: task do_package_write_ipk: Started
NOTE: recipe dbus-glib-0.106-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3235 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb:do_package_write_ipk)
NOTE: recipe xcb-util-0.4.0-r0: task do_package_write_ipk: Started
NOTE: recipe alsa-lib-1.1.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3236 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gmp/gmp_6.1.1.bb:do_package_write_ipk)
NOTE: recipe xcb-util-0.4.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3237 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb:do_package_write_ipk)
NOTE: recipe xf86miscproto-1_0.9.3-r1: task do_package_write_ipk: Started
NOTE: recipe gmp-6.1.1-r0: task do_package_write_ipk: Started
NOTE: recipe xf86miscproto-1_0.9.3-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3238 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/startup-notification/startup-notification_0.12.bb:do_package_write_ipk)
NOTE: recipe startup-notification-0.12-r2: task do_package_write_ipk: Started
NOTE: recipe startup-notification-0.12-r2: task do_package_write_ipk: Succeeded
NOTE: Running task 3239 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/flac/flac_1.3.1.bb:do_package_write_ipk)
NOTE: recipe flac-1.3.1-r0: task do_package_write_ipk: Started
NOTE: recipe gmp-6.1.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3240 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libvorbis/libvorbis_1.3.5.bb:do_package_write_ipk)
NOTE: recipe libvorbis-1.3.5-r0: task do_package_write_ipk: Started
NOTE: recipe flac-1.3.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3241 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.27.bb:do_package_write_ipk)
NOTE: recipe libsndfile1-1.0.27-r0: task do_package_write_ipk: Started
NOTE: recipe libvorbis-1.3.5-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3242 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libevdev/libevdev_1.5.4.bb:do_package_write_ipk)
NOTE: recipe gtk+3-3.22.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3243 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libcap/libcap_2.25.bb:do_package_write_ipk)
NOTE: recipe libevdev-1.5.4-r0: task do_package_write_ipk: Started
NOTE: recipe libcap-2.25-r0: task do_package_write_ipk: Started
NOTE: recipe libsndfile1-1.0.27-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3244 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/mtdev_1.1.5.bb:do_package_write_ipk)
NOTE: recipe libcap-2.25-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3245 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_package_write_ipk)
NOTE: recipe mtdev-1.1.5-r0: task do_package_write_ipk: Started
NOTE: recipe gconf-3.2.6-r0: task do_package_write_ipk: Started
NOTE: recipe libevdev-1.5.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3246 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.9.bb:do_package_write_ipk)
NOTE: recipe libxkbfile-1_1.0.9-r0: task do_package_write_ipk: Started
NOTE: recipe mtdev-1.1.5-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3247 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fontsproto_2.1.3.bb:do_package_write_ipk)
NOTE: recipe fontsproto-1_2.1.3-r0: task do_package_write_ipk: Started
NOTE: recipe libxkbfile-1_1.0.9-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3248 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/presentproto_git.bb:do_package_write_ipk)
NOTE: recipe presentproto-1.0+gitAUTOINC+24f3a56e54-r1: task do_package_write_ipk: Started
NOTE: recipe fontsproto-1_2.1.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3249 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/resourceproto_1.2.0.bb:do_package_write_ipk)
NOTE: recipe resourceproto-1_1.2.0-r1: task do_package_write_ipk: Started
NOTE: recipe presentproto-1.0+gitAUTOINC+24f3a56e54-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3250 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/videoproto_2.3.3.bb:do_package_write_ipk)
NOTE: recipe videoproto-1_2.3.3-r0: task do_package_write_ipk: Started
NOTE: recipe resourceproto-1_1.2.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3251 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.2.bb:do_package_write_ipk)
NOTE: recipe xcmiscproto-1_1.2.2-r0: task do_package_write_ipk: Started
NOTE: recipe videoproto-1_2.3.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3252 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.9.bb:do_package_write_ipk)
NOTE: recipe xcmiscproto-1_1.2.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3253 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/rgb_1.0.6.bb:do_package_write_ipk)
NOTE: recipe libsamplerate0-0.1.9-r1: task do_package_write_ipk: Started
NOTE: recipe rgb-1_1.0.6-r0: task do_package_write_ipk: Started
NOTE: recipe rgb-1_1.0.6-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3254 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.2.bb:do_package_write_ipk)
NOTE: recipe scrnsaverproto-1_1.2.2-r0: task do_package_write_ipk: Started
NOTE: recipe scrnsaverproto-1_1.2.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3255 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb:do_package_write_ipk)
NOTE: recipe xf86dgaproto-1_2.1-r2: task do_package_write_ipk: Started
NOTE: recipe libsamplerate0-0.1.9-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3256 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb:do_package_write_ipk)
NOTE: recipe xineramaproto-1_1.2.1-r0: task do_package_write_ipk: Started
NOTE: recipe xf86dgaproto-1_2.1-r2: task do_package_write_ipk: Succeeded
NOTE: Running task 3257 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxt_1.1.5.bb:do_package_write_ipk)
NOTE: recipe libxt-1_1.1.5-r0: task do_package_write_ipk: Started
NOTE: recipe xineramaproto-1_1.2.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3258 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb:do_package_write_ipk)
NOTE: recipe xserver-xf86-config-0.1-r33: task do_package_write_ipk: Started
NOTE: recipe xserver-xf86-config-0.1-r33: task do_package_write_ipk: Succeeded
NOTE: Running task 3259 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xkbcomp_1.3.1.bb:do_package_write_ipk)
NOTE: recipe xkbcomp-1.3.1-r8.0: task do_package_write_ipk: Started
NOTE: recipe libxt-1_1.1.5-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3260 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_package_write_ipk)
NOTE: recipe libxfont2-2.0.1-r0: task do_package_write_ipk: Started
NOTE: recipe xkbcomp-1.3.1-r8.0: task do_package_write_ipk: Succeeded
NOTE: Running task 3261 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_package_write_ipk)
NOTE: recipe gconf-3.2.6-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3262 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_package_write_ipk)
NOTE: recipe xkeyboard-config-2.19-r0: task do_package_write_ipk: Started
NOTE: recipe libinput-1.5.0-r0: task do_package_write_ipk: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3263 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.2.bb:do_package_write_ipk)
NOTE: recipe libinput-1.5.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3264 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_package_write_ipk)
NOTE: recipe bigreqsproto-1_1.1.2-r0: task do_package_write_ipk: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_package_write_ipk: Started
NOTE: recipe bigreqsproto-1_1.1.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3265 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libnl/libnl_3.2.28.bb:do_package_write_ipk)
NOTE: recipe libnl-1_3.2.28-r0: task do_package_write_ipk: Started
NOTE: recipe libnl-1_3.2.28-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3266 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_package_write_ipk)
NOTE: recipe xkeyboard-config-2.19-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3267 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/attr_2.4.47.bb:do_package_write_ipk)
NOTE: recipe alsa-utils-1.1.2-r0: task do_package_write_ipk: Started
NOTE: recipe attr-2.4.47-r0: task do_package_write_ipk: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3268 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/alsa-state/alsa-state.bb:do_package_write_ipk)
NOTE: recipe alsa-state-0.2.0-r5: task do_package_write_ipk: Started
NOTE: recipe alsa-state-0.2.0-r5: task do_package_write_ipk: Succeeded
NOTE: Running task 3269 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/libtool/libtool_2.4.6.bb:do_package_write_ipk)
NOTE: recipe attr-2.4.47-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3270 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgpg-error/libgpg-error_1.25.bb:do_package_write_ipk)
NOTE: recipe libtool-2.4.6-r0: task do_package_write_ipk: Started
NOTE: recipe alsa-utils-1.1.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3271 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb1_1.0.20.bb:do_package_write_ipk)
NOTE: recipe libgpg-error-1.25-r0: task do_package_write_ipk: Started
NOTE: recipe libusb1-1.0.20-r0: task do_package_write_ipk: Started
NOTE: recipe libtool-2.4.6-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3272 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_package_write_ipk)
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_package_write_ipk: Started
NOTE: recipe libusb1-1.0.20-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3273 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_package_write_ipk)
NOTE: recipe libidn-1.33-r0: task do_package_write_ipk: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3274 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxmu_1.1.2.bb:do_package_write_ipk)
NOTE: recipe libxmu-1_1.1.2-r0: task do_package_write_ipk: Started
NOTE: recipe libgpg-error-1.25-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3275 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/nettle/nettle_3.3.bb:do_package_write_ipk)
NOTE: recipe nettle-3.3-r0: task do_package_write_ipk: Started
NOTE: recipe libxmu-1_1.1.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3276 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libmatchbox/libmatchbox_1.12.bb:do_package_write_ipk)
NOTE: recipe libmatchbox-1.12-r0: task do_package_write_ipk: Started
NOTE: recipe libidn-1.33-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3277 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_package_write_ipk)
NOTE: recipe libarchive-3.2.2-r0: task do_package_write_ipk: Started
NOTE: recipe libmatchbox-1.12-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3278 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/perl/perl_5.24.0.bb:do_package_write_ipk)
NOTE: recipe perl-5.24.0-r0: task do_package_write_ipk: Started
NOTE: recipe libarchive-3.2.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3280 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/popt/popt_1.16.bb:do_package_write_ipk)
NOTE: recipe nettle-3.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3281 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_package_write_ipk)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_package_write_ipk: Started
NOTE: recipe popt-1.16-r3: task do_package_write_ipk: Started
NOTE: recipe matchbox-panel-2-2.11-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3282 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_package_write_ipk)
NOTE: recipe gnutls-3.5.6-r0: task do_package_write_ipk: Started
NOTE: recipe gnutls-3.5.6-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3283 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg-arch-config_1.0.bb:do_package_write_ipk)
NOTE: recipe opkg-arch-config-1.0-r1: task do_package_write_ipk: Started
NOTE: recipe popt-1.16-r3: task do_package_write_ipk: Succeeded
NOTE: Running task 3285 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgcrypt/libgcrypt_1.7.3.bb:do_package_write_ipk)
NOTE: recipe libgcrypt-1.7.3-r0: task do_package_write_ipk: Started
NOTE: recipe opkg-arch-config-1.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3286 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/libsocketcan_0.0.8.bb:do_package_write_ipk)
NOTE: recipe libsocketcan-0.0.8-r0: task do_package_write_ipk: Started
NOTE: recipe libsocketcan-0.0.8-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3287 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog-config.bb:do_package_write_ipk)
NOTE: recipe watchdog-config-1.0-r0: task do_package_write_ipk: Started
NOTE: recipe libgcrypt-1.7.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3289 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/acl_2.2.52.bb:do_package_write_ipk)
NOTE: recipe watchdog-config-1.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3290 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb-compat_0.1.5.bb:do_package_write_ipk)
NOTE: recipe acl-2.2.52-r0: task do_package_write_ipk: Started
NOTE: recipe libusb-compat-1_0.1.5-r0: task do_package_write_ipk: Started
NOTE: recipe libusb-compat-1_0.1.5-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3291 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/liburcu/liburcu_0.9.2.bb:do_package_write_ipk)
NOTE: recipe liburcu-0.9.2-r0: task do_package_write_ipk: Started
NOTE: recipe acl-2.2.52-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3292 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/netbase/netbase_5.3.bb:do_package_write_ipk)
NOTE: recipe netbase-1_5.3-r0: task do_package_write_ipk: Started
NOTE: recipe liburcu-0.9.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3293 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/elfutils/elfutils_0.166.bb:do_package_write_ipk)
NOTE: recipe netbase-1_5.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3294 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/iptables/iptables_1.6.0.bb:do_package_write_ipk)
NOTE: recipe elfutils-0.166-r0: task do_package_write_ipk: Started
NOTE: recipe iptables-1.6.0-r0: task do_package_write_ipk: Started
NOTE: recipe iptables-1.6.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3295 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_package_write_ipk)
NOTE: recipe matchbox-wm-1.2.2-r0: task do_package_write_ipk: Started
NOTE: recipe matchbox-wm-1.2.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3301 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_package_write_ipk)
NOTE: recipe pciutils-3.5.2-r0: task do_package_write_ipk: Started
NOTE: recipe pciutils-3.5.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3302 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_package_write_ipk)
NOTE: recipe elfutils-0.166-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3303 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package_write_ipk)
NOTE: recipe settings-daemon-0.0.2-r0: task do_package_write_ipk: Started
NOTE: recipe busybox-1.24.1-r0: task do_package_write_ipk: Started
NOTE: recipe settings-daemon-0.0.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3304 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/coreutils/coreutils_8.25.bb:do_package_write_ipk)
NOTE: recipe coreutils-8.25-r0: task do_package_write_ipk: Started
NOTE: recipe busybox-1.24.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3305 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus-wait/dbus-wait_git.bb:do_package_write_ipk)
NOTE: recipe dbus-wait-0.1+gitAUTOINC+6cc6077a36-r2: task do_package_write_ipk: Started
NOTE: recipe dbus-wait-0.1+gitAUTOINC+6cc6077a36-r2: task do_package_write_ipk: Succeeded
NOTE: Running task 3306 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb:do_package_write_ipk)
NOTE: recipe libxxf86misc-1_1.0.3-r0: task do_package_write_ipk: Started
NOTE: recipe libxxf86misc-1_1.0.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3308 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/i2c-tools/i2c-tools_3.1.2.bb:do_package_write_ipk)
NOTE: recipe i2c-tools-3.1.2-r0: task do_package_write_ipk: Started
NOTE: recipe i2c-tools-3.1.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3309 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/ethtool/ethtool_4.8.bb:do_package_write_ipk)
NOTE: recipe ethtool-4.8-r0: task do_package_write_ipk: Started
NOTE: recipe ethtool-4.8-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3310 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_package_write_ipk)
NOTE: recipe wpa-supplicant-2.5-r0: task do_package_write_ipk: Started
NOTE: recipe wpa-supplicant-2.5-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3311 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_package_write_ipk)
NOTE: recipe matchbox-desktop-2.1-r0: task do_package_write_ipk: Started
NOTE: recipe matchbox-desktop-2.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3312 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/can-utils_git.bb:do_package_write_ipk)
NOTE: recipe can-utils-git-r0: task do_package_write_ipk: Started
NOTE: recipe coreutils-8.25-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3313 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/tar/tar_1.29.bb:do_package_write_ipk)
NOTE: recipe tar-1.29-r0: task do_package_write_ipk: Started
NOTE: recipe can-utils-git-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3314 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wireless-tools/wireless-tools_30.pre9.bb:do_package_write_ipk)
NOTE: recipe wireless-tools-1_30.pre9-r0: task do_package_write_ipk: Started
NOTE: recipe wireless-tools-1_30.pre9-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3315 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xinit_1.3.4.bb:do_package_write_ipk)
NOTE: recipe xinit-1_1.3.4-r0: task do_package_write_ipk: Started
NOTE: recipe xinit-1_1.3.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3316 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/modutils-initscripts/modutils-initscripts.bb:do_package_write_ipk)
NOTE: recipe modutils-initscripts-1.0-r7: task do_package_write_ipk: Started
NOTE: recipe modutils-initscripts-1.0-r7: task do_package_write_ipk: Succeeded
NOTE: Running task 3317 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_package_write_ipk)
NOTE: recipe openssh-7.3p1-r0: task do_package_write_ipk: Started
NOTE: recipe tar-1.29-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3318 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/init-ifupdown/init-ifupdown_1.0.bb:do_package_write_ipk)
NOTE: recipe init-ifupdown-1.0-r7: task do_package_write_ipk: Started
NOTE: recipe init-ifupdown-1.0-r7: task do_package_write_ipk: Succeeded
NOTE: Running task 3319 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iw/iw_4.9.bb:do_package_write_ipk)
NOTE: recipe iw-4.9-r0: task do_package_write_ipk: Started
NOTE: recipe openssh-7.3p1-r0: task do_package_write_ipk: Succeeded
NOTE: recipe iw-4.9-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3320 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_package_write_ipk)
NOTE: Running task 3321 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_package_write_ipk)
NOTE: recipe opkg-1_0.3.3-r0: task do_package_write_ipk: Started
NOTE: recipe usbutils-008-r0: task do_package_write_ipk: Started
NOTE: recipe usbutils-008-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3322 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog_5.15.bb:do_package_write_ipk)
NOTE: recipe watchdog-5.15-r0: task do_package_write_ipk: Started
NOTE: recipe opkg-1_0.3.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3323 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_package_write_ipk)
NOTE: recipe vte-0.44.2-r0: task do_package_write_ipk: Started
NOTE: recipe watchdog-5.15-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3324 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_package_write_ipk)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_package_write_ipk: Started
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3325 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libfakekey/libfakekey_git.bb:do_package_write_ipk)
NOTE: recipe libfakekey-0.0+gitAUTOINC+e327ff049b-r0: task do_package_write_ipk: Started
NOTE: recipe libfakekey-0.0+gitAUTOINC+e327ff049b-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3326 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-session/matchbox-session_0.1.bb:do_package_write_ipk)
NOTE: recipe matchbox-session-0.1-r4: task do_package_write_ipk: Started
NOTE: recipe matchbox-session-0.1-r4: task do_package_write_ipk: Succeeded
NOTE: Running task 3328 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_package_write_ipk)
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_package_write_ipk: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3329 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iproute2/iproute2_4.7.0.bb:do_package_write_ipk)
NOTE: recipe iproute2-4.7.0-r0: task do_package_write_ipk: Started
NOTE: recipe iproute2-4.7.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3330 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/lttng/lttng-ust_git.bb:do_package_write_ipk)
NOTE: recipe lttng-ust-2_2.8.1+gitAUTOINC+514a87f3b6-r0: task do_package_write_ipk: Started
NOTE: recipe lttng-ust-2_2.8.1+gitAUTOINC+514a87f3b6-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3331 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-core/udev/udev-rules-imx.bb:do_package_write_ipk)
NOTE: recipe udev-rules-imx-1.0-r0: task do_package_write_ipk: Started
NOTE: recipe udev-rules-imx-1.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3332 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/firmware-imx/firmware-imx_5.4.bb:do_package_write_ipk)
NOTE: recipe firmware-imx-1_5.4-r0: task do_package_write_ipk: Started
NOTE: recipe vte-0.44.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3333 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/udev-extraconf_1.1.bb:do_package_write_ipk)
NOTE: recipe udev-extraconf-1.1-r0: task do_package_write_ipk: Started
NOTE: recipe udev-extraconf-1.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3334 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_package_write_ipk)
NOTE: recipe sysvinit-2.88dsf-r14: task do_package_write_ipk: Started
NOTE: recipe sysvinit-2.88dsf-r14: task do_package_write_ipk: Succeeded
NOTE: Running task 3335 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/rsync/rsync_3.1.2.bb:do_package_write_ipk)
NOTE: recipe rsync-3.1.2-r0: task do_package_write_ipk: Started
NOTE: recipe firmware-imx-1_5.4-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3336 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/alsa/alsa-config_0.0.bb:do_package_write_ipk)
NOTE: recipe alsa-config-0.0-r1: task do_package_write_ipk: Started
NOTE: recipe alsa-config-0.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3356 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_package_write_ipk)
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_package_write_ipk: Started
NOTE: recipe rsync-3.1.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3357 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-alsa.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-alsa-1.0-r1: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-alsa-1.0-r1: task do_package_write_ipk: Succeeded
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3358 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-pci.bb:do_package_write_ipk)
NOTE: Running task 3359 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-wifi.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-pci-1.0-r0: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-wifi-1.0-r1: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-wifi-1.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3361 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xauth_1.0.9.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-pci-1.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3362 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_package_write_ipk)
NOTE: recipe xauth-1_1.0.9-r0: task do_package_write_ipk: Started
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_package_write_ipk: Started
NOTE: recipe xauth-1_1.0.9-r0: task do_package_write_ipk: Succeeded
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3365 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/psplash/psplash_git.bb:do_package_write_ipk)
NOTE: Running task 3366 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_package_write_ipk)
NOTE: recipe matchbox-terminal-0.1-r0: task do_package_write_ipk: Started
NOTE: recipe psplash-0.1+gitAUTOINC+88343ad23c-r15: task do_package_write_ipk: Started
NOTE: recipe matchbox-terminal-0.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3368 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-can.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-can-1.0-r1: task do_package_write_ipk: Started
NOTE: recipe psplash-0.1+gitAUTOINC+88343ad23c-r15: task do_package_write_ipk: Succeeded
NOTE: Running task 3369 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-1.0-r1: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-can-1.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3370 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xhost_1.0.7.bb:do_package_write_ipk)
NOTE: recipe xhost-1_1.0.7-r0: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-1.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3372 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gdb/gdb_7.11.1.bb:do_package_write_ipk)
NOTE: recipe xhost-1_1.0.7-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3376 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_package_write_ipk)
NOTE: recipe gdb-7.11.1-r0: task do_package_write_ipk: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_package_write_ipk: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3380 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-i2c.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-i2c-1.0-r1: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-i2c-1.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3381 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-usbhost.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-usbhost-1.0-r1: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-usbhost-1.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3384 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-touchscreen.bb:do_package_write_ipk)
NOTE: recipe packagegroup-amltd-touchscreen-1.0-r1: task do_package_write_ipk: Started
NOTE: recipe packagegroup-amltd-touchscreen-1.0-r1: task do_package_write_ipk: Succeeded
NOTE: Running task 3388 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/x11-common/xserver-nodm-init_3.0.bb:do_package_write_ipk)
NOTE: recipe xserver-nodm-init-3.0-r31: task do_package_write_ipk: Started
NOTE: recipe xserver-nodm-init-3.0-r31: task do_package_write_ipk: Succeeded
NOTE: Running task 3389 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_package_write_ipk)
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_package_write_ipk: Started
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3394 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xset_1.2.3.bb:do_package_write_ipk)
NOTE: recipe xset-1_1.2.3-r0: task do_package_write_ipk: Started
NOTE: recipe gdb-7.11.1-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3396 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_package_write_ipk)
NOTE: recipe matchbox-session-sato-0.1-r30: task do_package_write_ipk: Started
NOTE: recipe matchbox-session-sato-0.1-r30: task do_package_write_ipk: Succeeded
NOTE: Running task 3397 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_configure)
NOTE: recipe xset-1_1.2.3-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3399 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xinit_1.3.4.bb:do_package_qa)
NOTE: recipe xinit-1_1.3.4-r0: task do_package_qa: Started
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_configure: Started
NOTE: recipe xinit-1_1.3.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3400 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_populate_sysroot)
NOTE: recipe wpa-supplicant-2.5-r0: task do_populate_sysroot: Started
NOTE: recipe wpa-supplicant-2.5-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3401 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.2.bb:do_package_qa)
NOTE: recipe libxdmcp-1_1.1.2-r0: task do_package_qa: Started
NOTE: recipe libxdmcp-1_1.1.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3402 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_populate_sysroot)
NOTE: recipe matchbox-desktop-2.1-r0: task do_populate_sysroot: Started
NOTE: recipe matchbox-desktop-2.1-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3404 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/pixman_0.34.0.bb:do_package_qa)
NOTE: recipe pixman-1_0.34.0-r0: task do_package_qa: Started
NOTE: recipe pixman-1_0.34.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3405 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_package_qa)
NOTE: recipe gconf-3.2.6-r0: task do_package_qa: Started
NOTE: recipe gconf-3.2.6-r0: task do_package_qa: Succeeded
NOTE: Running task 3406 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfixes_5.0.3.bb:do_package_qa)
NOTE: recipe libxfixes-1_5.0.3-r0: task do_package_qa: Started
NOTE: recipe libxfixes-1_5.0.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3407 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcb_1.12.bb:do_package_qa)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_configure: Succeeded
NOTE: Running task 3408 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_compile)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_compile: Started
NOTE: recipe libxcb-1.12-r0: task do_package_qa: Started
NOTE: recipe perl-5.24.0-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3409 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package_qa)
NOTE: recipe busybox-1.24.1-r0: task do_package_qa: Started
NOTE: recipe busybox-1.24.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3410 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_package_qa)
NOTE: recipe bzip2-1.0.6-r5: task do_package_qa: Started
NOTE: recipe bzip2-1.0.6-r5: task do_package_qa: Succeeded
NOTE: Running task 3411 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libice_1.0.9.bb:do_package_qa)
NOTE: recipe libice-1_1.0.9-r0: task do_package_qa: Started
NOTE: recipe libice-1_1.0.9-r0: task do_package_qa: Succeeded
NOTE: Running task 3412 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus-wait/dbus-wait_git.bb:do_package_qa)
NOTE: recipe dbus-wait-0.1+gitAUTOINC+6cc6077a36-r2: task do_package_qa: Started
NOTE: recipe dbus-wait-0.1+gitAUTOINC+6cc6077a36-r2: task do_package_qa: Succeeded
NOTE: Running task 3413 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/lttng/lttng-ust_git.bb:do_package_qa)
NOTE: recipe libxcb-1.12-r0: task do_package_qa: Succeeded
NOTE: Running task 3414 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/x11-common/xserver-nodm-init_3.0.bb:do_package_qa)
NOTE: recipe lttng-ust-2_2.8.1+gitAUTOINC+514a87f3b6-r0: task do_package_qa: Started
NOTE: recipe xserver-nodm-init-3.0-r31: task do_package_qa: Started
NOTE: recipe xserver-nodm-init-3.0-r31: task do_package_qa: Succeeded
NOTE: Running task 3415 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/acl_2.2.52.bb:do_package_qa)
NOTE: recipe acl-2.2.52-r0: task do_package_qa: Started
NOTE: recipe lttng-ust-2_2.8.1+gitAUTOINC+514a87f3b6-r0: task do_package_qa: Succeeded
NOTE: Running task 3416 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_populate_sysroot)
NOTE: recipe settings-daemon-0.0.2-r0: task do_populate_sysroot: Started
NOTE: recipe settings-daemon-0.0.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3417 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_package_qa)
NOTE: recipe acl-2.2.52-r0: task do_package_qa: Succeeded
NOTE: Running task 3418 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_package_qa)
NOTE: recipe libidn-1.33-r0: task do_package_qa: Started
NOTE: recipe sysvinit-2.88dsf-r14: task do_package_qa: Started
NOTE: recipe libidn-1.33-r0: task do_package_qa: Succeeded
NOTE: Running task 3419 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_populate_sysroot)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_populate_sysroot: Started
NOTE: recipe sysvinit-2.88dsf-r14: task do_package_qa: Succeeded
NOTE: Running task 3421 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_package_qa)
NOTE: recipe eudev-3.2-r0: task do_package_qa: Started
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3425 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_populate_sysroot)
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_populate_sysroot: Started
NOTE: recipe eudev-3.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3426 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/libgcc_6.2.bb:do_package_qa)
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3427 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-1.0-r1: task do_package_qa: Started
NOTE: recipe packagegroup-amltd-1.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3428 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxi_1.7.7.bb:do_package_qa)
NOTE: recipe libgcc-6.2.0-r0: task do_package_qa: Started
NOTE: recipe libxi-1_1.7.7-r0: task do_package_qa: Started
NOTE: recipe libxi-1_1.7.7-r0: task do_package_qa: Succeeded
NOTE: Running task 3429 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/readline/readline_7.0.bb:do_package_qa)
NOTE: recipe libgcc-6.2.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3431 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcursor_1.1.14.bb:do_package_qa)
NOTE: recipe libxcursor-1_1.1.14-r0: task do_package_qa: Started
NOTE: recipe readline-7.0-r0: task do_package_qa: Started
NOTE: recipe libxcursor-1_1.1.14-r0: task do_package_qa: Succeeded
NOTE: Running task 3432 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.2.bb:do_package_qa)
NOTE: recipe bigreqsproto-1_1.1.2-r0: task do_package_qa: Started
NOTE: recipe readline-7.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3433 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_populate_sysroot)
NOTE: recipe shared-mime-info-1.6-r0: task do_populate_sysroot: Started
NOTE: recipe bigreqsproto-1_1.1.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3435 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/init-ifupdown/init-ifupdown_1.0.bb:do_package_qa)
NOTE: recipe init-ifupdown-1.0-r7: task do_package_qa: Started
NOTE: recipe shared-mime-info-1.6-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3436 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_package_qa)
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_package_qa: Started
NOTE: recipe init-ifupdown-1.0-r7: task do_package_qa: Succeeded
NOTE: Running task 3437 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb-compat_0.1.5.bb:do_package_qa)
NOTE: recipe libusb-compat-1_0.1.5-r0: task do_package_qa: Started
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_package_qa: Succeeded
NOTE: Running task 3439 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/kbproto_1.0.7.bb:do_package_qa)
NOTE: recipe libusb-compat-1_0.1.5-r0: task do_package_qa: Succeeded
NOTE: Running task 3440 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_package_qa)
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_package_qa: Started
NOTE: recipe kbproto-1_1.0.7-r0: task do_package_qa: Started
NOTE: recipe kbproto-1_1.0.7-r0: task do_package_qa: Succeeded
NOTE: Running task 3442 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-passwd/base-passwd_3.5.29.bb:do_package_qa)
NOTE: recipe base-passwd-3.5.29-r0: task do_package_qa: Started
NOTE: recipe gdk-pixbuf-2.36.0-r0: task do_package_qa: Succeeded
NOTE: recipe base-passwd-3.5.29-r0: task do_package_qa: Succeeded
NOTE: Running task 3443 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libx11_1.6.4.bb:do_package_qa)
NOTE: Running task 3444 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgpg-error/libgpg-error_1.25.bb:do_package_qa)
NOTE: recipe libgpg-error-1.25-r0: task do_package_qa: Started
NOTE: recipe libx11-1_1.6.4-r0: task do_package_qa: Started
NOTE: recipe libgpg-error-1.25-r0: task do_package_qa: Succeeded
NOTE: Running task 3445 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_package_qa)
NOTE: recipe python3-3.5.2-r1.0: task do_package_qa: Started
NOTE: recipe libx11-1_1.6.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3446 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/popt/popt_1.16.bb:do_package_qa)
NOTE: recipe popt-1.16-r3: task do_package_qa: Started
NOTE: recipe popt-1.16-r3: task do_package_qa: Succeeded
NOTE: Running task 3448 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libfakekey/libfakekey_git.bb:do_package_qa)
NOTE: recipe libfakekey-0.0+gitAUTOINC+e327ff049b-r0: task do_package_qa: Started
NOTE: recipe libfakekey-0.0+gitAUTOINC+e327ff049b-r0: task do_package_qa: Succeeded
NOTE: Running task 3449 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libvorbis/libvorbis_1.3.5.bb:do_package_qa)
NOTE: recipe libvorbis-1.3.5-r0: task do_package_qa: Started
NOTE: recipe python3-3.5.2-r1.0: task do_package_qa: Succeeded
NOTE: Running task 3450 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpciaccess_0.13.4.bb:do_package_qa)
NOTE: recipe libpciaccess-0.13.4-r0: task do_package_qa: Started
NOTE: recipe libvorbis-1.3.5-r0: task do_package_qa: Succeeded
NOTE: Running task 3451 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgcrypt/libgcrypt_1.7.3.bb:do_package_qa)
NOTE: recipe libgcrypt-1.7.3-r0: task do_package_qa: Started
NOTE: recipe libpciaccess-0.13.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3453 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_package_qa)
NOTE: recipe libxfont2-2.0.1-r0: task do_package_qa: Started
NOTE: recipe libgcrypt-1.7.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3454 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-i2c.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-i2c-1.0-r1: task do_package_qa: Started
NOTE: recipe libxfont2-2.0.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3455 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/startup-notification/startup-notification_0.12.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-i2c-1.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3457 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/udev-extraconf_1.1.bb:do_package_qa)
NOTE: recipe startup-notification-0.12-r2: task do_package_qa: Started
NOTE: recipe udev-extraconf-1.1-r0: task do_package_qa: Started
NOTE: recipe startup-notification-0.12-r2: task do_package_qa: Succeeded
NOTE: Running task 3458 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/tar/tar_1.29.bb:do_package_qa)
NOTE: recipe udev-extraconf-1.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3459 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog-config.bb:do_package_qa)
NOTE: recipe tar-1.29-r0: task do_package_qa: Started
NOTE: recipe tar-1.29-r0: task do_package_qa: Succeeded
NOTE: Running task 3460 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-pci.bb:do_package_qa)
NOTE: recipe watchdog-config-1.0-r0: task do_package_qa: Started
NOTE: recipe packagegroup-amltd-pci-1.0-r0: task do_package_qa: Started
NOTE: recipe watchdog-config-1.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3461 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/icu/icu_58.1.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-pci-1.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3462 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.4.bb:do_package_qa)
NOTE: recipe icu-58.1-r0: task do_package_qa: Started
NOTE: recipe libxxf86vm-1_1.1.4-r0: task do_package_qa: Started
NOTE: recipe libxxf86vm-1_1.1.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3463 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_package_qa)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_package_qa: Started
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_package_qa: Succeeded
NOTE: Running task 3464 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-util/util-macros_1.19.0.bb:do_package_qa)
NOTE: recipe icu-58.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3466 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-core/udev/udev-rules-imx.bb:do_package_qa)
NOTE: recipe util-macros-1_1.19.0-r0: task do_package_qa: Started
NOTE: recipe util-macros-1_1.19.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3468 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libffi/libffi_3.2.1.bb:do_package_qa)
NOTE: recipe udev-rules-imx-1.0-r0: task do_package_qa: Started
NOTE: recipe udev-rules-imx-1.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3469 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.27.bb:do_package_qa)
NOTE: recipe libffi-3.2.1-r0: task do_package_qa: Started
NOTE: recipe libsndfile1-1.0.27-r0: task do_package_qa: Started
NOTE: recipe libffi-3.2.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3470 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb:do_package_qa)
NOTE: recipe compositeproto-1_0.4.2-r1: task do_package_qa: Started
NOTE: recipe libsndfile1-1.0.27-r0: task do_package_qa: Succeeded
NOTE: Running task 3471 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb:do_package_qa)
NOTE: recipe compositeproto-1_0.4.2-r1: task do_package_qa: Succeeded
NOTE: Running task 3472 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_package_qa)
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package_qa: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_package_qa: Started
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package_qa: Succeeded
NOTE: Running task 3473 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/netbase/netbase_5.3.bb:do_package_qa)
NOTE: recipe netbase-1_5.3-r0: task do_package_qa: Started
NOTE: recipe imx-gpu-viv-1_5.0.11.p8.6-hfp-r0: task do_package_qa: Succeeded
NOTE: Running task 3475 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_populate_sysroot)
NOTE: recipe netbase-1_5.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3477 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_package_qa)
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_populate_sysroot: Started
NOTE: recipe vte-0.44.2-r0: task do_package_qa: Started
NOTE: recipe vte-0.44.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3478 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_populate_sysroot)
NOTE: recipe openssh-7.3p1-r0: task do_populate_sysroot: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3479 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/alsa-state/alsa-state.bb:do_package_qa)
NOTE: recipe alsa-state-0.2.0-r5: task do_package_qa: Started
NOTE: recipe openssh-7.3p1-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3482 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_package_qa)
NOTE: recipe libdrm-2.4.74-r0: task do_package_qa: Started
NOTE: recipe alsa-state-0.2.0-r5: task do_package_qa: Succeeded
NOTE: Running task 3483 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_package_qa)
NOTE: recipe wpa-supplicant-2.5-r0: task do_package_qa: Started
NOTE: recipe wpa-supplicant-2.5-r0: task do_package_qa: Succeeded
NOTE: Running task 3484 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_package_qa)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_compile: Succeeded
NOTE: Running task 3485 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_install)
NOTE: recipe libdrm-2.4.74-r0: task do_package_qa: Succeeded
NOTE: Running task 3486 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libmatchbox/libmatchbox_1.12.bb:do_package_qa)
NOTE: recipe opkg-1_0.3.3-r0: task do_package_qa: Started
NOTE: recipe libmatchbox-1.12-r0: task do_package_qa: Started
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_install: Started
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_install: Succeeded
NOTE: Running task 3487 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_package)
NOTE: recipe libmatchbox-1.12-r0: task do_package_qa: Succeeded
NOTE: Running task 3488 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_populate_sysroot)
NOTE: recipe opkg-1_0.3.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3489 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_package_qa)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_package: Started
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_populate_sysroot: Started
NOTE: recipe cryptodev-linux-1.8-r0: task do_package_qa: Started
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3490 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxext_1.3.3.bb:do_package_qa)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_package: Succeeded
NOTE: Running task 3491 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_packagedata)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_packagedata: Started
NOTE: recipe libxext-1_1.3.3-r0: task do_package_qa: Started
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_packagedata: Succeeded
NOTE: Running task 3492 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_populate_sysroot)
NOTE: recipe cryptodev-linux-1.8-r0: task do_package_qa: Succeeded
NOTE: Running task 3493 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/ncurses/ncurses_6.0+20160625.bb:do_package_qa)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_populate_sysroot: Started
NOTE: recipe ncurses-6.0+20160625-r0: task do_package_qa: Started
NOTE: recipe libxext-1_1.3.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3494 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_package_qa)
NOTE: recipe matchbox-wm-1.2.2-r0: task do_package_qa: Started
NOTE: recipe matchbox-wm-1.2.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3495 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/i2c-tools/i2c-tools_3.1.2.bb:do_package_qa)
NOTE: recipe kernel-module-imx-gpu-viv-5.0.11.p8.6+fslc+gitAUTOINC+1be63fb14e-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3496 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/xz/xz_5.2.2.bb:do_package_qa)
NOTE: recipe i2c-tools-3.1.2-r0: task do_package_qa: Started
NOTE: recipe xz-5.2.2-r0: task do_package_qa: Started
NOTE: recipe i2c-tools-3.1.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3497 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_package_qa)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_package_qa: Started
NOTE: recipe ncurses-6.0+20160625-r0: task do_package_qa: Succeeded
NOTE: Running task 3498 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg-arch-config_1.0.bb:do_package_qa)
NOTE: recipe opkg-arch-config-1.0-r1: task do_package_qa: Started
NOTE: recipe xz-5.2.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3499 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc_2.24.bb:do_package_qa)
NOTE: recipe matchbox-panel-2-2.11-r0: task do_package_qa: Succeeded
NOTE: Running task 3500 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_package_qa)
NOTE: recipe pciutils-3.5.2-r0: task do_package_qa: Started
NOTE: recipe opkg-arch-config-1.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3501 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/libtool/libtool_2.4.6.bb:do_package_qa)
NOTE: recipe glibc-2.24-r0: task do_package_qa: Started
NOTE: recipe pciutils-3.5.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3502 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_package_qa)
NOTE: recipe libinput-1.5.0-r0: task do_package_qa: Started
NOTE: recipe libtool-2.4.6-r0: task do_package_qa: Started
NOTE: recipe libinput-1.5.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3505 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb:do_package_qa)
NOTE: recipe xf86vidmodeproto-1_2.3.1-r1: task do_package_qa: Started
NOTE: recipe xf86vidmodeproto-1_2.3.1-r1: task do_package_qa: Succeeded
NOTE: Running task 3506 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/jpeg/libjpeg-turbo_1.5.1.bb:do_package_qa)
NOTE: recipe libjpeg-turbo-1_1.5.1-r0: task do_package_qa: Started
NOTE: recipe libtool-2.4.6-r0: task do_package_qa: Succeeded
NOTE: recipe libjpeg-turbo-1_1.5.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3507 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/sqlite/sqlite3_3.15.1.bb:do_package_qa)
NOTE: Running task 3508 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/inputproto_2.3.2.bb:do_package_qa)
NOTE: recipe sqlite3-3_3.15.1-r0: task do_package_qa: Started
NOTE: recipe sqlite3-3_3.15.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3509 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_package_qa)
NOTE: recipe gnutls-3.5.6-r0: task do_package_qa: Started
NOTE: recipe inputproto-1_2.3.2-r0: task do_package_qa: Started
NOTE: recipe gnutls-3.5.6-r0: task do_package_qa: Succeeded
NOTE: Running task 3511 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_package_qa)
NOTE: recipe inputproto-1_2.3.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3512 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_populate_sysroot)
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_populate_sysroot: Started
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_package_qa: Started
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3513 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/attr_2.4.47.bb:do_package_qa)
NOTE: recipe glibc-2.24-r0: task do_package_qa: Succeeded
NOTE: Running task 3515 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/elfutils/elfutils_0.166.bb:do_package_qa)
NOTE: recipe attr-2.4.47-r0: task do_package_qa: Started
NOTE: recipe elfutils-0.166-r0: task do_package_qa: Started
NOTE: recipe attr-2.4.47-r0: task do_package_qa: Succeeded
NOTE: Running task 3517 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.2.bb:do_package_qa)
NOTE: recipe elfutils-0.166-r0: task do_package_qa: Succeeded
NOTE: Running task 3518 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/modutils-initscripts/modutils-initscripts.bb:do_package_qa)
NOTE: recipe scrnsaverproto-1_1.2.2-r0: task do_package_qa: Started
NOTE: recipe scrnsaverproto-1_1.2.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3519 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_populate_sysroot)
NOTE: recipe modutils-initscripts-1.0-r7: task do_package_qa: Started
NOTE: recipe pciutils-3.5.2-r0: task do_populate_sysroot: Started
NOTE: recipe modutils-initscripts-1.0-r7: task do_package_qa: Succeeded
NOTE: Running task 3520 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/fontconfig/fontconfig_2.12.1.bb:do_package_qa)
NOTE: recipe glib-2.0-1_2.50.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3521 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxtst_1.2.3.bb:do_package_qa)
NOTE: recipe fontconfig-2.12.1-r0: task do_package_qa: Started
NOTE: recipe libxtst-1_1.2.3-r0: task do_package_qa: Started
NOTE: recipe fontconfig-2.12.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3522 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_package_qa)
NOTE: recipe pciutils-3.5.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3523 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/font-util_1.3.1.bb:do_package_qa)
NOTE: recipe libxtst-1_1.2.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3524 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_populate_sysroot)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_package_qa: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_populate_sysroot: Started
NOTE: recipe font-util-1.3.1-r0: task do_package_qa: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3525 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-wifi.bb:do_package_qa)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_package_qa: Succeeded
NOTE: Running task 3526 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-wifi-1.0-r1: task do_package_qa: Started
NOTE: recipe base-files-3.0.14-r89: task do_package_qa: Started
NOTE: recipe font-util-1.3.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3527 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_populate_sysroot)
NOTE: recipe packagegroup-amltd-wifi-1.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3528 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/flac/flac_1.3.1.bb:do_package_qa)
NOTE: recipe xkeyboard-config-2.19-r0: task do_populate_sysroot: Started
NOTE: recipe flac-1.3.1-r0: task do_package_qa: Started
NOTE: recipe xkeyboard-config-2.19-r0: task do_populate_sysroot: Succeeded
NOTE: recipe base-files-3.0.14-r89: task do_package_qa: Succeeded
NOTE: Running task 3531 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/can-utils_git.bb:do_package_qa)
NOTE: recipe flac-1.3.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3532 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_package_qa)
NOTE: Running task 3533 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_package_qa)
NOTE: recipe can-utils-git-r0: task do_package_qa: Started
NOTE: recipe alsa-utils-1.1.2-r0: task do_package_qa: Started
NOTE: recipe openssh-7.3p1-r0: task do_package_qa: Started
NOTE: recipe openssh-7.3p1-r0: task do_package_qa: Succeeded
NOTE: Running task 3537 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.4.bb:do_package_qa)
NOTE: recipe alsa-utils-1.1.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3538 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gdbm/gdbm_1.12.bb:do_package_qa)
NOTE: recipe can-utils-git-r0: task do_package_qa: Succeeded
NOTE: Running task 3540 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_package_qa)
NOTE: recipe gdbm-1.12-r0: task do_package_qa: Started
NOTE: recipe bash-completion-2.4-r0: task do_package_qa: Started
NOTE: recipe python-2.7.12-r1: task do_package_qa: Started
NOTE: recipe bash-completion-2.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3541 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdamage_1.1.4.bb:do_package_qa)
NOTE: recipe gdbm-1.12-r0: task do_package_qa: Succeeded
NOTE: Running task 3542 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.9.bb:do_package_qa)
NOTE: recipe libxdamage-1_1.1.4-r0: task do_package_qa: Started
NOTE: recipe libxkbfile-1_1.0.9-r0: task do_package_qa: Started
NOTE: recipe libxdamage-1_1.1.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3543 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_package_qa)
NOTE: recipe libxkbfile-1_1.0.9-r0: task do_package_qa: Succeeded
NOTE: Running task 3544 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_package_qa)
NOTE: recipe harfbuzz-1.3.3-r0: task do_package_qa: Started
NOTE: recipe xkeyboard-config-2.19-r0: task do_package_qa: Started
NOTE: recipe harfbuzz-1.3.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3545 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_package_qa)
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_package_qa: Started
NOTE: recipe imx-alsa-plugins-1.0.26-r0: task do_package_qa: Succeeded
NOTE: recipe xkeyboard-config-2.19-r0: task do_package_qa: Succeeded
NOTE: Running task 3548 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xset_1.2.3.bb:do_package_qa)
NOTE: Running task 3549 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_package_qa)
NOTE: recipe xset-1_1.2.3-r0: task do_package_qa: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_package_qa: Started
NOTE: recipe matchbox-keyboard-0.1.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3550 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bash/bash_4.3.30.bb:do_package_qa)
NOTE: recipe xset-1_1.2.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3551 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-touchscreen.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-touchscreen-1.0-r1: task do_package_qa: Started
NOTE: recipe bash-4.3.30-r0: task do_package_qa: Started
NOTE: recipe packagegroup-amltd-touchscreen-1.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3552 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xhost_1.0.7.bb:do_package_qa)
NOTE: recipe xhost-1_1.0.7-r0: task do_package_qa: Started
NOTE: recipe bash-4.3.30-r0: task do_package_qa: Succeeded
NOTE: Running task 3553 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_package_qa)
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_package_qa: Started
NOTE: recipe xhost-1_1.0.7-r0: task do_package_qa: Succeeded
NOTE: Running task 3554 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxft_2.3.2.bb:do_package_qa)
NOTE: recipe libxft-1_2.3.2-r0: task do_package_qa: Started
NOTE: recipe matchbox-theme-sato-0.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3555 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-session/matchbox-session_0.1.bb:do_package_qa)
NOTE: recipe matchbox-session-0.1-r4: task do_package_qa: Started
NOTE: recipe libxft-1_2.3.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3556 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/util-linux/util-linux_2.28.1.bb:do_package_qa)
NOTE: recipe util-linux-2.28.1-r0: task do_package_qa: Started
NOTE: recipe matchbox-session-0.1-r4: task do_package_qa: Succeeded
NOTE: Running task 3557 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_package_qa)
NOTE: recipe matchbox-desktop-2.1-r0: task do_package_qa: Started
NOTE: recipe matchbox-desktop-2.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3559 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/videoproto_2.3.3.bb:do_package_qa)
NOTE: recipe videoproto-1_2.3.3-r0: task do_package_qa: Started
NOTE: recipe videoproto-1_2.3.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3560 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/glproto_1.4.17.bb:do_package_qa)
NOTE: recipe glproto-1_1.4.17-r0: task do_package_qa: Started
NOTE: recipe glproto-1_1.4.17-r0: task do_package_qa: Succeeded
NOTE: Running task 3561 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpthread-stubs_0.3.bb:do_package_qa)
NOTE: recipe libpthread-stubs-0.3-r0: task do_package_qa: Started
NOTE: recipe libpthread-stubs-0.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3564 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb:do_package_qa)
NOTE: recipe damageproto-1_1.2.1-r1: task do_package_qa: Started
NOTE: recipe damageproto-1_1.2.1-r1: task do_package_qa: Succeeded
NOTE: Running task 3566 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_populate_sysroot)
NOTE: recipe matchbox-terminal-0.1-r0: task do_populate_sysroot: Started
NOTE: recipe matchbox-terminal-0.1-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3567 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/dri2proto_2.8.bb:do_package_qa)
NOTE: recipe dri2proto-2.8-r0: task do_package_qa: Started
NOTE: recipe dri2proto-2.8-r0: task do_package_qa: Succeeded
NOTE: Running task 3569 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/iptables/iptables_1.6.0.bb:do_package_qa)
NOTE: recipe iptables-1.6.0-r0: task do_package_qa: Started
NOTE: recipe python-2.7.12-r1: task do_package_qa: Succeeded
NOTE: Running task 3571 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_package_qa)
NOTE: recipe settings-daemon-0.0.2-r0: task do_package_qa: Started
NOTE: recipe settings-daemon-0.0.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3572 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xtrans_1.3.5.bb:do_package_qa)
NOTE: recipe xtrans-1_1.3.5-r0: task do_package_qa: Started
NOTE: recipe util-linux-2.28.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3575 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libfontenc_1.1.3.bb:do_package_qa)
NOTE: recipe iptables-1.6.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3576 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gdb/gdb_7.11.1.bb:do_package_qa)
NOTE: recipe libfontenc-1_1.1.3-r0: task do_package_qa: Started
NOTE: recipe gdb-7.11.1-r0: task do_package_qa: Started
NOTE: recipe xtrans-1_1.3.5-r0: task do_package_qa: Succeeded
NOTE: Running task 3577 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/recordproto_1.14.2.bb:do_package_qa)
NOTE: recipe recordproto-1_1.14.2-r1: task do_package_qa: Started
NOTE: recipe libfontenc-1_1.1.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3578 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-runtime_6.2.bb:do_package_qa)
NOTE: recipe recordproto-1_1.14.2-r1: task do_package_qa: Succeeded
NOTE: Running task 3580 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow_4.2.1.bb:do_package_qa)
NOTE: recipe shadow-4.2.1-r0: task do_package_qa: Started
NOTE: recipe gdb-7.11.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3581 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_populate_sysroot)
NOTE: recipe usbutils-008-r0: task do_populate_sysroot: Started
NOTE: recipe gcc-runtime-6.2.0-r0: task do_package_qa: Started
NOTE: recipe usbutils-008-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3582 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb:do_package_qa)
NOTE: recipe xf86dgaproto-1_2.1-r2: task do_package_qa: Started
NOTE: recipe xf86dgaproto-1_2.1-r2: task do_package_qa: Succeeded
NOTE: Running task 3583 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_package_write_ipk)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_package_write_ipk: Started
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3586 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xauth_1.0.9.bb:do_package_qa)
NOTE: recipe shadow-4.2.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3587 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/libsocketcan_0.0.8.bb:do_package_qa)
NOTE: recipe xauth-1_1.0.9-r0: task do_package_qa: Started
NOTE: recipe libsocketcan-0.0.8-r0: task do_package_qa: Started
NOTE: recipe libsocketcan-0.0.8-r0: task do_package_qa: Succeeded
NOTE: Running task 3588 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xproto_7.0.31.bb:do_package_qa)
NOTE: recipe xauth-1_1.0.9-r0: task do_package_qa: Succeeded
NOTE: Running task 3590 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libcap/libcap_2.25.bb:do_package_qa)
NOTE: recipe libcap-2.25-r0: task do_package_qa: Started
NOTE: recipe gcc-runtime-6.2.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3591 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fontsproto_2.1.3.bb:do_package_qa)
NOTE: recipe xproto-1_7.0.31-r0: task do_package_qa: Started
NOTE: recipe fontsproto-1_2.1.3-r0: task do_package_qa: Started
NOTE: recipe libcap-2.25-r0: task do_package_qa: Succeeded
NOTE: Running task 3593 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_package_qa)
NOTE: recipe fontsproto-1_2.1.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3594 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_package_qa)
NOTE: recipe matchbox-terminal-0.1-r0: task do_package_qa: Started
NOTE: recipe xproto-1_7.0.31-r0: task do_package_qa: Succeeded
NOTE: Running task 3595 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/alsa/alsa-config_0.0.bb:do_package_qa)
NOTE: recipe alsa-config-0.0-r1: task do_package_qa: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_package_qa: Started
NOTE: recipe matchbox-terminal-0.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3596 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fixesproto_5.0.bb:do_package_qa)
NOTE: recipe fixesproto-1_5.0-r1: task do_package_qa: Started
NOTE: recipe alsa-config-0.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3597 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_package_qa)
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_package_qa: Started
NOTE: recipe kmod-23+gitAUTOINC+65a885df5f-r0: task do_package_qa: Succeeded
NOTE: Running task 3598 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_populate_sysroot)
NOTE: recipe opkg-1_0.3.3-r0: task do_populate_sysroot: Started
NOTE: recipe fixesproto-1_5.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3599 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_package_qa)
NOTE: recipe at-spi2-atk-2.22.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3600 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_populate_sysroot)
NOTE: recipe matchbox-session-sato-0.1-r30: task do_populate_sysroot: Started
NOTE: recipe gettext-0.19.8.1-r0: task do_package_qa: Started
NOTE: recipe opkg-1_0.3.3-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3601 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_package_qa)
NOTE: recipe matchbox-session-sato-0.1-r30: task do_populate_sysroot: Succeeded
NOTE: Running task 3602 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/ethtool/ethtool_4.8.bb:do_package_qa)
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_package_qa: Started
NOTE: recipe ethtool-4.8-r0: task do_package_qa: Started
NOTE: recipe xserver-xorg-2_1.19.0-r0: task do_package_qa: Succeeded
NOTE: recipe ethtool-4.8-r0: task do_package_qa: Succeeded
NOTE: Running task 3603 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb:do_package_qa)
NOTE: Running task 3604 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iproute2/iproute2_4.7.0.bb:do_package_qa)
NOTE: recipe iproute2-4.7.0-r0: task do_package_qa: Started
NOTE: recipe renderproto-1_0.11.1-r1: task do_package_qa: Started
NOTE: recipe iproute2-4.7.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3605 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb:do_package_qa)
NOTE: recipe renderproto-1_0.11.1-r1: task do_package_qa: Succeeded
NOTE: Running task 3606 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrender_0.9.10.bb:do_package_qa)
NOTE: recipe xineramaproto-1_1.2.1-r0: task do_package_qa: Started
NOTE: recipe libxrender-1_0.9.10-r0: task do_package_qa: Started
NOTE: recipe xineramaproto-1_1.2.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3609 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_populate_sysroot)
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_populate_sysroot: Started
NOTE: recipe libxrender-1_0.9.10-r0: task do_package_qa: Succeeded
NOTE: Running task 3611 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/rgb_1.0.6.bb:do_package_qa)
NOTE: recipe rgb-1_1.0.6-r0: task do_package_qa: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3612 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/randrproto_1.5.0.bb:do_package_qa)
NOTE: recipe rgb-1_1.0.6-r0: task do_package_qa: Succeeded
NOTE: Running task 3613 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_package_qa)
NOTE: recipe gettext-0.19.8.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3615 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_package_qa)
NOTE: recipe atk-2.22.0-r0: task do_package_qa: Started
NOTE: recipe randrproto-1_1.5.0-r0: task do_package_qa: Started
NOTE: recipe dbus-glib-0.106-r0: task do_package_qa: Started
NOTE: recipe randrproto-1_1.5.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3616 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/liburcu/liburcu_0.9.2.bb:do_package_qa)
NOTE: recipe liburcu-0.9.2-r0: task do_package_qa: Started
NOTE: recipe atk-2.22.0-r0: task do_package_qa: Succeeded
NOTE: recipe dbus-glib-0.106-r0: task do_package_qa: Succeeded
NOTE: Running task 3617 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcb-proto_1.12.bb:do_package_qa)
NOTE: recipe liburcu-0.9.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3618 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libpng/libpng_1.6.26.bb:do_package_qa)
NOTE: Running task 3619 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_package_qa)
NOTE: recipe libpng-1.6.26-r0: task do_package_qa: Started
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_package_qa: Started
NOTE: recipe xcb-proto-1.12-r0: task do_package_qa: Started
NOTE: recipe xf86-input-evdev-2_2.10.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3620 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_populate_sysroot)
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_populate_sysroot: Started
NOTE: recipe xcb-proto-1.12-r0: task do_package_qa: Succeeded
NOTE: Running task 3622 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxmu_1.1.2.bb:do_package_qa)
NOTE: recipe libpng-1.6.26-r0: task do_package_qa: Succeeded
NOTE: Running task 3623 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontscale_1.1.2.bb:do_package_qa)
NOTE: recipe libxmu-1_1.1.2-r0: task do_package_qa: Started
NOTE: recipe mkfontscale-1.1.2-r0: task do_package_qa: Started
NOTE: recipe xf86-video-imxfb-vivante-3_5.0.11.p8.6-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3627 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_package_qa)
NOTE: recipe mkfontscale-1.1.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3630 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xkbcomp_1.3.1.bb:do_package_qa)
NOTE: recipe libxmu-1_1.1.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3631 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iw/iw_4.9.bb:do_package_qa)
NOTE: recipe openssl-1.0.2j-r0: task do_package_qa: Started
NOTE: recipe iw-4.9-r0: task do_package_qa: Started
NOTE: recipe xkbcomp-1.3.1-r8.0: task do_package_qa: Started
NOTE: recipe iw-4.9-r0: task do_package_qa: Succeeded
NOTE: Running task 3632 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_package_qa)
NOTE: recipe xkbcomp-1.3.1-r8.0: task do_package_qa: Succeeded
NOTE: Running task 3633 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc-locale_2.24.bb:do_package_qa)
NOTE: recipe glibc-locale-2.24-r0: task do_package_qa: Started
NOTE: recipe cairo-1.14.6-r0: task do_package_qa: Started
NOTE: recipe cairo-1.14.6-r0: task do_package_qa: Succeeded
NOTE: Running task 3634 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb:do_package_qa)
NOTE: recipe openssl-1.0.2j-r0: task do_package_qa: Succeeded
NOTE: Running task 3635 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_deploy)
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_deploy: Started
NOTE: recipe libxxf86misc-1_1.0.3-r0: task do_package_qa: Started
NOTE: recipe libxxf86misc-1_1.0.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3636 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.2.bb:do_package_qa)
NOTE: recipe xcmiscproto-1_1.2.2-r0: task do_package_qa: Started
NOTE: recipe u-boot-fslc-v2016.11+gitAUTOINC+a3d27ead69-r0: task do_deploy: Succeeded
NOTE: Running task 3639 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxau_1.0.8.bb:do_package_qa)
NOTE: recipe xcmiscproto-1_1.2.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3640 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wireless-tools/wireless-tools_30.pre9.bb:do_package_qa)
NOTE: recipe libxau-1_1.0.8-r0: task do_package_qa: Started
NOTE: recipe wireless-tools-1_30.pre9-r0: task do_package_qa: Started
NOTE: recipe libxau-1_1.0.8-r0: task do_package_qa: Succeeded
NOTE: Running task 3641 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gmp/gmp_6.1.1.bb:do_package_qa)
NOTE: recipe wireless-tools-1_30.pre9-r0: task do_package_qa: Succeeded
NOTE: Running task 3642 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.9.bb:do_package_qa)
NOTE: recipe gmp-6.1.1-r0: task do_package_qa: Started
NOTE: recipe libsamplerate0-0.1.9-r1: task do_package_qa: Started
NOTE: recipe gmp-6.1.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3645 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-alsa.bb:do_package_qa)
NOTE: recipe libsamplerate0-0.1.9-r1: task do_package_qa: Succeeded
NOTE: Running task 3646 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog_5.15.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-alsa-1.0-r1: task do_package_qa: Started
NOTE: recipe watchdog-5.15-r0: task do_package_qa: Started
NOTE: recipe watchdog-5.15-r0: task do_package_qa: Succeeded
NOTE: Running task 3650 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_populate_sysroot)
NOTE: recipe alsa-utils-1.1.2-r0: task do_populate_sysroot: Started
NOTE: recipe packagegroup-amltd-alsa-1.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3651 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libsm_1.2.2.bb:do_package_qa)
NOTE: recipe alsa-utils-1.1.2-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 3653 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/initscripts/initscripts_1.0.bb:do_package_qa)
NOTE: recipe glibc-locale-2.24-r0: task do_package_qa: Succeeded
NOTE: Running task 3654 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/coreutils/coreutils_8.25.bb:do_package_qa)
NOTE: recipe libsm-1_1.2.2-r0: task do_package_qa: Started
NOTE: recipe coreutils-8.25-r0: task do_package_qa: Started
NOTE: recipe initscripts-1.0-r155: task do_package_qa: Started
NOTE: recipe libsm-1_1.2.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3655 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_package_qa)
NOTE: recipe initscripts-1.0-r155: task do_package_qa: Succeeded
NOTE: Running task 3656 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_package_qa)
NOTE: recipe libepoxy-1.3.1-r0: task do_package_qa: Started
NOTE: recipe pango-1.40.3-r0: task do_package_qa: Started
NOTE: recipe coreutils-8.25-r0: task do_package_qa: Succeeded
NOTE: Running task 3657 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/psplash/psplash_git.bb:do_package_qa)
NOTE: recipe libepoxy-1.3.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3658 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/nettle/nettle_3.3.bb:do_package_qa)
NOTE: recipe nettle-3.3-r0: task do_package_qa: Started
NOTE: recipe psplash-0.1+gitAUTOINC+88343ad23c-r15: task do_package_qa: Started
NOTE: recipe pango-1.40.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3659 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus_1.10.10.bb:do_package_qa)
NOTE: recipe nettle-3.3-r0: task do_package_qa: Succeeded
NOTE: Running task 3660 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xextproto_7.3.0.bb:do_package_qa)
NOTE: recipe dbus-1.10.10-r0: task do_package_qa: Started
NOTE: recipe psplash-0.1+gitAUTOINC+88343ad23c-r15: task do_package_qa: Succeeded
NOTE: Running task 3661 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/perl/perl_5.24.0.bb:do_package_qa)
NOTE: recipe perl-5.24.0-r0: task do_package_qa: Started
NOTE: recipe xextproto-1_7.3.0-r0: task do_package_qa: Started
NOTE: recipe xextproto-1_7.3.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3662 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontdir_1.0.7.bb:do_package_qa)
NOTE: recipe dbus-1.10.10-r0: task do_package_qa: Succeeded
NOTE: Running task 3663 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-lib_1.1.2.bb:do_package_qa)
NOTE: recipe alsa-lib-1.1.2-r0: task do_package_qa: Started
NOTE: recipe mkfontdir-1_1.0.7-r8.0: task do_package_qa: Started
NOTE: recipe mkfontdir-1_1.0.7-r8.0: task do_package_qa: Succeeded
NOTE: Running task 3664 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-usbhost.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-usbhost-1.0-r1: task do_package_qa: Started
NOTE: recipe alsa-lib-1.1.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3665 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-usbhost-1.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3667 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/freetype/freetype_2.7.bb:do_package_qa)
NOTE: recipe matchbox-session-sato-0.1-r30: task do_package_qa: Started
NOTE: recipe freetype-2.7-r0: task do_package_qa: Started
NOTE: recipe matchbox-session-sato-0.1-r30: task do_package_qa: Succeeded
NOTE: Running task 3668 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_package_qa)
NOTE: recipe libarchive-3.2.2-r0: task do_package_qa: Started
NOTE: recipe freetype-2.7-r0: task do_package_qa: Succeeded
NOTE: Running task 3669 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_package_qa)
NOTE: recipe libarchive-3.2.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3671 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libpcre/libpcre_8.39.bb:do_package_qa)
NOTE: recipe linux-boundary-4.1.15-r0: task do_package_qa: Started
NOTE: recipe libpcre-8.39-r0: task do_package_qa: Started
NOTE: recipe linux-boundary-4.1.15-r0: task do_package_qa: Succeeded
NOTE: Running task 3672 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_package_qa)
NOTE: recipe perl-5.24.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3674 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxt_1.1.5.bb:do_package_qa)
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_package_qa: Started
NOTE: recipe libxt-1_1.1.5-r0: task do_package_qa: Started
NOTE: recipe xf86-input-libinput-2_0.22.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3675 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb1_1.0.20.bb:do_package_qa)
NOTE: recipe libusb1-1.0.20-r0: task do_package_qa: Started
NOTE: recipe libxt-1_1.1.5-r0: task do_package_qa: Succeeded
NOTE: Running task 3677 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/zlib/zlib_1.2.8.bb:do_package_qa)
NOTE: recipe libusb1-1.0.20-r0: task do_package_qa: Succeeded
NOTE: Running task 3678 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/db/db_6.0.35.bb:do_package_qa)
NOTE: recipe libpcre-8.39-r0: task do_package_qa: Succeeded
NOTE: Running task 3679 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libogg/libogg_1.3.2.bb:do_package_qa)
NOTE: recipe libogg-1.3.2-r0: task do_package_qa: Started
NOTE: recipe zlib-1.2.8-r0: task do_package_qa: Started
NOTE: recipe db-6.0.35-r1: task do_package_qa: Started
NOTE: recipe zlib-1.2.8-r0: task do_package_qa: Succeeded
NOTE: Running task 3681 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_package_qa)
NOTE: recipe libogg-1.3.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3682 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb:do_package_qa)
NOTE: recipe mesa-2_13.0.2-r0: task do_package_qa: Started
NOTE: recipe xcb-util-0.4.0-r0: task do_package_qa: Started
NOTE: recipe xcb-util-0.4.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3683 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb:do_package_qa)
NOTE: recipe xf86miscproto-1_0.9.3-r1: task do_package_qa: Started
NOTE: recipe xf86miscproto-1_0.9.3-r1: task do_package_qa: Succeeded
NOTE: Running task 3684 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/resourceproto_1.2.0.bb:do_package_qa)
NOTE: recipe resourceproto-1_1.2.0-r1: task do_package_qa: Started
NOTE: recipe glibc-locale-2.24-r0: task do_package_write_ipk: Succeeded
NOTE: Running task 3685 of 4067 (/tmp/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb:do_rootfs)
NOTE: recipe resourceproto-1_1.2.0-r1: task do_package_qa: Succeeded
NOTE: recipe mesa-2_13.0.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3687 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrandr_1.5.1.bb:do_package_qa)
NOTE: Running task 3688 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/rsync/rsync_3.1.2.bb:do_package_qa)
NOTE: recipe libxrandr-1_1.5.1-r0: task do_package_qa: Started
NOTE: recipe rsync-3.1.2-r0: task do_package_qa: Started
NOTE: recipe rsync-3.1.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3689 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_package_qa)
NOTE: recipe gobject-introspection-1.50.0-r0: task do_package_qa: Started
NOTE: recipe libxrandr-1_1.5.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3690 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.4.bb:do_package_qa)
NOTE: recipe libxcomposite-1_0.4.4-r0: task do_package_qa: Started
NOTE: recipe libxcomposite-1_0.4.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3691 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_package_qa)
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_package_qa: Started
NOTE: recipe gobject-introspection-1.50.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3692 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_package_qa)
NOTE: recipe matchbox-config-gtk-0.2-r0: task do_package_qa: Succeeded
NOTE: Running task 3693 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_package_qa)
NOTE: recipe libxml2-2.9.4-r0: task do_package_qa: Started
NOTE: recipe gtk+3-3.22.1-r0: task do_package_qa: Started
NOTE: recipe imx6-demo-image-1.0-r0: task do_rootfs: Started
NOTE: recipe libxml2-2.9.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3694 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-can.bb:do_package_qa)
NOTE: recipe gtk+3-3.22.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3695 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_package_qa)
NOTE: recipe packagegroup-amltd-can-1.0-r1: task do_package_qa: Started
NOTE: recipe packagegroup-amltd-can-1.0-r1: task do_package_qa: Succeeded
NOTE: Running task 3696 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_package_qa)
NOTE: recipe db-6.0.35-r1: task do_package_qa: Succeeded
NOTE: Running task 3697 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/expat/expat_2.2.0.bb:do_package_qa)
NOTE: recipe shared-mime-info-1.6-r0: task do_package_qa: Started
NOTE: recipe shared-mime-info-1.6-r0: task do_package_qa: Succeeded
NOTE: Running task 3698 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb:do_package_qa)
NOTE: recipe xserver-xf86-config-0.1-r33: task do_package_qa: Started
NOTE: recipe at-spi2-core-2.22.0-r0: task do_package_qa: Started
NOTE: recipe expat-2.2.0-r0: task do_package_qa: Started
NOTE: recipe xserver-xf86-config-0.1-r33: task do_package_qa: Succeeded
NOTE: Running task 3699 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb:do_package_qa)
NOTE: recipe xf86driproto-1_2.1.1-r0: task do_package_qa: Started
NOTE: recipe expat-2.2.0-r0: task do_package_qa: Succeeded
NOTE: recipe xf86driproto-1_2.1.1-r0: task do_package_qa: Succeeded
NOTE: Running task 3701 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_package_qa)
NOTE: Running task 3702 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libnl/libnl_3.2.28.bb:do_package_qa)
NOTE: recipe at-spi2-core-2.22.0-r0: task do_package_qa: Succeeded
NOTE: Running task 3703 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libevdev/libevdev_1.5.4.bb:do_package_qa)
NOTE: recipe usbutils-008-r0: task do_package_qa: Started
NOTE: recipe libnl-1_3.2.28-r0: task do_package_qa: Started
NOTE: recipe libevdev-1.5.4-r0: task do_package_qa: Started
NOTE: recipe usbutils-008-r0: task do_package_qa: Succeeded
NOTE: Running task 3705 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/mtdev_1.1.5.bb:do_package_qa)
NOTE: recipe mtdev-1.1.5-r0: task do_package_qa: Started
NOTE: recipe libevdev-1.5.4-r0: task do_package_qa: Succeeded
NOTE: Running task 3706 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/presentproto_git.bb:do_package_qa)
NOTE: recipe mtdev-1.1.5-r0: task do_package_qa: Succeeded
NOTE: Running task 3709 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/firmware-imx/firmware-imx_5.4.bb:do_package_qa)
NOTE: recipe presentproto-1.0+gitAUTOINC+24f3a56e54-r1: task do_package_qa: Started
NOTE: recipe firmware-imx-1_5.4-r0: task do_package_qa: Started
NOTE: recipe firmware-imx-1_5.4-r0: task do_package_qa: Succeeded
NOTE: Running noexec task 3711 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3_3.5.2.bb:do_build)
NOTE: recipe presentproto-1.0+gitAUTOINC+24f3a56e54-r1: task do_package_qa: Succeeded
NOTE: Running noexec task 3713 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_build)
NOTE: Running noexec task 3714 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/recordproto_1.14.2.bb:do_build)
NOTE: Running noexec task 3715 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/ethtool/ethtool_4.8.bb:do_build)
NOTE: Running noexec task 3717 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.2.bb:do_build)
NOTE: Running noexec task 3720 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libvorbis/libvorbis_1.3.5.bb:do_build)
NOTE: Running noexec task 3722 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-touchscreen.bb:do_build)
NOTE: Running noexec task 3723 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb:do_build)
NOTE: recipe libnl-1_3.2.28-r0: task do_package_qa: Succeeded
NOTE: Running noexec task 3725 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/mtdev_1.1.5.bb:do_build)
NOTE: Running noexec task 3727 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xset_1.2.3.bb:do_build)
NOTE: Running noexec task 3728 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/fontconfig/fontconfig_2.12.1.bb:do_build)
NOTE: Running noexec task 3731 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/nettle/nettle_3.3.bb:do_build)
NOTE: Running noexec task 3733 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-usbhost.bb:do_build)
NOTE: Running noexec task 3734 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/mklibs/mklibs-native_0.1.41.bb:do_build)
NOTE: Running noexec task 3736 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb:do_build)
NOTE: Running noexec task 3739 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus_1.10.10.bb:do_build)
NOTE: Running noexec task 3740 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/settings-daemon/settings-daemon_0.0.2.bb:do_build)
NOTE: Running noexec task 3741 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/firmware-imx/firmware-imx_5.4.bb:do_build)
NOTE: Running noexec task 3742 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxtst_1.2.3.bb:do_build)
NOTE: Running noexec task 3746 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.4.bb:do_build)
NOTE: Running noexec task 3747 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcursor_1.1.14.bb:do_build)
NOTE: Running noexec task 3749 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bash/bash_4.3.30.bb:do_build)
NOTE: Running noexec task 3751 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_build)
NOTE: Running noexec task 3753 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-libinput_0.22.0.bb:do_build)
NOTE: Running noexec task 3755 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/kmod/kmod_git.bb:do_build)
NOTE: Running noexec task 3756 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_build)
NOTE: Running noexec task 3757 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_build)
NOTE: Running noexec task 3758 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/adwaita-icon-theme_3.22.0.bb:do_build)
NOTE: Running noexec task 3759 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-theme_0.15.bb:do_build)
NOTE: Running noexec task 3760 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxcb_1.12.bb:do_build)
NOTE: Running noexec task 3761 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/iptables/iptables_1.6.0.bb:do_build)
NOTE: Running noexec task 3762 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpciaccess_0.13.4.bb:do_build)
NOTE: Running noexec task 3763 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/pixman_0.34.0.bb:do_build)
NOTE: Running noexec task 3764 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libpthread-stubs_0.3.bb:do_build)
NOTE: Running noexec task 3765 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb:do_build)
NOTE: Running noexec task 3766 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_build)
NOTE: Running noexec task 3767 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.2.bb:do_build)
NOTE: Running noexec task 3768 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.9.bb:do_build)
NOTE: Running noexec task 3769 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/pciutils/pciutils_3.5.2.bb:do_build)
NOTE: Running noexec task 3770 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_build)
NOTE: Running noexec task 3771 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/sqlite/sqlite3_3.15.1.bb:do_build)
NOTE: Running noexec task 3773 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxft_2.3.2.bb:do_build)
NOTE: Running noexec task 3774 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-atk_2.22.0.bb:do_build)
NOTE: Running noexec task 3775 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_build)
NOTE: Running noexec task 3776 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-utils_1.1.2.bb:do_build)
NOTE: Running noexec task 3777 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gdbm/gdbm_1.12.bb:do_build)
NOTE: Running noexec task 3778 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/libgcc_6.2.bb:do_build)
NOTE: Running noexec task 3779 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/wayland/libinput_1.5.0.bb:do_build)
NOTE: Running noexec task 3781 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcb-proto_1.12.bb:do_build)
NOTE: Running noexec task 3782 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/jpeg/libjpeg-turbo_1.5.1.bb:do_build)
NOTE: Running noexec task 3783 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-multimedia/alsa/imx-alsa-plugins_1.0.26.bb:do_build)
NOTE: Running noexec task 3784 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-wm/matchbox-wm_1.2.2.bb:do_build)
NOTE: Running noexec task 3785 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk+3_3.22.1.bb:do_build)
NOTE: Running noexec task 3786 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/icu/icu_58.1.bb:do_build)
NOTE: Running noexec task 3787 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/usbutils/usbutils_008.bb:do_build)
NOTE: Running noexec task 3789 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/freetype/freetype_2.7.bb:do_build)
NOTE: Running noexec task 3790 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb:do_build)
NOTE: Running noexec task 3791 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.27.bb:do_build)
NOTE: Running noexec task 3792 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog_5.15.bb:do_build)
NOTE: Running noexec task 3793 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_2.5.bb:do_build)
NOTE: Running noexec task 3794 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xextproto_7.3.0.bb:do_build)
NOTE: Running noexec task 3796 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/alsa-state/alsa-state.bb:do_build)
NOTE: Running noexec task 3797 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-devtools/rpm/rpm_5.4.16.bb:do_build)
NOTE: Running noexec task 3798 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/libsocketcan_0.0.8.bb:do_build)
NOTE: Running noexec task 3800 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xtrans_1.3.5.bb:do_build)
NOTE: Running noexec task 3801 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-gnome/librsvg/librsvg_2.40.16.bb:do_build)
NOTE: Running noexec task 3802 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xinit_1.3.4.bb:do_build)
NOTE: Running noexec task 3803 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libpcre/libpcre_8.39.bb:do_build)
NOTE: Running noexec task 3804 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrandr_1.5.1.bb:do_build)
NOTE: Running noexec task 3806 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-bsp/u-boot/u-boot-fslc_2016.11.bb:do_build)
NOTE: Running noexec task 3807 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_build)
NOTE: Running noexec task 3808 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.2.bb:do_build)
NOTE: Running noexec task 3809 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_build)
NOTE: Running noexec task 3810 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/modutils-initscripts/modutils-initscripts.bb:do_build)
NOTE: Running noexec task 3811 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxext_1.3.3.bb:do_build)
NOTE: Running noexec task 3812 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb:do_build)
NOTE: Running noexec task 3813 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-support/libxslt/libxslt_1.1.29.bb:do_build)
NOTE: Running noexec task 3815 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc-initial_2.24.bb:do_build)
NOTE: Running noexec task 3816 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/videoproto_2.3.3.bb:do_build)
NOTE: Running noexec task 3817 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssh/openssh_7.3p1.bb:do_build)
NOTE: Running noexec task 3819 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python_2.7.12.bb:do_build)
NOTE: Running noexec task 3820 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb:do_build)
NOTE: Running noexec task 3821 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/alsa/alsa-lib_1.1.2.bb:do_build)
NOTE: Running noexec task 3822 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/rsync/rsync_3.1.2.bb:do_build)
NOTE: Running noexec task 3823 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb:do_build)
NOTE: Running noexec task 3827 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libffi/libffi_3.2.1.bb:do_build)
NOTE: Running noexec task 3828 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-util/util-macros_1.19.0.bb:do_build)
NOTE: Running noexec task 3830 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontscale_1.1.2.bb:do_build)
NOTE: Running noexec task 3832 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxt_1.1.5.bb:do_build)
NOTE: Running noexec task 3833 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxi_1.7.7.bb:do_build)
NOTE: Running noexec task 3834 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb:do_build)
NOTE: Running noexec task 3835 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb:do_build)
NOTE: Running noexec task 3836 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-alsa.bb:do_build)
NOTE: Running noexec task 3838 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libfontenc_1.1.3.bb:do_build)
NOTE: Running noexec task 3839 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb:do_build)
NOTE: Running noexec task 3840 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_0.1.1.bb:do_build)
NOTE: Running noexec task 3842 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-runtime_6.2.bb:do_build)
NOTE: Running noexec task 3843 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/acl_2.2.52.bb:do_build)
NOTE: Running noexec task 3844 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libarchive/libarchive_3.2.2.bb:do_build)
NOTE: Running noexec task 3847 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgcrypt/libgcrypt_1.7.3.bb:do_build)
NOTE: Running noexec task 3850 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/atk_2.22.0.bb:do_build)
NOTE: Running noexec task 3853 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.2.bb:do_build)
NOTE: Running noexec task 3854 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/mkfontdir_1.0.7.bb:do_build)
NOTE: Running noexec task 3857 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.36.0.bb:do_build)
NOTE: Running noexec task 3859 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/base-passwd/base-passwd_3.5.29.bb:do_build)
NOTE: Running noexec task 3865 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb:do_build)
NOTE: Running noexec task 3866 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/dbus-wait/dbus-wait_git.bb:do_build)
NOTE: Running noexec task 3867 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/libtool/libtool-cross_2.4.6.bb:do_build)
NOTE: Running noexec task 3868 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/rgb_1.0.6.bb:do_build)
NOTE: Running noexec task 3869 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python-native_2.7.12.bb:do_build)
NOTE: Running noexec task 3870 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb:do_build)
NOTE: Running noexec task 3874 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-core/dbus/dbus-glib_0.106.bb:do_build)
NOTE: Running noexec task 3875 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/atk/at-spi2-core_2.22.0.bb:do_build)
NOTE: Running noexec task 3876 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb:do_build)
NOTE: Running noexec task 3877 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-wifi.bb:do_build)
NOTE: Running noexec task 3879 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/x11-common/xserver-nodm-init_3.0.bb:do_build)
NOTE: Running noexec task 3881 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iproute2/iproute2_4.7.0.bb:do_build)
NOTE: Running noexec task 3882 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/attr/attr_2.4.47.bb:do_build)
NOTE: Running noexec task 3883 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/busybox/busybox_1.24.1.bb:do_build)
NOTE: Running noexec task 3884 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/i2c-tools/i2c-tools_3.1.2.bb:do_build)
NOTE: Running noexec task 3887 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc_2.24.bb:do_build)
NOTE: Running noexec task 3888 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_build)
NOTE: Running noexec task 3889 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/run-postinsts/run-postinsts_1.0.bb:do_build)
NOTE: Running noexec task 3891 of 4067 (/tmp/poky-cutting-edge/meta-oe/packages/socketcan/can-utils_git.bb:do_build)
NOTE: Running noexec task 3892 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libnl/libnl_3.2.28.bb:do_build)
NOTE: Running noexec task 3894 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb:do_build)
NOTE: Running noexec task 3895 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfont2_2.0.1.bb:do_build)
NOTE: Running noexec task 3896 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb:do_build)
NOTE: Running noexec task 3897 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-bsp/u-boot/u-boot-mkimage_2016.11.bb:do_build)
NOTE: Running noexec task 3898 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gnutls/gnutls_3.5.6.bb:do_build)
NOTE: Running noexec task 3899 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/perl/perl_5.24.0.bb:do_build)
NOTE: Running noexec task 3900 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_13.0.2.bb:do_build)
NOTE: Running noexec task 3901 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_0.2.bb:do_build)
NOTE: Running noexec task 3902 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.19.0.bb:do_build)
NOTE: Running noexec task 3903 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/inputproto_2.3.2.bb:do_build)
NOTE: Running noexec task 3904 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libpng/libpng_1.6.26.bb:do_build)
NOTE: Running noexec task 3905 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/randrproto_1.5.0.bb:do_build)
NOTE: Running noexec task 3906 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.4.bb:do_build)
NOTE: Running noexec task 3907 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb1_1.0.20.bb:do_build)
NOTE: Running noexec task 3908 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_build)
NOTE: Running noexec task 3909 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb:do_build)
NOTE: Running noexec task 3911 of 4067 (/tmp/poky-cutting-edge/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_build)
NOTE: Running noexec task 3912 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/xorg-driver/xf86-video-imxfb-vivante_5.0.11.p8.6.bb:do_build)
NOTE: Running noexec task 3915 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow_4.2.1.bb:do_build)
NOTE: Running noexec task 3916 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd.bb:do_build)
NOTE: Running noexec task 3918 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glibc/glibc-locale_2.24.bb:do_build)
NOTE: Running noexec task 3919 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_build)
NOTE: Running noexec task 3920 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/lttng/lttng-ust_git.bb:do_build)
NOTE: Running noexec task 3921 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/libidn/libidn_1.33.bb:do_build)
NOTE: Running noexec task 3922 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/glproto_1.4.17.bb:do_build)
NOTE: Running noexec task 3924 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libsm_1.2.2.bb:do_build)
NOTE: Running noexec task 3926 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/alsa/alsa-config_0.0.bb:do_build)
NOTE: Running noexec task 3929 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-can.bb:do_build)
NOTE: Running noexec task 3930 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.4.bb:do_build)
NOTE: Running noexec task 3931 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxfixes_5.0.3.bb:do_build)
NOTE: Running noexec task 3932 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/feed-config/amltd-feed-config-opkg_1.0.bb:do_build)
NOTE: Running noexec task 3933 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xproto_7.0.31.bb:do_build)
NOTE: Running noexec task 3934 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/libtool/libtool_2.4.6.bb:do_build)
NOTE: Running noexec task 3935 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libmatchbox/libmatchbox_1.12.bb:do_build)
NOTE: Running noexec task 3936 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg-arch-config_1.0.bb:do_build)
NOTE: Running noexec task 3937 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/font-util_1.3.1.bb:do_build)
NOTE: Running noexec task 3938 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/popt/popt_1.16.bb:do_build)
NOTE: Running noexec task 3939 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fontsproto_2.1.3.bb:do_build)
NOTE: Running noexec task 3940 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/udev-extraconf_1.1.bb:do_build)
NOTE: Running noexec task 3941 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-support/libcroco/libcroco_0.6.11.bb:do_build)
NOTE: Running noexec task 3942 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libepoxy/libepoxy_git.bb:do_build)
NOTE: Running noexec task 3943 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/kbproto_1.0.7.bb:do_build)
NOTE: Running noexec task 3944 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_build)
NOTE: Running noexec task 3945 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/flac/flac_1.3.1.bb:do_build)
NOTE: Running noexec task 3946 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-devtools/qemu/qemu_2.7.0.bb:do_build)
NOTE: Running noexec task 3949 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-graphics/cairo/cairo_1.14.6.bb:do_build)
NOTE: Running noexec task 3950 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libevdev/libevdev_1.5.4.bb:do_build)
NOTE: Running noexec task 3951 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libcap/libcap_2.25.bb:do_build)
NOTE: Running noexec task 3952 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xcursor-transparent-theme/xcursor-transparent-theme_git.bb:do_build)
NOTE: Running noexec task 3953 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xauth_1.0.9.bb:do_build)
NOTE: Running noexec task 3954 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/fixesproto_5.0.bb:do_build)
NOTE: Running noexec task 3958 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-kernel/kernel-modules/kernel-module-imx-gpu-viv_5.0.11.p8.6+fslc.bb:do_build)
NOTE: Running noexec task 3959 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.1.bb:do_build)
NOTE: Running noexec task 3960 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/python/python3-native_3.5.2.bb:do_build)
NOTE: Running noexec task 3961 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/init-ifupdown/init-ifupdown_1.0.bb:do_build)
NOTE: Running noexec task 3964 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libx11_1.6.4.bb:do_build)
NOTE: Running noexec task 3966 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_build)
NOTE: Running noexec task 3968 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/shared-mime-info/shared-mime-info_1.6.bb:do_build)
NOTE: Running noexec task 3969 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/dri2proto_2.8.bb:do_build)
NOTE: Running noexec task 3970 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/tar/tar_1.29.bb:do_build)
NOTE: Running noexec task 3971 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/gmp/gmp_6.1.1.bb:do_build)
NOTE: Running noexec task 3972 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p8.6-hfp.bb:do_build)
NOTE: Running noexec task 3973 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/wireless-tools/wireless-tools_30.pre9.bb:do_build)
NOTE: Running noexec task 3976 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.3.bb:do_build)
NOTE: Running noexec task 3977 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb:do_build)
NOTE: Running noexec task 3978 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-core/libxml/libxml2_2.9.4.bb:do_build)
NOTE: Running noexec task 3979 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gtk+/gtk-icon-utils-native_3.22.1.bb:do_build)
NOTE: Running noexec task 3980 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxdamage_1.1.4.bb:do_build)
NOTE: Running noexec task 3982 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.9.bb:do_build)
NOTE: Running noexec task 3984 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_build)
NOTE: Running noexec task 3986 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libice_1.0.9.bb:do_build)
NOTE: Running noexec task 3988 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/netbase/netbase_5.3.bb:do_build)
NOTE: Running noexec task 3989 of 4067 (/tmp/poky-cutting-edge/meta-freescale-3rdparty/recipes-kernel/linux/linux-boundary_4.1.15.bb:do_build)
NOTE: Running noexec task 3991 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/udev/eudev_3.2.bb:do_build)
NOTE: Running noexec task 3993 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.3.bb:do_build)
NOTE: Running noexec task 3994 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xhost_1.0.7.bb:do_build)
NOTE: Running noexec task 3995 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxmu_1.1.2.bb:do_build)
NOTE: Running noexec task 3997 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_build)
NOTE: Running noexec task 3998 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gnome/gconf_3.2.6.bb:do_build)
NOTE: Running noexec task 3999 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/resourceproto_1.2.0.bb:do_build)
NOTE: Running noexec task 4001 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/ncurses/ncurses_6.0+20160625.bb:do_build)
NOTE: Running noexec task 4002 of 4067 (virtual:native:/tmp/poky-cutting-edge/meta/recipes-graphics/pango/pango_1.40.3.bb:do_build)
NOTE: Running noexec task 4003 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-app/xkbcomp_1.3.1.bb:do_build)
NOTE: Running noexec task 4004 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/matchbox-session/matchbox-session_0.1.bb:do_build)
NOTE: Running noexec task 4007 of 4067 (/tmp/poky-cutting-edge/meta/recipes-connectivity/iw/iw_4.9.bb:do_build)
NOTE: Running noexec task 4008 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-i2c.bb:do_build)
NOTE: Running noexec task 4009 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/watchdog/watchdog-config.bb:do_build)
NOTE: Running noexec task 4010 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.2.bb:do_build)
NOTE: Running noexec task 4013 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/gdb/gdb_7.11.1.bb:do_build)
NOTE: Running noexec task 4014 of 4067 (/tmp/poky-cutting-edge/meta/recipes-sato/matchbox-terminal/matchbox-terminal_0.1.bb:do_build)
NOTE: Running noexec task 4015 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/util-linux/util-linux_2.28.1.bb:do_build)
NOTE: Running noexec task 4017 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/elfutils/elfutils_0.166.bb:do_build)
NOTE: Running noexec task 4018 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxau_1.0.8.bb:do_build)
NOTE: Running noexec task 4019 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_build)
NOTE: Running noexec task 4020 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/expat/expat_2.2.0.bb:do_build)
NOTE: Running noexec task 4021 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/startup-notification/startup-notification_0.12.bb:do_build)
NOTE: Running noexec task 4022 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/db/db_6.0.35.bb:do_build)
NOTE: Running noexec task 4025 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/drm/libdrm_2.4.74.bb:do_build)
NOTE: Running noexec task 4027 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.19.bb:do_build)
NOTE: Running noexec task 4029 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow-sysroot_4.2.1.bb:do_build)
NOTE: Running noexec task 4030 of 4067 (/tmp/poky-cutting-edge/meta/recipes-multimedia/libogg/libogg_1.3.2.bb:do_build)
NOTE: Running noexec task 4032 of 4067 (/tmp/poky-cutting-edge/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.8.bb:do_build)
NOTE: Running noexec task 4033 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/vte/vte_0.44.2.bb:do_build)
NOTE: Running noexec task 4034 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-lib/libxrender_0.9.10.bb:do_build)
NOTE: Running noexec task 4035 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/initscripts/initscripts_1.0.bb:do_build)
NOTE: Running noexec task 4036 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/readline/readline_7.0.bb:do_build)
NOTE: Running noexec task 4037 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libgpg-error/libgpg-error_1.25.bb:do_build)
NOTE: Running noexec task 4038 of 4067 (/tmp/poky-cutting-edge/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.50.0.bb:do_build)
NOTE: Running noexec task 4040 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/libfakekey/libfakekey_git.bb:do_build)
NOTE: Running noexec task 4041 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/presentproto_git.bb:do_build)
NOTE: Running noexec task 4043 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb:do_build)
NOTE: Running noexec task 4044 of 4067 (/tmp/poky-cutting-edge/meta/recipes-devtools/opkg/opkg_0.3.3.bb:do_build)
NOTE: Running noexec task 4047 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/coreutils/coreutils_8.25.bb:do_build)
NOTE: Running noexec task 4048 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/glib-2.0/glib-2.0_2.50.1.bb:do_build)
NOTE: Running noexec task 4049 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/psplash/psplash_git.bb:do_build)
NOTE: Running noexec task 4050 of 4067 (/tmp/poky-cutting-edge/meta-freescale/recipes-core/udev/udev-rules-imx.bb:do_build)
NOTE: Running noexec task 4051 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/shadow/shadow-securetty_4.2.1.bb:do_build)
NOTE: Running noexec task 4054 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_build)
NOTE: Running noexec task 4056 of 4067 (/tmp/poky-cutting-edge/meta/recipes-extended/xz/xz_5.2.2.bb:do_build)
NOTE: Running noexec task 4057 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/libusb/libusb-compat_0.1.5.bb:do_build)
NOTE: Running noexec task 4058 of 4067 (/tmp/poky-cutting-edge/meta-amltd/packages/packagegroups/packagegroup-amltd-pci.bb:do_build)
NOTE: Running noexec task 4059 of 4067 (/tmp/poky-cutting-edge/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb:do_build)
NOTE: Running noexec task 4060 of 4067 (/tmp/poky-cutting-edge/meta/recipes-core/zlib/zlib_1.2.8.bb:do_build)
NOTE: Running noexec task 4061 of 4067 (/tmp/poky-cutting-edge/meta/recipes-support/liburcu/liburcu_0.9.2.bb:do_build)
WARNING: imx6-demo-image-1.0-r0 do_rootfs: The license listed Firmware-Wi2Wi was not in the licenses collected for recipe linux-firmware
WARNING: imx6-demo-image-1.0-r0 do_rootfs: The license listed Firmware-zircom was not in the licenses collected for recipe linux-firmware
WARNING: imx6-demo-image-1.0-r0 do_rootfs: [log_check] imx6-demo-image: found 2 warning messages in the logfile:
[log_check] WARNING: The license listed Firmware-Wi2Wi was not in the licenses collected for recipe linux-firmware
[log_check] WARNING: The license listed Firmware-zircom was not in the licenses collected for recipe linux-firmware

NOTE: recipe imx6-demo-image-1.0-r0: task do_rootfs: Succeeded
NOTE: Running task 4062 of 4067 (/tmp/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb:do_image)
NOTE: recipe imx6-demo-image-1.0-r0: task do_image: Started
NOTE: recipe imx6-demo-image-1.0-r0: task do_image: Succeeded
NOTE: Running task 4063 of 4067 (/tmp/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb:do_image_ext3)
NOTE: Running task 4064 of 4067 (/tmp/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb:do_image_tar)
NOTE: recipe imx6-demo-image-1.0-r0: task do_image_ext3: Started
NOTE: recipe imx6-demo-image-1.0-r0: task do_image_tar: Started
NOTE: recipe imx6-demo-image-1.0-r0: task do_image_ext3: Succeeded
NOTE: recipe imx6-demo-image-1.0-r0: task do_image_tar: Succeeded
NOTE: Running task 4065 of 4067 (/tmp/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb:do_image_complete)
NOTE: recipe imx6-demo-image-1.0-r0: task do_image_complete: Started
NOTE: recipe imx6-demo-image-1.0-r0: task do_image_complete: Succeeded
NOTE: Running task 4066 of 4067 (/tmp/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb:do_image_qa)
NOTE: recipe imx6-demo-image-1.0-r0: task do_image_qa: Started
NOTE: recipe imx6-demo-image-1.0-r0: task do_image_qa: Succeeded
NOTE: Running noexec task 4067 of 4067 (/tmp/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb:do_build)
NOTE: Tasks Summary: Attempted 4067 tasks of which 2734 didn't need to be rerun and all succeeded.

--------------1A0D05D8EE547437669CEFA5--
