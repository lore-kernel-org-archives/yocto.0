Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA896E0030B
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 08:14:36 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Feb 2012 08:14:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="117462673"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2012 08:14:35 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 14 Feb 2012 16:13:47 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.32]) with mapi id
	14.01.0355.002; Tue, 14 Feb 2012 16:13:47 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wang, Shane"
	<shane.wang@intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>, "An,
	LimingX L" <limingx.l.an@intel.com>
Thread-Topic: Design: build fails scenario
Thread-Index: AQHM6zOhjdOxmyteXUiFX+wPt5yTVg==
Date: Tue, 14 Feb 2012 16:13:46 +0000
Message-ID: <CB6038BC.7B1E%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.236.149]
MIME-Version: 1.0
Subject: Design: build fails scenario
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
X-List-Received-Date: Tue, 14 Feb 2012 16:14:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D8DAFDC2F50DF94FB96208DA272239EC@intel.com>
Content-Transfer-Encoding: quoted-printable

I've finally managed to put something together on how to handle build failu=
re in Hob 1.2.

The document is here:

https://wiki.yoctoproject.org/wiki/File:Build-fail-flow-v1.0.pdf

Let me know if anything doesn't make sense or you have any suggestions.

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


