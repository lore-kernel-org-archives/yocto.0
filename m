Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6731CE00AE4; Tue, 25 Apr 2017 02:06:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13C49E00A9B
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 02:06:04 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id u75so41619502qka.3
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 02:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=J1PHSx7cnNmJP7kpxPytgQG/yUSa1MPDkDVYQpBIe/U=;
	b=My5LvTrJGaPwc3bXYmzXeCK+RNntm2Q/gRllNEKxT7HDM6ljPCr5JGOIdzJsjBBqXC
	EoQQetgPmBVMgYcmwSZwkKBa5C8oA23MT4RDlGQZZPzD5HsGxRi98Z4TzS8QvxFof4GQ
	7+Qtk/jc4Maaf7QN0PrgQFE/x7GG6elivdIivcGbcfwD7laa7s9y5nARtfcisY5oeo5J
	vd2ONyoF3n5ZP9vOObtL3AbSUw/2SJAqF+nRxyi9J5yDIvhBgAFoUd4qFjVOR7ivdzBs
	W/2h3b3ZhWS4SU3UwejUsi40s5vDb9tNdkV6H6JoGUtBMrxzbchpCDDHA/oN5ZKwJYAG
	DW8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=J1PHSx7cnNmJP7kpxPytgQG/yUSa1MPDkDVYQpBIe/U=;
	b=RDsFKqATd5+kNNMs8kBGn2OeVtnOMUIOfgLkORkhAYrfPaMlHZHfqBFSwVpVpufi9A
	WyK0JLeZP/+PrQldxOvpO87HnkCqb40mNDyNIJpD4Al8GMYXEO9G3jO7D36u2pQSteAr
	nWM1DAy8f3fyAEfj2Y2JPo5u7m3aeZ8ICQQXb9tgSqg9xaDsnj46S8XyhHH5fCQ1C/9q
	NGLznQS/kOxhf6h2kU+J/TX6R0YKx+yOI/S3W+cp++jTNxchWXESXxOrn7VtAZDcz0vQ
	ZZha0qgAvMoFsy2Ji0pj12VJKvTgWkGnkHKo/Ak+XqTBtRrjUEm4U+WOx7OcnaXpHjhf
	0L1A==
X-Gm-Message-State: AN3rC/4gmUMsUyhgeFwxk1nwIc+WnbEO9yAf9ENUuONnZvz82OZeglT6
	CRNcYP9j8d7HQbBAVSxFvYIn+r/w1dcr
X-Received: by 10.55.197.92 with SMTP id p89mr27277340qki.34.1493111163884;
	Tue, 25 Apr 2017 02:06:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Tue, 25 Apr 2017 02:06:03 -0700 (PDT)
X-Originating-IP: [82.34.23.153]
In-Reply-To: <alpine.DEB.2.21.1.1704242008400.4869@debian>
References: <alpine.DEB.2.21.1.1704242008400.4869@debian>
From: Paul Barker <pbarker@toganlabs.com>
Date: Tue, 25 Apr 2017 10:06:03 +0100
Message-ID: <CAPyrkgxrdCVB8pFSJ-AYoXqxwuHiPHUBo98izvCKMM-5h_5mVw@mail.gmail.com>
To: alexis.lothore@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi 3 build issue
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
X-List-Received-Date: Tue, 25 Apr 2017 09:06:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 24, 2017 at 7:25 PM,  <alexis.lothore@gmail.com> wrote:
> Hello,
> I am currently encountering an issue with meta-raspberry and more
> specifically Raspberry Pi 3 build. Since I was not sure the problem was
> not my fault, I cloned a fresh copy of poky and meta-raspberrypi (both
> checked out on morty, and meta dependencies on morty too), but the proble=
m
> is still appearing, trying to build the image rpi-hwup-image with BDISTRO
> poky for MACHINE
> raspberrypi3 :
>
> =E2=9E=9C build git:(morty) bitbake rpi-hwup-image
> Loading cache: 100%
> |########################################################################=
###########################################################################=
######################################################|
> Time: 0:00:00
> Loaded 2 entries from dependency cache.
> WARNING:
> /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4.9.bb:
> Exception during build_dependencies for PKG_kernel-image | ETA: --:--:--
> WARNING:
> /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4.9.bb:
> Error during finalise of
> /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4.9.bb
> WARNING:
> /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4.4.bb:
> Exception during build_dependencies for PKG_kernel-image
> WARNING:
> /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4.4.bb:
> Error during finalise of
> /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4.4.bb
> ERROR: ExpansionError during parsing
> /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4.9.bb
> Traceback (most recent call last):
> bb.data_smart.ExpansionError: Failure expanding variable PKG_kernel-image=
,
> expression was
> kernel-image-${@legitimize_package_name('${@get_kernelversion_headers('/h=
ome/alexis/Projets/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linu=
x-raspberrypi/1_4.9.21+git${SRCPV}-r0/linux-raspberrypi3-standard-build')}'=
)}
> which triggered exception SyntaxError: invalid syntax (PKG_kernel-image,
> line 1)
> Summary: There were 4 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> I am executing the build on an x86 machine with Debian 8.
>
> Unfortunately, since the problem seems to appear right at parsing, I
> cannot get the exact variable expansion with bitbake -e. Apparently my
> Yocto setup does not encounter the issue if I try the build for another
> RPI target, like raspberrypi0. Any advice on how to troubleshoot this
> issue ?
> --

I've just tried to reproduce this using a fresh clone of poky and
meta-raspberrypi on the morty branch. I edited bblayers.conf to add
the meta-raspberrypi layer and then edited local.conf to set MACHINE =3D
"raspberrypi3", those were my only changes. I then ran "bitbake
rpi-hwup-image" and it's correctly parsed all the recipes and started
the build.

Which exact commits of poky and meta-raspberrypi are you using? I have
the following:

meta
meta-poky
meta-yocto-bsp    =3D "morty:924e576b8930fd2268d85f0b151e5f68a3c2afce"
meta-raspberrypi  =3D "morty:28d4404f89eb59d406b4976c0e3f5ca19137ba74"

Thanks,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

