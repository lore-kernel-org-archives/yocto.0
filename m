Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84C6AE00CF4; Tue,  9 Jul 2019 02:56:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB921E00C81
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 02:56:09 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id z4so17542937qtc.3
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 02:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Zj08rAtFnaMa+6vHFhAkXTgwi26WVtB0UIkfytTZdW8=;
	b=vQYJOBV+1nEBwD9WQJ+j1A0EpoN/rzgytwac+exAZgQaBe03906bvCuTA9gyntSHWI
	9mvQ/zp0gLiXmGPf5ydqvHGMY7/DLtaz9SMMoMCU158UWNHUMRfwWvUkjgKCdhrXIlA0
	aYkz7LK9KnDboF0kjFLx49meAtuTRq28Wkhmkkpw8sEgdgfIPUFtatpkifTVeEz76zAO
	W0oZ9aTeUyofxPcLP2MFUeoO2qq6pmdRj1UuB4ylIsAoIA+R9JPH0wZmNoWecv010vqB
	wZdG8ZnY3A49rMqSwyxSHaBijAL82kxEeBV8gdJJpbdijpfHjH/WSUxKtecMtOzrlZMn
	5MVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Zj08rAtFnaMa+6vHFhAkXTgwi26WVtB0UIkfytTZdW8=;
	b=UPO+rdET7NDHy7QLdMWvjbLAXhY+bsAKPc9dXy+FZ5lZU1W+0rxDk4SaUr5PJhgHfK
	OSi4UIgJ8G/0jAqMoKvwnEFUfL0rPYVYV4mMb4hGgdxacntTUfK9sWjAmixjPeqY+XTt
	j2+s3O3Dq+5DfcOKS1QFofbtZhHPA49fP1HwJX/XK+uPl8qztVUnRtEf54+OQdDAv+9e
	8zV3A81KfmwFNzpPZOOmGCgxiyXnRpycGG73FmLHiZuHmChenrmLJbpMu3vIW75I3Y54
	DU7+zjGODJ11PQg7lRzLkyxhIgVnx6zy8VcOfCmxMkHQVkUUl1uGnUYb9rdE+yqyrm0l
	q4BQ==
X-Gm-Message-State: APjAAAXBo3C+2ysT47cDRU6IpXiobk60PWbhnE3Awnsx/P5HbuE4aXIW
	oUUf2OVXWACUDwZChIJhpDLdoXPtviJAjiq854c=
X-Google-Smtp-Source: APXvYqwp64UMUkfZaI8gH2gsMe5kHTU6yzSsM6LbDWm6z0xW7hhfDvEbCH0pdK7weQoitlkbfO/JCPP6INijtGPO6Dw=
X-Received: by 2002:ac8:290c:: with SMTP id y12mr17316786qty.141.1562666169374;
	Tue, 09 Jul 2019 02:56:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWREgSBse3oq8FhH2bCNcr5FC4SYTyeFuW9_b-KdTX1VGQ@mail.gmail.com>
In-Reply-To: <CAA=hcWREgSBse3oq8FhH2bCNcr5FC4SYTyeFuW9_b-KdTX1VGQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 9 Jul 2019 11:55:57 +0200
Message-ID: <CAGAf8Ly56LcA3wih1BOqi0rbm+z2nwonTi5=jBjjQ_+=55uQNg@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Stuck to build zImage-initramfs
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
X-List-Received-Date: Tue, 09 Jul 2019 09:56:14 -0000
Content-Type: text/plain; charset="UTF-8"

Please, read the following thread:
https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html

Zoran
_______

On Mon, Jul 8, 2019 at 11:43 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I have been stuck to build zImage-initramfs for weeks. I've read Yocto
> latest document, but still failed to generate the initarmfs to run on
> RAM. I added following statements in local.conf:
>
> UBOOT_CONFIG = "ram"
> INITRAMFS_IMAGE_BUNDLE = "1"
> DISTRO_FEATURES_append = " ram"
> IMAGE_FSTYPES_append = " cpio.xz"
>
> It built to following images:
>
> dev-image.rootfs.cpio.xz
> u-boot.imx-ram
> zImage.bin
>
> If I extract the dev-image.rootfs.cpio.xz, it contains zImage at boot directory.
>
> What I need is the zImage-initramfs to contain the rootfs in initramfs format.
>
> I see there is document ramfs-rootfs-initramfs.txt, but it did not
> mention how to generate zImage-initramfs.
>
> There is core-image-minimal-initramfs.bb, but it cannot be run:
>
> $ MACHINE="imx6evk" DISTRO="imx6evk" bitbake core-image-minimal-initramfs
> ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
> core-image-minimal-initramfs was skipped: incompatible with host
> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
>
> Could any one help what I am missing here and how to build the zImage-initramfs?
>
> Thank you.
>
> Kind regards,
>
> - jh
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

