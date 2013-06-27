Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D64E01466
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 20:08:09 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Wed, 26 Jun 2013 23:08:08 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 26 Jun 2013 23:08:07 -0400
Thread-Topic: Kernel patch is unpacked but not applied
Thread-Index: Ac5y44v7apZGlzXpQQqp4y3ahHipXg==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4013B91292051@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 008FFBFD004A70008FFD4A
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Kernel patch is unpacked but not applied
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
X-List-Received-Date: Thu, 27 Jun 2013 03:08:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am building a custom Linux kernel under poky-dylan and I am having an iss=
ue with patches being unpacked but not applied.  I have two layers that hav=
e a bbappend file for the kernel.  Generally, this is what each bbappend fi=
le looks like:

#First .bbappend

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
COMPATIBLE_MACHINE_mach1 =3D "mach1"
COMPATIBLE_MACHINE_mach2 =3D "mach2"
SRC_URI_append_mach2 =3D " file://${MACHINE}/${KBRANCH}/0001-blah.patch \
    file://${MACHINE}/${KBRANCH}/0002-blah.patch \
    "

# Increment the recipe revision
PRINC :=3D "${@int(PRINC) + 1}"

# Second .bbappend

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
COMPATIBLE_MACHINE_mach1 =3D "mach1"
COMPATIBLE_MACHINE_mach2 =3D "mach2"
SRC_URI_append_mach2 =3D " file://${MACHINE}/${KBRANCH}/0003-blah.patch \
    file://${MACHINE}/${KBRANCH}/0004-blah.patch \
    "

# Increment the recipe revision
PRINC :=3D "${@int(PRINC) + 1}"

All of the patch files are properly unpacked, but the last two patches are =
not being applied.  If I open the devshell for the kernel (bitbake -c devsh=
ell linux-yocto-custom) I can see in the git log that the first patch set w=
as applied.  The second patch set exists but is not applied.  If I call "gu=
ilt push" repeatedly from the devshell, the patches from the second set are=
 cleanly applied.  My guess is that something doesn't like the second SRC_U=
RI_append call.  Any ideas on how to fix it?

Thanks,
Bryan

