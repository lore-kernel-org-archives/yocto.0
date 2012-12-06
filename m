Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD682E00348
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 07:42:24 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fa1so4470692pad.35
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2012 07:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=1IT+uBuJ2TOILuFfXeCDxSpNlesWnwPrKECl4kCHqHw=;
	b=b4oOF8rxLxeNzHn3pTnXjmpt7YdIiFsu5BwqR1wfxiKe0D8jKUw6Fv8kMZXxdC8zNr
	G+yh4jvyFwewMa5519HgbPMGIROM/sY8dfJBGBAvZTLTHysKjiofUNSvAof5USPNOfXj
	fJXyX/IB5ssqoyXp0jRQ+a4ucN+3uuZCwxWhekJWMt/zIAXdWiyuh391uFmwMU+bVN3Y
	bRn3vYOuLmlfHEiBXtf95umidVGHvanAeyTWPHQU5O+9Rh3fXwPtGbSIU0lfkiPgjOSB
	8SfO82WqsX4Qfmjb+hua40WfP24h4Aj5C/m8+k6Q+v28rUj6VkjLB5vWJOD3U4CinE+e
	80Ww==
Received: by 10.66.78.231 with SMTP id e7mr5016966pax.44.1354808544651;
	Thu, 06 Dec 2012 07:42:24 -0800 (PST)
Received: from [192.168.1.100] ([94.205.107.244])
	by mx.google.com with ESMTPS id kb3sm4969438pbc.27.2012.12.06.07.42.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 06 Dec 2012 07:42:24 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <1354798661905184500@schweigstill.de>
Date: Thu, 6 Dec 2012 19:42:19 +0400
Message-Id: <F11FDE5B-6879-4B95-851B-E52704224A33@gmail.com>
References: <1354713685799908500@schweigstill.de>
	<50BF8FD4.2070207@balister.org>
	<1354798661905184500@schweigstill.de>
To: Andreas Schweigstill <andreas@schweigstill.de>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: mail list for Xilinx Zynq platform?
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
X-List-Received-Date: Thu, 06 Dec 2012 15:42:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

On Dec 6, 2012, at 4:57 PM, Andreas Schweigstill =
<andreas@schweigstill.de> wrote:

> After changing the order of BBLAYERS in build/conf/local.conf to meta, =
meta-zynq,
> meta-yocto, meta-yocto-bsp and using Hob to select MACHINE=3Dzynq-zc702,=

> base image=3Dzc702-proto-image everything works fine. Now I get a =
proper toolchain
> for Cortex A9 and a kernel named zynq-zc702 =
3.5.0-14.3-build1-yocto-standard
> which is properly running on my ZC702 board.

I don't add meta-yocto-bsp to my bblayers configuration.=20

> I haven't built a BOOT.BIN file with Yocto based U-Boot yet. Instead =
I'm using
> U-Boot from Petalinux 12.9 which is configured to use the QSPI Flash =
to store its
> environment.
>=20
> Currently I boot from QSPI Flash, load kernel und DTB files via TFTP =
and use a
> root filesystem stored on a SD card. ;-)

If you want to build your own version of BOOT.bin, its quite simple. =
Just take the=20
u-boot.elf file, and use SDK to create a simple zynq_fsbl project. =46rom =
that create
the boot image, using the SDK, and add the system.bit, zynq_fsbl.elf and =
u-boot.elf
binaries. Rename the produce binary to BOOT.bin, and you're good to go.

You can find more information of the boot image creation process on =
section 3.5,
page 29, of the UG821 - Zynq-7000 EPP Software Developers Guide v3.0.

=46rom within SDK, it's pretty straightforward, and it will =
automatically create the bif file
after you've specified all the binaries, and create the bootable image.

Best regards,

Elvis Dowson=

