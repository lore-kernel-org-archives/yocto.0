Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 283B5E013FE
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 04:13:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9CD78F81240; Wed, 29 Aug 2012 05:13:01 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id ECECCF8123F;
	Wed, 29 Aug 2012 05:13:00 -0600 (MDT)
Message-ID: <503DF941.40509@mlbassoc.com>
Date: Wed, 29 Aug 2012 05:13:05 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+69FtDmQvB_ex4guS12Xrf0oXhQj-7A4tZ7-PWof4YWWCcRyA@mail.gmail.com>
In-Reply-To: <CA+69FtDmQvB_ex4guS12Xrf0oXhQj-7A4tZ7-PWof4YWWCcRyA@mail.gmail.com>
Subject: Re: Kernel does not emit any boot-up messages
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
X-List-Received-Date: Wed, 29 Aug 2012 11:13:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-08-29 05:04, Hartmut Behrens wrote:
> Hi All,
>
> A newbie question:
>
> After creating a new bsp for an Overo using the yocto-bsp script and modifying some kernel config's using menuconfig, I successfully created and loaded the image
> (core-image-minimal) onto an SD card and booted it.
>
> However, I do not see the kernel emitting any boot messages. Am I forgetting to include some recipes?
>
>
>     OMAP36XX/37XX-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
>     OMAP3 Beagle board + LPDDR/NAND
>     I2C:   ready
>     DRAM:  512 MiB
>     NAND:  512 MiB
>     MMC:   OMAP SD/MMC: 0
>     *** Warning - bad CRC, using default environment
>
>     In:    serial
>     Out:   serial
>     Err:   serial
>     Beagle Rev Ax/Bx
>     No EEPROM on expansion board
>     Die ID #36be00029ff80000016071640201b009
>     Hit any key to stop autoboot:  0
>     SD/MMC found on device 0
>     reading uEnv.txt
>
>     ** Unable to read "uEnv.txt" from mmc 0:1 **
>     reading uImage
>
>     3356520 bytes read
>     Booting from mmc ...
>     ## Booting kernel from Legacy Image at 82000000 ...
>         Image Name:   Linux-3.2.18-rt16-yocto-preempt-
>         Image Type:   ARM Linux Kernel Image (uncompressed)
>         Data Size:    3356456 Bytes = 3.2 MiB
>         Load Address: 80008000
>         Entry Point:  80008000
>         Verifying Checksum ... OK
>         Loading Kernel Image ... OK
>     OK
>
>     Starting kernel ...
>
>     Uncompressing Linux... done, booting the kernel.
>
>     Yocto (Built by Poky 7.0) 1.2+snapshot-20120828
>       ttyO2
>
>     overo login: root
>     root@overo:~# uname -a
>     Linux overo 3.2.18-rt16-yocto-preempt-rt #4 PREEMPT RT Tue Aug 28 22:36:26 SAST 2012 armv7l GNU/Linux

Make sure your [U-Boot] bootargs contain 'console=ttyO2,115200'

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

