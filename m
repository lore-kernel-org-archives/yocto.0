Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE72E003D6
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 14:39:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Oct 2012 14:39:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,609,1344236400"; d="scan'208";a="157849505"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Oct 2012 14:39:46 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 18 Oct 2012 14:39:45 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.119]) with mapi id
	14.01.0355.002; Thu, 18 Oct 2012 14:39:45 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Requesting information on some variables
Thread-Index: Ac2sfKRdyc0rTfLZQFek7qOD0wY7zQAPla4AAA5X3RD//9U4gIAAb6TAgABrSAD//6cIQA==
Date: Thu, 18 Oct 2012 21:39:45 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A8E584@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-ovhd30EZ3R68R=o4=iWb5MJqZAAenwRo2yJg+_Tn1NTQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2E@ORSMSX101.amr.corp.intel.com>
	<1444424.PbzRs5XmCV@helios>
In-Reply-To: <1444424.PbzRs5XmCV@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
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
X-List-Received-Date: Thu, 18 Oct 2012 21:39:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have cleaned some of this stuff up.  Still need to add DISTRO_EXTRA_RDEPE=
NDS.

See the ref manual at http://yoctoproject.org/docs/1.3/poky-ref-manual/poky=
-ref-manual.html

Scott

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Thursday, October 18, 2012 2:20 AM
To: Rifenbark, Scott M
Cc: Rudolf Streif; yocto@yoctoproject.org
Subject: Re: [yocto] Requesting information on some variables

On Wednesday 17 October 2012 21:07:20 Rifenbark, Scott M wrote:
> Thanks for the added investigation here.  The original bug report listed
> COMMON_FEATURES as an undocumented variable.  I see, however, that the
> variable referred to by both you and Paul Eggleton is COMBINED_FEATURES. =
 I
> just did a grep through my entire poky tree, which had built out the
> core-image-minimal image for the qemux86 MACHINE and came up empty for
> "COMMON_FEATURES" except where the string is part of other variables.  So=
,
> it appears there is no COMMON_FEATURES variable.
>
> According to Paul, COMBINED_FEATURES is a list of features common to both
> MACHINE_FEATURES and DISTRO_FEATURES.

Yes, the variable is COMBINED_FEATURES.

> It also seems that the lists presented in the documentation for both vali=
d
> distro and machine options are not really finite lists.

Correct, the list is not set in stone. People are free to add new features =
to=20
MACHINE_FEATURES and DISTRO_FEATURES in their own setups and check for them=
 in=20
their own recipes/configuration files if it helps them handle different mac=
hines=20
they want to target or different types of distros they want to build=20
respectively. However, we should document all of the features we have defin=
ed=20
out of the box.

> But, the fact that you grep'ed out such a huge list of
> DF below shows that they far exceed the 16 features listed in the
> documentation.  I'll update the preamble to the "Distro" and "Machine"
> sections in the reference manual when I get the real story on those lists=
.

I can try to help document all of the features. It's possible that some of=
=20
them that we refer to are effectively placeholders that don't do anything a=
t=20
the moment (e.g. ipv6 in DISTRO_FEATURES).

> I don't know the relationship between "features" and "packages"...  maybe=
 it
> is a one-to-one relationship.=20

It's definitely not 1-1, and sometimes a feature doesn't just control the=20
installation of a package or packages, but influences how certain recipes a=
re=20
built, e.g. it might determine whether a particular configure option is=20
specified within do_configure for a particular recipe.

> But, there are some other variables that
> affect packages and features (according to the documentation) that are
> considered during the build.  These are the ones listed in the manual's
> glossary section:
>=20
> *         MACHINE_ESSENTIAL_EXTRA_RDEPENDS
>=20
> *         MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS
>=20
> *         MACHINE_EXTRA_RDEPENDS
>=20
> *         MACHINE_EXTRA-RRECOMMENDS
>=20
> *         DISTRO_EXTRA_RRECOMMENDS

Let's not muddy the waters too much here - these aren't directly related to=
=20
features although they are related to machine and distro configuration.

> I suspect that there is a DISTRO_EXTRA_RDEPENDS variable as well but I do=
n't
> have it in the manual (should be added if so). =20

Yes, that exists and should be documented.

> Also, not sure if there are variables for DISTRO_ESSENTIAL_EXTRA_RDEPENDS
> and DISTRO_ESSENTIAL_EXTRA_RRECOMMENDS.  If those really exist, then I ne=
ed
> to add them as well.

No, there are no such variables.

> Finally, the BACKFILL variables also contribute to the MACHINE_FEATURES a=
nd
> DISTRO_FEATURES set.  It looks like *_FEATURES_BACKFILL, which is set in
> the bitbake.conf file, is a way to make sure a feature is always included
> as part of *_FEATURES. While *_BACKFILL_CONSIDERED is used in specific
> machine configurations (<machine>.conf) to disable a particular feature
> when it also appears with *_FEATURES_BACKFILL.   So these variables add t=
o
> the mix also.

We have added the 9.4 section on "Feature backfilling" that should cover wh=
at=20
these are for and how they work. If the explanation there is not clear enou=
gh=20
then by all means lets enhance that section and/or the entries in the gloss=
ary=20
for these variables, but they are at least documented now.
=20
Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

