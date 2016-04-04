Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2C34E008EE; Mon,  4 Apr 2016 12:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CBA1E006C7
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 12:29:04 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id fe3so150126107pab.1
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 12:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=3WiE9jRonUxQeGOkiNp+IrzBDxeAFHGirvltzVg23FE=;
	b=aLuHGBMU4bakYZzDRpU4j7wD9HN9e/OyisZJ+ajdwcSG+QtRd5hKl5i0nF8wHm4cJ9
	DTMGLKonmbvEoFEvQS+/rDc+eXFKbmlo20k8/nSD35ZZgvjgCWedHLy6pI18URsMg8S+
	B7sQDk5yVfB/JbcJM9INisz/xq6PhrmXePOqD/iexgNIAY63s0G16OHH+gEo7FiP+SJo
	HIJFI9IUr2mHf6CtSdLED32wd56CQ65IsDPr8AMpVc/arqM2tdRWJGfSowBxdLzjuMcF
	SPtxDc2OofDR/eHHKaPJcNcFjGDs+kZPQOouyyXoF7DWyNzXw4Uqvob4eiasVmXubXYu
	nG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=3WiE9jRonUxQeGOkiNp+IrzBDxeAFHGirvltzVg23FE=;
	b=kTgC69lgf/Hz+0e8DJdkijMKCNLj7wdmquajSXnxW0w3wESUWmycgG653H7EEgNeBw
	osqY5s5ekayZZeUHJTyTccleb6AVLGrXhmLv9p+mDKaGqMVnwVijjNJUb/VLqWV/J1aU
	3vfnObjttCJ/K8+6A9iWahORW6fp+MNKaTiWwbg07vb3K3SFC4CrLFtfppOt1DsfBW6u
	horBoqVmfNOnW6FiNP31k1qK1y9jmySPHMQzB8CcswaOr7egv+kJ6NBMHNWNtc+u+OQs
	ISu84xmGujc0EcRHscySyxUrJScwLv58TavyadJogYFfOryQ6ii80sVaWlNsKdYY2uJ5
	GNHg==
X-Gm-Message-State: AD7BkJL/XzWLXOXyD1nRehDl6F7suI/EGJQQ8/y39kvAlTu4L5UO56xOoxvGRsSvl4JMiw==
X-Received: by 10.67.14.98 with SMTP id ff2mr25399302pad.105.1459798143539;
	Mon, 04 Apr 2016 12:29:03 -0700 (PDT)
Received: from resin ([209.65.105.100]) by smtp.gmail.com with ESMTPSA id
	p26sm41297970pfi.84.2016.04.04.12.29.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Apr 2016 12:29:02 -0700 (PDT)
Date: Mon, 4 Apr 2016 21:28:46 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yoctoproject.org@herrie.org
Message-ID: <20160404192846.GA6860@resin>
References: <5702B520.6060608@herrie.org>
MIME-Version: 1.0
In-Reply-To: <5702B520.6060608@herrie.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] [patch] linux-raspberrypi_Rename_linux.inc_to_linux-rpi.inc
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
X-List-Received-Date: Mon, 04 Apr 2016 19:29:10 -0000
X-Groupsio-MsgNum: 29288
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="W/nzBZO5zC0uMSeA"
Content-Disposition: inline

--W/nzBZO5zC0uMSeA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Mon, Apr 04, 2016 at 08:40:32PM +0200, Herrie wrote:
> From 164d6ec1b054fa241e65ac4961d204edd9965061 Mon Sep 17 00:00:00 2001
> From: Alan Stice <alan@alanstice.com>
> Date: Thu, 10 Mar 2016 08:52:07 -0800
> Subject: [PATCH] linux-raspberrypi: Rename linux.inc to linux-rpi.inc Rename
>  linux.inc to prevent it from impacting other machines while building
> multiple targets with same architecture sharing sstate.
>
> Signed-off-by: Alan Stice <alan@alanstice.com>
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc |   2 +-
>  recipes-kernel/linux/linux-rpi.inc         | 132
> +++++++++++++++++++++++++++++
>  recipes-kernel/linux/linux.inc             | 132
> -----------------------------
>  3 files changed, 133 insertions(+), 133 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-rpi.inc
>  delete mode 100644 recipes-kernel/linux/linux.inc
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
> b/recipes-kernel/linux/linux-raspberrypi.inc
> index 24e7fe2..7ab1de2 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -1,4 +1,4 @@
> -require linux.inc
> +require linux-rpi.inc
>  inherit linux-raspberrypi-base
>
>  DESCRIPTION = "Linux Kernel for Raspberry Pi"
> diff --git a/recipes-kernel/linux/linux-rpi.inc
> b/recipes-kernel/linux/linux-rpi.inc
> new file mode 100644
> index 0000000..fae78b7
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-rpi.inc
> @@ -0,0 +1,132 @@
> +DESCRIPTION = "Linux Kernel"
> +SECTION = "kernel"
> +LICENSE = "GPLv2"
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> +
> +inherit kernel siteinfo
> +require recipes-kernel/linux/linux-yocto.inc
> +
> +# Enable OABI compat for people stuck with obsolete userspace
> +ARM_KEEP_OABI ?= "1"
> +
> +# Quirk for udev greater or equal 141
> +UDEV_GE_141 ?= "1"
> +
> +# Set the verbosity of kernel messages during runtime
> +# You can define CMDLINE_DEBUG in your local.conf or distro.conf to
> override this behaviour
> +CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", "quiet",
> "debug", d)}'

There seems to be issues in applying this patch as some of the lines get
wrapped to (probably) 80 chars or so. Could you please make sure you
send this patch in plain text and without this wrapping? Thanks man.

--
Andrei Gherzan

--W/nzBZO5zC0uMSeA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXAsBpAAoJEHO76Gt+erfPqjgP/3NZ+dGX1an3l8C+2TGSKg5M
IdoXK8rk+JBH18yUigKROpVjBKj+AZduMunwQnzNt8Tws2QlEkmcpDhnLSjJb6Sa
SfCeU0zSpossCeudQ55FVQNO5wEf0msW/2wiy7EX2bLNWc5LrHAoIDJxBBrxZ2AI
4UaTxnIkCiCjVQRbahM0QbjkDSEPcRiHOIQHBx6z8kn49HCf9IKM70+oSaUqDDJT
lxq9iOZc8x0ruPgZ9iq6s4hHRzAImbcuVaT0JUdk8rsC8nkTa2reht+Ac2JZd56D
K0ulJ+LUmW5Y6fK25X13pVghi12Pba/HvxLkDj7eJBBrYOx7uO9kQ15zfI2fRrkx
jpt6BXfZiqXxHkxvR5mEZzdoJwUhWFWlG8zwmo4epWOXb4+62bkbru2jzfFKHNl5
VpsfyvsVSqCse+dFLLLUlF9IzjEfTGPMmwGK3EdySrn0sHzjPSOieRefQ8taHQWh
NLdrYwZC5sY/dQnS1AXq/GnQeZNAmZLbukEG3FfqChQq64MDF2PmoKy+BpwoH6KF
45cnsrozECNwYyKtmQFxEgXw9pxHlbFnaqwsR7NMAP1mrPvsTL39IG12Q5XyMVlQ
d5z+4RD+9K2TuZ+UWXx00KicsAdRAgzW4a9Leejm14kFK25IX8M4Pj2AsKLamY2Y
dT4HnvS3nrWAZYKLHWep
=/ZiC
-----END PGP SIGNATURE-----

--W/nzBZO5zC0uMSeA--
