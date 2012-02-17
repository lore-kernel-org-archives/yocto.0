Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CBF9E003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 23:49:19 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 16 Feb 2012 23:49:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="67589141"
Received: from pgsmsx509.gar.corp.intel.com ([172.30.13.17])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Feb 2012 23:49:17 -0800
Received: from pgsmsx103.gar.corp.intel.com (10.221.44.82) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 17 Feb 2012 15:49:14 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 17 Feb 2012 15:49:14 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Fri, 17 Feb 2012 15:49:11 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "niqingliang@insigma.com.cn" <niqingliang@insigma.com.cn>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] The sysroot location in eclipse plugin?
Thread-Index: AQHM7UXOkdBcWo+7dUqB4IaJimtKxJZAtLMg
Date: Fri, 17 Feb 2012 07:49:10 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FCE8B3E@SHSMSX102.ccr.corp.intel.com>
References: <1329463593.1067.174.camel@localhost.localdomain>
In-Reply-To: <1329463593.1067.174.camel@localhost.localdomain>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: The sysroot location in eclipse plugin?
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
X-List-Received-Date: Fri, 17 Feb 2012 07:49:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Ni Qingliang wrote on 2012-02-17:
> the environment-setup file in build tree had defined CFLAGS and CXXFLAGS
> which include the sysroot argument(<build_tree>/tmp/sysroots/<machine>).
>=20
> Do we must specify the sysroot location in the eclipse plugin?
>=20
> after specify it, I found the CFLAGS CXXFLAGS in project property follow
> it, and dropped the sysroot defined in environment-setup file.
>=20
> and I have another sysroot running on target (qemu) unzipped from the
> image.
>=20
> If I specify the target sysroot in eclipse-plugin, I can't compile my
> code, because there is no any header file in /usr/include.
> If I specify the <build_tree>/tmp/sysroots/<machine>, I can't running
> the qemu machine in eclipse, because there is no 'init'.
>=20
The eclipse-plugin by default assumes the user using the same target sysroo=
t for both cross compiling and qemu launching. So this requires the target =
sysroot having the libraries and header files.=20

You might have 2 options here:
1. build a new image with the "dev-pkgs" image feature(you can set that in =
conf/local.conf in variable EXTRA_IMAGE_FEATURES) and use that image as tar=
get sysroot in eclipse.

2. launch the qemu in console terminal, out of eclipse, using a different t=
arget sysroot.=20

Best Regards,
Lianhao



