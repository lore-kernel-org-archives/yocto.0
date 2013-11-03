Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7227E01757
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 18:18:05 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id ar20so9790620iec.26
	for <yocto@yoctoproject.org>; Sat, 02 Nov 2013 18:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=gEk8o6223ISMR63fHUpnE/nVypqu9W66jS8l2Ka+Lr8=;
	b=LI41071U8EwNVxIjmwJ2diWT4gIttcjsGpzqI3HcALogvftxPjPqNaJFuvMam5/wAw
	zMW7vN1516crtgOoK/q+x6X+moMwXc+4RiD3AYhGUW650EL6FrsNy52g01vV9fY1zsB8
	bnrX6+mG5u7BeAUr+svKCWVPIOM7QS4I7eWEbLsfyRJOSsUHdpxGP2kkkJ+MxkdVKpXL
	J4szhhnpIZsSVdxj+U95jETF/la/1mkzmXInlhtkrQPSPBHkwJUNeeHWEDVzG72RrLlR
	p4HTb3qSF4DUtZCwzLpk0lOi9iNPqpxyIE3yuoD0B5HH0zgsdo+8S4uDp4qaiC6Lg1+Y
	Zs+g==
X-Received: by 10.50.61.179 with SMTP id q19mr7399056igr.33.1383441484572;
	Sat, 02 Nov 2013 18:18:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Sat, 2 Nov 2013 18:17:34 -0700 (PDT)
In-Reply-To: <CANwz6nxBDf7imFP0Z=5cmDCKDBqhuh4uxPNxw_8rBVNw_hTY2w@mail.gmail.com>
References: <CANwz6nxBDf7imFP0Z=5cmDCKDBqhuh4uxPNxw_8rBVNw_hTY2w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 2 Nov 2013 18:17:34 -0700
Message-ID: <CAMKF1sp6n=NRF8hRux5TN85cCh3EqrWeKLHdNRsaGOOAoStg1w@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dora 1.5 builds for beagleboard no lsusb, /dev/fb0, networking, or sato display on monitor.
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
X-List-Received-Date: Sun, 03 Nov 2013 01:18:06 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Nov 2, 2013 at 3:06 PM, Edward Vidal <vidal.develone@gmail.com> wrote:
> Hello All,
> This is a continued effort with adding a "udev entry for a camera" & "uImage
> instead  of zImage" posting in Oct 13.
> 2 of my with dora 1.5 are showing same problem
> lsusb --verbose
> unable to initialize libusb: -99
>
> Error opening /dev/fb0: No such file or directory during boot.
> These builds have no networking or sato display.
> The kernel 3.10.11 works with a dylan 1,4 but no /dev/video0
> This was what I ended up with in my uEnv.txt to boot the zImage instead of
> uImage
> dvimode=hd720 omapfb.vram=0:8M,1:4M,2:4M
> loaduimage=run mmcargs;mmc rescan ; fatload mmc 0:1 0x80300000 zImage
> vram=16M
> mpurate=1000
> mmcboot=echo Booting from mmc ...;  bootz 0x80300000
> Now I do not have manually run mmcboot
> The new file that was introduce with dora 1.5 *.dtb.  Does this just need to
> be in the same place as MLO u-boot.img or u-boot.bin, uEnv.txt and zImage.
> Is anything needed in the bootargs or other env variables?
> A question had been asked by Diego Sueiro about a module uvcvideo which in
> not in any of the kernels that I have been working with 3.2.28 (an angstrom
> build), 3.4.43 (dylan 1.4.1)  or 3.10.11 (dora 1.5.0).
> If anyone know which kernel my have the code and what would be the
> configuration options that would be welcomed.
>
> Any and all help will be appreciated.

is 3.10.x kernel supported by beagleboard community/TI for beagleboard
or are you on a road alone ?

