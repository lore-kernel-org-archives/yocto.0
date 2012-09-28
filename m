Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4451AE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:37:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Sep 2012 11:37:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,503,1344236400"; d="scan'208";a="199465486"
Received: from fmsmsx106.amr.corp.intel.com ([10.19.9.37])
	by orsmga001.jf.intel.com with ESMTP; 28 Sep 2012 11:37:51 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.19.9.29) by
	FMSMSX106.amr.corp.intel.com (10.19.9.37) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 28 Sep 2012 11:37:50 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.213]) by
	fmsmsx110.amr.corp.intel.com ([169.254.12.231]) with mapi id
	14.01.0355.002; Fri, 28 Sep 2012 11:37:50 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Rudolf Streif
	<rudolf.streif@linux.com>
Thread-Topic: [yocto] The term Package as used in the YP docs
Thread-Index: Ac2dpRsLh9EQgU5BRbiGnRBZQLE+jwAPIC2AAAA7dQAADpyIkA==
Date: Fri, 28 Sep 2012 18:37:50 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A73111@FMSMSX151.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
	<31384487.oKEco2inpj@helios>
In-Reply-To: <31384487.oKEco2inpj@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 18:37:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have tried to weed out the ambiguous use of "package" for this upcoming v=
ersion of the manual set.  I don't think I would want to suggest changing a=
ny of the "P*" type variable names in the code.  I agree with Paul here tha=
t the potential for really messing things up out-weighs any other benefit. =
 This is why I was trying to worm in a bit of history behind those names fo=
r the people that might struggle like me.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Friday, September 28, 2012 11:34 AM
To: Rudolf Streif
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] The term Package as used in the YP docs

On Friday 28 September 2012 11:27:37 Rudolf Streif wrote:
> +1
>=20
> I agree with Scott's definition. In the general Linux context a Package i=
s
> a compilation of binaries, documentation, development files, etc. wrapped
> up in a format that can be used by a package management system to install
> it on a target system.

No dispute there.

> It is somewhat confusing that YP and OE use the term 'package' synonymous=
ly
> with 'recipe'. In most cases a package is the output of a recipe.

The thing is, we no longer do that - we've fixed a number of references in =
the=20
documentation, help text and error messages for this release so that "recip=
e"=20
is used when that's what we mean. If we've left any references that should =
be=20
considered a bug.
=20
> Unfortunately, changing variables like P, PN, PV, PR etc.
> may cause some pain. If a transition is what the broader community would
> like to achieve then a period where old and new variables can be used
> interchangeably (if possible) would be the way to go.

I'm not sure there's a huge amount to be gained by doing this when weighed=
=20
against the cost - it would certainly cause a massive amount of churn, with=
=20
the potential for problems with layer interaction where one layer has done =
the=20
big rename and another that bbappends recipes in the first hasn't.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

