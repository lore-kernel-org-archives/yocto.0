Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F36634C80052
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 07:53:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2010 05:53:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="863574497"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 05:53:46 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 2 Dec 2010 21:53:45 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 2 Dec 2010
	21:53:44 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
Date: Thu, 2 Dec 2010 21:53:43 +0800
Thread-Topic: [yocto] The patch_2.5.9.bb download another version source file
Thread-Index: AcuMTYB8csdJ207xQJG1eEhYRP5X9AF2nhBQ
Message-ID: <749B9D3DBF0F054390025D9EAFF47F22302FD7E5@shsmsx501.ccr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F223023B0F7@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <749B9D3DBF0F054390025D9EAFF47F223023B0F7@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The patch_2.5.9.bb download another version source file
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
X-List-Received-Date: Thu, 02 Dec 2010 13:54:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Nitin,
	This issue still exists. Can you help me to have a look?

Thanks
Lei=20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Mei, Lei
Sent: Thursday, November 25, 2010 11:05 AM
To: Kamble, Nitin A
Cc: yocto@yoctoproject.org
Subject: [yocto] The patch_2.5.9.bb download another version source file

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


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

