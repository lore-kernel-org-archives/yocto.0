Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6FD034C811F5
	for <yocto@yoctoproject.org>; Tue, 14 Dec 2010 01:51:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 23:51:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,341,1288594800"; d="scan'208";a="583511685"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 23:51:38 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 14 Dec 2010 15:50:58 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 14 Dec 2010 15:50:46 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Tue, 14 Dec 2010 15:50:44 +0800
Thread-Topic: [yocto] Questions about the name of qemu bin file for
	different	archs
Thread-Index: AcubYjla3FLSVM3zRtS0UyOc4lxtMQAALyKg
Message-ID: <789F9655DD1B8F43B48D77C5D3065973313A6A54@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973313A6A37@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D3065973313A6A37@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions about the name of qemu bin file for different	archs
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
X-List-Received-Date: Tue, 14 Dec 2010 07:51:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

What's more, I found sometimes, for example, there's no symbolic links, so =
the name is very long and strange.

Such as one ppc image: zImage-2.6.34+git0+d1cd5c80ee97e81e130be8c3de3965b77=
0f320d6_0+9ac0daee43dd19d8bea828cf79450c9748ae0daa-r13-qemuppc-201012100204=
45.bin

Since I need to download the specific file, so a definite naming is needed =
such as for x86, it is bzImage-qemux86.bin, for arm, it is bzImage-qemuarm.=
bin,
For powerpc, it is bzImage-qemupowerpc.bin, etc.

Am I right?

criping


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Ke, Liping
> Sent: Tuesday, December 14, 2010 3:41 PM
> To: Zhang, Jessica
> Cc: yocto@yoctoproject.org
> Subject: [yocto] Questions about the name of qemu bin file for
> different archs
>=20
> Hi, Jessica
>=20
> I found qemu bin file name convention is different for different archs,
> for example, for x86, it is bzImage-qemuXXX.
> For arm, it is zImage-qemuXXX. My question is why it is bzXXX or zXXX,
> is there any reason of such naming convention?
>=20
> Or I must did name translate for each kind of arch qemu bin file?
>=20
>=20
> Thanks& Regards,
> criping
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

