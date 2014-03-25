Return-Path: <boon.leong.ong@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1702E0073C
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 09:13:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 25 Mar 2014 09:07:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,728,1389772800"; d="scan'208";a="499214379"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by fmsmga001.fm.intel.com with ESMTP; 25 Mar 2014 09:06:56 -0700
Received: from kmsmsx151.gar.corp.intel.com (172.21.73.86) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 26 Mar 2014 00:06:54 +0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.140]) by
	KMSMSX151.gar.corp.intel.com ([169.254.10.81]) with mapi id
	14.03.0123.003; Wed, 26 Mar 2014 00:06:53 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Question on cross-compiling 32-bit application on
	64-bit target platform
Thread-Index: AQHPRO4aPpZtU/7W2k2hLWnNDFvCVZrx/nCQ
Date: Tue, 25 Mar 2014 16:06:52 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B7240DDCA4@PGSMSX101.gar.corp.intel.com>
References: <AF233D1473C1364ABD51D28909A1B1B7240CB168@pgsmsx105.gar.corp.intel.com>
In-Reply-To: <AF233D1473C1364ABD51D28909A1B1B7240CB168@pgsmsx105.gar.corp.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Khade, Abhishek" <abhishek.khade@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: Question on cross-compiling 32-bit application on 64-bit target platform
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
X-List-Received-Date: Tue, 25 Mar 2014 16:13:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just following up - can someone offer some help here?"

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Ong, Boon Leong
> Sent: Friday, March 21, 2014 6:07 PM
> To: yocto@yoctoproject.org
> Cc: Khade, Abhishek
> Subject: [yocto] Question on cross-compiling 32-bit application on 64-bit=
 target
> platform
>=20
> Hi,
> 	Could anyone comment on whether we can cross-compile a 32-bit
> application on a 64-bit Intel machine booted with core-image-sato-sdk hdd=
img.
> 	If it is not enabled by default on the SDK image, how can I configure th=
e
> recipe to do so when I build core-image-sato-sdk?
> 	Could anyone shed some light on this. Much appreciated.
>=20
>=20
> Thanks
> Boon Leong
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

