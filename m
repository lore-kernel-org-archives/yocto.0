Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30AB1E007BA; Wed,  8 Mar 2017 21:33:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2C79E00519
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 21:33:25 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 77so5609044pgc.0
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 21:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=UtOA+wSihH1N7DB+pJd3Jy+MnRNk+SGyfOk6Jc1CNcw=;
	b=UYp01Hx80RQO+0Ej4oqGVQcMGiQ4a9fXr+TrHYlywGuEKMp7XJWAL/JEx8VjLeEmuk
	nB1lx5scmQAG6zaCX+X0O17KNKaVbGeQLQgHcJrZbQn7vOU3twJ2Jhmx2y8FwECNsseS
	hbjimueR+EZyaVTOZSq+uzwZFF2ug+bSeZhb04fNvbVLbpzIl1uVSUaBrgzINUi7cDr9
	VzmgoLyJ5IWF3NLF5mIOxmpA/fgcjAKCJYsO7lk8uUCmObnlNxsYQy3MhR5sFz6412v+
	oGaT1W/vKvCUUZWrigWYaYNZwUg8gTTg6Si41uQ6MuGnmkDCT/3gUJQk/klSROvZdJX6
	UCEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=UtOA+wSihH1N7DB+pJd3Jy+MnRNk+SGyfOk6Jc1CNcw=;
	b=qZMWi2lO5PDBSf3MwRaj7tTnjr0K6qFNNxFOoXj+FdFchP3twHWmMng/YOzUO/ECMb
	1O0m9lz1hh5bmoeHkci97WzzT041ZDlXnXbw+KfZdsPCoXQtP3Rgu0o8EldaqavWFcYf
	3xS2d8K/szIqHN9LSWCPpYmOcSHKENDRkhe/+VViB29bbQNu0XbyvEz5VH4A9bqCQEfj
	Itb/Hqjnj6M7EBbdqXdxuG2wD5NfpjnXSf01ceHmk3lhYu87mscBViia5/GdQt5on+lZ
	PUvbwLnCShG5QUKQZ+QhQOIQp+ppF004wRQZYpxVYyqSK5KJaanf4guWm7woNz+bDR/B
	KutQ==
X-Gm-Message-State: AMke39lUycAFewxNAW47wl9YGo04WG2Ce4FGK2D5roYM5KPrKZAZN+iHtZxKkw1LnAaaDg==
X-Received: by 10.84.216.17 with SMTP id m17mr14511012pli.158.1489037604709;
	Wed, 08 Mar 2017 21:33:24 -0800 (PST)
Received: from haswell (c-76-102-32-192.hsd1.ca.comcast.net. [76.102.32.192])
	by smtp.gmail.com with ESMTPSA id
	u80sm9407346pgb.32.2017.03.08.21.33.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 21:33:24 -0800 (PST)
Date: Wed, 8 Mar 2017 21:33:18 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170309053318.GA7880@haswell>
References: <20170308173147.21841-1-twoerner@gmail.com>
	<20170308232821.GH19897@bill-the-cat>
	<20170308234200.GA24752@haswell>
	<20170309000105.GI19897@bill-the-cat>
	<20170309005103.GC24752@haswell> <20170309050112.GB4366@linux-uys3>
MIME-Version: 1.0
In-Reply-To: <20170309050112.GB4366@linux-uys3>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: Tom Rini <trini@konsulko.com>, yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] u-boot-rockchip: fix for binutils-2.28
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
X-List-Received-Date: Thu, 09 Mar 2017 05:33:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 17-03-09 00:01:12, Trevor Woerner wrote:
> On Wed 2017-03-08 @ 04:51:04 PM, Khem Raj wrote:
> > On 17-03-08 19:01:05, Tom Rini wrote:
> > > On Wed, Mar 08, 2017 at 03:42:00PM -0800, Khem Raj wrote:
> > > > On 17-03-08 18:28:21, Tom Rini wrote:
> > > > > On Wed, Mar 08, 2017 at 12:31:47PM -0500, Trevor Woerner wrote:
> > > > > 
> > > > > > openembedded-core updated bintuils from 2.27 to 2.28 which causes u-boot to
> > > > > > fail to compile:
> > > > > > 
> > > > > > 	arm-oe-linux-gnueabi-ld.bfd: u-boot: Not enough room for program headers, try linking with -N
> > > > > > 
> > > > > > Building with -N does fix the issue, so this patch simply adds that flag to
> > > > > > the build so it succeeds.
> > > > > > 
> > > > > > This has been build-tested, as well as run-tested on the firefly.
> > > > > > 
> > > > > > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > > > > 
> > > > > Unless there's an immediate need I would ask holding off on this for a
> > > > > bit, I want to track down why this is happening.
> > > > 
> > > > perhaps linker map files from 2.27 and 2.28 binutils will help to
> > > > understand it
> > > 
> > > Nothing is standing out yet:
> > > https://lists.denx.de/pipermail/u-boot/2017-March/283278.html
> > > https://lists.denx.de/pipermail/u-boot/2017-March/283286.html
> > 
> > I see that .data.rel.ro are generated eventhough they are empty they
> > appear to be in final link this section will hold constant variables
> > that gcc sees and needs dynamic relocation, that probably is not
> > relevant to u-boot since its linked stand-alone
> > 
> > Can you try to do just the final link with 2.28 and all built with 2.27
> > and see if it still happens, want to rule out assembler
> 
> Okay.
> 
> Building with 2.28 (and letting it fail), then repeating the final link step
> with 2.27 succeeds!

OK thats good. Can you post the output of readelf -e on final good and bad binaries

> 
> 	$ arm-oe-linux-gnueabi-ld.bfd -v
> 	GNU ld (GNU Binutils) 2.27.0.20160806
> 
> 	$ arm-oe-linux-gnueabi-ld.bfd   -pie  --gc-sections -Bstatic -Ttext 0x00000000 -o u-boot \
> 	  -T u-boot.lds arch/arm/cpu/armv7/start.o --start-group  arch/arm/cpu/built-in.o  \
> 	  arch/arm/cpu/armv7/built-in.o  arch/arm/lib/built-in.o  arch/arm/mach-rockchip/built-in.o \
> 	  board/firefly/firefly-rk3288/built-in.o  cmd/built-in.o  common/built-in.o  disk/built-in.o \
> 	  drivers/built-in.o  drivers/dma/built-in.o  drivers/gpio/built-in.o  drivers/i2c/built-in.o  \
> 	  drivers/mmc/built-in.o  drivers/mtd/built-in.o  drivers/mtd/onenand/built-in.o  \
> 	  drivers/mtd/spi/built-in.o  drivers/net/built-in.o  drivers/net/phy/built-in.o  \
> 	  drivers/pci/built-in.o  drivers/power/built-in.o  drivers/power/battery/built-in.o  \
> 	  drivers/power/domain/built-in.o  drivers/power/fuel_gauge/built-in.o  drivers/power/mfd/built-in.o  \
> 	  drivers/power/pmic/built-in.o  drivers/power/regulator/built-in.o  drivers/serial/built-in.o  \
> 	  drivers/spi/built-in.o  drivers/usb/common/built-in.o  drivers/usb/dwc3/built-in.o  \
> 	  drivers/usb/emul/built-in.o  drivers/usb/eth/built-in.o  drivers/usb/gadget/built-in.o  \
> 	  drivers/usb/gadget/udc/built-in.o  drivers/usb/host/built-in.o  drivers/usb/musb-new/built-in.o  \
> 	  drivers/usb/musb/built-in.o  drivers/usb/phy/built-in.o  drivers/usb/ulpi/built-in.o  fs/built-in.o  \
> 	  lib/built-in.o  net/built-in.o  test/built-in.o  test/dm/built-in.o --end-group \
> 	  arch/arm/lib/eabi_compat.o  arch/arm/lib/lib.a -Map u-boot.map
> 	$ echo $?
> 	0
> 
> Looking at the top couple lines of a diff between the map files of a
> binutils-2.27 build and this frankenbuild (both with SPL, neither with -N)
> gives:
> 
> 	--- 2.27-without-N/u-boot.map   2017-03-08 13:26:26.966147350 -0500
> 	+++ build-with-2.28-link-with-2.27/u-boot.map   2017-03-08 23:48:43.593173398 -0500
> 	@@ -5442,7 +5442,7 @@
> 	  .iplt          0x00000000000301a4        0x0 arch/arm/cpu/armv7/start.o
> 			 0x00000000000301a4                . = ALIGN (0x4)
> 	 
> 	-.rodata         0x00000000000301a8    0x134dc
> 	+.rodata         0x00000000000301a8    0x134b8
> 	  *(SORT(.rodata*))
> 	  .rodata.efi_boot_services
> 			 0x00000000000301a8       0xc8 lib/built-in.o
> 	@@ -5859,4836 +5859,4836 @@
> 	  .rodata.cb_erase.str1.1
> 			 0x0000000000033745       0x60 drivers/usb/gadget/built-in.o
> 	  .rodata.cb_getvar.str1.1
> 	-                0x00000000000337a5       0xfc drivers/usb/gadget/built-in.o
> 	-                                        0x10c (size before relaxing)
> 	+                0x00000000000337a5       0xea drivers/usb/gadget/built-in.o
> 	+                                         0xfa (size before relaxing)

It will be interesting to see what changed in .rodata.cb_getvar.str1.1 section here but I think that might not be the cause of the issue here. Can you go into drivers/usb/gadget/ and do 

readelf -a built-in.o


