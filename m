Return-Path: <rcalhoun@shotspotter.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F17DAE01716
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 14:10:39 -0800 (PST)
Received: from mail56-tx2-R.bigfish.com (10.9.14.231) by
	TX2EHSOBE013.bigfish.com (10.9.40.33) with Microsoft SMTP Server id
	14.1.225.22; Tue, 5 Nov 2013 22:10:38 +0000
Received: from mail56-tx2 (localhost [127.0.0.1])	by mail56-tx2-R.bigfish.com
	(Postfix) with ESMTP id 131B03C004C;
	Tue,  5 Nov 2013 22:10:38 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:157.56.240.85; KIP:(null); UIP:(null); IPV:NLI;
	H:BL2PRD0410HT002.namprd04.prod.outlook.com; RD:none; EFVD:NLI
X-SpamScore: -8
X-BigFish: PS-8(zzd772h542I1432I444eM1521Izz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzz1de098h8275bh8275dh1de097h186068hz2fh109h2a8h839h947he5bhf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah224fh1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e1dh1fe8h1ff5h209eh2216h1155h)
Received-SPF: pass (mail56-tx2: domain of shotspotter.com designates
	157.56.240.85 as permitted sender) client-ip=157.56.240.85;
	envelope-from=rcalhoun@shotspotter.com;
	helo=BL2PRD0410HT002.namprd04.prod.outlook.com ; .outlook.com ; 
Received: from mail56-tx2 (localhost.localdomain [127.0.0.1]) by mail56-tx2
	(MessageSwitch) id 1383689435761627_20861;
	Tue,  5 Nov 2013 22:10:35 +0000 (UTC)
Received: from TX2EHSMHS042.bigfish.com (unknown [10.9.14.243])	by
	mail56-tx2.bigfish.com (Postfix) with ESMTP id B4EBF1200E9;
	Tue,  5 Nov 2013 22:10:35 +0000 (UTC)
Received: from BL2PRD0410HT002.namprd04.prod.outlook.com (157.56.240.85) by
	TX2EHSMHS042.bigfish.com (10.9.99.142) with Microsoft SMTP Server (TLS)
	id 14.16.227.3; Tue, 5 Nov 2013 22:10:35 +0000
Received: from BL2PRD0410MB349.namprd04.prod.outlook.com ([169.254.9.227]) by
	BL2PRD0410HT002.namprd04.prod.outlook.com ([10.255.99.37]) with mapi
	id 14.16.0371.000; Tue, 5 Nov 2013 22:10:35 +0000
From: Robert Calhoun <rcalhoun@shotspotter.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	=?iso-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Thread-Topic: [yocto] SRCREV how is it supposed to work?
Thread-Index: AQHO1Jy3a5OKoMihjUa3S/HxMgW1cpoLgvUAgAApDQCAAAQ4AIAACnuAgAqt+gCAABf1AIAAafwA
Date: Tue, 5 Nov 2013 22:10:34 +0000
Message-ID: <CE9EC8E7.1E1933%rcalhoun@shotspotter.com>
In-Reply-To: <1589538.2ShOaANikJ@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.8.130913
x-originating-ip: [10.255.99.4]
MIME-Version: 1.0
X-OriginatorOrg: shotspotter.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV how is it supposed to work?
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
X-List-Received-Date: Tue, 05 Nov 2013 22:10:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <5FF86C77DE98054EB29F3CE13E4E4B27@namprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

-----Original Message-----
From: Paul Eggleton <paul.eggleton@linux.intel.com>
>
>AFAIK, there are two recommended values for SRCREV assuming you are
>fetching=20
>from an SCM at all:
>
>A) A specific revision (SHA1 hash when fetching from git)
>
>or
>
>B) "${AUTOREV}" if you want to always build the latest version available
>at=20
>time of building. If you want to build the latest version from a branch,
>specify it in branch=3D in the SRC_URI entry.
>
>Anything else isn't really a good idea. Sometimes I wonder if we ought to
>just=20
>tighten this up so that only settings that make sense can be set.

The current behavior is a little non-intuitive, since using SRCREV =3D
"${AUTOREV}"=20
alone will not force the package to be rebuilt when SRCREV changes. Unless
I am
mistaken, $PV needs to be modified also. But modifying $PV causes its own
headaches with patching, so I've ended up using recipes based on the model
below.

Another challenge is that bitbake's fetch2 is not very well documented. I
don't
think the "user" and "pswd" fields for the svn fetcher are documented
anywhere
outside of the source code.

I'd love to help address this, but I'm not sure where I should submit
updated documentation. Is this the right place?

git://git.yoctoproject.org/yocto-docs


Hans, below is a model recipe for building current head-of-line from a
subversion repository:

-Rob Calhoun
SST Inc
=20



######################

DESCRIPTION =3D "example_1.0.bb, autorevving checkout example"

# This says look for LICENSE in the root of the directory being checked
out. Fix
# license filename and md5sum as required.
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dabc123"

# this is the rev of your recipe. Bumping it will toss the cache and redo
everything
PR =3D "r1"

# pick up latest svn rev for this module. Note this a deferred evaluation!
SRCREV =3D "${AUTOREV}"

# ${PV} is pulled from the recipe filename, e.g. helloworld_2.7.bb ->
${PV} expands to "2.7".
# We use immediate evaluation to define a new var PVBASE holding the
original value of ${PV}.
PVBASE :=3D "${PV}"

# We need to tell bitbake about our current directory structure or we
won't be able to find patches after we mess with ${PV}
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PVBASE}:"

# Then redefine PV to tack the svn rev onto the base version. This is
evaluated at fetch time.
# Then the package will get rebuilt any time the relevant part of the
source tree changes.
PV =3D "${PVBASE}.${SRCPV}"

# Now we format the source code URI.
# There is nothing special about "module"; it is just the final directory
of the svn checkout.
# SRC_URI below is equivalent to the svn command:
# "svn checkout --username=3Dpoky --password=3Dxyzzy
https://svn.example.com/repo/trunk/example"
#
SRC_URI=3D=20
"svn://svn.example.com/repo/trunk;module=3Dexample;protocol=3Dhttps;user=3D=
poky;p
swd=3Dxyzzy"

# build will fail without this; it specifies where in the workdir to find
the source. The
# name must be the same as the "module" name in SRC_URI.
S =3D "${WORKDIR}/example"

# BELOW NOT PART OF RECIPE; IT SHOWS WHAT THE WORK DIR LOOKS LIKE WITH
THIS RECIPE.
# By setting PV, the cache is invalidated and new code checked out each
time the=20
# relevant part oF the svn repo gets updated because I've made the svn
revision look
# like a package version number to bitbake.
#
# Here is a directory listing of the work dir:
#
#=20
poky@build:/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/example$
 ls -l
#drwxrwxr-x 12 poky poky 4096 Oct 30 10:17 1.0.57400-r1
#drwxrwxr-x 12 poky poky 4096 Oct 30 11:52 1.0.57401-r1
#drwxrwxr-x 12 poky poky 4096 Oct 31 12:37 1.0.57408-r1
#drwxrwxr-x 12 poky poky 4096 Nov  1 07:56 1.0.57412-r1





