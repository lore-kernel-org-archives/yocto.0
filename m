Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D991E0098F
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 05:52:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Mar 2014 05:52:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,685,1389772800"; d="scan'208";a="475615884"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 05:52:20 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.27]) by
	IRSMSX101.ger.corp.intel.com ([163.33.3.153]) with mapi id
	14.03.0123.003; Wed, 19 Mar 2014 12:52:19 +0000
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: oe-selftest documentation
Thread-Index: Ac9DcFJ8mXowjRFWRXy+1IRNJLXz1gAAaNsQ
Date: Wed, 19 Mar 2014 12:52:19 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0A213425@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: oe-selftest documentation
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
X-List-Received-Date: Wed, 19 Mar 2014 12:52:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Stoicescu, CorneliuX
> Sent: Wednesday, March 19, 2014 2:50 PM
> To: yocto@yoctoproject.org
> Cc: Eggleton, Paul; Georgescu, Alexandru C; Voiculescu, BogdanX A; Purdie=
,
> Richard
> Subject: oe-selftest documentation
>=20
> Hello,
>=20
> We have oe-selftest already integrated in poky but we lack in
> documentation: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740
>=20
> Here is what I am thinking about what could be done and I would like
> opinions on what should be done:
> 1) We can do a wiki entry to describe in detail how to use oe-selftest an=
d
> give examples. The problem here is that as oe-selftest changes this entry
> might become outdated and even if we update it then older Yocto releases
> users will not be able to use it anymore.
> 2) We can have a manual entry derived from the wiki entry. Scott can use =
the
> wiki entry as a reference, if we decide to have one, to create the manual
> entry. The advantage of this is that we will have valid and up to date
> information for each Yocto release.
> 3) We can introduce comments in the script to explain what and why it doe=
s
> what it does(at the moment we have some though)
> 4) We can introduce comments in test modules or a DESCRIPTION field to
> document the test steps, especially for more complex tests(we have no suc=
h
> comments at the moment).
>=20
> I would opt for 2) and 3) as I believe they give the most value with the =
least
> amount of time needed for creation and maintenance.


I meant 2) and 4) .

>=20
> If anyone has any more ideas please add your thoughts.
>=20
> Regards,
> Corneliu

