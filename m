Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 166FB4C803A5
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 03:16:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 01:16:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,287,1288594800"; d="scan'208";a="683113725"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 01:16:00 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 2 Dec 2010 17:15:19 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 2 Dec 2010
	17:15:18 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>
Date: Thu, 2 Dec 2010 17:15:23 +0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0gABKk1AA=
Message-ID: <789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto_installer test script update
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
X-List-Received-Date: Thu, 02 Dec 2010 09:16:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica
I have update the installer on http://llu-piketon.sh.intel.com/. I have tes=
ted in your machine roughly, downloading should work if you use wget -Y off=
 to turn off all your proxy settings for testing. Since there're dangling f=
olders in your machine, I can't rudely delete it. You can download the new =
package and test.

There're some other prompt problems I need to adjust. Today is not the fina=
l code, only for your reviewing and testing.

Any problem, just let me know.

Thanks& Regards,
criping



> -----Original Message-----
> From: Zhang, Jessica
> Sent: Thursday, December 02, 2010 8:19 AM
> To: Ke, Liping; Lu, Lianhao; Tian, Kevin
> Cc: yocto@yoctoproject.org
> Subject: RE: yocto_installer test script update
>=20
> Liping,
>=20
> I've modified couple files mainly for the messaging, styling, etc.
> Also, globaly changed SDK to ADT (Application Development Tools, which
> is the new name that came out refering to the toolchains, etc.).
> Please see attachment.
>=20
> Other comments:
> 1. I'd expect after your do the code clean up, the code logic flow
> should be more clearer, now the functions and main installation  code
> are mingled together 2. There're couple places that I commented off
> with my initial JZ which I don't think there're the needs for the code,
> we can walk through them tonight...
> 3. For target sysroot setup, I'd expect similar prompt to the user
> about the specified configuration and confirmation 4. Also for target
> sysroot setup, in the yocto_config file, you specify
> ROOTFS_powerpc=3D"sdk"
> TARGET_SYSROOT_IMAGE_powerpc=3D"sato"
> I'd expect the installer will run into error since the download images
> only contain SDK no sato, sysroot can't be setup using sato, which I
> think it's missing from the current code...
>=20
> In general it looks good and main flow that needs to be covered are
> there...
>=20
> Thanks,
> Jessica
>=20
>=20
> -----Original Message-----
> From: Ke, Liping
> Sent: Wednesday, December 01, 2010 2:06 AM
> To: Zhang, Jessica; Lu, Lianhao; Tian, Kevin
> Cc: yocto@yoctoproject.org
> Subject: yocto_installer test script update
>=20
> Hi, Jessica
>=20
> The newer version of the installer is in lianhao's location. You can
> directly run ./yocto_installer http://llu-piketon.sh.intel.com/ Today
> we tested both on 32 bit and 64 bit ubuntu host.
>=20
> It's very initial and rough, I will move many non-root required ops
> into the outer wrapper script later.
>=20
> Any early comments are welcomed, just let me know.
>=20
> Thanks& Regards,
> criping
>=20


