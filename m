Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EEB7E00C82; Sat, 19 Nov 2016 09:52:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F3EEE006E9
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 09:52:25 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id 50so21208667uae.2
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 09:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4cWoP03v5b0ykAEaGo1DBY0h/CywUPGS5nFNemRFMkQ=;
	b=Y0Yj95VekP5/jwwN/2Zmk4maf1sunJ7UDXBexlsyLfP+TKrCZ+rrgVQ4EqYSESxHGp
	oiA9F9ge0JFjzZCCjtRvyLOsiBBp9ifu8x+bHCWJX9EvRb/JwjzczpnE2oMxDniO2OEd
	CxsIhaEaIguPdkEBMBMjbFWbfcviKeEWpzl3MUv3mzFFlEjJMbVhM9o8mPcKe84RYdf6
	XZroZmMd9sek2Vpu/QR3OjlvAcYWHRSqL/9bjawO7DI4K20iFQCY1eG+88lLbV/RDnva
	AlY5IXIjLPdDqJvVXMJb0Y7qT2QZ7fl8XsCQ6YI07xf+LW2Olpy2GCdbb/8mTbx4pAAk
	qGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4cWoP03v5b0ykAEaGo1DBY0h/CywUPGS5nFNemRFMkQ=;
	b=JUqndZxOOK3/zZLxEJx+TMpfsmcFWzfX2bRwuzOaTz0ZHKPrpKGKNJxFeLzUPYZBId
	YWNRa+PRDicgvNcAHq20LYjIKJwI0yl8IbCfaYaRub4QxjfCzwBAeDFyCviEX0V2Qdqu
	2CwAPd+sfq1DjKCl6jvJdpJGwfd9poStdV2D/vQkf6U4cFy6bEOICKoMSJN5hRFV0044
	agYYgCIpcEnGdL1tifI7ZlFXWKrFtlxw9jJVyCu+IKlkU61TQUP/zOrYSqqdSH5MxTpw
	pQljNZpzWVm4YBSjngOxPvJ4mZy4iDKH+IGJDp3CDD3uWHeRygxePq1rTWaEAwjaqu73
	+Jrg==
X-Gm-Message-State: AKaTC02ql1XUPKWnOqIak0wd3/qjc624lwTPWkgCNXHjUyTER3Idoh/2hP+FLZdlgH4OtXyv0F5Y79Jy/J3FAg==
X-Received: by 10.159.32.99 with SMTP id 90mr2652213uam.138.1479577945321;
	Sat, 19 Nov 2016 09:52:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Sat, 19 Nov 2016 09:51:54 -0800 (PST)
In-Reply-To: <1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 19 Nov 2016 09:51:54 -0800
Message-ID: <CAMKF1sqDFPYOsZj2_ME9foOY2f76oh2piLAjmzeDzr4_bmhVtA@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Sat, 19 Nov 2016 17:52:29 -0000
Content-Type: text/plain; charset=UTF-8

Thanks for this patch. It depends upon a OE-Core patch, so dont apply
it yet. but I will stage it into my master and test it out.

On Sat, Nov 19, 2016 at 5:03 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  conf/machine/raspberrypi3-64.conf | 19 +++++++++++++++++++
>  conf/machine/raspberrypi3.conf    |  8 ++++++--
>  2 files changed, 25 insertions(+), 2 deletions(-)
>  create mode 100644 conf/machine/raspberrypi3-64.conf
>
> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
> new file mode 100644
> index 0000000..a5ceddb
> --- /dev/null
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -0,0 +1,19 @@
> +#@TYPE: Machine
> +#@NAME: RaspberryPi 3 Development Board
> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
> +
> +DEFAULTTUNE ?= "cortexa53-64"
> +
> +MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
> +
> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
> +
> +PREFERRED_VERSION_linux-raspberrypi_raspberrypi3-64 ?= "4.7.%"
> +
> +require conf/machine/include/tune-cortexa53.inc
> +include conf/machine/include/rpi-base.inc
> +
> +SERIAL_CONSOLE = "115200 ttyS0"
> +VC4_CMA_SIZE ?= "cma-256"
> +
> +UBOOT_MACHINE = "rpi_3_config"
> diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> index 9820209..f142323 100644
> --- a/conf/machine/raspberrypi3.conf
> +++ b/conf/machine/raspberrypi3.conf
> @@ -2,12 +2,16 @@
>  #@NAME: RaspberryPi 3 Development Board
>  #@DESCRIPTION: Machine configuration for the RaspberryPi 3
>
> -MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
> +DEFAULTTUNE ?= "cortexa53-32"
> +
> +MACHINEOVERRIDES = "raspberrypi2:raspberrypi:${MACHINE}"
>
>  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>
> -include conf/machine/raspberrypi2.conf
> +require conf/machine/include/tune-cortexa53.inc
> +include conf/machine/include/rpi-base.inc
>
>  SERIAL_CONSOLE = "115200 ttyS0"
>  VC4_CMA_SIZE ?= "cma-256"
>
> +UBOOT_MACHINE = "rpi_3_config"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

