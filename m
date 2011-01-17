Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 046E04C8109B
	for <yocto@yoctoproject.org>; Mon, 17 Jan 2011 02:10:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Jan 2011 00:10:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="697527561"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 17 Jan 2011 00:10:40 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 17 Jan 2011 16:10:31 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 17 Jan 2011 16:10:14 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Mon, 17 Jan 2011 16:10:12 +0800
Thread-Topic: question about SDKMACHINE, SDK_ARCH and BUILD_ARCH
Thread-Index: Acuz6NIuDvLaES//Sr28lf6+JorEVACMbMCgAADDXSA=
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1E69935292@shsmsx502.ccr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9504DC9D07@orsmsx504.amr.corp.intel.com>
	<1295009058.14388.5786.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA9504E143D8@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9504E143D8@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: question about SDKMACHINE, SDK_ARCH and BUILD_ARCH
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
X-List-Received-Date: Mon, 17 Jan 2011 08:10:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Zhang, Jessica wrote on 2011-01-17:
> Richard Purdie wrote:
>> On Thu, 2011-01-13 at 15:36 -0800, Zhang, Jessica wrote:
>>> Hi Richard,
>>>=20
>>> As I mentioned in IRC, we've noticed that bitbake behaves=20
>>> differently on 64bit and 32bit machines from SDKMACHINE setup=20
>>> perspective.  It never enforces SDKMACHINE to be set in local.conf=20
>>> for 64bit users but for 32bit user, if you leave SDKMACHINE unset,=20
>>> the bitbake sanity test will fail and prompts user to set the SDKMACHIN=
E to i586.
>>>=20
>>> It seems internally we really use SDK_ARCH which derived from=20
>>> BUILD_ARCH that reflects the poky build machines arch.  And for=20
>>> bitbake sanity check if it sees SDK_ARCH is i686, it will prompts=20
>>> user to set SDKMACHINE to i586 since there's a known issue for this=20
>>> case can't use the default build machine arch of i686.
>>>=20
>>> Questions are:
>>> 1. what  is the known issue for using i686?
>>=20
>> (e)glibc will fail to build with some issues to do with architecture=20
>> optimisations. I don't remember the details but the builds do fail=20
>> and the warning is valid. The easy way to test is to disable the=20
>> warning and try it!
>>=20
>> Once, there were also conflicts between the native bits and the cross=20
>> bits both being i686 but I think the problem was solved a long time=20
>> ago.
>>=20
>> At some point it would be nice to fix this but as far as I know the=20
>> problem remains and the sanity warning is still valid.
>>=20
>=20
> Interestingly, by simply comment off the sanity check for SDK_ARCH =3D=3D=
=20
> i686, I successfully built meta-toolchain for i686-i586 and=20
> poky-image-sdk for x86 and didn't run into (e)glibc build errors.  I=20
> check my built toolchain and sysroot, and everything looks right, as=20
> host as i686 and target as i586.  I was able to use the cross=20
> toolchain to compile a simple c program.  Are these enough test, if so, I=
'll submitted a patch ...
>=20

Jessica,

How about testing against some real project using the meta-toolchain-sdk? e=
.g. https://oldwiki.pokylinux.org/share/SDK_docs/Test/srcs/=20

Best Regards,
Lianhao



