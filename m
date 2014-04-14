Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20BE1E00B84
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 04:44:16 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 45E9BF811E5; Mon, 14 Apr 2014 05:44:16 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F3878F81188;
	Mon, 14 Apr 2014 05:44:14 -0600 (MDT)
Message-ID: <534BCA14.7000603@mlbassoc.com>
Date: Mon, 14 Apr 2014 05:44:20 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
References: <534A54F0.5020203@mlbassoc.com>	
	<1397471746.9306.9.camel@firebird.rb.intel.com>
	<1397475506.9306.10.camel@firebird.rb.intel.com>
In-Reply-To: <1397475506.9306.10.camel@firebird.rb.intel.com>
X-Enigmail-Version: 1.5.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Mon, 14 Apr 2014 11:44:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2014-04-14 05:38, Stanacar, StefanX wrote:
> 
> 
> 
> On Mon, 2014-04-14 at 10:35 +0000, Stanacar, StefanX wrote:
>> Hi Gary,
>>
>> On Sun, 2014-04-13 at 03:12 -0600, Gary Thomas wrote:
>>> I just tried building (core-image-sato) for my BeagleBoneBlack
>>> using the latest Poky/Yocto master:
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.23.0"
>>> BUILD_SYS         = "i686-linux"
>>> NATIVELSBSTRING   = "Fedora-13"
>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>> MACHINE           = "beaglebone"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "1.6+snapshot-20140411"
>>> TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa8"
>>> TARGET_FPU        = "vfp-neon"
>>> meta
>>> meta-yocto
>>> meta-yocto-bsp    = "master:863cc7483f5ee43189537940de8ee5c0964d24cc"
>>>
>>> This built the kernel using SRCREV 928d7b2dda
>>>
>>> I followed the bring-up instructions from README.hadware and the
>>> boot failed to even start the kernel.  Here's what I see:
>>>
>>> =============================== boot log =========================================
>>> U-Boot 2013.07 (Apr 11 2014 - 15:03:04)
>>>
>>> I2C:   ready
>>> DRAM:  512 MiB
>>> WARNING: Caches not enabled
>>> NAND:  0 MiB
>>> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
>>> *** Warning - readenv() failed, using default environment
>>>
>>> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
>>> musb-hdrc: MHDRC RTL version 2.0
>>> musb-hdrc: setup fifo_mode 4
>>> musb-hdrc: 28/31 max ep, 16384/16384 memory
>>> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
>>> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
>>> musb-hdrc: MHDRC RTL version 2.0
>>> musb-hdrc: setup fifo_mode 4
>>> musb-hdrc: 28/31 max ep, 16384/16384 memory
>>> USB Host mode controller at 47401800 using PIO, IRQ 0
>>> Net:   <ethaddr> not set. Validating first E-fuse MAC
>>> Phy not found
>>> PHY reset timed out
>>> cpsw, usb_ether
>>> Hit any key to stop autoboot:  0
>>> mmc0 is current device
>>> SD/MMC found on device 0
>>> reading uEnv.txt
>>> ** Unable to read file uEnv.txt **
>>> 4981688 bytes read in 613 ms (7.7 MiB/s)
>>> 29192 bytes read in 46 ms (619.1 KiB/s)
>>> Booting from mmc ...
>>> ## Booting kernel from Legacy Image at 80200000 ...
>>>    Image Name:   Linux-3.14.0-yocto-standard
>>>    Image Type:   ARM Linux Kernel Image (uncompressed)
>>>    Data Size:    4981624 Bytes = 4.8 MiB
>>>    Load Address: 80008000
>>>    Entry Point:  80008000
>>>    Verifying Checksum ... OK
>>> ## Flattened Device Tree blob at 80f80000
>>>    Booting using the fdt blob at 0x80f80000
>>>    Loading Kernel Image ... OK
>>>    Using Device Tree in place at 80f80000, end 80f8a207
>>>
>>> Starting kernel ...
>>> ==================================================================================
>>>
>>> Any ideas what I've done wrong?
>>>
>>
>> This is strange because last week I booted myself a BBB.
>> This actually looks like the serial doesn't output, perhaps the kernel
>> does boot. I wonder if console is right for the kernel cmdline.
>> On Friday I built and booted from
>> master:db80f796e78746014a0f9497638e5c6fd2953ef0 which is a bit earlier
>> that what you have but basically the same thing (updates for kernel
>> which should fix things, I've tested with SRCREV_meta_pn-linux-yocto =
>> "${AUTOREV}" those before they entered in master because I didn't had
>> HDMI output on my master commit).
>>
>> I'm gonna rebuild from daisy tip and see what happens.
>>
> 
> I just did a clean build from daisy and it worked fine...
> Could you try again? And perhaps -ccleansstate for linux-yocto? I'm
> thinking that somehow it didn't picked up the new console= that changed
> in the machine definition.

I'll try daisy, but my build/test was clean from the mentioned master rev.

I checked the console setup in U-Boot:
  console=ttyO0,115200n8
which I think is correct.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

