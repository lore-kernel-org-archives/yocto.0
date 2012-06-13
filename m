Return-Path: <david.c.stewart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C71DEE0073F
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 15:50:45 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Jun 2012 15:50:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="156048061"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 13 Jun 2012 15:50:39 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 13 Jun 2012 15:50:30 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.96]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.184]) with mapi id
	14.01.0355.002; Wed, 13 Jun 2012 15:50:29 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] More useful generic-x86 machine
Thread-Index: AQHNSaWAbq+I5+wtKkGsPGlN+0h9JJb41uGA
Date: Wed, 13 Jun 2012 22:50:28 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C848C34@ORSMSX105.amr.corp.intel.com>
References: <21DFE0D0610B43B982449CB678019727@intel.com>
In-Reply-To: <21DFE0D0610B43B982449CB678019727@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: More useful generic-x86 machine
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
X-List-Received-Date: Wed, 13 Jun 2012 22:50:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Ross Burton
> Sent: Wednesday, June 13, 2012 1:45 PM
>
> Hi,
>=20
> My current test hardware for Yocto work is a Celeron-class Sandy Bridge-
> based micro PC. As is to be expected for a machine like this, it's got mo=
dern
> Intel graphics and wireless. Neither of which are supported by atom-pc, a=
s
> it's nominally a "generic netbook" image.
>=20
> Let's face it -- it's a really bad generic netbook image, it's really a A=
sus
> eeePC701-and-similar image. Specifically, only one wifi driver, only i915=
 GPU
> driver, and so on.

I thought we had some Sandy Bridge BSP already?

> I'm not arguing for a true generic kernel such as Fedora maintains which
> boots on almost everything, just a new machine with more flexibility.
> Including both i915 and i965 GPU drivers covers everything Intel-driven f=
rom
> the earliest netbook to the latest Ivy Bridge[1].  Including the iwl wifi=
 drivers
> at least covers a good proportion of devices out there.  There are probab=
ly a
> few more drivers that are common and give big gains in support.  Not exac=
tly
> boot on everything, but certainly boot on many.
>=20
> Thoughts?
>=20
> Ross
>=20
> [1] Ignoring Cedar Trail, but that's already in meta-intel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

