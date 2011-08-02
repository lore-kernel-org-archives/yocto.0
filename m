Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59E784C8009A
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 11:29:15 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Aug 2011 09:29:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,307,1309762800"; d="scan'208";a="34690673"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 02 Aug 2011 09:29:14 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 2 Aug 2011 09:29:14 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.233]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.105]) with mapi id
	14.01.0289.001; Tue, 2 Aug 2011 09:29:13 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Kumar Gala <galak@kernel.crashing.org>, "Stewart, David C"
	<david.c.stewart@intel.com>
Thread-Topic: [yocto] examples / docs on utilizing an external toolchain
Thread-Index: AQHMTNeqq9+l16KFGk+9iCoZtwlUIpUDLrSAgAcKI4D//4+dgA==
Date: Tue, 2 Aug 2011 16:29:12 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237913700F07@ORSMSX101.amr.corp.intel.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<D778EEB2-3D41-4E3C-A27B-F725748E8BCC@kernel.crashing.org>
In-Reply-To: <D778EEB2-3D41-4E3C-A27B-F725748E8BCC@kernel.crashing.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Tue, 02 Aug 2011 16:29:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is the problem here that we need better documentation on using a prebuilt t=
oolchain?  I will have to learn more about the context of the problem from =
someone.  The bug could just be against documentation in general and specif=
y the need for "better documentation using a prebuilt toolchain."

ScottR

-----Original Message-----
From: Kumar Gala [mailto:galak@kernel.crashing.org]=20
Sent: Tuesday, August 02, 2011 9:10 AM
To: Stewart, David C
Cc: 'yocto@yoctoproject.org'; Rifenbark, Scott M
Subject: Re: [yocto] examples / docs on utilizing an external toolchain

I can, but not sure what the bug is.

- k

On Jul 28, 2011, at 11:39 PM, Stewart, David C wrote:

> Scott - I have had a couple of questions about this exact topic. Can you =
please submit a bug on this? Thanks.=20
>=20
> Sent from my Blackberry
>=20
> ----- Original Message -----
> From: Kumar Gala [mailto:galak@kernel.crashing.org]
> Sent: Wednesday, July 27, 2011 08:37 PM
> To: Yocto discussion list <yocto@yoctoproject.org>
> Subject: [yocto] examples / docs on utilizing an external toolchain
>=20
> It seems like there is a way to use a prebuilt toolchain with poky but no=
 real details.
>=20
> Some refs in the docs like:
>=20
> POKYMODE
> Toolchain selector. It can be external toolchain built from Poky or few s=
upported combinations of upstream GCC or CodeSourcery Labs toolchain.
>=20
> But grepping the code there doesn't seem to be any actual use of POKYMODE=
.  There seems to be some references even on the autobuilder about this 'ni=
ghtly-external-toolchain'.  So wondering what the details where on how to c=
onfigure things to use an external toolchain.
>=20
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


