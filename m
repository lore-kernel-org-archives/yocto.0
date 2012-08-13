Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 961D1E002AB
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 07:13:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Aug 2012 07:13:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,759,1336374000"; d="scan'208";a="180010255"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 13 Aug 2012 07:13:52 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 13 Aug 2012 07:13:52 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.106]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.210]) with mapi id
	14.01.0355.002; Mon, 13 Aug 2012 07:13:51 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Trevor Woerner
	<twoerner@gmail.com>
Thread-Topic: [yocto] layer.conf: "packages" directory
Thread-Index: AQHNeIbeIvJ1y95mK0aaaKNhw6wznJdWnN8AgAEti9A=
Date: Mon, 13 Aug 2012 14:13:50 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A524E3@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapRfzWsj1ZzFTZr9-dGCUXbsy+uwvC=J_iC-VnX0dy6ntQ@mail.gmail.com>
	<6260373.pzVKEde8kG@helios>
In-Reply-To: <6260373.pzVKEde8kG@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: layer.conf: "packages" directory
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
X-List-Received-Date: Mon, 13 Aug 2012 14:13:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,=20

I can fix the manual to say something like this...

"# We have recipe-* directories, add to BBFILES"

Will that work?

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Sunday, August 12, 2012 6:14 AM
To: Trevor Woerner
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] layer.conf: "packages" directory

On Sunday 12 August 2012 08:34:36 Trevor Woerner wrote:
> Hi,
>=20
> In the Yocto Project Development Manual, section 4.1.2 "Creating Your
> Own Layer" it shows an example layer.conf file. In this example, right
> before adding the recipes to BBFILES, appears the comment: "We have a
> packages directory". The problem is, I can't find a directory named
> "packages" anywhere. Is this a historical left-over? Are "packages"
> and "recipes" synonymous in Yocto parlance?
>=20
> Many other layer.conf files also contain this wording too:
>=20
> meta/conf/layer.conf
> meta-fsl-arm/conf/layer.conf
> meta-hob/conf/layer.conf
> meta-intel/meta-n450/conf/layer.conf
> meta-intel/meta-emenlow/conf/layer.conf
> meta-intel/meta-tlk/conf/layer.conf
> meta-intel/conf/layer.conf
> meta-skeleton/conf/layer.conf
> meta-xilinx/conf/layer.conf
> meta-yocto/conf/layer.conf
> poky-extras/meta-kernel-dev/conf/layer.conf

That comment is quite out-of-date it would seem - "packages" was what the=20
"recipes" directory was called (which was subsequently split out into multi=
ple=20
recipes-* directories).

We really ought to fix up these comments, especially in examples.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

