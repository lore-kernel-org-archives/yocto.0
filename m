Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9D03E00723
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 08:10:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Jun 2012 08:10:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112127260"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Jun 2012 08:10:09 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 14 Jun 2012 16:09:03 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.248]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.175]) with mapi id
	14.01.0355.002; Thu, 14 Jun 2012 16:09:03 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "An, LimingX L"
	<limingx.l.an@intel.com>
Thread-Topic: live image types and qemu machines
Thread-Index: AQHNSj+iyOSjoET3xkqsKkFSMg1pGg==
Date: Thu, 14 Jun 2012 15:09:03 +0000
Message-ID: <CBFFBD1E.11118%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.33.230]
MIME-Version: 1.0
Subject: live image types and qemu machines
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
X-List-Received-Date: Thu, 14 Jun 2012 15:10:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <ABD4EFFB2BEA274A8991F87CAA8F15B8@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

The current Hob allows you to build images for a qemu machine selecting
'live' as your image type. To me (with my pitiful knowledge) this doesn't
make much sense: would I want to deploy an image built for a
virtualisation environment in a real piece of hardware?

So here goes a question: should we allow Hob users, who are mainly people
new to the Yocto project, to select the 'live' image type when building
images for qemu machines?

This might sound like a silly question, but it has a pretty big impact on
the Settings dialog and on the number of variations we need to create for
our 'Image details' screen, which appears after the build finishes and
displays logical next steps (like run the image or deploy your image to
external storage).

Any help with this would be much appreciated.

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


