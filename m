Return-Path: <belen.barros.pena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A235E00347
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 07:40:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Jul 2012 07:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="167263638"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by azsmga001.ch.intel.com with ESMTP; 12 Jul 2012 07:40:37 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.36]) with mapi id
	14.01.0355.002; Thu, 12 Jul 2012 15:39:53 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: bug 2183: what happens when a build fails
Thread-Index: AQHNYDwykV1xkMYDkUCQfT5dHH95kg==
Date: Thu, 12 Jul 2012 14:39:52 +0000
Message-ID: <CC24A048.136C3%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.50.228]
MIME-Version: 1.0
Subject: bug 2183: what happens when a build fails
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
X-List-Received-Date: Thu, 12 Jul 2012 14:40:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <169F9C15140D26479BA5E66BAE8AE2AB@intel.com>
Content-Transfer-Encoding: quoted-printable

I've just posted a document to Bugzilla showing what would happen in Hob
when a build fails. You can find the document here:

https://bugzilla.yoctoproject.org/attachment.cgi?id=3D634

Implement this design depends on bug 1991 and 2165

If you have any questions or feedback, let me know.

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


