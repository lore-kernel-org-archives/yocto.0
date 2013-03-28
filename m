Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70E32E014BD
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 11:00:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Mar 2013 10:59:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,927,1363158000"; d="scan'208";a="285897966"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga001.jf.intel.com with ESMTP; 28 Mar 2013 11:00:42 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.19]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.198]) with mapi id
	14.01.0355.002; Thu, 28 Mar 2013 18:00:41 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: templates in Hob 1.5
Thread-Index: AQHOK94otOp3DHii3EmQP+t/CmTKbA==
Date: Thu, 28 Mar 2013 18:00:40 +0000
Message-ID: <CD7A35C5.26726%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.1.130117
x-originating-ip: [10.252.43.224]
MIME-Version: 1.0
Subject: RFC: templates in Hob 1.5
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
X-List-Received-Date: Thu, 28 Mar 2013 18:00:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <82975C98308A0449B6A6486A1B3B87E5@intel.com>
Content-Transfer-Encoding: quoted-printable

Hob in the 1.4 release will no longer have Templates. We removed them
because the functionality was poorly defined and seemed to cause some
confusion (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2935)

When we tried to define it properly, we realised that templates could be a
few different things, and that we should find out which of them is the
most useful. This email is my attempt to gather your thoughts on this
templates business.

I guess the key question to answer is: in your opinion, which parts of the
configuration should be saved as part of a Hob template?

If we can get some consensus, we might be able to bring Templates back in
the 1.5 release.

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


