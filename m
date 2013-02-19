Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEEACE006F5
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 10:36:37 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 76DE5F81219; Tue, 19 Feb 2013 11:36:37 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 19012F811F7;
	Tue, 19 Feb 2013 11:36:36 -0700 (MST)
Message-ID: <5123C63A.8080806@mlbassoc.com>
Date: Tue, 19 Feb 2013 11:36:42 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
References: <CABTzgQ4oa8AOZRxAUOQKH0r_gA-28LbT3ZO-MeM0TKcedhufMQ@mail.gmail.com>
	<51239308.1010404@mlbassoc.com>
	<CABTzgQ5awWZeW+WeLBG-MAPn5650MbqoJ_UFtZ6eo6vRrMnViw@mail.gmail.com>
In-Reply-To: <CABTzgQ5awWZeW+WeLBG-MAPn5650MbqoJ_UFtZ6eo6vRrMnViw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Avionic Tamonten Board - Uboot problem
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Feb 2013 18:36:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-19 09:02, Satya Swaroop Damarla wrote:
> Unfortunately "tec_config" didnot work. Here is the error message

I think you need a newer U-Boot to get the support for this board.
Try
   PREFERRED_VERSION_u-boot ?= "v2012.10%"
or even
   PREFERRED_VERSION_u-boot ?= "v2013.01%"

> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8 CROSS_COMPILE=arm-poky-linux-gnueabi- CC=arm-poky-linux-gnueabi-gcc  --sysroot=/home/build/yocto/poky/buildTamonten/tmp/sysroots/skidata-tamonten tec_config
> | make: *** No rule to make target `tec_config'.  Stop.
> | make: *** [tec_config] Error 1
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (see
> /home/build/yocto/poky/buildTamonten/tmp/work/skidata_tamonten-poky-linux-gnueabi/u-boot-v2012.04.01+git3+415d386877df49eb051b85ef74fa59a16dc17c7d-r2/temp/log.do_compile.21665 for
> further information)
> ERROR: Task 69 (/home/build/yocto/poky/meta/recipes-bsp/u-boot/u-boot_2012.04.01.bb <http://u-boot_2012.04.01.bb>, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3421 tasks of which 319 didn't need to be rerun and 1 failed.
>
>
>
>
> On Tue, Feb 19, 2013 at 3:58 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2013-02-19 06:28, Satya Swaroop Damarla wrote:
>
>         Hi,
>
>         I want to build a basic image for the Avionic Tamonten board using Yocto. SO, I created a skidata-tamonten.conf in the list of machines based on the beagleboard.conf but I dont
>         know what to add for the UBOOT_MACHINE= . I tried my best to use the same "omap_beagle_conf" but it doesnot boot properly. Here is the skidata-tamonten.conf file description
>
>
>     Try 'tec_config'
>
>         #@TYPE: Machine
>         #@NAME: skidata-tamonten machine
>         #@DESCRIPTION: Machine configuration for the Tamonten board
>
>         PREFERRED_PROVIDER_virtual/__xserver ?= "xserver-xorg"
>         XSERVER ?= "xserver-xorg \
>                      xf86-input-evdev \
>                      xf86-input-mouse \
>                      xf86-video-omapfb \
>                      xf86-input-keyboard"
>
>         # Ship all kernel modules by default
>         MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>
>         # Allow for MMC booting ()
>         EXTRA_IMAGEDEPENDS += "u-boot"
>
>         # Uncomment the following line to enable the hard floating point abi. Note that
>         # this breaks some binary libraries and 3D (neither of which ship with
>         # meta-yocto). For maximum compatibility, leave this disabled.
>         DEFAULTTUNE ?= "cortexa9thf"
>         include conf/machine/include/tune-__cortexa9.inc
>
>         IMAGE_FSTYPES += "tar.bz2 ext2 ext3"
>
>         SERIAL_CONSOLE = "115200 ttyO2"
>
>         PREFERRED_PROVIDER_virtual/__kernel ?= "linux-yocto"
>         PREFERRED_VERSION_linux-yocto ?= "3.2%"
>
>         KERNEL_IMAGETYPE = "uImage"
>
>         PREFERRED_VERSION_u-boot ?= "v2012.04%"
>
>         UBOOT_MACHINE = "???????????????????"
>
>         UBOOT_ENTRYPOINT = "0x00008000"
>         UBOOT_LOADADDRESS = "0x00008000"
>
>         MACHINE_FEATURES = "usbgadget usbhost vfat alsa screen touchscreen keyboard"
>
>
>         Greetings & Regards,
>         Swaroop
>
>
>
>         _________________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>     --
>     ------------------------------__------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------__------------------------------
>     _________________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

