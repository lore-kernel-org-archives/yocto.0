Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F087E00901; Fri,  7 Nov 2014 06:23:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2860E00863
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 06:23:33 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id k14so3801517wgh.1
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 06:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=uTQMa0t8BMPJ4e4fgrkGz/4YN26E5XrpTvYpEcH8HNM=;
	b=UmW0I/jrZQRwqeiSUAVErovSDJz1UqYJIHQjoBBEde6adfUbVznj5U6U6qD16unmJf
	4o5Eufg/nVtGmXvNpby/AvTHBmM61Rq543HStrWOzv9WpRRJPERx90eDhGcGfVPTFJYF
	8LvMhqYeciOcQhj3DCuKi0SS9lM5IUSKqMUCsxl5vR0veSlm0mwfG+N7FagGUl/UsLCK
	xXpumB9PQ7VdAAzopwYNxVudQeI1ZunPlJD+94sJ1cdpRxhYN2nu2RhHJQHHkzZ0FGHU
	j0pphFv8cE0PM2O2qF3wXD463qQ6+OZoAlMbHd1zz8A1IfLiF8EXyRk/6XtsmukJQ6Ko
	05Uw==
X-Received: by 10.194.77.142 with SMTP id s14mr17201782wjw.94.1415370211074;
	Fri, 07 Nov 2014 06:23:31 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	gs9sm11948602wjc.47.2014.11.07.06.23.29 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Nov 2014 06:23:30 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 7 Nov 2014 15:23:36 +0100
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20141107142336.GC2444@jama>
References: <CACgAsMcN=jdAEgDj1G5XACGAec4K0PKYPhdSKwChXRBht6-BYw@mail.gmail.com>
	<545C0397.3030304@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <545C0397.3030304@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: gtest not found in the base feed
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
X-List-Received-Date: Fri, 07 Nov 2014 14:23:36 -0000
X-Groupsio-MsgNum: 22094
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="aT9PWwzfKXlsBJM1"
Content-Disposition: inline

--aT9PWwzfKXlsBJM1
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 06, 2014 at 04:26:15PM -0700, Gary Thomas wrote:
> On 2014-11-06 16:01, Kevyn-Alexandre Par=C3=A9 wrote:
> > Hi,
> >
> > I'm just trying to add a recipe that I found here
> >
> > https://github.com/webOS-ports/meta-webos-ports/blob/master/recipes-ups=
treamable/gtest/gtest_1.7.0.bb
> >
> > for gtest as part of my image:
> >
> > bitbake -e gtest | grep ^PACKAGES=3D
> > PACKAGES=3D"gtest-dbg gtest-staticdev gtest-dev gtest-doc gtest-locale =
 gtest"
> >
> > Adding it:
> > IMAGE_INSTALL +=3D "gtest"
> >
> > ERROR: gtest not found in the base feeds (overo armv7a-vfp-neon
> > armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5
> > armv4 arm noarch any all).
> >
> > Since in
> >
> > ls tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rp=
ms/armv7a_vfp_neon/
> > gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm  gtest-dev-1.7.0-r0.armv7a_vfp_n=
eon.rpm
>=20
> Where is the gtest-1.7.0-r0.armv7a_vfp_neon.rpm??
>=20
> I suspect that the build didn't work correctly, or at least it generated
> no installable objects which by default will not generate an empty packag=
e.

That's correct, all files are installed in gtest-dev package.

The problem is the default RDEPENDS from ${PN}-dev to ${PN}

meta/conf/bitbake.conf:RDEPENDS_${PN}-dev =3D "${PN} (=3D ${EXTENDPKGV})"

You can either set
ALLOW_EMPTY_${PN} =3D "1"
or
RDEPENDS_${PN}-dev =3D ""

> > tree tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/package=
s-split/
> > tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/packages-spl=
it/
> > =E2=94=9C=E2=94=80=E2=94=80 gtest
> > =E2=94=9C=E2=94=80=E2=94=80 gtest-dbg
> > =E2=94=9C=E2=94=80=E2=94=80 gtest-dev
> > =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 usr
> > =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 include
> > =E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 gtest
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-death=
-test.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-messa=
ge.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-param=
-test.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest_pred_=
impl.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-print=
ers.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest_prod.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-spi.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-test-=
part.h
> > =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-typed=
-test.h
> > =E2=94=82       =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 internal
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-d=
eath-test-internal.h
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-f=
ilepath.h
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-i=
nternal.h
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-l=
inked_ptr.h
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-p=
aram-util-generated.h
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-p=
aram-util.h
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-p=
ort.h
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-s=
tring.h
> > =E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-t=
uple.h
> > =E2=94=82       =E2=94=82           =E2=94=94=E2=94=80=E2=94=80 gtest-t=
ype-util.h
> > =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 src
> > =E2=94=82           =E2=94=94=E2=94=80=E2=94=80 gtest
> > =E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 cmake
> > =E2=94=82               =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 interna=
l_utils.cmake
> > =E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 CMakeLists.txt
> > =E2=94=82               =E2=94=94=E2=94=80=E2=94=80 src
> > =E2=94=82                   =E2=94=9C=E2=94=80=E2=94=80 gtest-all.cc
> > =E2=94=82                   =E2=94=9C=E2=94=80=E2=94=80 gtest.h
> > =E2=94=82                   =E2=94=94=E2=94=80=E2=94=80 gtest_main.cc
> > =E2=94=9C=E2=94=80=E2=94=80 gtest-doc
> > =E2=94=9C=E2=94=80=E2=94=80 gtest-locale
> > =E2=94=94=E2=94=80=E2=94=80 gtest-staticdev
> >
> > I replace gtest with gtest-dev.
> >
> >
> > ERROR: Unable to install packages. Command
> > '/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build=
/src/build/tmp/sysroots/x86_64-linux/usr/bin/smart
> > --data-dir=3D/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point=
/yocto_build/src/build/tmp/work/overo-poky-linux-gnueabi/builder-console-im=
age/1.0-r0/rootfs/var/lib/smart
> > install -y alsa-utils@armv7a_vfp_neon psplash@armv7a_vfp_neon
> > mtdev@armv7a_vfp_neon tar@armv7a_vfp_neon less@armv7a_vfp_neon
> > iputils@armv7a_vfp_neon mtd-utils-ubifs@armv7a_vfp_neon
> > sudo@armv7a_vfp_neon nirsd@armv7a_vfp_neon u-boot-fw-utils@overo
> > raw2rgbpnm@armv7a_vfp_neon vim@armv7a_vfp_neon
> > media-ctl@armv7a_vfp_neon findutils@armv7a_vfp_neon
> > rpm@armv7a_vfp_neon cpufrequtils@armv7a_vfp_neon
> > packagegroup-cli-tools@all bzip2@armv7a_vfp_neon
> > v4l-utils@armv7a_vfp_neon cmake@armv7a_vfp_neon nano@armv7a_vfp_neon
> > g++-symlinks@armv7a_vfp_neon gcc-dev@armv7a_vfp_neon
> > gcc-doc@armv7a_vfp_neon psplash-brainsight@armv7a_vfp_neon tzdata@all
> > coreutils@armv7a_vfp_neon g++@armv7a_vfp_neon gcov@armv7a_vfp_neon
> > init-ifupdown@overo tcpdump@armv7a_vfp_neon
> > systemd-analyze@armv7a_vfp_neon packagegroup-core-boot@overo
> > memtester@armv7a_vfp_neon yavta@armv7a_vfp_neon
> > cpp-symlinks@armv7a_vfp_neon libts-1.0-0@armv7a_vfp_neon
> > gcc-plugin-dev@armv7a_vfp_neon gzip@armv7a_vfp_neon
> > packagegroup-core-ssh-openssh@all ntp@armv7a_vfp_neon
> > libev4@armv7a_vfp_neon packagegroup-cli-tools-debug@all
> > gcc@armv7a_vfp_neon u-boot@overo cpp@armv7a_vfp_neon
> > gtest-dev@armv7a_vfp_neon iw@armv7a_vfp_neon wget@armv7a_vfp_neon
> > shadow@armv7a_vfp_neon zygoted@armv7a_vfp_neon
> > gcc-plugins@armv7a_vfp_neon grep@armv7a_vfp_neon zip@armv7a_vfp_neon
> > diffutils@armv7a_vfp_neon valgrind@armv7a_vfp_neon
> > linux-firmware-sd8787@all linux-firmware-sd8686@all
> > smartpm@armv7a_vfp_neon gcc-dbg@armv7a_vfp_neon
> > gcc-symlinks@armv7a_vfp_neon packagegroup-base-extended@overo
> > u-boot-mkimage@armv7a_vfp_neon base-passwd@armv7a_vfp_neon
> > locale-base-en-us@armv7a_vfp_neon' returned 1:
> > Loading cache...
> > Updating cache...               #######################################=
# [100%]
> >
> > Computing transaction...error: Can't install
> > gtest-dev-1.7.0-r0@armv7a_vfp_neon: no package provides gtest =3D
> > 1.7.0-r0
> >
> >
> > ERROR: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> > /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/=
src/build/tmp/work/overo-poky-linux-gnueabi/builder-console-image/1.0-r0/te=
mp/log.do_rootfs.11446
> > ERROR: Task 7 (/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_poi=
nt/yocto_build/src/poky/meta-nirs/recipes-images/gumstix/builder-console-im=
age.bb,
> > do_rootfs) failed with exit code '1'
> >
> >
> > But I see them
> > ls tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rp=
ms/armv7a_vfp_neon/
> > gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm  gtest-dev-1.7.0-r0.armv7a_vfp_n=
eon.rpm
> >
> > Any clue what I'm missing?
> >
> > BR,
> >
> > -KA
> >
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--aT9PWwzfKXlsBJM1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRc1egACgkQN1Ujt2V2gBxWZwCeLvyZWQPzeaMkeAhBhEYhlGaz
IL8AnRzpVRsmJi8H242mm5T+VOJYMFaI
=o0po
-----END PGP SIGNATURE-----

--aT9PWwzfKXlsBJM1--
