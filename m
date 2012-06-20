Return-Path: <laurentiu.serban@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB78E0070C
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 00:12:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jun 2012 00:12:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="182560380"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2012 00:12:27 -0700
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 20 Jun 2012 08:12:26 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.70]) with mapi id
	14.01.0355.002; Wed, 20 Jun 2012 08:12:26 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] VERIFIED vs CLOSED in yocto bugzilla
Thread-Index: Ac1OUUe01eHZ2xUEQ264PiIbIWnZ7wAGMRgAABJz83A=
Date: Wed, 20 Jun 2012 07:12:25 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC1914D60A@IRSMSX102.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
	<4FE109C4.1010906@linux.intel.com>
In-Reply-To: <4FE109C4.1010906@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: VERIFIED vs CLOSED in yocto bugzilla
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
X-List-Received-Date: Wed, 20 Jun 2012 07:12:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The discussion was triggered in the Yocto Project Technical Team Meeting fr=
om June 19th.


-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Wednesday, June 20, 2012 2:23 AM
To: Serban, Laurentiu
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] VERIFIED vs CLOSED in yocto bugzilla



On 06/19/2012 12:25 PM, Serban, Laurentiu wrote:
> Hello,
>=20
> =20
>=20
> I submit to your attention the following issue related to Yocto=20
> project's bugzilla:
>=20
> =20
>=20
> Which is the most appropriate end for a the lifecycle of a bugzilla
> issue: VERIFIED or CLOSED?
>=20
> Currently the bug lifecycle final point is VERIFIED and the status=20
> CLOSED is not used. Setting a bug to CLOSED after it was VERIFIED has=20
> no impact on the lifecycle itself as the bug can be reopened anyway.
>=20
> =20
>=20
> My proposal is the following: keep VERIFIED as the final point of the=20
> bug lifecycle and use the status CLOSED for the bug only after the 1.3=20
> release, *if* the regression testing for the bug is ran and passed.
>=20
> So after the 1.3 release the ideal situation is that all the bugs=20
> related to it with previous status VERIFIED are CLOSED.

What is the reasoning driving this change? What does CLOSED indicate that V=
ERIFIED does not already convey?

Thanks,

Darren

>=20
> =20
>=20
> Waiting for your opinion on this,
>=20
> Thank you,
>=20
> =20
>=20
> *Laurentiu Serban*
>=20
> QA Engineer
>=20
> Open Source Technology Center
>=20
> System Software Division Romania
>=20
> Desk: +40 31 8604742**
>=20
> iNET: 88451042
>=20
> =20
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



