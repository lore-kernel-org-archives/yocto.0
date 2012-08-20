Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EBD6E013D2
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 04:25:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2012 04:25:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,796,1336374000"; d="scan'208";a="210992826"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2012 04:25:46 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 20 Aug 2012 12:25:15 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.154]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.51]) with mapi id
	14.01.0355.002; Mon, 20 Aug 2012 12:25:15 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Hob and image groups: feedback wanted
Thread-Index: AQHNfsZ4iX/3zaMejkqIUrafqJ3/hQ==
Date: Mon, 20 Aug 2012 11:25:14 +0000
Message-ID: <CC57DD29.16735%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.42.150]
MIME-Version: 1.0
Subject: Hob and image groups: feedback wanted
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
X-List-Received-Date: Mon, 20 Aug 2012 11:25:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2F33DD7883D63A4692E0B20DE8C504CA@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

As part of bug 2345 I've come up with an alternative way of selecting base
images in Hob that involves grouping base images. I have given a first go
to the image groups, but it would be good if you looked at them to make
sure they make sense.

The groups are listed in page 2 of this document:

https://bugzilla.yoctoproject.org/attachment.cgi?id=3D704

There is also a html-based prototype of the image selection process here:

https://github.com/belenbarrospena/2-step-image-selection-2345

You can play with the 'Select a base image' section to see how the image
groups work. =


Let me know if we need to make any changes.

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


