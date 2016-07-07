Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 335DEE00C40; Wed,  6 Jul 2016 23:54:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 365 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jul 2016 23:54:29 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9F38E00C1D
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 23:54:29 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3rlSr66Zrlz3hjRJ;
	Thu,  7 Jul 2016 08:48:22 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3rlSr61zbbzvknJ;
	Thu,  7 Jul 2016 08:48:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id djuielIpiBg1; Thu,  7 Jul 2016 08:48:19 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Thu,  7 Jul 2016 08:48:19 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id A1E2E4540664;
	Thu,  7 Jul 2016 08:48:19 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id R4JMxLqOgrln; Thu,  7 Jul 2016 08:48:16 +0200 (CEST)
Received: from [192.168.178.50] (stefano-MacBookPro.fritz.box [192.168.178.50])
	by babic.homelinux.org (Postfix) with ESMTPS id 69D3745403FD;
	Thu,  7 Jul 2016 08:48:16 +0200 (CEST)
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Chris Hallinan <challinan@gmail.com>
References: <alpine.LFD.2.20.1607061409100.2101@localhost.localdomain>
	<CAME0jBQXFY7hvuZZ2Db3M_7kku7=0-b_UU6W9CBY17TVpym50w@mail.gmail.com>
	<alpine.LFD.2.20.1607061508290.3259@localhost.localdomain>
From: Stefano Babic <sbabic@denx.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <577DFB30.8050208@denx.de>
Date: Thu, 7 Jul 2016 08:48:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1607061508290.3259@localhost.localdomain>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to tftp download a newer u-boot into RAM and simply execute it?
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
X-List-Received-Date: Thu, 07 Jul 2016 06:54:36 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Robert,

On 06/07/2016 21:14, Robert P. J. Day wrote:
> On Wed, 6 Jul 2016, Chris Hallinan wrote:
> 
>> Hi Robert,
>> That's not old, that's ancient in dog^HU-Boot years - LOL!
>>
>> It's been quite a while since I looked at a PPC U-Boot, but at a
>> minimum, you will need to link U-Boot to a RAM'able address.  By
>> default, I'm sure the recipe links it for the NOR addresses.  When
>> it boots from NOR it immediately relocates itself to a RAM address
>> from NOR, if memory serves.  Notice it's crashing right away, on the
>> second instruction.
> 
>   i came to that conclusion ... i looked at the u-boot.srec file that
> was generated and, sure enough:
> 
> S00E0000752D626F6F742E73726563C0
> S315FE00000042424242424242420606060606060606AC
> S315FE00001000000000000000000000000000000000DC
> S315FE000020A0A0A0A0A0A0A0A06060606060606060CC
> ... snip ...
> 
> so definitely linked for flashing to beginning of NOR flash at
> 0xFE000000. so i suspect i could just flash it and reset and it would
> work just fine. and never mind, i found the answer i was after:
> 

U-Boot is linked at the address set with CONFIG_SYS_TEXT_BASE in
include/configs/MPC8315ERDB.h. You can try to change this.

It is not only a problem of the linker address. U-Boot sets the RAM
controller and this should be skipped with some other basic part (PLL,
and so on) if you run from RAM.

However, I see the board has already a setup.

#if CONFIG_SYS_MONITOR_BASE < CONFIG_SYS_FLASH_BASE && \
        !defined(CONFIG_NAND_SPL)
#define CONFIG_SYS_RAMBOOT
#else
#undef CONFIG_SYS_RAMBOOT
#endif

You could set CONFIG_SYS_MONITOR_BASE in RAM and SYS_RAMBOOT should be
automatically set. This change the bootloader and the RAM controller is
not set up again.

However, as mentioned in the website, you are not exactly testing the
new boot loader, you are testing another bootloader. If the new
bootloader has issues by setting the RAM controller, for example, it
runs when you load from RAM and it will not run later...


> http://www.denx.de/wiki/view/DULG/CanUBootBeConfiguredSuchThatItCanBeStartedInRAM
> 
> i was hoodwinked into thinking it would be easy because i found this
> page:
> 
> https://blackfin.uclinux.org/doku.php?id=bootloaders:u-boot:tftp_loading_files
> 
> of course, that page is for the blackfin, precisely one of the
> platforms the denx page says it *can* work for. grrrrrrrrr.
> 
>   so, before i commit myself to this, who's the PPC/MPC8315E-RDB
> expert on this list who can confirm a stock u-boot should flash to NOR
> and just plain run?

I have not the board and I cannot test it - if you have a JTAG debugger,
you are always able to restore the board in case something goes wrong.

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

