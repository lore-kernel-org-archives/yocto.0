Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94710E00CF4; Mon, 24 Jun 2019 14:49:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED3AE00CBA
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 14:49:05 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id w25so4967991ioc.8
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 14:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=kgbSvhA4XWH3ZmVu+VH0oPS7cQXUefUYQx5pcASlz88=;
	b=MRfd3fE0UX0GWj97IPbn2IBA1urd+qmZQK0AR9xzWu1vxI4+qdyXszoViBZjXJ3DQH
	q/re1gYSlQoLk7s8xJPrX5jgRGRZyvTb72YV7h4YSgdjuRkpKBOANcJsrIIO7V/vPsg1
	KPmJ6yxFt8ZOMIXqGU0KJL/2rRbVg7TburilvbiDcNRMTHpDd2Z4uQZ9pCmldWdPBCd2
	tNybvT1NoLPkxs7sNNxHn1HDEErISqHrbPpy3aq3gFbyNC/RJm8MsucEsL82ears/n5o
	zy7cAzPEl8xAUipxa3hlAFEO5bPcGB/WvGr6e+fzuH6sI73bpPo5kI9NIEPgN0CImraV
	rFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=kgbSvhA4XWH3ZmVu+VH0oPS7cQXUefUYQx5pcASlz88=;
	b=c1XLNOHYv3mnepX9ImMv8537z86ooSaABT2nYd25dZZtVxSb9B4LJBsdSUbmS8CueR
	61Vc4EYYpPdPdQf6Vzy3yWdtsDYWvqs7YpRPC0bYb3aycqLwy7OjpQAtZuKbmCk5obdg
	cC4MKH+S2Z5Sh0gniiOfsX0MZRXmCH3pWAsS7NWi3/+i9oC+7XdRBuT33tXBWym/toQM
	BZDR9+hgGuZRHfDxEfTG8ST5+lSVdA2rC07I12h5lD45nZHvrXY9eKj+rIawacR3GMFh
	XGg5tsSiLv3/myb5SCl2FvJDEXq2n0FLr/phNZeBR30v8umfmFXBVaWZYJsX4giuBlH2
	2fJg==
X-Gm-Message-State: APjAAAUCJWvG5YKrJXixWaPjShmqE/ie8q2tAyPFayfrgDMd9Gat6Mw9
	cj8jienIXW8kK/qU1fTUFZj3NzaUiyd1P6oM3doGVg==
X-Google-Smtp-Source: APXvYqzOZE0GKKYQcLZQZ5LvahFrIUXlT6T20PlrJ/Df6aalRFTM8Z9T5mS4KzIwV/VfBiFgaAjLji5t/Re3IJBBbAw=
X-Received: by 2002:a5e:9701:: with SMTP id w1mr21702229ioj.294.1561412945456; 
	Mon, 24 Jun 2019 14:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <5d111b11.1c69fb81.bbbda.d4fc@mx.google.com>
In-Reply-To: <5d111b11.1c69fb81.bbbda.d4fc@mx.google.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Jun 2019 22:48:54 +0100
Message-ID: <CAJTo0LYm6Zgh3OD2t1ZXHny+cEcTCNO2ujD1S1w6VRv8bpdnOw@mail.gmail.com>
To: pierrelucbuhler@gmail.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Are native packages dependencies listed in license.manifest?
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
X-List-Received-Date: Mon, 24 Jun 2019 21:49:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The image manifest lists what is being *distributed* so doesn't
include native dependencies.

Ross

On Mon, 24 Jun 2019 at 19:50, <pierrelucbuhler@gmail.com> wrote:
>
> Hi,
> I=E2=80=99m currently working to remove all GPLv3 packages included in my=
 image.
> I was using the license manifest file to list the remaining GPLv3 package=
s to remove.
> While I was trying to remove gdbm, I ecountered some native dependencies.
> When I looked at the license.manifest file, gdbm was still listed.
> So I was asking myself if I still had packages that depends/includes gdbm=
 hidden somewhere or it=E2=80=99s because the license.manifest also list pa=
ckages used on the build host even if they are not included in the image.
> For example, if curl-native is used in a recipe will curl be listed in li=
cense.manifest even if curl is not in the image?
>
> So in other words, does license.manifest also includes native packages or=
 it only lists the packages that make up the image (included in the image)?
>
> Thanks for the support,
>
> PLB
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

