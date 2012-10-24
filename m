Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B761E0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 13:23:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Oct 2012 13:23:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="208726030"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2012 13:23:01 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 24 Oct 2012 13:23:00 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.195]) with mapi id
	14.01.0355.002; Wed, 24 Oct 2012 13:23:00 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [PATCH 3/6] crownbay README: add WebTitle & Compliance
	information
Thread-Index: AQHNsVyVjDNyFhsawk+QzYVb3PUKupfH0e6AgAEUNrA=
Date: Wed, 24 Oct 2012 20:22:59 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D90E01B@ORSMSX106.amr.corp.intel.com>
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
	<eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
	<50870271.5060104@intel.com>
In-Reply-To: <50870271.5060104@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/6] crownbay README: add WebTitle & Compliance information
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
X-List-Received-Date: Wed, 24 Oct 2012 20:23:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >
> > -The Crown Bay platform consists of the Intel Atom Z6xx processor,
> > +The Crown Bay platform consists of the Intel Atom E6xx processor,
> >  plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff)=
.
>=20
> How can we distinguish this from Queens Bay, which I would describe in
> exactly the same terms?
>=20
> --
> Darren
>=20
> >

1st let us understand what are the differences in the crownbay & queens bay=
 platforms? If there are not significant differences then we can also look =
at possibility of combining two BSPs into one.=20

I can add bit more information in the crownbay readme, such as shellbay & l=
ittlebay boards. And for FRI2 you can talk about the extra M2M devices. And=
 I am not clear how to differentiate crownbay BSP with sys94x BSP.

Nitin



