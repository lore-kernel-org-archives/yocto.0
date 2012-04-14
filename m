Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E224E0137C
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2012 03:22:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Apr 2012 03:22:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="130853115"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 14 Apr 2012 03:22:36 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 14 Apr 2012 03:22:36 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.125]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.195]) with mapi id
	14.01.0355.002; Sat, 14 Apr 2012 18:22:34 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: jack <woailinux@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] error: runqemu command not fonund, when "$ runqemu
	qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3" THx!
Thread-Index: AQHNGfN9zKyH6g9kJ0qD7zVbV28AsJaaHLSA
Date: Sat, 14 Apr 2012 10:22:33 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD377DB@SHSMSX102.ccr.corp.intel.com>
References: <BLU0-SMTP1211642316DA9A003041503B9380@phx.gbl>
In-Reply-To: <BLU0-SMTP1211642316DA9A003041503B9380@phx.gbl>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: error: runqemu command not fonund, when "$ runqemu qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3" THx!
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
X-List-Received-Date: Sat, 14 Apr 2012 10:22:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


jack wrote on 2012-04-14:
> hi,all! I Use a pre-built image and run it in the QEMU emulator.
> I have downloaded and installed
> "poky-eglibc-i686-i586-toolchain-gmae-1.1.1.tar.bz2", then I downloaded
> "bzImage-qemux86.bin"  and  "core-image-lsb-qt3-qemux86.ext3"
> but when
> "$ runqemu qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3"
> error like below:
> error: runqemu command not fonund
>=20
You may need to "source /opt/poky/1.1.1/environment-setup-i586-poky-linux" =
first before you "runqemu".

Best Regards,
Lianhao


