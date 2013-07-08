Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EED7E01440
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 08:02:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2013 08:00:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1020,1363158000"; d="scan'208";a="342180311"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 08 Jul 2013 08:02:57 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.91]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.127]) with mapi id
	14.03.0123.003; Mon, 8 Jul 2013 16:02:56 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: naming .bb files
Thread-Index: AQHOe+w6WT76XSofL0CBFrwRICwFJg==
Date: Mon, 8 Jul 2013 15:02:56 +0000
Message-ID: <CE00932F.2D481%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.2.130206
x-originating-ip: [10.237.224.165]
MIME-Version: 1.0
Subject: naming .bb files
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
X-List-Received-Date: Mon, 08 Jul 2013 15:03:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <73A3DF874A558649BBF9EC96A7FAF625@intel.com>
Content-Transfer-Encoding: quoted-printable

Bug 4193 will allow Hob users to save their customised images into a .bb
file. As part of the saving flow, users will need to give their .bb file a
name, and we need to ensure such names are valid.

There seem to be certain rules regarding .bb files naming, but apparently
those are not written anywhere. Some of those rules seem to be:

* No spaces
* Underscores can only by used to separate name and version
* No ASCII special characters
* No non-ASCII characters
* No uppercase letters

Does anybody know of any others we should be aware of?

Thanks!

Bel=E9n

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


