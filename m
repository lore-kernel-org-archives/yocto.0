Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3DFEE0137D
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2012 00:19:29 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Mar 2012 00:19:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123665005"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 27 Mar 2012 00:19:08 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 27 Mar 2012 00:19:08 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Tue, 27 Mar 2012 15:19:06 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] Deleting layers in Hob
Thread-Index: AQHNC+YGwDWOxWqn5k2TpifWKxfjFJZ9ugQQ
Date: Tue, 27 Mar 2012 07:19:05 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD0B432@SHSMSX102.ccr.corp.intel.com>
References: <1332830930.4380.14.camel@dongxiao-osel>
In-Reply-To: <1332830930.4380.14.camel@dongxiao-osel>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Deleting layers in Hob
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
X-List-Received-Date: Tue, 27 Mar 2012 07:19:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Xu, Dongxiao
> Sent: Tuesday, March 27, 2012 2:49 PM
> To: yocto
> Subject: [yocto] Deleting layers in Hob
>=20
> When using Hob in Yocto Project, I found a issue when deleting layers. I
> think I ever raised this problem before.
>=20
> Let me briefly introduce how layer removal works in Hob. When user
> changes a layer, it will following the below steps
> 1) init the cooker.
> 2) set new layers to cooker.
> 3) parse configuration files.
> 4) get available machines, distros, SDKs, etc.
>=20
> As we know, if we source oe-init-build-env in Yocto project environment,
> we will have DISTRO=3D"poky" set in local.conf by default, where the
> "poky" DISTRO comes from the meta-yocto layer. If user deletes
> meta-yocto in Hob, and then error will happen when bitbake parsing the
> local.conf, since it could not find where the "poky" DISTRO is defined.
>=20
> Even if we are able to successfully removed the meta-yocto layer by
> removing the DISTRO definition in local.conf, system will report another
> issue that:
>=20
> Your configuration is using stamp files including the sstate hash but
> your build directory was built with stamp files that do not include
> this.
> To continue, either rebuild or switch back to the OEBasic signature
> handler with BB_SIGNATURE_HANDLER =3D 'OEBasic'.
>=20
> This is because BB_SIGNATURE_HANDLER =3D "OEBasic" is also defined in
> meta-yocto layer (poky.conf).

Meta-yocto is using OEBasicHash as default signature handler(ABI_VERSION=3D=
8, see ${TMPDIR}/abi_version), while oe-core is still using the OEBasic(ABI=
_VERSION=3D7). This means the oe-core can not reuse the stamp files generat=
ed by meta-yocto.=20

>=20
> So it seems that in certain environment (e.x, Yocto Project), certain
> layer (e.x, meta-yocto) should not be removed?
>=20
> Or any idea on how to solve this problem?
>=20
> Thanks,
> Dongxiao
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

