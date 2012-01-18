Return-Path: <fei.yang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69B3BE004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 14:04:07 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Jan 2012 14:04:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="57780636"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Jan 2012 14:04:06 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 18 Jan 2012 14:04:06 -0800
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.7]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.13]) with mapi id
	14.01.0355.002; Wed, 18 Jan 2012 14:04:06 -0800
From: "Yang, Fei" <fei.yang@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Making machine config a build dependency for core-image recipes
Thread-Index: AczWLRfNTu9B3q16TaCsxNRcuwXo0g==
Date: Wed, 18 Jan 2012 22:04:05 +0000
Message-ID: <02E7334B1630744CBDC55DA8586225831FAEC2@ORSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 18 Jan 2012 14:11:51 -0800
Subject: Making machine config a build dependency for core-image recipes
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
X-List-Received-Date: Wed, 18 Jan 2012 22:04:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I encountered a build issue when trying to generate /etc/inittab.
I have a meta-xxx/conf/machine/conf file which contains serial console info=
rmation such as SERIAL_CONSOLE =3D "115200 ttyXYZ" or "115200 ttyS0" by def=
ault.
When I update that conf file and make an incremental build, the /etc/initta=
b doesn't get updated, I finally have to remove all the binaries and force =
a complete re-build to generate correct /etc/inittab with updated serial co=
nsole settings, which take more than an hour to finish.
How do I create a dependency so that when I update my machine/conf file, an=
 incremental build would take care of the change and re-generate the files =
in root FS accordingly? If that is impossible for now, can I just delete on=
e or a few task binaries to trigger a rebuild on /etc/inittab? This would g=
reatly reduce my build time.


Thanks,
Fei

