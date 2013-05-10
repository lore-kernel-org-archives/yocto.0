Return-Path: <a.sterbini@tiscali.it>
Received: from santino.mail.tiscali.it (santino.mail.tiscali.it
	[213.205.33.245])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 143D9E0051D
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 11:45:34 -0700 (PDT)
Received: from [192.168.1.72] ([94.38.121.206])
	by santino.mail.tiscali.it with 
	id aJlZ1l0054THF2u01JlZ8K; Fri, 10 May 2013 20:45:34 +0200
x-auth-user: a.sterbini@tiscali.it
Message-ID: <518D404D.3010301@tiscali.it>
Date: Fri, 10 May 2013 20:45:33 +0200
From: Andrea Sterbini <a.sterbini@tiscali.it>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130402 Thunderbird/17.0.5
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <518CFDE7.2030606@tiscali.it>
	<5518E211-421C-4289-AB1B-80AA40AF87B3@gmail.com>
	<518D338F.8030008@tiscali.it>
In-Reply-To: <518D338F.8030008@tiscali.it>
Cc: yocto@yoctoproject.org
Subject: Re: Problems building yocto for Xilinx ML507 (with some tentative fixes)
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
X-List-Received-Date: Fri, 10 May 2013 18:45:35 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Found why that error
| 
/home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/u-boot-xilinx/v2012.04.01-r17/temp/run.do_configure.10130: 
line 157: 
/home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/u-boot-xilinx/v2012.04.01-r17/git/board/xilinx/ml507/xparameters.h: 
Not a directory

The u-boot downloaded from github.com/Xilinx has no board/xilinx/ml507/ 
directory but only a board/xilinx/ppc440-generic
Now I will try the original from git://git.denx.de/u-boot.git
(but bitbake seems to have problems fetching it)

A

On Fri 10 May 2013 07:51:11 PM CEST, Andrea Sterbini wrote:
> Not yet.
> I haven't been able to complete the complete run
>
>     bitbake core-image-minimal
>
> I moved to the meta-xilinx master branch
> I am able to complete almost 1600 tasks of 1666 by doing (after the
> git.xilinx.com -> github.com/Xilinx fixes)
>
>     bitbake core-image-minimal -k
>
> The error I get is
>
>> Build Configuration:
>> BB_VERSION        = "1.19.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "Fedora-18"
>> TARGET_SYS        = "powerpc-poky-linux"
>> MACHINE           = "virtex-5-ml507-powerpc-440"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.3+snapshot-20130510"
>> TUNE_FEATURES     = "m32 ppc440 fpu-soft"
>> TARGET_FPU        = "soft"
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "master:88a7b041fbf2583472aa9408a33dd8881223a0c1"
>> toolchain-layer   = "master:cc0067dc0c7ea469057238db6422864d1bce311c"
>> toolchain-layer   = "master:cd5f284730a6430d563443786c409aa6783d4b04"
>> meta-xilinx       = "master:4f1a74f86c402e0810e84ab0588b5de2ca9ccfff"
>> meta-angstrom     = "master:fe82cbd08eef51cd5d5a38c1cd0ed6ce7e57fb18"
> --- a lot of diagnostic messages later
>> ERROR: Function failed: do_configure (see
>> /home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/u-boot-xilinx/v2012.04.01-r17/temp/log.do_configure.10130
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/u-boot-xilinx/v2012.04.01-r17/temp/log.do_configure.10130
>>
>> Log data follows:
>> | DEBUG: Executing python function sysroot_cleansstate
>> | DEBUG: Python function sysroot_cleansstate finished
>> | DEBUG: Executing shell function do_configure
>> | NOTE: Replacing xparameters header to match hardware model
>> |
>> /home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/u-boot-xilinx/v2012.04.01-r17/temp/run.do_configure.10130:
>> line 157:
>> /home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/u-boot-xilinx/v2012.04.01-r17/git/board/xilinx/ml507/xparameters.h:
>> Not a directory
>> | ERROR: Function failed: do_configure (see
>> /home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/u-boot-xilinx/v2012.04.01-r17/temp/log.do_configure.10130
>> for further information)
>> ERROR: Task 79
>> (/home/andrea/src/FPGA/poky/meta-xilinx/recipes-bsp/u-boot/u-boot-xilinx_git.bb,
>> do_configure) failed with exit code '1'
>> ERROR: Function failed: do_compile (see
>> /home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/linux-xilinx/3.3-r02/temp/log.do_compile.10129
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/linux-xilinx/3.3-r02/temp/log.do_compile.10129
>>
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | NOTE: make -j 4 uImage CC=powerpc-poky-linux-gcc
>> LD=powerpc-poky-linux-ld.bfd
>> | scripts/kconfig/conf --silentoldconfig Kconfig
>> | ***
>> | *** Configuration file ".config" not found!
>> | ***
>> | *** Please run some configurator (e.g. "make oldconfig" or
>> | *** "make menuconfig" or "make xconfig").
>> | ***
>> | make[2]: *** [silentoldconfig] Error 1
>> | make[1]: *** [silentoldconfig] Error 2
>> | make: *** No rule to make target `include/config/auto.conf', needed
>> by `include/config/kernel.release'.  Stop.
>> | make: *** Waiting for unfinished jobs....
>> | ERROR: oe_runmake failed
>> | ERROR: Function failed: do_compile (see
>> /home/andrea/src/FPGA/poky/build/tmp/work/virtex_5_ml507_powerpc_440-poky-linux/linux-xilinx/3.3-r02/temp/log.do_compile.10129
>> for further information)
>> ERROR: Task 811
>> (/home/andrea/src/FPGA/poky/meta-xilinx/recipes-kernel/linux/linux-xilinx_3.3.bb,
>> do_compile) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 1662 tasks of which 1660 didn't need
>> to be rerun and 2 failed.
>> Waiting for 0 running tasks to finish:
>>
>> Summary: 2 tasks failed:
>> /home/andrea/src/FPGA/poky/meta-xilinx/recipes-bsp/u-boot/u-boot-xilinx_git.bb,
>> do_configure
>> /home/andrea/src/FPGA/poky/meta-xilinx/recipes-kernel/linux/linux-xilinx_3.3.bb,
>> do_compile
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>
> All the best
> Andrea
>
>
> On Fri 10 May 2013 05:11:48 PM CEST, Elvis Dowson wrote:
>>
>> Hi Andrea,
>>
>> On May 10, 2013, at 6:02 PM, Andrea Sterbini <a.sterbini@tiscali.it>
>> wrote:
>>
>>>
>>> The problems I have found (and someway fixed) are:
>>>
>>> 1) when I do "bitbake meta-toolchain" I get an error complaining
>>> that the compiler is not able to build for powerpc with FPU
>>> Fix: I have changed the ml507 rules to include just the soft FPU
>>
>>
>> I never did get soft-float to work properly with gcc-4.6 or gcc-4.7.
>> I got soft-float to work with gcc-4.5.4.
>>
>> hard float fpu support worked with gcc-4.7.
>>
>> Were you able to boot and login to the command prompt with the
>> generated images ?
>>
>> Best regards,
>>
>> Elvis Dowson
>
>



