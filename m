Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D2AC4C810FF
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 21:06:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Nov 2010 19:06:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,251,1288594800"; d="scan'208";a="353013417"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 19:06:26 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 25 Nov 2010 11:04:42 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 25 Nov 2010 11:04:42 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 25 Nov 2010 11:04:40 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
Date: Thu, 25 Nov 2010 11:04:40 +0800
Thread-Topic: The patch_2.5.9.bb download another version source file 
Thread-Index: AcuMTYB8csdJ207xQJG1eEhYRP5X9A==
Message-ID: <749B9D3DBF0F054390025D9EAFF47F223023B0F7@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: The patch_2.5.9.bb download another version source file
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
X-List-Received-Date: Thu, 25 Nov 2010 03:06:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Nitin,
	I am adding the license file MD5sum information to recipe, but I find the =
recipe "patch_2.5.9.bb" downloaded the source file from "patch-2.5.4.tar.gz=
", this will result in the COPYING file MD5sum is not match with the bitbak=
e calculate. I find you are the maintainer ,so can you tell me the reason?

Thanks
Lei=20


---
Mei, Lei
Email: lei.mei@intel.com



