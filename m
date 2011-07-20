Return-Path: <simon.li@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED6AF4C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 21:51:07 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Jul 2011 19:51:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,232,1309762800"; d="scan'208";a="27867170"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 19 Jul 2011 19:51:01 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 20 Jul 2011 10:49:42 +0800
Received: from pgsmsx507.gar.corp.intel.com ([10.221.43.89]) by
	PGSMSX509.gar.corp.intel.com ([172.30.13.17]) with mapi;
	Wed, 20 Jul 2011 10:49:41 +0800
From: "Li, Simon" <simon.li@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 20 Jul 2011 10:49:40 +0800
Thread-Topic: [yocto] Build Yocto image for EeePC901
Thread-Index: AcxGQrwPDe4+6+alTMq3aqqhiPEx0wARIjFQ
Message-ID: <23F1A04A50711046AF124F3D4D1EB2ECD100C755@pgsmsx507.gar.corp.intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECD100C5F6@pgsmsx507.gar.corp.intel.com>
	<4E25CE94.5080806@linux.intel.com>
In-Reply-To: <4E25CE94.5080806@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Yocto image for EeePC901
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
X-List-Received-Date: Wed, 20 Jul 2011 02:51:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Darren,
Yes, I use poky-image-sato-live and it works well on EeePC901 now.
Since it run from USB drive directly, it runs quite slow.
Is there any way to install it into SSD driver from USB drive?
Thanks.

Best Regards,

Simon

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Wednesday, July 20, 2011 2:36 AM
To: Li, Simon
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Build Yocto image for EeePC901

On 07/18/2011 11:17 PM, Li, Simon wrote:
> To whom may concern,
>=20
> I tried to build Yocto for a real device, which is EeePC901. Because of
> README.hardware mentioned.
>=20
> Here are my steps:
> # source poky-bernard-5.0.1/poky-init-build.env build-poky-5.0.1
>=20
> Modify the local.conf (As attachment)
>=20
> # bitbake poky-image-sato-directdisk
>=20
> However I got the build failed, please refer to the attachment,
> build_fail_log.txt
>=20
> I think the key fail message is
>=20
> | ERROR: Function 'poky-image-sato-directdisk: LIC_FILES_CHKSUM points
> to invalid file: ${COREBASE}/LICENSE' failed
>=20
> Is there any problem I got? Or where can I find the files? Thanks.

I _think_ this has to do with the move from POKY to CORE in the naming.
Looks like the directdisk image type may have been missed.

I suggest you try the poky-image-sato-live image and install from that.
The directdisk images have some known issues that I suspect will prevent
them from working for you.

--
Darren

>=20
> =20
>=20
> Best Regards,
>=20
> =20
>=20
> Simon
>=20
> =20
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

