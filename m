Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED58BE00CCA; Sun, 31 Jul 2016 11:48:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A106E00CC2
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 11:48:29 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id o80so23269084wme.0
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 11:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=/b145h0k7TswtxWs3N8XIKYyfXKFjDZh5tZFA4pWxHY=;
	b=umXcNVJ/KWzFSZQrNeNTPJ8DD4V9ZbA4wTH1JymfdqDH8E1INeGmbyXEx8RrKyi/P8
	2Wc4W9UQNnoXazkv/r45+VeL7xalyTEOarYNEWJdUuqgbmwbY/PBT+EdWSA0J4f375fi
	6Pt84nBinZFe//ziqH766Mb3IlyB4/m3V3ihl5q7UUqzH1v7mDxPdDIv502NmNToysOI
	UkTIkzKheywqx66oM717pB8qJLFRUqf5wo25fkOk18iBFVTeKQ6UGBgs38obyGZGOG6v
	ifREO4CzV8TxPvuz7LyXXLcFmoYtdmmy8wX9C3MEntKzJXkmk/umQ5Qw0/9/OhQRAVh4
	fG4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=/b145h0k7TswtxWs3N8XIKYyfXKFjDZh5tZFA4pWxHY=;
	b=Et3X3Pznh4RidzATcPfZpeQcky5yuuOJyNZO8CabCbhxKQuuoyZu16M+v9vxu8nzTX
	ImRBfSqkCNxRgaKqjzMhXiYuu015v6CiSxeJivV908pvZOEDP3KRQukFJo/CL0DuRq22
	7zwryDiL+W90qOTBnycHmK3pkluVXhfrmRhfG1hpNdSk9ZXYySdRkP5pbB/6VT0wL5Fp
	DbvGxwWE+iE4xGK7e8QOfmWUl9OeFvgosfExLNX0QAzvtj2noebLe4UUEIKGdpCsGVeb
	1D4zdGBlkeR7Kg7il6rXdcquFw+WK0jY9A1eFfN73TYy+E2o1toclDLir+niZk03Gc7k
	Io6Q==
X-Gm-Message-State: AEkoouvz5CoOA01YTT0GOQ5SH/r9wVABEw0MyEUB8MxtKkWY3KnL/YUFD888Gmd9nxPVew==
X-Received: by 10.28.31.147 with SMTP id f141mr9844285wmf.69.1469990907032;
	Sun, 31 Jul 2016 11:48:27 -0700 (PDT)
Received: from resin.home (host86-186-205-140.range86-186.btcentralplus.com.
	[86.186.205.140]) by smtp.gmail.com with ESMTPSA id
	m127sm13217143wmm.21.2016.07.31.11.48.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Jul 2016 11:48:25 -0700 (PDT)
Date: Sun, 31 Jul 2016 19:48:20 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160731184820.GA29087@resin.home>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
	<70B61AEF-DB1A-4E60-8A14-878623073F1A@gmail.com>
MIME-Version: 1.0
In-Reply-To: <70B61AEF-DB1A-4E60-8A14-878623073F1A@gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v6 0/4] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Sun, 31 Jul 2016 18:48:35 -0000
X-Groupsio-MsgNum: 31313
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 28, 2016 at 06:41:25PM -0700, Khem Raj wrote:
>
> > On Jul 20, 2016, at 3:00 PM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> >
> > v6: rebased
> >
> > v5: modifications after more review
> > * Added an Upstream-Status to the kernel patch
> > * Only one instance of KERNEL_DEVICETREE defined (with the new .dtbo syntax)
> > * Modification of the KERNEL_DEVICETREE is done in linux-raspberry-base.bbclass, based on the kernel version
> >
> > v4: rebased
> > For kernels 4.4.9+, the behavior for the device tree overlays loading has been modified on RaspberryPi.
> > For overlays, it loads .dtbo files, not .dtb anymore.
> > Also, it does not check for -overlay extension, so the name of the overlay that is placed in the "overlays" directory must be <overlay_name>.dtbo, instead of <overlay_name>-overlay.dtb.
> >
> > This patch addresses the issue for kernels 4.4+, while keeping the same behavior for older kernels.
> > This patch must be used in conjunction with another patch to meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtbo files for overlays, instead of only .dtb like before.
> >
> > .dtb are still in use, but only for the "real" device trees (not the overlays).
>
> I have staged this series in
>
> https://github.com/kraj/meta-raspberrypi kraj/master
>
> However, this all has to wait on two things.
>
> The OE-core patch
>
> https://patchwork.openembedded.org/patch/123747/
>

What is happening with this patch? So I can't merge these as long as
this one is not merged.

> and we need to branch out for krogoth
>
> >
> > Herve Jourdain (4):
> >  linux-raspberrypi_4.4.bb: support for .dtbo files for dtb overlays
> >  rpi-base.inc: support for .dtbo files for dtb overlays
> >  linux-raspberrypi-base.bbclass: support for .dtbo files for dtb
> >    overlays
> >  sdcard_image-rpi.bbclass: support for .dtbo files for dtb overlays
> >
> > classes/linux-raspberrypi-base.bbclass             | 19 ++++++----
> > classes/sdcard_image-rpi.bbclass                   | 15 +++++---
> > conf/machine/include/rpi-base.inc                  | 30 +++++++--------
> > .../0001-fix-dtbo-rules.patch                      | 44 ++++++++++++++++++++++
> > recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
> > 5 files changed, 81 insertions(+), 28 deletions(-)
> > create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> >
> > --
> > 2.7.4
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>



> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--
Andrei Gherzan

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXnkfzAAoJEHO76Gt+erfPCaIP/iwiHPnGG9tFVqtRV/syDq8/
AicPuNVxw4tbQ/HNKjeuTiovBdjlxF6RDpew1amYPMIDa53FGtdpFzOp0yo9ARSX
kurVnoJCgDT1Xo3I8/0F1gbhEGT4+RwoXGiUWKtRkhut/94zipCe7NYySWyeQH3a
neDcDcLB0duQf0ZaVIeEo+/DLM87UT+TUtkmolNVFAd2TSFZXbVWCqgSCTG/6qC1
WAcNFgkXAyzxNJZ8oDkfu4tIuG7ChUWlTDV6RdT7yYqJInemi22YMhX+S5K9RS42
OgooGQfMfokpcWm8k7WgRHm9G00DOal2N/OZBNErX0M/ZxaJgikCZwjI77xKZ5sF
H9F0zmLC7E+qSceZbdrY7cwxMPAvx2jUTglebT7hHw38BswwsvKE94kiRDPh6cbF
wEwaWg8aEBYQB3v85fNxolBgYMYC9KhdFxclcKUp6Q/3HZtUUQIXBAPRghy1MnbO
jplveD9gYa2i8/GVzKPuqv/I3axhXQerE/e5Oc/2Xo8ReEnH8LuNKxr3AiTajf23
GxinrjP7OdQdok0H6BS6il4OWdf9J1203xjOkUBIHWWaFrjt5ON4o5GLZ2j6KAvS
WVl3FoFhToc7lJg90lekxsG9HY8uJe99J9bJXX5YET4psGsTbponlOscoeRopYDk
xwzz1UjjBPPdnLjqGlL1
=EdDL
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
