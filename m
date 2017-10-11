Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 299E7E00C01; Wed, 11 Oct 2017 00:24:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.50 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F52CE00B53
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 00:24:27 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id 72so1770477itl.5
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 00:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FS3JHrTp7RIMVuX3pQbH+p6NzHcqoezR+EV9D7ykNZg=;
	b=cfDpJfA9h7aCJrGahQJ/9aftdZya5xhrnbPvVVXxemIfdngiotSIPD6C6PQmgrwii0
	Q7GHeEujHDjZNKwK/ETazuDVg3rIEfMZXfWkdqbzEaA8mTTYS4D2mtAKRLWX2sdEk4Ov
	lAVFbebrmcwmsdBeFcSFHeCCOz1JKA1xqOfyJr1iPFta0d4aTLprycR1yEtzF3BdK/PI
	vP6Kv5MfUWFFj/nhbGvfWwhOW2Usj8s5nvN40Mb0Fb1mqBBheWm20cAvTy3Ka9n4F0HC
	iitiVwRd8OsC/TlYQcn3PNaRrM65uwTclLwXR9Z7p9xpH7d/MOEoMEYbN5/zKqZSkhwp
	DxTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FS3JHrTp7RIMVuX3pQbH+p6NzHcqoezR+EV9D7ykNZg=;
	b=lyrSKKhnEHlt8RqVxNuL62YeZsOT1MdDc/PvFQQVKWZPOdK/tHz0ILjuxaRxZKYmUI
	YcQV6eaHni9mjDODaBuA3Mo7YRm885l1/M2hR8tuNxQIfyxIEedleMr2GGu/G1nASRJ6
	sdXv+Ol97Fu4HRA7e1epxIUZ0PGhMCdujni5I/qTQG8Lr5fZanvSc6nwgyxEBDM9Kmh8
	LRd3KkmeVKvWwa3eh6bF85TGDh7vxDLyPkTCqBO7javUzCjS8BCpgiqKnQ6jrNbmCfje
	GFC/CJm32BNVvV9Qr1JGCDy1XDjKZF/3kRY3JwaTtZqzGgmlGs/E6jVDankZS0sL2n8e
	QcwQ==
X-Gm-Message-State: AMCzsaVwz4DcG7IPfIbNeA/dBMfe/9/VuFsy/E+laMg2hzqYkHGVRnfd
	oi+a3PIOehvkckJpA9lfk5V6+YA0yMCKZGnjD1Q=
X-Google-Smtp-Source: AOwi7QCKcC5cjdLaTSuH3eN1UfjmHpPv0qx4or4866CKK+Yj0pwrSiyZdFIzLBHYHek+Xn3SerdtlG2LTp5JVNiq4uk=
X-Received: by 10.36.69.163 with SMTP id c35mr20433957itd.63.1507706666721;
	Wed, 11 Oct 2017 00:24:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.82.138 with HTTP; Wed, 11 Oct 2017 00:24:06 -0700 (PDT)
In-Reply-To: <HK2PR04MB09958FA97340182BB1D3D0E9E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
References: <HK2PR04MB09958FA97340182BB1D3D0E9E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Wed, 11 Oct 2017 09:24:06 +0200
Message-ID: <CAB2nKc80fwSyRcuNMDrxkuWWjTq7cUpzohTJ7xcc4jWMyCEGEw@mail.gmail.com>
To: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Procedure for adding driver in Yocto
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
X-List-Received-Date: Wed, 11 Oct 2017 07:24:28 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

If you want to create a kernel module, you can use that kind of recipe

meta-x-bsp/recipes-kernel/kernel-module/kernel-module-modulename.bb:

SUMMARY = "Kernel loadable module"
DESCRIPTION = "This package includes loadable module"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=a04ba2d94725e7270af091f1f1cb6580"

PV .= "+git${SRCPV}"

SRCREV = "e26baba25fa792730d09c6e5334814b3037e7bc7"
SRC_URI = "git://url/modulename.git"

S = "${WORKDIR}/git"

inherit module

KERNEL_MODULE_AUTOLOAD = "modulename"

If it ok for you ?
Best Regards,
Vincent

2017-10-11 7:40 GMT+02:00 Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>:
> Hi
>
>
>
> I am looking for a procedure how to add an new driver in Yocto Kernel. I
> tried adding an sample char driver by updating Kconfig and makefile of
> respective directory and by default marked as built in by default.
>
>
>
> But I do not see the driver is coming up while kernel is booted.
>
>
>
> Please suggest the procedure.
>
>
>
> Thanks
>
> Umamahesh
>
>
>
> ::DISCLAIMER::
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as
> information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liability
> on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of the
> author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior written
> consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error please
> delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruses
> and other defects.
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

