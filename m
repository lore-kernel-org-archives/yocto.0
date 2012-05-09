Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B048E01206
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 01:11:13 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 May 2012 01:11:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="97999939"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 09 May 2012 01:11:13 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 9 May 2012 01:11:12 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.133]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.90]) with mapi id
	14.01.0355.002; Wed, 9 May 2012 16:11:10 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: How to launch core-image-minimal built upon poky-tiny
Thread-Index: Ac0tu0j4ONNmbClXQruhWlhHvTIxeA==
Date: Wed, 9 May 2012 08:11:09 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FDB4798@SHSMSX102.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to launch core-image-minimal built upon poky-tiny
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
X-List-Received-Date: Wed, 09 May 2012 08:11:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

Do you know how to use qemu to launch the core-image-minimal image build up=
on the poky-tiny distribution?

I tried the following command but ended up in "Kernel panic - not syncing: =
No init found."

tmp/sysroot/x86_64-linux/usr/bin/qemu -kernel /tmp/deploy/image/bzImage-qem=
ux86.bin -append "console=3DttyS0, 115200 root=3D0800" -nographic tmp/deplo=
y/images/core-image-minimal-qemux86.ext2

Best Regards
-Lianhao

