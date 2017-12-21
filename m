Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1E36E00CE8; Thu, 21 Dec 2017 04:30:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A80EE008FB
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 04:30:23 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id v186so20887093iod.7
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 04:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=N63uZsjen49vbv/+kB2L6ruZCIibIPocp3usa3bEUCM=;
	b=UbHRz4CqoVLC1OmO2ycyD667njvXJ4FjJp5FNk4tGVcaU7z/gvf6NdLo9dgYwvUB9i
	QtYIynABi/vcLkQo/5u4JmgMtUTNg5RxsllXBT29mqyYdpewOiGaKGXhnt31b5kjX2iD
	4U+NT/h71B7Uz3FWG6GyVj7bvt/lOlh/uW1ZujgZzJDiX/EAjBg5u4Ptz0oJ+lUirhIW
	kHkwup2FOIYScF+RNdkvbsSwEI0uSvxG+CD2AUT9tYhfaaCnz1OObqWsqbq9SHAznRMO
	W9CqF1B1NgPQtO23ZfgTKtg2zddIfnK/Y22Pfo88EQaMNddRUN5Rk1VBkw8IELm+PJ8Y
	pSug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=N63uZsjen49vbv/+kB2L6ruZCIibIPocp3usa3bEUCM=;
	b=nZRxbeo6u0NNy4hHse1gDWk8Z0yGHzGqVt4JuAvestBnWPc0NZhUarkyZhi2/ZDmj6
	NSCnTvvvuOLKZhz6Dr0IqF00fgwHAuGI8oqEpaygFBg7vM1T9F5JM4T2JRzTk4NEqgNq
	SWbh/D/atKayppM2cHt80sdKyiHnB3nUhl1NHyz7vSWdh365JDyqza0Hup8OPt43lcOg
	0Dw3TRfbx4gIvwjaszj9RqaZfWsr2js7HFEcIhKLGun6ODHnA6nn9OsN5brz15yyaH9w
	rC4/0OzPbPikqWpFsI0tW86ae4NBBMkRXPH4RAJCLp981DvKeJ0+ZKrFgpUDPrwYXVDF
	u1YQ==
X-Gm-Message-State: AKGB3mI25z6HSFKjXo/t1EcmK6Hr0sYQWN7uU4eyYoMDqb0GO/m+6FDX
	vIIqv24ttAtSFIMneLkWCyT+Y9HX
X-Google-Smtp-Source: ACJfBosFh0bDtCwVsHrlM21fkJiWFEOmH4H5hgzzpqQceFP9y52r15sNymxVGv2ZAXGnDOQcym2otA==
X-Received: by 10.107.20.129 with SMTP id 123mr12898861iou.36.1513859422719;
	Thu, 21 Dec 2017 04:30:22 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	i63sm4281883itb.35.2017.12.21.04.30.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Dec 2017 04:30:22 -0800 (PST)
Date: Thu, 21 Dec 2017 07:30:20 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Message-ID: <20171221123020.GA29794@linux-uys3>
References: <246f195bf41b44dbaa3d46cdfde44e82@sakuraus.com>
MIME-Version: 1.0
In-Reply-To: <246f195bf41b44dbaa3d46cdfde44e82@sakuraus.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: add kernel modules & dtbo's for Raspberry Pi3
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
X-List-Received-Date: Thu, 21 Dec 2017 12:30:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2017-12-20 @ 11:40:50 PM, Greg Wilson-Lindberg wrote:
> I'm building an image for the Raspberry Pi 3 and I'm trying to add some
> modules to the kernel and I need to add some device tree overlays. The
> modules and overlays are part of the kernel, just not built by default.
> 
> For the kernel modules I've added a linux-raspberrypi_4.4.bbappend file in
> the path .../recipes-bsp/linux. The file consists of:
> 
> # Scribe additions to Kernel configuration
> 
> FILESEXTRAPATHS_prepend += "$(THISDIR)/files"
> SRC_URI += "file://Scribe.cfg"
> 
> Whether I use "+=" or ":=" as suggested in "Embedded Linux Systems withe
> the Yocto Project", I get an error that "file://0001-fix-dtbo-rules.patch"
> cannot be found. I don't get this error if my .bbappend file is not being
> used.

You're missing a colon at the end of the path definition, and you should use
the ':=' operator:

	FILESEXTRAPATHS_prepend := "$(THISDIR)/files:"

The path you're introducing is getting added to a bunch of other paths, and
therefore needs the separator. The := operator causes your change to this
variable to be immediately expanded by bitbake, which is what you want.

> Also, if there are any quick tips on how to add dtbo's to the kernel build I
> would appreciate them.

If you look through the raspberry pi kernel sources
	($TMPDIR/work/raspberrypi3-*/linux-raspberrypi/${VERSION}/linux-raspberrypi3-standard-build/source)
at
	arch/arm/boot/dts/overlays

and find an overlay you like (e.g. spi1-3cs-overlay.dts) then to have it added
to your image and applied at boot time:

1. edit local.conf to add it to the kernel's device tree (but add it as a dtbo
without the "-overlay"):

	KERNEL_DEVICETREE_append = " overlays/spi1-3cs.dtbo"

2. extend rpi-config to include it in the image's config.txt file:

	rpi-config_%.bbappend:
		do_deploy_append() {
			echo "dtoverlay=spi1-3cs" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt"
		}

