Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 765B0E00721
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 10:22:52 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2011 10:22:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="79279337"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2011 10:22:52 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 23 Nov 2011 10:22:52 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.87]) with mapi id
	14.01.0355.002; Wed, 23 Nov 2011 10:22:51 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: James Abernathy <jfabernathy@gmail.com>
Thread-Topic: [yocto] ADT installer
Thread-Index: AQHMqf9bUdjsgeesZkOpb0fIubsEOZW6rTYwgACPeQD//4hr0A==
Date: Wed, 23 Nov 2011 18:22:50 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB3710@ORSMSX101.amr.corp.intel.com>
References: <1322066687.24623.4.camel@jim-ubuntu>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB36A7@ORSMSX101.amr.corp.intel.com>
	<C30646E8-D4E8-4344-AE3D-25F3EC259C70@gmail.com>
In-Reply-To: <C30646E8-D4E8-4344-AE3D-25F3EC259C70@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ADT installer
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
X-List-Received-Date: Wed, 23 Nov 2011 18:22:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jim,=20

My machine finished and it built the adt_installer.tar.bz2 in ~/yocto-proje=
ct/build/tmp/deploy/sdk as advertised. =20

The only change I made was  the URL change to get the Edison tarball using =
wget.

Scott

-----Original Message-----
From: James Abernathy [mailto:jfabernathy@gmail.com]=20
Sent: Wednesday, November 23, 2011 9:28 AM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] ADT installer


On Nov 23, 2011, at 11:55 AM, Rifenbark, Scott M wrote:

> Jim,=20
>=20
> Let me try and replicate this from the manual.  I will get back momentari=
ly.
>=20
> Scott
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Jim Abernathy
> Sent: Wednesday, November 23, 2011 8:45 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] ADT installer
>=20
> I was following the ADT manual online, section 2.1.1.1, and everything
> seemed to complete as expected, but adt_installer.tar.bz2 was not
> created in the ..../build/tmp/deploy/sdk direction as documented.  In
> fact, there is no sdk directory in deploy.  Is this a documentation
> issue or is this not working. BTW, I could not find the tarball anywhere
> on my Ubuntu development system.
>=20
> Jim A
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

The instructions don't have you cd into the directory to execute the source=
 oe-.....  Not sure if that's a problem.  I can rerun.  I use the Edison Po=
ky tarball and not the git.

Jim A

