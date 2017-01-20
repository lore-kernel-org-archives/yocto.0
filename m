Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77E5BE00A39; Thu, 19 Jan 2017 18:40:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f194.google.com (mail-yw0-f194.google.com
	[209.85.161.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5619E00A08
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 18:40:34 -0800 (PST)
Received: by mail-yw0-f194.google.com with SMTP id q71so2788563ywg.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 18:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=azccYjiSXbAoTDvPrf7dJjhdW7IPmQKsSz2aebKoatE=;
	b=eDIUyETpjUozHWyUjuo3xGQKFnXDeYjKV2ADk5M1GESBiSGe0+pwk+zpsNDH/c9Saw
	cswQc0ObrjsWY5X8IPtd/PaJVbOsIx45HcAxIpcAritOiXFF7xKFrwomSskQtltqWCMl
	rgkM1zXUTR+MYfLB4tQH/1VEIg25nEAzOr48srTKIKTT06FutyOffXAYi9SUsZuIEL4X
	fPSfUQ63dbgvg6WI+/s6RRyg8uYlIVXwASKeQZveaxoZgzUwndtLgtoEZiPRr7HbTFAW
	sVsGuy/eV0GZ+HoVNwKzkOMjAnwp9gupLyAijxh/uwdmJ0+62GMYGfZOR/fv267wVyNa
	LetA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=azccYjiSXbAoTDvPrf7dJjhdW7IPmQKsSz2aebKoatE=;
	b=P6hNSqa9fnFZnjZHyZMf8NpdEm6Egs0u6T5hcWSr5tC3QIJPtYfP3CpbHVxWLF5Psh
	zRmCkkcdsE3RljVUDmx7kmD9Td9N38SdC2SDtXG5RHj6SRje3RCR7nyYOnDAhvzM4EKf
	N64Ws9YlruuczN2u8XDLXYIpDyqSBW77333rWewCT2qDgJYtxs9bhl/Us8GmGjYFHHfC
	3jaNqOzoUhLXmc43Ckoo4sBOMwFG0lqf8OjV+WvlSupCAgHwZa7LUGw9ejWbGrpuyR6s
	I9FUMG10jlJCaM4u0bNG2ZN6jH0CfflU6ooDlZ3Itd/sRvqUyZ5q5bozALsjxPI1aISp
	U1qA==
X-Gm-Message-State: AIkVDXI+vaB8xFJem3T/92uOFAUb6sIwgv0CLqYKbkIcL/5eg4eOco6EijgivMZNWFTvnyL8cOee8ROeTwGcSA==
X-Received: by 10.129.165.151 with SMTP id c145mr10856020ywh.279.1484880033140;
	Thu, 19 Jan 2017 18:40:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.174.162 with HTTP; Thu, 19 Jan 2017 18:40:32 -0800 (PST)
From: Davis Roman <davis.roman84@gmail.com>
Date: Thu, 19 Jan 2017 21:40:32 -0500
Message-ID: <CACfi_Z0M91BHL5qvHOzsZsucNbPQ+NsN3Dey0V9qwv36Rj--wg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 20 Jan 2017 07:15:34 -0800
Subject: u-boot hangs when attaching an mtd to ubi using spinor flash, MX25L51245G
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
X-List-Received-Date: Fri, 20 Jan 2017 02:40:36 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I'm seeing unusual behavior when u-boot attempts to attach an mtd
partition to a ubi device using a spi-nor flash (MX25L51245G).

When the mtd partition size is set to less than 15MiB, the attach
works, however when the mtd partition size is increased to 16MB or
greater, u-boot displays the message"ubi0: attaching mtd1" and hangs
indefinately.

I've searched online but I have yet to
find anything that might shed some light on this issue.

Here are the steps to reproduce:

$ git clone https://github.com/linux4sam/u-boot-at91.git -b u-boot-2016.03-at91

$ cd u-boot-at91/

Patch the following config file: include/configs/at91sam9x5ek_spiflash_defconfig

--- include/configs/at91sam9x5ek_spiflash_defconfig 2017-01-19
19:08:50.257475024 -0500
+++ include/configs/at91sam9x5ek_spiflash_defconfig 2017-01-19
19:12:37.045475024 -0500
@@ -1,7 +1,6 @@
CONFIG_ARM=y
CONFIG_ARCH_AT91=y
CONFIG_TARGET_AT91SAM9X5EK=y
-CONFIG_SPL=y
CONFIG_SYS_EXTRA_OPTIONS="AT91SAM9X5,SYS_USE_SPIFLASH"
CONFIG_SYS_PROMPT="U-Boot> "
# CONFIG_CMD_IMI is not set
@@ -10,4 +9,7 @@ CONFIG_SYS_PROMPT="U-Boot> "
# CONFIG_CMD_FPGA is not set
# CONFIG_CMD_SETEXPR is not set
CONFIG_SPI_FLASH=y
-CONFIG_SPI_FLASH_ATMEL=y
+CONFIG_SPI_FLASH_ABOVE_16MB=y
+CONFIG_SPI_FLASH_4B_OPCODES=y
+CONFIG_SPI_FLASH_MACRONIX=y
+CONFIG_SPI_FLASH_MTD=y

$ make at91sam9x5ek_spiflash_defconfig

$ make

Copy u-boot.bin onto the board

1) The following is the case where the rootfs mtd partition attaches
successfully and it's value is set to 15MB

U-Boot> setenv mtdparts
'mtdparts=spi32766.0:64k(bootstrap),512k(uboot),15M(rootfs)'
U-Boot> setenv mtdids 'nor0=spi32766.0'
U-Boot> sf probe 0
U-Boot> ubi part rootfs
SF: Detected MX25L51235F with page size 256 Bytes, erase size 64 KiB,
total 64 MiB
ubi0: attaching mtd1
ubi0: scanning is finished
ubi0: attached mtd1 (name "mtd=2", size 15 MiB)
ubi0: PEB size: 65536 bytes (64 KiB), LEB size: 65408 bytes
ubi0: min./max. I/O unit sizes: 1/256, sub-page size 1
ubi0: VID header offset: 64 (aligned 64), data offset: 128
ubi0: good PEBs: 240, bad PEBs: 0, corrupted PEBs: 0
ubi0: user volume: 0, internal volumes: 1, max. volumes count: 128
ubi0: max/mean erase counter: 2/1, WL threshold: 4096, image sequence
number: 943000472
ubi0: available PEBs: 236, total reserved PEBs: 4, PEBs reserved for
bad PEB handling: 0
U-Boot>

2) The following is the case where the rootfs mtd partition fails to
attach. It's size is set to 16MB

U-Boot> setenv mtdparts
'mtdparts=spi32766.0:64k(bootstrap),512k(uboot),16M(rootfs)'
U-Boot> setenv mtdids 'nor0=spi32766.0'
U-Boot> sf probe 0
U-Boot> ubi part rootfs
SF: Detected MX25L51235F with page size 256 Bytes, erase size 64 KiB,
total 64 MiB
ubi0: attaching mtd1


At this point, u-boot is now hung and the only difference between case
1 and case 2 is the size of the rootfs mtd partition changed from 15MB
to 16MB

I would greatly appreciate any ideas. Unfortunately at this point, I'm
stuck on this issue.

Thank you,

Davis

