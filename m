Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D28BE01426
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 07:59:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Jun 2012 07:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="158089298"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 15 Jun 2012 07:59:06 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.231]) with mapi id
	14.01.0355.002; Fri, 15 Jun 2012 15:57:20 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Kang Kai <kai.kang@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Question about the image-writer
Thread-Index: AQHNSwcpPteTWdRoZEyzqNMJua9LbA==
Date: Fri, 15 Jun 2012 14:57:20 +0000
Message-ID: <CC010BDE.1133D%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.35.171]
MIME-Version: 1.0
Subject: Question about the image-writer
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
X-List-Received-Date: Fri, 15 Jun 2012 14:59:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6BDC5F97BF20B240975C8CBBA730984B@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Kai,

I have a question about the image-writer and I was wondering if you could
help.

We are working on the Hob screen we will display after finishing a build.
If the build creates a live image (.iso, .hddimg files), we display a
'Deploy image' option that should launch the image-writer.

There might be cases where the build creates both an iso file and a hddimg
file. In such case, users should probably select which file they want to
use. My question is: should we handle this selection in Hob and pass the
selection to the image-writer, or will the image writer take care of
asking users to select an image file?

Thanks!

Belen

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


