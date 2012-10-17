Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FEE4E0027E
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 09:08:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Oct 2012 09:08:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,601,1344236400"; d="scan'208";a="205653124"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 17 Oct 2012 09:08:25 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 17 Oct 2012 09:08:24 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.119]) with mapi id
	14.01.0355.002; Wed, 17 Oct 2012 09:08:24 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Requesting information on some variables
Thread-Index: Ac2sfKRdyc0rTfLZQFek7qOD0wY7zQAPla4AAA5X3RA=
Date: Wed, 17 Oct 2012 16:08:23 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85D13@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
	<8390795.VYneHzJZUd@helios>
In-Reply-To: <8390795.VYneHzJZUd@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Requesting information on some variables
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
X-List-Received-Date: Wed, 17 Oct 2012 16:08:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is helpful... thanks Paul.

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Wednesday, October 17, 2012 8:59 AM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Requesting information on some variables

On Wednesday 17 October 2012 15:32:40 Rifenbark, Scott M wrote:
> There is a bug (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3292)
> stating that we need better documentation describing how DISTRO_FEATURES,
> COMMON_FEATURES, and MACHINE_FEATURES actually affect the build.  I don't
> know anything about these variables beyond what is in the reference manua=
l:
>=20
> http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html=
#va
> r-DISTRO_FEATURES
> http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html=
#v
> ar-MACHINE_FEATURES (no current entry for  COMMON_FEATURES)
>=20
> Can anyone provide additional information for these three variables and h=
ow
> they interact with the build system and with one another?

Looking at the bug report I'm guessing Darren was looking at the current=20
version of the documentation prior to adding a link to the section that lis=
ts=20
DISTRO_FEATURES options (which only got added recently). However that list =
is=20
incomplete and even then it does not explain how you would determine what t=
he=20
actual effect of adding or removing a feature would be.

I think Darren's suggestion of using "git grep" to find the actual effect i=
s=20
good, after some preamble that mentions we use the "base_contains" function=
 in=20
various recipes and configuration files in order to change behaviour based =
on=20
the presence or absence of features, giving at least one example from the=20
current metadata.

Some explanation of how these variables relate to eachother:

* DISTRO_FEATURES is used to enable/disable software features (some of whic=
h=20
are related to hardware feature support). This is set in the distro .conf f=
ile.

* MACHINE_FEATURES describes what hardware features a specific machine=20
supports. It is set in the machine .conf file.

* COMBINED_FEATURES lists features both enabled by DISTRO_FEATURES and=20
supported by the hardware as declared by MACHINE_FEATURES. It is set=20
automatically by the build system.

The COMBINED_FEATURES mechanism allows a BSP to declare that a piece of=20
hardware supports a feature, but a person building a distro (or OS) to deci=
de=20
that they don't want to support the feature; thus the feature only gets=20
enabled in the software if it appears on in both places.

Cheers,
Paul

=20
> Thanks,
> Scott
>=20
>=20
> Bug 3292
>=20
> The documentation for the following variables:
>=20
> DISTRO_FEATURES
> COMMON_FEATURES
> MACHINE_FEATURES
>=20
> is inadequate to instruct would-be users of how changes will impact the
> system.
>=20
> These variables combine to determine various aspects of how images and
> packages are built. They impact RDEPENDS of various packagegroups, impact
> the way live images are built, and certainly others. MACHINE_FEATURES as =
a
> documented list of values, DISTRO_FEATURES does not. I do not see
> COMMON_FEATURES listed at all.
>=20
> A discussion of how these interrelate and how someone can discover the ex=
act
> impact from the sources would be useful. For example, using "git grep
> 'contains.*MACHINE_FEATURES.*<FEATURE>'" to discover how the build is
> impacted would be a useful addition.
>=20
> It isn't practical to define the dependency chains in the documentation, =
but
> providing the user with the background and tools to discover them seems
> appropriate.
>=20
>=20
> Scott Rifenbark
> Intel Corporation
> Yocto Project Documentation
> 503.712.2702
> 503.341.0418 (cell)
--=20

Paul Eggleton
Intel Open Source Technology Centre

