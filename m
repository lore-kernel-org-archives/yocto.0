Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28A0FE0123C
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 02:14:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Feb 2012 02:14:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128103282"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2012 02:14:51 -0800
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	PGSMSX101.gar.corp.intel.com (10.221.44.78) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 22 Feb 2012 18:14:50 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Wed, 22 Feb 2012 18:14:48 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: host libGL incompatible with eglibc-nativesdk in meta-toolchain
Thread-Index: AczxSstb8jKAj7/PTo6FW2pjqvajjQ==
Date: Wed, 22 Feb 2012 10:14:48 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FCEAA1D@SHSMSX102.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: host libGL incompatible with eglibc-nativesdk in meta-toolchain
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
X-List-Received-Date: Wed, 22 Feb 2012 10:14:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

During the root causing of bug #1968(http://bugzilla.pokylinux.org/show_bug=
.cgi?id=3D1968), we find that on certain distributions, i.e. FC16 x86-64 an=
d FC15 x86-64, the host libGL is asking for glibc 2.14. But the eglibc we p=
rovided in meta-toolchain is 2.13. This would prevent the user to launch th=
e "qemu-nativesdk" from meta-toolchains.

The "qemu-native" can be launched successfully on those platform thanks to =
that we don't have eglibc-native, so the host libGL will finally find the h=
ost libc which is compatible.

I tried launching the "qemu-nativesdk" by LD_PRELOAD host libc, but it seem=
s that the host libc is NOT compatible with our ld-linux-x86-64.so.2 either=
.

I also tried launching the "qemu-nativesdk" by using the host dynamic linke=
r with --inhibit-rpath options to keep the preconfigured RPATH from being u=
sed, but it seems that this option didn't have any effect.

Any thoughts of how to work-around this?

Best Regards,
-Lianhao

