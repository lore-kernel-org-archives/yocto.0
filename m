Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66067E00AA2; Wed, 22 Jun 2016 10:26:24 -0700 (PDT)
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
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13A09E00A44
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 10:26:22 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id h14so19618601pfe.1
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 10:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:message-id:references:to; 
	bh=BNn81tcc5gbhk+MRmruLxgfNPRjkPfGIhjmU3F4F8Sg=;
	b=Vw/YHHFJ6C78l80xwnG+GG7sQEUVNRerhrYYaTWc9XpGdPmS2+bgfSbffY6CLfNEls
	+mhYISoAPSbe2nyozzHYkjfZ6GUsb9TqZcudJxAUz4gAy27Su9jWfnWP8XU+zRPPcwJ/
	MkApP97A3Ie7vs05pwxMdtbMIrNBbQoqD8uGmYHiZAVz/Jwe2xB7/ma89kSg2B+S5ny7
	m0YXOSEnb1lsPH7HFRNttUIUeUiATp/8MKs61CbqaR6F6h/oqnbzyp1zdWS3CJAzMP/p
	4FnruCiWFJMQVAayZ+7VhLlmPIbLUvuLig/aZ9MPhwEv097j1xOYg6ebD8sm88YXDS/o
	R5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:message-id:references:to;
	bh=BNn81tcc5gbhk+MRmruLxgfNPRjkPfGIhjmU3F4F8Sg=;
	b=MYOu42RlPjBIr4KbWDrdobJYwvrgdfrHGo/zfyaJt3Ant81zP4oez3R5t5EI2k9COC
	m3QoVgKH0aBoDtoOW/ysDH4uROdGypfLlW9UbObns6L2NDe0GAaTa4MruhhwMEHUvSTL
	uLOd0CPc4RY2qahNKeM1V7Dp0WbT7lletXD+0wKqMlFA2TwYUHdj5MnpstdJXdyqV+Vz
	8U2ZKzgLudX1/k/uRoQdBRAPlJxtXJInmTAIpZ028+JR32ZPPXjeAyd6o+J1a6FmK0FD
	buWZyRNO/LAd3XfYWa1t9ONwmXMkYkb1c1xHHS0EB2Z0U7/LqP0hVGO2J6fmdqY8PZHK
	h9Bw==
X-Gm-Message-State: ALyK8tKRVdQF/Ikt/08uru0gzArpU87+uQO2gIzrsUtLdPHAGTJyXo4h9aGiJG6TcKQ08A==
X-Received: by 10.98.9.68 with SMTP id e65mr35925808pfd.121.1466616381821;
	Wed, 22 Jun 2016 10:26:21 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:fcd1:61e:b1e8:f28?
	([2601:646:8882:b8c:fcd1:61e:b1e8:f28])
	by smtp.gmail.com with ESMTPSA id
	b71sm1133581pfc.51.2016.06.22.10.26.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Jun 2016 10:26:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20160605203611.1e1db65d@deus.skynet>
Date: Wed, 22 Jun 2016 10:26:13 -0700
Message-Id: <BD431467-F031-44BB-AF09-E281F295533F@gmail.com>
References: <20160605203611.1e1db65d@deus.skynet>
To: yocto@yoctoproject.org,
 Predrag Ivanovic <predivan@mts.rs>
X-Mailer: Apple Mail (2.3124)
Subject: Re: [Poky][krogoth]ERROR: glibc-2.23-r0 do_package: Fatal QA errors found, failing task.
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
X-List-Received-Date: Wed, 22 Jun 2016 17:26:24 -0000
X-Groupsio-MsgNum: 30708
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9BF081DB-A3A7-4B86-A122-DE2F1F25A204";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9BF081DB-A3A7-4B86-A122-DE2F1F25A204
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jun 5, 2016, at 11:36 AM, Predrag Ivanovic <predivan@mts.rs> wrote:
>=20
>=20
> Hi.
> As an learning experiment, I've tried to build RPi2 image, but the =
build fails on, what I presume, is one of the Poky core elements.
> Since it's mentioned in the meta-raspberrypi/README that it relies on =
Poky master branch, I tried that,  but I get the same error.
> I realize that I am trying to build on the unsupported distribution, =
but the only complaint I got from bitbake, before touching =
conf/sanity.conf,
> was that the diffstat and makeinfo are missing.
> But, I've searched the ML and the bugtracker, and couldn't found any =
mention of this behaviour (nobody else complained), so I must've
> broken something.
> If that's the case, I apologize.
>=20
> Build log:
> ---
> biitbake rpi-basic-image
> <snip>
> Build Configuration:
> BB_VERSION        =3D "1.30.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Crux-3.2"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "raspberrypi2"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.1"
> TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 =
callconvention-hard cortexa7"
> TARGET_FPU        =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp    =3D =
"krogoth:8f51f6153a09f8048fb4c4ce9cf4a19655240de4"
> meta-raspberrypi  =3D =
"master:69840c0bbe03c2e61601e2377c8e2adc264e0478"
> <snip>
> WARNING: quilt-native-0.64-r0 do_fetch: Couldn't load checksums from =
donestamp =
/home/pedja/stuff/lab/yocto/poky/rpi2-build/downloads/quilt-0.64.tar.gz.do=
ne: ValueError (msg: unsupported pickle protocol: 4)
> <snip>
> ERROR: glibc-2.23-r0 do_package: QA Issue: glibc: Files/directories =
were installed but not shipped in any package:
>  /usr/share

can you check whats there in this directory in glibc build ?
this seems to not happen commonly, so it could be related to your build =
host distro injecting some
effect into build causing extra packages to be built or something on =
those lines.

> Please set FILES such that these items are packaged. Alternatively if =
they are unneeded, avoid installing them or delete them within =
do_install.
> glibc: 1 installed and not shipped files. [installed-vs-shipped]
> ERROR: glibc-2.23-r0 do_package: Fatal QA errors found, failing task.
> ERROR: glibc-2.23-r0 do_package: Function failed: do_package
> ERROR: Logfile of failure stored in: =
/home/pedja/stuff/lab/yocto/poky/rpi2-build/tmp/work/cortexa7hf-neon-vfpv4=
-poky-linux-gnueabi/glibc/2.23-r0/temp/log.do_package.7423
> ERROR: Task 519 =
(/home/pedja/stuff/lab/yocto/poky/meta/recipes-core/glibc/glibc_2.23.bb, =
do_package) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 513 tasks of which 0 didn't need to be =
rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>=20
> Summary: 1 task failed:
>  =
/home/pedja/stuff/lab/yocto/poky/meta/recipes-core/glibc/glibc_2.23.bb, =
do_package
> Summary: There were 31 WARNING messages shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit =
code.
> ---
>=20
> Configuration diff (mine and default):
> ---
> diff -Naur conf.default/bblayers.conf conf.rpi2/bblayers.conf
> --- conf.default/bblayers.conf	2016-04-30 21:35:23.000000000 =
+0200
> +++ conf.rpi2/bblayers.conf	2016-06-04 21:30:09.000000000 +0200
> @@ -6,7 +6,8 @@
> BBFILES ?=3D ""
>=20
> BBLAYERS ?=3D " \
> -  /home/pedja/stuff/lab/yocto/poky/meta \
> -  /home/pedja/stuff/lab/yocto/poky/meta-poky \
> -  /home/pedja/stuff/lab/yocto/poky/meta-yocto-bsp \
> -  "
> +  /home/pedja/stuff/lab/yocto/poky/meta \
> +  /home/pedja/stuff/lab/yocto/poky/meta-poky \
> +  /home/pedja/stuff/lab/yocto/poky/meta-yocto-bsp \
> +  /home/pedja/stuff/lab/yocto/poky/meta-raspberrypi \
> +"
> diff -Naur conf.default/local.conf conf.rpi2/local.conf
> --- conf.default/local.conf	2016-04-30 21:35:23.000000000 +0200
> +++ conf.rpi2/local.conf	2016-06-05 18:20:47.000000000 +0200
> @@ -34,8 +34,15 @@
> #MACHINE ?=3D "mpc8315e-rdb"
> #MACHINE ?=3D "edgerouter"
> #
> +#  =46rom meta-raspberrypi
> +#
> +#MACHINE ?=3D "raspberrypi"
> +#MACHINE ?=3D "raspberrypi0"
> +MACHINE ?=3D "raspberrypi2"
> +#MACHINE ?=3D "raspberrypi3"
>=20
> #
> # Where to place downloads
> @@ -105,7 +112,7 @@
> #  - 'package_rpm' for rpm style packages
> # E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"
> # We default to rpm:
> -PACKAGE_CLASSES ?=3D "package_rpm"
> +PACKAGE_CLASSES ?=3D "package_ipk"
>=20
> #
> # SDK target architecture
> @@ -178,7 +185,7 @@
> # Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE =
3.x only), none
> # Note: currently, Konsole support only works for KDE 3.x due to the =
way
> # newer Konsole versions behave
> -#OE_TERMINAL =3D "auto"
> +OE_TERMINAL =3D "xfce"
> # By default disable interactive patch resolution (tasks will just =
fail instead):
> PATCHRESOLVE =3D "noop"
> ----
>=20
> Pedja
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_9BF081DB-A3A7-4B86-A122-DE2F1F25A204
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldqyjoACgkQuwUzVZGdMxTY4gCfdpzO4tTbZ/tNHIW/Gi/JwNwT
Ir4An3tn1uXZiME9ygCGnwrKEpxIWdBm
=9+Ea
-----END PGP SIGNATURE-----

--Apple-Mail=_9BF081DB-A3A7-4B86-A122-DE2F1F25A204--
