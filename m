Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F5ABE00D28; Thu, 26 Oct 2017 02:05:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F9A2E00D20
	for <yocto@yoctoproject.org>; Thu, 26 Oct 2017 02:05:21 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id 15so2459264wrb.5
	for <yocto@yoctoproject.org>; Thu, 26 Oct 2017 02:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=O/G5g4OZo+5p93pwuKhOE7Hb+Ge/jExKJEdlq6XIONg=;
	b=kLL6DWow2MTN/TvQlTYVh609iAnS2tMHfAy0meRyfgHHwikgNzoeh/H7OYF+4Y3cyG
	G+/GmQJK8eQUrQQdTRXhlujg7qZJcE97z1Go77c3cGT3UBCN1w3469T0o1sqOQ8HjJeU
	0oJ5rtTSy3IfiVx21qR4YiJyNlaQyVxGMffYgnMi0g1cqbazoQw8ESsfKkmhLCWMb8xA
	5pwBskdpktCHGncrApEX1+3n5GMl1e4Ourfk1A3rhePo/GdAa8P/hQ4Y/QDkuzux3/LO
	B28hZGoUXo8pANG6mnvZwy4mrDQa5X9kBOE06ZJ7mcGaUceXnF6yHZIslp1hUH8tlP//
	t/Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=O/G5g4OZo+5p93pwuKhOE7Hb+Ge/jExKJEdlq6XIONg=;
	b=NeKnnOqXbX9dqzcsm37LQBUJtEaMVDgNv1dHr9Q/ZSYBbD98WLR+8YyvAWhRV++RuG
	+Wzr758+KthMgou7aKo6kbwly4YKS6xEtPnjYVPiSfkbAkuNn9AMKeAJGSnQC2rDT42f
	Ua70d2kkSwnQ2qjuaR3rMujFsldXCa1VEJ49TanPFCq8nvsiKNa9zS1tlcGrypIVOARP
	2gnf92+OMB50l/aZGupSnf/BLYQpk4caA0X6NgVEZEZ48LBvMixasA+rgU4wKTT9tXxo
	I+LNGDIsj6MgXN0WBQ/N1wMtQqjFDdIOfyuHli8BNn195F8IqouRF+krXwoNp7uGxks2
	A9Og==
X-Gm-Message-State: AMCzsaVv7AAAX7BW0OosxFADJtcFyXGZEtFHo3b7Eid961QdF+RhUCGP
	nUDmhON2/OHPmjeGb62bW869Jonqyqbtg92EfArYtQ==
X-Google-Smtp-Source: ABhQp+TUvR8/gc3K7DArNd+7F1XkO6E8O0oJtjdRv4Zw6iW19ekk2ikv+H6JvU1f9t0L2wI5yXhHLsmCDLmvVHJFA28=
X-Received: by 10.223.165.65 with SMTP id j1mr4894727wrb.206.1509008720661;
	Thu, 26 Oct 2017 02:05:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.20 with HTTP; Thu, 26 Oct 2017 02:05:20 -0700 (PDT)
In-Reply-To: <CAAWyHBJC30Bna_XhjWZaPPDRaAUHQ1z8_SqwtFiPv5iaQw43Xg@mail.gmail.com>
References: <CAAWyHBJC30Bna_XhjWZaPPDRaAUHQ1z8_SqwtFiPv5iaQw43Xg@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 26 Oct 2017 10:05:20 +0100
Message-ID: <CAPyrkgwy9O9w436WMzCqz3BxrZ9-0KcOrP-zi+u1V5j_w=452Q@mail.gmail.com>
To: vishal ashapur <vishalashapur@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: build error on raspberrypi3
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
X-List-Received-Date: Thu, 26 Oct 2017 09:05:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 26, 2017 at 4:59 AM, vishal ashapur <vishalashapur@gmail.com> w=
rote:
> hi im buliding linux on rpi3 using yocto pyro branch. after doing
> "bitbake linux-raspberrypi -c menuconfig"  it is downloading all
> sources but at the end it is showing the following error.
>
> ERROR: linux-raspberrypi-1_4.9.30+gitAUTOINC+e54215a9bc-r28 do_fetch:
> Fetcher failure for URL:
> 'git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.9.y=
'.
> Unable to fetch URL from any source.
> ERROR: linux-raspberrypi-1_4.9.30+gitAUTOINC+e54215a9bc-r28 do_fetch:
> Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:
> /u/rpi2/rpi/build/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberr=
ypi/1_4.9.30+gitAUTOINC+e54215a9bc-r28/temp/log.do_fetch.30856
> ERROR: Task (/u/rpi2/sources/poky-morty/meta-raspberrypi/recipes-kernel/l=
inux/linux-raspberrypi_4.9.bb:do_fetch)
> failed with exit code '1'

This looks wrong. We went straight from 4.9.27 to 4.9.30 in
meta-raspberrypi so not sure where your recipe is coming from. The
latest kernel version on the pyro branch is 4.9.50.

>
> so can anybody help with this error.
> my detailed procedure for build is below
> git clone -b pyro git://git.yoctoproject.org/poky
> cd poky
> git clone -b pyro git://git.openembedded.org/meta-openembedded
> git clone -b pyro git://git.yoctoproject.org/meta-raspberrypi
>
> source sources/poky/oe-init-build-env rpi-build
>
> changes in local.conf
> MACHINE =3D "raspberrypi3"
> PREFERRED_VERSION_linux-raspberrypi =3D "4.9.%"
> DISTRO_FEATURES_remove =3D "x11 wayland"
> DISTRO_FEATURES_append =3D " systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> IMAGE_INSTALL +=3D "packagegroup-core-buildessential"
>
> changes in bblayers.conf
> BBLAYERS ?=3D " \
>   ${BSPDIR}/sources/poky/meta \
>   ${BSPDIR}/sources/poky/meta-poky \
>   ${BSPDIR}/sources/poky/meta-yocto-bsp \
>   ${BSPDIR}/sources/meta-openembedded/meta-oe \
>   ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
>   ${BSPDIR}/sources/meta-raspberrypi \

These paths might be wrong, from your commands above the
meta-openembedded and meta-raspberrypi directories would be placed
under the poky directory.

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

