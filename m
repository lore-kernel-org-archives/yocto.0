Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 208EE4C80039
	for <yocto@yoctoproject.org>; Wed, 22 Dec 2010 00:39:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Dec 2010 22:39:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,211,1291622400"; d="scan'208";a="365080577"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 21 Dec 2010 22:39:18 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 22 Dec 2010 14:38:35 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 22 Dec 2010 14:38:34 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Wed, 22 Dec 2010 14:38:27 +0800
Thread-Topic: [yocto] Questions about the name of qemu bin file for
	different archs
Thread-Index: AcubnchiDHQ/IjzgTKmh5sk7SdtG8QGAuKug
Message-ID: <789F9655DD1B8F43B48D77C5D3065973314A25C7@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973313A6A37@shsmsx501.ccr.corp.intel.com>
	<4D078361.2040301@windriver.com>
In-Reply-To: <4D078361.2040301@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions about the name of qemu bin file for different archs
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
X-List-Received-Date: Wed, 22 Dec 2010 06:39:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Bruce

Lost this mail and finally found it.

Thanks for your detailed explanation.


And so, for easily fetching those qemu images, we need to make sure that
these symbol-link must be created according to the defined naming conventio=
n in the build-result-repository.
I will check this problem firstly.

Thanks & Regards,
criping

>=20
> On 10-12-14 02:40 AM, Ke, Liping wrote:
> > Hi, Jessica
> >
> > I found qemu bin file name convention is different for different
> archs, for example, for x86, it is bzImage-qemuXXX.
> > For arm, it is zImage-qemuXXX. My question is why it is bzXXX or zXXX,
> is there any reason of such naming convention?
>=20
> The leading part of the image name is dependent
> on the type of kernel we are booting.
>=20
> ]> grep KERNEL_IMAGETYPE qemu*
> qemuarm.conf:KERNEL_IMAGETYPE =3D "zImage"
> qemumips.conf:KERNEL_IMAGETYPE =3D "vmlinux"
> qemumips-variant.conf:KERNEL_IMAGETYPE =3D "vmlinux"
> qemuppc.conf:KERNEL_IMAGETYPE =3D "zImage"
> qemux86-64.conf:KERNEL_IMAGETYPE =3D "bzImage"
> qemux86.conf:KERNEL_IMAGETYPE =3D "bzImage"
>=20
> And those are your differences in the name.
>=20
> As for why the symlinks may not be created at times, I'm
> not sure.
>=20
> >
> > Or I must did name translate for each kind of arch qemu bin file?
>=20
> Should be something you can script by checking the
> KERNEL_IMAGETYPE.
>=20
> Cheers,
>=20
> Bruce
>=20
> >
> >
> > Thanks&  Regards,
> > criping
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto


