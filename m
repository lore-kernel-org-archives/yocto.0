Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9A020E01684
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 11:20:50 -0700 (PDT)
Received: (qmail 15015 invoked by uid 1003); 17 Oct 2013 18:20:49 -0000
Received: from unknown (HELO ?192.168.1.103?) (philip@opensdr.com@108.44.88.68)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	17 Oct 2013 18:20:49 -0000
Message-ID: <52602A80.4090508@balister.org>
Date: Thu, 17 Oct 2013 14:20:48 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nz_dzPR9L2i39BXCSTHgWK+kLGs6ie-y806rBi-VMTcSw@mail.gmail.com>
	<6C2F2091-CD52-4D83-AE39-80B5B5E32C62@gmail.com>
	<CANwz6nztSJxx5NmTqy_D2jSDgKeFRT0y7Jj4Z6QjenCjTbvZug@mail.gmail.com>
	<CANwz6nzqUicXUPJR=4VFTuApCDv8F4ij-pRDsveDAoiU=-q19Q@mail.gmail.com>
In-Reply-To: <CANwz6nzqUicXUPJR=4VFTuApCDv8F4ij-pRDsveDAoiU=-q19Q@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-xilinx
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
X-List-Received-Date: Thu, 17 Oct 2013 18:20:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

This is may be better asked on the meta-xilinx list:

https://lists.yoctoproject.org/listinfo/meta-xilinx

Philip

On 10/17/2013 11:05 AM, Edward Vidal wrote:
> Hello,
> I got the following error.
> DEBUG: Executing shell function do_compile
> NOTE: make -C
> /home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zynq7/usr/src/kernel/tools/perf
> O=/home/vidal/POKY/build101613_zedboard/poky/build/tmp/work/zedboard_zynq7-poky-linux-gnueabi/perf/1.0-r8/perf-1.0
> CROSS_COMPILE=arm-poky-linux-gnueabi- ARCH=arm
> CC=arm-poky-linux-gnueabi-gcc  -march=armv7-a -mthumb-interwork
> -mfloat-abi=softfp -mfpu=neon
> --sysroot=/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zynq7
> AR=arm-poky-linux-gnueabi-ar perfexecdir=/usr/lib/perf NO_GTK2=1 NO_DWARF=1
> prefix=/usr bindir=/usr/bin sharedir=/usr/share sysconfdir=/etc
> perfexecdir=/usr/lib/perf/perf-core ETC_PERFCONFIG=../etc sharedir=share
> mandir=share/man infodir=share/info all
>     CHK -fstack-protector-all
>     CHK -Wstack-protector
>     CHK -Wvolatile-register-var
>     CHK bionic
>     CHK libelf
>     CHK libdw
> make: Entering directory
> `/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zynq7/usr/src/kernel/tools/perf'
> Makefile:554: No libdw.h found or old libdw.h found or elfutils is older
> than 0.138, disables dwarf support. Please install new
> elfutils-devel/libdw-dev
>     CHK libunwind
> Makefile:570: No libunwind found, disabling post unwind support. Please
> install libunwind-dev[el] >= 0.99
> I installed libunwind-devel-1.0.1-5.fc18.x86_64
> Is this a zedboard-zynq specific error?  Is this an error in building the
> kernel?
>  I did not see this when building for the beagleboard. I installed
> libunwind-devel-1.0.1-5.fc18.x86_64
> I removed the package libunwind-devel-1.0.1-5.fc18.x86_64 since nothing
> improved with the package installed.
> I am in the process of running a clean build after  all repository were
> loaded in clean folder.
> I appreciate any and all help.
> Regards
> 
> 
> On Wed, Oct 16, 2013 at 5:06 PM, Edward Vidal <vidal.develone@gmail.com>wrote:
> 
>> Hello Khem,
>> Thanks for the help after modifying my local.conf
>> MACHINE ?= "zedboard-zynq7"
>> My build "MACHINE=zedboard-zynq7 bitbake core-image-sato" is in the
>> process now 295 of 5076 tasks
>> should take a short time to complete.
>> regards
>>
>>
>>
>> On Wed, Oct 16, 2013 at 4:45 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>>
>>> On Oct 16, 2013, at 2:57 PM, Edward Vidal <vidal.develone@gmail.com>
>>> wrote:
>>>
>>>> Hello,
>>>> I built a zedboard core-image-sato on 09/21/13 with meta-xilinx at that
>>> time I had the following folders.
>>>>
>>>> meta-kc705
>>>> meta-zc702
>>>> meta-zedboard
>>>>
>>>> Build Configuration:
>>>> BB_VERSION        = "1.19.1"
>>>> BUILD_SYS         = "x86_64-linux"
>>>> NATIVELSBSTRING   = "Fedora-18"
>>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>>> MACHINE           = "zedboard"
>>>> DISTRO            = "poky"
>>>> DISTRO_VERSION    = "1.4+snapshot-20130921"
>>>> TUNE_FEATURES     = " armv7a vfp neon zynq"
>>>> TARGET_FPU        = "vfp-neon"
>>>> meta
>>>> meta-yocto        =
>>> "(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
>>>> meta-xilinx
>>>> meta-kc705
>>>> meta-zc702
>>>> meta-zedboard     = "master:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
>>>> meta-yocto-bsp    =
>>> "(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
>>>>
>>>> With the dora release I did a new clone of git://
>>> git.yoctoproject.org/meta-xilinx
>>>> now I do not see
>>>> meta-kc705
>>>> meta-zc702
>>>> meta-zedboard
>>>>
>>>> When I execute MACHINE=zedboard bitbake core-image-sato
>>>> ERROR:  OE-core's config sanity checker detected a potential
>>> misconfiguration.
>>>>     Either fix the cause of this error or at your own risk disable the
>>> checker (see sanity.conf).
>>>>     Following is the list of potential problems / advisories:
>>>>
>>>>     Please set a valid MACHINE in your local.conf or environment
>>>>
>>>> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>>>> In my local.conf I have the following.
>>>>
>>>> MACHINE ?= "zedboard"
>>>>
>>>> bblayers.conf
>>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>>>> # changes incompatibly
>>>> LCONF_VERSION = "6"
>>>>
>>>> BBPATH = "${TOPDIR}"
>>>> BBFILES ?= ""
>>>>
>>>> BBLAYERS ?= " \
>>>>   /home/vidal/POKY/build101613_zedboard/poky/meta \
>>>>   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
>>>>   /home/vidal/POKY/build101613_zedboard/poky/meta-xilinx \
>>>>   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \
>>>>   "
>>>> BBLAYERS_NON_REMOVABLE ?= " \
>>>>   /home/vidal/POKY/build101613_zedboard/poky/meta \
>>>>   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
>>>>   "
>>>> Any help will be appreciated.
>>>> Regards
>>>
>>> it seems like layer went thru some restructuring e.g. see
>>> commit d9617006376d73e37f1db17857ee06c24e6b7c03
>>> Author: Nathan Rossi <nathan.rossi@xilinx.com>
>>> Date:   Fri Aug 2 12:41:14 2013 +1000
>>>
>>>     meta-*: Remove deprecated sublayers
>>>
>>>     * The machines supported in the sublayer BSPs are now supported in
>>> the base
>>>       meta-xilinx layer, these sublayers are no longer required.
>>>     * Relevant documentation has also been relocated into
>>> meta-xilinx/docs/*.
>>>
>>>
>>>
>>> So may be zedboard -> zedboard-zynq7
>>>
>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

