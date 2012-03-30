Return-Path: <koen@dominion.thruhere.net>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21C65E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 14:12:41 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2786099pbb.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 14:12:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=wKXyH7KYzMn7475PJli3fARrOzzdSt5ZDYz8Adm4m50=;
	b=cibSTKXhPpD6uqeqDjlhAQ46xKkMTkJk+lPkuHXciCXw0+3xlsn3inFEMS2NNPKzr+
	KREVItxt14UmVEwrqkICZg9tsp/490ddtx6b92RG/9Bjb4xdLjuo0rSEYfWCReqtGE5l
	2475+eOSY9OVOQFRlEcL2MEfNCoWzS5YYQihU9tB8KMYcZEeTiKtNfqAvSTaJecXgsBp
	ChO4UcX9iRmd++lAOEKISwCdpUddH/3X7NsndJckAjrdgoeHgafxA5Cp2Cov6Mhxnjtz
	2K4VdZoI/8esslCI5GyTe1QMe5lqpt7HBW8fhnDA9Bn0h87UpCO+eE9O4DCxXYnWMWa9
	j82A==
Received: by 10.68.194.103 with SMTP id hv7mr503241pbc.133.1333141961763;
	Fri, 30 Mar 2012 14:12:41 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id j10sm6082550pbf.0.2012.03.30.14.12.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 14:12:40 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CALZ2gZXm0G+uie_H20j3M_d8FmnB_h+xbTHBF-fQhZfTn3cZ3Q@mail.gmail.com>
Date: Fri, 30 Mar 2012 14:12:49 -0700
Message-Id: <EA90E465-8DD4-44A6-8005-F8B3DE3350F0@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com>
	<CALZ2gZXm0G+uie_H20j3M_d8FmnB_h+xbTHBF-fQhZfTn3cZ3Q@mail.gmail.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQnJszJd8GzH6GUmTBbSm2xPuRsliCxdyuBVAmOyyGEG224DqEnXwNIKu/ETX9WhRw4VbuGk
Cc: "yocto@yoctoproject.org list" <yocto@yoctoproject.org>
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 21:12:42 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

My apologies for loosing the reply indent, I blame apple mail

Op 30 mrt. 2012, om 14:01 heeft Osier-mixon, Jeffrey het volgende =
geschreven:
>=20
> Angstrom does use oe-core, but I don't think it uses linux-yocto =
(right?) and definitely not meta-yocto.=20

linux-yocto is a kernel, which is used by machines in meta-intel, which =
angstrom supports (only fri2 atm), so the choice to use or not use =
linux-yocto is up to th e BSP, not to angstrom. OE was founded on the =
principle that machines, images and distros are orthogonal. Angstrom =
does cheat a bit with images, but it is *not* changing any machine =
definitions.

This is what angstrom is currently using:

[koen@Angstrom-F16-vm-rpm setup-scripts]$ cat sources/layers.txt=20
# Name,repo-uri,branch,rev
bitbake,git://github.com/openembedded/bitbake.git,master,HEAD
=
meta-angstrom,git://github.com/Angstrom-distribution/meta-angstrom,master,=
HEAD
meta-openembedded,git://github.com/openembedded/meta-oe.git,master,HEAD
meta-ti,git://git.yoctoproject.org/meta-ti,master,HEAD
meta-ettus,git://github.com/balister/meta-ettus.git,master,HEAD
meta-efikamx,git://github.com/kraj/meta-efikamx.git,master,HEAD
meta-nslu2,git://github.com/kraj/meta-nslu2.git,master,HEAD
=
meta-smartphone,http://git.shr-project.org/repo/meta-smartphone.git,master=
,HEAD
meta-intel,git://git.yoctoproject.org/meta-intel,master,HEAD
meta-xilinx,git://git.yoctoproject.org/meta-xilinx,master,HEAD
=
meta-openpandora,git://github.com/openpandora/meta-openpandora.git,master,=
HEAD
meta-handheld,git://git.openembedded.org/meta-handheld,master,HEAD
meta-opie,git://github.com/bluelightning/meta-opie.git,master,HEAD
meta-java,git://github.com/woglinde/meta-java.git,master,HEAD
meta-mozilla,git://github.com/OSSystems/meta-mozilla.git,master,HEAD
meta-mono,git://github.com/KokoFitClub/meta-mono.git,master,HEAD
openembedded-core,git://github.com/openembedded/oe-core.git,master,HEAD

It will add more bsp layers soon (fsl-ppc, fsl-arm, etc) before the =
release.

And the layer config:

[koen@Angstrom-F16-vm-rpm setup-scripts]$ cat conf/bblayers.conf=20
# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "4"
TOPDIR :=3D "${@os.path.dirname(os.path.dirname(d.getVar('FILE', =
True)))}"

BBPATH =3D "${TOPDIR}"

BBFILES =3D ""

# These layers hold recipe metadata not found in OE-core, but lack any =
machine or distro content
BASELAYERS ?=3D " \
  ${TOPDIR}/sources/meta-openembedded/meta-oe \
  ${TOPDIR}/sources/meta-openembedded/toolchain-layer \
  ${TOPDIR}/sources/meta-openembedded/meta-efl \
  ${TOPDIR}/sources/meta-openembedded/meta-gpe \
  ${TOPDIR}/sources/meta-openembedded/meta-gnome \
  ${TOPDIR}/sources/meta-openembedded/meta-xfce \
  ${TOPDIR}/sources/meta-openembedded/meta-initramfs \
  ${TOPDIR}/sources/meta-opie \
  ${TOPDIR}/sources/meta-java \
  ${TOPDIR}/sources/meta-mozilla \
"

# These layers hold machine specific content, aka Board Support Packages
BSPLAYERS ?=3D " \
  ${TOPDIR}/sources/meta-ti \
  ${TOPDIR}/sources/meta-efikamx \
  ${TOPDIR}/sources/meta-nslu2 \
  ${TOPDIR}/sources/meta-smartphone/meta-htc \
  ${TOPDIR}/sources/meta-smartphone/meta-nokia \
  ${TOPDIR}/sources/meta-smartphone/meta-openmoko \
  ${TOPDIR}/sources/meta-smartphone/meta-palm \
  ${TOPDIR}/sources/meta-handheld \
  ${TOPDIR}/sources/meta-intel \
  ${TOPDIR}/sources/meta-intel/meta-sugarbay \
  ${TOPDIR}/sources/meta-intel/meta-crownbay \
  ${TOPDIR}/sources/meta-intel/meta-emenlow \
  ${TOPDIR}/sources/meta-intel/meta-fishriver \
  ${TOPDIR}/sources/meta-intel/meta-jasperforest \
  ${TOPDIR}/sources/meta-intel/meta-n450 \
"

# Add your overlay location to EXTRALAYERS
# Make sure to have a conf/layers.conf in there
EXTRALAYERS ?=3D ""

BBLAYERS =3D " \
  ${TOPDIR}/sources/meta-angstrom \
  ${BASELAYERS} \
  ${BSPLAYERS} \
  ${EXTRALAYERS} \
  ${TOPDIR}/sources/openembedded-core/meta \
  "

regards,

Koen=

