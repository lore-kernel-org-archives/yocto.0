Return-Path: <cristian.iorga@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA1C0E004AB
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 07:39:07 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Jan 2013 07:39:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,538,1355126400"; d="scan'208";a="278408947"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2013 07:39:01 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.82]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.218]) with mapi id
	14.01.0355.002; Fri, 25 Jan 2013 15:37:14 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>, Tino Breddin
	<tb@travelping.com>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to build the build appliance?
Thread-Index: AQHN+v0biwGN/2KOakypO6NEgxF1NZhaJ5WAgAAF9YA=
Date: Fri, 25 Jan 2013 15:37:14 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB161EFAB2@IRSMSX102.ger.corp.intel.com>
References: <51026D40.6000201@travelping.com>
	<33115ABC4887814E8A92A08FBC93416B08DC5EDF@IRSMSX103.ger.corp.intel.com>
In-Reply-To: <33115ABC4887814E8A92A08FBC93416B08DC5EDF@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: How to build the build appliance?
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
X-List-Received-Date: Fri, 25 Jan 2013 15:39:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It also work with a qemux86 machine.

Regards,
Cristian

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Stoicescu, CorneliuX
Sent: Friday, January 25, 2013 5:18 PM
To: Tino Breddin; yocto
Subject: Re: [yocto] How to build the build appliance?

Hello Tino,

Here is what I know on the matter:=20
1) you need to set MACHINE =3D "qemux86-64" in local.conf
2) run "bitbake build-appliance-image"
3) check the tmp/deploy/images folder for the output

Regards,
Cornel

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Tino Breddin
Sent: Friday, January 25, 2013 1:32 PM
To: yocto
Subject: [yocto] How to build the build appliance?

Hi there,

I've seen some work already went into building a Yocto build appliance whic=
h runs on VMware [1]. I think that's a great tool to get started.
Has the appliance been built by hand or is the process somewhat automated? =
I couldn't find any references in Poky.

Cheers,
Tino

[1] https://www.yoctoproject.org/documentation/build-appliance-manual
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

