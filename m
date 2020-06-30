Received: from esa4.bmw.c3s2.iphmx.com (esa4.bmw.c3s2.iphmx.com [68.232.139.62])
 by mx.groups.io with SMTP id smtpd.web10.12292.1593511676968847389
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 03:07:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=OlTIWWcl;
 spf=pass (domain: bmw.de, ip: 68.232.139.62, mailfrom: prvs=44347a8e0=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1593511676; x=1625047676;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=sYyWe25D1ggT7Hfpl8lImPm9AZxCvdqGwb7+1CcrU3c=;
  b=OlTIWWcl9ESP4i5jQhA9jCY/wfTaMb+OxFikqB6z+mhF2Z9wlD5bafF1
   2BY5caNzJHySAPrEkinp4iFguNDxenrbaStboLj0Yg+c3pC9xEuRPIld7
   JvXDO5M66LqKyyx2hEKTLozXSh64D29bdNAH71THcDHS/92fCU1Fa2DsR
   s=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa4.bmw.c3s2.iphmx.com with ESMTP/TLS; 30 Jun 2020 12:07:54 +0200
Received: from esabb4.muc ([160.50.100.33])  by esagw4.muc with ESMTP/TLS;
 30 Jun 2020 12:07:54 +0200
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb4.muc with ESMTP/TLS; 30 Jun 2020 12:07:54 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Tue, 30 Jun 2020 12:07:54 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.006; Tue,
 30 Jun 2020 12:07:54 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <john.ernberg@actia.se>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] INCOMPATIBLE_LICENSE - how to use it properly?
Thread-Topic: [yocto] INCOMPATIBLE_LICENSE - how to use it properly?
Thread-Index: AQHWTsGsti6IBxq3eUqDhkIqYh9VRajwzZcA
Date: Tue, 30 Jun 2020 10:07:53 +0000
Message-ID: <20200630100752.GW108868@korppu>
References: <c57c1a5d-8b83-c9c8-7eba-20edf63e0de0@actia.se>
In-Reply-To: <c57c1a5d-8b83-c9c8-7eba-20edf63e0de0@actia.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <595B9A136681AB429B43E2090A30565C@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 30, 2020 at 09:34:39AM +0000, John Ernberg wrote:
> Hi,
>=20
> I have been trying to use INCOMPATIBLE_LICENSE to filter out undesirable=
=20
> licenses for us from our images. I started simple and picked the=20
> examples from the manual (AGPL-3.0, GPL-3.0 and LGPL-3.0).
>=20
> Currently we're based on Warrior, but I also did a short test on master=20
> (results later in the message)
>=20
> Our images use systemd as init system. We use busybox ash as shell on=20
> these images for now.
>=20
> When setting the INCOMPATIBLE_LICENSE according to the manual example,=20
> systemd cannot be built anymore because bash is being skipped due to=20
> license.
>=20
> Turns out that because systemd-bash-completion and=20
> systemd-kernel-install both rdepend on bash, we can't build systemd at=20
> all, because bash is not buildable. Even if we're not installing those=20
> features of systemd.
>=20
> A dive into TaskData suggests that all the rdepends of all packages=20
> provided by a recipe are flattened into depends of the recipe when=20
> testing buildability.
>=20
> A quick test on master from about 2 weeks ago show the same behavior.
>=20
> For the test on master all I did was change the DISTRO_FEATURES of=20
> core-image-minimal to include systemd.
>=20
>=20
> Am I using ICOMPATIBLE_LICENSE properly so far?
> If so, is being unable to fulfill an rdepend for an unused package meant=
=20
> to fail the whole build, and how can I avoid it short of including=20
> meta-gplv2 or writing lots of .bbappends to remove the dependencies?
> Otherwise, where did I go wrong, and what should I be trying instead?

You need to add exceptions to build a lot GPLv3 components but not let them
be part of product images.

In distro config:

INCOMPATIBLE_LICENSE +=3D "GPLv3 GPLv3+ LGPLv3 LGPLv3+"
...
WHITELIST_GPL-3.0 +=3D "bash"
PACKAGE_EXCLUDE +=3D "bash-ptest bash-dbg bash-staticdev bash-dev bash-doc =
bash-locale bashbug bash"
...

The PACKAGE_EXCLUDE must be complete list of binary packages produced by th=
e recipe.

I end up enabling a large set of GPLv3 tools for use as development tooling=
 at build
time or in SDK:

$ grep WHITELIST_ distro.conf
WHITELIST_GPL-3.0 +=3D "autoconf"
WHITELIST_GPL-3.0 +=3D "bash"
WHITELIST_GPL-3.0 +=3D "bc"
WHITELIST_GPL-3.0 +=3D "binutils"
WHITELIST_GPL-3.0 +=3D "bison"
WHITELIST_GPL-3.0 +=3D "ccache"
WHITELIST_GPL-3.0 +=3D "coreutils"
WHITELIST_GPL-3.0 +=3D "diffutils"
WHITELIST_GPL-3.0 +=3D "elfutils"
WHITELIST_GPL-3.0 +=3D "findutils"
WHITELIST_GPL-3.0 +=3D "gawk"
WHITELIST_GPL-3.0 +=3D "gdb"
WHITELIST_GPL-3.0 +=3D "gdbm"
WHITELIST_GPL-3.0 +=3D "gettext"
WHITELIST_GPL-3.0 +=3D "gnutls"
WHITELIST_GPL-3.0 +=3D "grep"
WHITELIST_GPL-3.0 +=3D "libevent"
WHITELIST_GPL-3.0 +=3D "libpipeline"
WHITELIST_GPL-3.0 +=3D "libunistring"
WHITELIST_GPL-3.0 +=3D "m4"
WHITELIST_GPL-3.0 +=3D "make"
WHITELIST_GPL-3.0 +=3D "readline"
WHITELIST_GPL-3.0 +=3D "rsync"
WHITELIST_GPL-3.0 +=3D "sed"
WHITELIST_GPL-3.0 +=3D "which"

If one does not do this, alternative is to use a bunch of old and deprecate=
d tool
versions from meta-gplv2.

Hope this helps,

-Mikko=
