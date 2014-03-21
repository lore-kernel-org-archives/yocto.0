Return-Path: <boon.leong.ong@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B2C9E00B54
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 03:07:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Mar 2014 03:07:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,703,1389772800"; d="scan'208";a="503584786"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by fmsmga002.fm.intel.com with ESMTP; 21 Mar 2014 03:07:03 -0700
Received: from pgsmsx105.gar.corp.intel.com ([169.254.8.207]) by
	PGSMSX101.gar.corp.intel.com ([169.254.1.140]) with mapi id
	14.03.0123.003; Fri, 21 Mar 2014 18:07:02 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question on cross-compiling 32-bit application on 64-bit
	target platform
Thread-Index: Ac9E6LKCMPPIDrFhR9KFOwsbKeRHUAABIthw
Date: Fri, 21 Mar 2014 10:07:02 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B7240CB168@pgsmsx105.gar.corp.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Khade, Abhishek" <abhishek.khade@intel.com>
Subject: Question on cross-compiling 32-bit application on 64-bit target platform
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Mar 2014 10:07:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=20
	Could anyone comment on whether we can cross-compile a 32-bit application =
on a 64-bit Intel machine booted with core-image-sato-sdk hddimg.=20
	If it is not enabled by default on the SDK image, how can I configure the =
recipe to do so when I build core-image-sato-sdk?=20
	Could anyone shed some light on this. Much appreciated.


Thanks
Boon Leong=09

