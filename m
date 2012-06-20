Return-Path: <belen.barros.pena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CE4CE0070B
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 09:17:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jun 2012 09:17:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="160105519"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 20 Jun 2012 09:17:45 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 20 Jun 2012 17:17:39 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.240]) with mapi id
	14.01.0355.002; Wed, 20 Jun 2012 17:17:39 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Selecting base images in Hob
Thread-Index: AQHNTwA2fT1kU8CiSUSoWHauR0PYHw==
Date: Wed, 20 Jun 2012 16:17:39 +0000
Message-ID: <CC07B632.119F0%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.35.169]
MIME-Version: 1.0
Subject: RFC: Selecting base images in Hob
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
X-List-Received-Date: Wed, 20 Jun 2012 16:17:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3BCB61FCBA54CC47B2EABC50C17CB90D@intel.com>
Content-Transfer-Encoding: quoted-printable

In Hob, we use a drop-down list to select your image. But with 19 base
images now available, we have already outgrown the capacity of this UI
widget (the guidelines recommend using them when you have between 3 and 10
items). I filed bug 2345 (nice number) to look at alternative ways of
presenting and selecting base images in Hob.
=20

The solution I am looking at is based on grouping the base images. I
thought I might ask for some help from the list to create those groups.
This is what I've come up with:

Group 1: Stripped-down images. It includes:

core-image-base
core-image-basic
core-image-minimal
core-image-minimal-dev
core-image-minimal-initramfs
core-image-minimal-mtdutils

Group 2: GUI images. It includes:

core-image-clutter
core-image-core
core-image-sato
core-image-sato-dev
core-image-sato-sdk
qt4e-demo-image

Group 3: LSB-conforming. It includes:

core-image-lsb
core-image-lsb-dev
core-image-lsb-sdk

Group 4: For real-time use. It includes:

core-image-rt
core-image-rt-sdk

Group 5 is just the self-hosted-image

Group 6 would be the 'Create you own image' option

Any suggestions on how to better group these images and recommendations on
how to name the groups would be very welcome.


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


