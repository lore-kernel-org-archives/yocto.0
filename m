Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 335EFE00CF2; Sat, 20 Feb 2016 11:09:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B88E6E0073D
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2016 11:09:50 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id y9so86765348qgd.3
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2016 11:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2+vt184couVUB4VD1GbWt+868L9v+J5FCUYQtsHCm0M=;
	b=nqhUUu9j2Xe41b+LCnLxeqe9QbLfp2Spv5pgeayRvlL12LY90pZhajIuKJjMqV7KuH
	OHfsKB+ZkMfpYY6q1y2iye4SHEvXSKuzM/zC6MvDAEma9GrdJHalP1WLdtpYVw4eHEjX
	fvfTmg13rClr2Qzwh/C7nFaYy7DBtCt4FRCIwVCwCwL7wV7eSq6XkGtEpDNj4yE470Sf
	vpz64u5kbLOL7W1uTUvQHe3Vb7hseQ4D94hvSYLCYquLg3JtNPP7dUSMwrx2E6OyIYYT
	g22b4Fu6Xm6AdZOPatNxCqLomdQhlMoeVRRNXzv8bDMV9mGdJkGEiRuwNUInpy6ITSAT
	Tiow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2+vt184couVUB4VD1GbWt+868L9v+J5FCUYQtsHCm0M=;
	b=IC475p8q0buWNpTNXQL8DvO2zuPji7h1/+jPloMnVjCGPNTmS5xuYSa4yFYnoyAOFi
	53Nc6tRxIhMP87m+1+1ibwmO4L8za59BItMnOxkODoZeWB7GGfV0tQRXdryenW0EFAYn
	VE/us1EEwAz1o/8vw5lCA2zKRFrS6j4tBUh3TV6a6Bwh6h9ym0lzlxUhb7M1fw3TJKXv
	FxcKQ4wukx3jSx0xzoyAM9amkOIPIT28/LMnrHj0tveCd5vZ3uuFt4bC8v/17cFaZ4v9
	fdY/RGNkQTc1DZomgewV7a8faheveYYklFR5O5KchyOBoUAVwa/kxPOagTrfx0WCmSef
	s2bg==
X-Gm-Message-State: AG10YOTFBYmGrZBOfc3G4XJ4Us/3VdDtX8JImqJsxNtrO9UTfvKjo5VYF82FoqARaMY75slX/bZxFag2Su8y4w==
X-Received: by 10.140.100.141 with SMTP id s13mr24088091qge.25.1455995389696; 
	Sat, 20 Feb 2016 11:09:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sat, 20 Feb 2016 11:09:20 -0800 (PST)
In-Reply-To: <1455985559-6341-1-git-send-email-valentin.lebescond@gmail.com>
References: <1455985559-6341-1-git-send-email-valentin.lebescond@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 20 Feb 2016 11:09:20 -0800
Message-ID: <CAMKF1soimB54aRBbDjxG=jfk5H0aThNAONqnxxzBujnxrE84mQ@mail.gmail.com>
To: Valentin LE BESCOND <valentin.lebescond@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH] added md5 for ntc's modified u-boot Licences/README file.
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
X-List-Received-Date: Sat, 20 Feb 2016 19:09:53 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 20, 2016 at 8:25 AM, Valentin LE BESCOND
<valentin.lebescond@gmail.com> wrote:
> From: Nitnelav <valentin.lebescond@gmail.com>
>
> Signed-off-by: Nitnelav <valentin.lebescond@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
> index 2342478..0b9032f 100644
> --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
> +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
> @@ -8,6 +8,8 @@ PROVIDES += "u-boot"
>  UBOOT_VERSION ?= "2015.07"
>  PV = "${UBOOT_VERSION}+git${SRCPV}"
>
> +LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
> +

while checksumming more is merrier, it would be good to know why we
should check for this one ?

>  SRCREV ?= "854d5fcc641d8d8914c03a69d7172815d5b81a99"
>  BRANCH ?= "chip/stable"
>  SRC_URI = "git://github.com/NextThingCo/CHIP-u-boot.git;branch=${BRANCH}"
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

