Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59953E006CC
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 05:16:01 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0EEA7F8122B; Wed, 20 Feb 2013 06:16:01 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B2ED4F81226;
	Wed, 20 Feb 2013 06:15:59 -0700 (MST)
Message-ID: <5124CC97.5010105@mlbassoc.com>
Date: Wed, 20 Feb 2013 06:16:07 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
References: <CABTzgQ4oa8AOZRxAUOQKH0r_gA-28LbT3ZO-MeM0TKcedhufMQ@mail.gmail.com>
	<51239308.1010404@mlbassoc.com>
	<CABTzgQ5awWZeW+WeLBG-MAPn5650MbqoJ_UFtZ6eo6vRrMnViw@mail.gmail.com>
	<5123C63A.8080806@mlbassoc.com>
	<CABTzgQ4EAdhgKh5uD8BnHsdbXFPbxubm5G_1TQ4dUhLgPOOOYQ@mail.gmail.com>
In-Reply-To: <CABTzgQ4EAdhgKh5uD8BnHsdbXFPbxubm5G_1TQ4dUhLgPOOOYQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 20 Feb 2013 13:16:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-20 00:21, Satya Swaroop Damarla wrote:
> Hi Gary,
>
> I think you are right that we need may be the new uboot version but it is not available in the uboot directory of the poky and i get the follwoing warning and the simulation is
> ending like previously....
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version v2013.01% of u-boot not available (for item u-boot)
> NOTE: versions of u-boot available: v2011.03+git26+19b54a701811220221fc4d5089a2bb18892018ca v2011.06+git27+b1af6f532e0d348b153d5c148369229d24af361a
> v2012.04.01+git25+415d386877df49eb051b85ef74fa59a16dc17c7d
> NOTE: preferred version v2013.01% of u-boot not available (for item u-boot)
> NOTE: versions of u-boot available: v2011.03+git26+19b54a701811220221fc4d5089a2bb18892018ca v2011.06+git27+b1af6f532e0d348b153d5c148369229d24af361a
> v2012.04.01+git25+415d386877df49eb051b85ef74fa59a16dc17c7d
> NOTE: preferred version v2013.01% of u-boot not available (for item u-boot-dev)
> NOTE: versions of u-boot available: v2011.03+git26+19b54a701811220221fc4d5089a2bb18892018ca v2011.06+git27+b1af6f532e0d348b153d5c148369229d24af361a
> v2012.04.01+git25+415d386877df49eb051b85ef74fa59a16dc17c7d
>
> May be you can tell me how to add the new uboot file

The easiest way is to just add the meta-ti layer - they have
a recipe for 2013.01.

n.b. It's common courtesy to keep such discussions on the mailing list so
that everyone benefits from the answers.


> On Tue, Feb 19, 2013 at 7:36 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2013-02-19 09:02, Satya Swaroop Damarla wrote:
>
>         Unfortunately "tec_config" didnot work. Here is the error message
>
>
>     I think you need a newer U-Boot to get the support for this board.
>     Try
>        PREFERRED_VERSION_u-boot ?= "v2012.10%"
>     or even
>        PREFERRED_VERSION_u-boot ?= "v2013.01%"
>
>         Log data follows:
>         | DEBUG: Executing shell function do_compile
>         | NOTE: make -j 8 CROSS_COMPILE=arm-poky-linux-__gnueabi- CC=arm-poky-linux-gnueabi-gcc  --sysroot=/home/build/yocto/__poky/buildTamonten/tmp/__sysroots/skidata-tamonten
>         tec_config
>         | make: *** No rule to make target `tec_config'.  Stop.
>         | make: *** [tec_config] Error 1
>         | ERROR: oe_runmake failed
>         | ERROR: Function failed: do_compile (see
>         /home/build/yocto/poky/__buildTamonten/tmp/work/__skidata_tamonten-poky-linux-__gnueabi/u-boot-v2012.04.01+__git3+__415d386877df49eb051b85ef74fa59__a16dc17c7d-r2/temp/log.do___compile.21665
>         for
>         further information)
>         ERROR: Task 69 (/home/build/yocto/poky/meta/__recipes-bsp/u-boot/u-boot___2012.04.01.bb <http://u-boot_2012.04.01.bb> <http://u-boot_2012.04.01.bb>, do_compile) failed with
>         exit code '1'
>
>         NOTE: Tasks Summary: Attempted 3421 tasks of which 319 didn't need to be rerun and 1 failed.
>
>
>
>
>         On Tue, Feb 19, 2013 at 3:58 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> wrote:
>
>              On 2013-02-19 06:28, Satya Swaroop Damarla wrote:
>
>                  Hi,
>
>                  I want to build a basic image for the Avionic Tamonten board using Yocto. SO, I created a skidata-tamonten.conf in the list of machines based on the
>         beagleboard.conf but I dont
>                  know what to add for the UBOOT_MACHINE= . I tried my best to use the same "omap_beagle_conf" but it doesnot boot properly. Here is the skidata-tamonten.conf file
>         description
>
>
>              Try 'tec_config'
>
>                  #@TYPE: Machine
>                  #@NAME: skidata-tamonten machine
>                  #@DESCRIPTION: Machine configuration for the Tamonten board
>
>                  PREFERRED_PROVIDER_virtual/____xserver ?= "xserver-xorg"
>
>                  XSERVER ?= "xserver-xorg \
>                               xf86-input-evdev \
>                               xf86-input-mouse \
>                               xf86-video-omapfb \
>                               xf86-input-keyboard"
>
>                  # Ship all kernel modules by default
>                  MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>
>                  # Allow for MMC booting ()
>                  EXTRA_IMAGEDEPENDS += "u-boot"
>
>                  # Uncomment the following line to enable the hard floating point abi. Note that
>                  # this breaks some binary libraries and 3D (neither of which ship with
>                  # meta-yocto). For maximum compatibility, leave this disabled.
>                  DEFAULTTUNE ?= "cortexa9thf"
>                  include conf/machine/include/tune-____cortexa9.inc
>
>
>                  IMAGE_FSTYPES += "tar.bz2 ext2 ext3"
>
>                  SERIAL_CONSOLE = "115200 ttyO2"
>
>                  PREFERRED_PROVIDER_virtual/____kernel ?= "linux-yocto"
>
>                  PREFERRED_VERSION_linux-yocto ?= "3.2%"
>
>                  KERNEL_IMAGETYPE = "uImage"
>
>                  PREFERRED_VERSION_u-boot ?= "v2012.04%"
>
>                  UBOOT_MACHINE = "???????????????????"
>
>                  UBOOT_ENTRYPOINT = "0x00008000"
>                  UBOOT_LOADADDRESS = "0x00008000"
>
>                  MACHINE_FEATURES = "usbgadget usbhost vfat alsa screen touchscreen keyboard"
>
>
>                  Greetings & Regards,
>                  Swaroop
>
>
>
>                  ___________________________________________________
>                  yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>         https://lists.yoctoproject.____org/listinfo/yocto <https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>>
>
>
>              --
>              ------------------------------____----------------------------__--
>
>              Gary Thomas                 |  Consulting for the
>              MLB Associates              |    Embedded world
>              ------------------------------____----------------------------__--
>              ___________________________________________________
>              yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>         https://lists.yoctoproject.____org/listinfo/yocto <https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>>
>
>
>
>     --
>     ------------------------------__------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------__------------------------------
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

