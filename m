Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E5A6E006F5
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 06:58:12 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 70697F811F8; Tue, 19 Feb 2013 07:58:11 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 42033F811F0;
	Tue, 19 Feb 2013 07:58:10 -0700 (MST)
Message-ID: <51239308.1010404@mlbassoc.com>
Date: Tue, 19 Feb 2013 07:58:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CABTzgQ4oa8AOZRxAUOQKH0r_gA-28LbT3ZO-MeM0TKcedhufMQ@mail.gmail.com>
In-Reply-To: <CABTzgQ4oa8AOZRxAUOQKH0r_gA-28LbT3ZO-MeM0TKcedhufMQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 19 Feb 2013 14:58:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-19 06:28, Satya Swaroop Damarla wrote:
> Hi,
>
> I want to build a basic image for the Avionic Tamonten board using Yocto. SO, I created a skidata-tamonten.conf in the list of machines based on the beagleboard.conf but I dont
> know what to add for the UBOOT_MACHINE= . I tried my best to use the same "omap_beagle_conf" but it doesnot boot properly. Here is the skidata-tamonten.conf file description
>

Try 'tec_config'

> #@TYPE: Machine
> #@NAME: skidata-tamonten machine
> #@DESCRIPTION: Machine configuration for the Tamonten board
>
> PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
> XSERVER ?= "xserver-xorg \
>             xf86-input-evdev \
>             xf86-input-mouse \
>             xf86-video-omapfb \
>             xf86-input-keyboard"
>
> # Ship all kernel modules by default
> MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>
> # Allow for MMC booting ()
> EXTRA_IMAGEDEPENDS += "u-boot"
>
> # Uncomment the following line to enable the hard floating point abi. Note that
> # this breaks some binary libraries and 3D (neither of which ship with
> # meta-yocto). For maximum compatibility, leave this disabled.
> DEFAULTTUNE ?= "cortexa9thf"
> include conf/machine/include/tune-cortexa9.inc
>
> IMAGE_FSTYPES += "tar.bz2 ext2 ext3"
>
> SERIAL_CONSOLE = "115200 ttyO2"
>
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> PREFERRED_VERSION_linux-yocto ?= "3.2%"
>
> KERNEL_IMAGETYPE = "uImage"
>
> PREFERRED_VERSION_u-boot ?= "v2012.04%"
>
> UBOOT_MACHINE = "???????????????????"
>
> UBOOT_ENTRYPOINT = "0x00008000"
> UBOOT_LOADADDRESS = "0x00008000"
>
> MACHINE_FEATURES = "usbgadget usbhost vfat alsa screen touchscreen keyboard"
>
>
> Greetings & Regards,
> Swaroop
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

