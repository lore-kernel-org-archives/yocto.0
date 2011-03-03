Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 186E54C800A3
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2011 19:44:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Mar 2011 17:44:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,256,1297065600"; d="scan'208";a="396684384"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 02 Mar 2011 17:44:13 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Mar 2011 09:43:13 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 3 Mar 2011
	09:43:12 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Thu, 3 Mar 2011 09:43:11 +0800
Thread-Topic: Could you help to have a look at BUG 660
Thread-Index: AcvZRFsPo9DVBNsdRvO9lOvCTRdkYg==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A334FC309@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Could you help to have a look at BUG 660
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
X-List-Received-Date: Thu, 03 Mar 2011 01:44:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard and Saul,

Could you help to have a review of BUG 660?

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D660

BUG 660 is about missing kernel firmware in poky-image-minimal.

As from most of the machine configuration files in current poky, including
igep0030.conf, "kernel-modules" and "linux-firmware-sd8686" are part of
"MACHINE_EXTRA_RRECOMMENDS", like:

MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules linux-firmware-sd8686"

However for poky-image-minimal, only "MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS" =
is
included. If the kernel module and firmware files are indeed necessary for
successful boot, we can add them into minimal image.

Any comment on that?

Thanks,
Dongxiao =

