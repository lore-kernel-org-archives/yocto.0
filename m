Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6497AE006AD
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 08:06:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jul 2012 08:06:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="160982844"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 03 Jul 2012 08:06:36 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Jul 2012 08:06:35 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.138]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 08:06:34 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Chris Larson <clarson@kergoth.com>, Markus Hubig <mhubig@imko.de>
Thread-Topic: [yocto] How to use PRINC
Thread-Index: AQHNWGvVM+6AgbzgKkCXC9KoOdCBppcWnWcAgAEMhhA=
Date: Tue, 3 Jul 2012 15:06:34 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1F7A9@ORSMSX101.amr.corp.intel.com>
References: <CAGws1Tum5GZuXam-Cbo4tk3YBreetpvSy2LzcAUB4dV8BWqdKQ@mail.gmail.com>
	<CABcZANmYT+_+o2TiSs_KvFOo9Pv3m0rtNbvz=8BcjZXUwOs6Ug@mail.gmail.com>
In-Reply-To: <CABcZANmYT+_+o2TiSs_KvFOo9Pv3m0rtNbvz=8BcjZXUwOs6Ug@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: How to use PRINC
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
X-List-Received-Date: Tue, 03 Jul 2012 15:06:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> For this example the focus is on the FILESEXTRAPATHS_prepend line in=20
> the .bbappend file.  The PRINC =3D "1" line is included in the example=20
> because that is how the file actually appears.  Is the proper thing to=20
> change that line to PRINC :=3D "${@int(PRINC) + 2}" ??
>=20
> And would the reason be because I am overriding the file in SRC_URI.
> I guess I am unsure as to whether we increment PR here in this=20
> example.  If so, I will change it and add some explanatory text around=20
> it as part of the example.
>=20
> See
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#us
> ing-bbappend-files
> for the entire example.
>=20
> Thanks, Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Larson
Sent: Monday, July 02, 2012 9:05 AM
To: Markus Hubig
Cc: Yocto Project Mailing List
Subject: Re: [yocto] How to use PRINC

On Mon, Jul 2, 2012 at 9:00 AM, Markus Hubig <mhubig@imko.de> wrote:
> PRINC :=3D "${@int(PRINC) + 2}"

This is the correct method to use in a bbappend. Start with 1,
obviously, and bump it each time the bbappend changes.
--=20
Christopher Larson
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

