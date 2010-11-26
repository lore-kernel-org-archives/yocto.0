Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 463A24C81001
	for <yocto@yoctoproject.org>; Fri, 26 Nov 2010 01:24:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2010 23:24:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="577776025"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2010 23:24:23 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 26 Nov 2010 15:23:21 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 26 Nov 2010 15:23:20 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 26 Nov 2010 15:23:19 +0800
Thread-Topic: license file path problem
Thread-Index: AcuNOs0MsmxzwpwlSaSJ69QgXwe1+g==
Message-ID: <749B9D3DBF0F054390025D9EAFF47F2230298CA4@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: license file path problem
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
X-List-Received-Date: Fri, 26 Nov 2010 07:24:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear All:
    When I check the license file MD5sum, I meet some local recipes like "m=
odutils-collateral" and "moduils-initscripts" which didn't have license fil=
es under their directory.
    I asked those recipes maintainer Kevin, he told me those recipes are po=
ky specific scripts which are under MIT license, and their license file is =
under meta directory. So we discussed how to specify the path to check the =
license file.=20
	Now we import a new variable "L" in bitbake.conf to get a copy of the vari=
able "S", and set srcdir=3Dbb.data.getVar('L',d,True) in insane.bbclass to =
specify the path when check license file, then set the L =3D ${OEROOT}/meta=
 in those recipes' bb file which need to get their license file under meta =
directory. Through this way, all recipes can check their license file corre=
ctly.


Thanks
Lei=20


---
Mei, Lei
Email: lei.mei@intel.com



