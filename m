Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54A88E002AC
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 10:00:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Sep 2012 10:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,484,1344236400"; d="scan'208";a="226552551"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 25 Sep 2012 10:00:43 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.89]) with mapi id
	14.01.0355.002; Tue, 25 Sep 2012 10:00:42 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Brian Lloyd <blloyd@familyhonor.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Documentation clarification
Thread-Index: AQHNmz6m2lF+4F4lZkWUh2B/cZT8AJebR5bg
Date: Tue, 25 Sep 2012 17:00:41 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A220@ORSMSX101.amr.corp.intel.com>
References: <1348592103.1852.5.camel@omclinuxballt.devnet.ordermatic.net>
In-Reply-To: <1348592103.1852.5.camel@omclinuxballt.devnet.ordermatic.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Documentation clarification
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
X-List-Received-Date: Tue, 25 Sep 2012 17:00:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here is the link to the spot in the manual Brian is referring to:

http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.htm=
l#var-KERNEL_FEATURES

If this is malformed let me know... I can quickly correct.

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Brian Lloyd
Sent: Tuesday, September 25, 2012 9:55 AM
To: yocto@yoctoproject.org
Subject: [yocto] Documentation clarification

should     =20
KERNEL_FEATURES_append_qemux86=3D"cfg/sound"=20
have a space between the " and c?

My understanding is that append does a straight append with no added
whitespace, so that would cause the line to become something like
"feature/neatfeaturecfg/sound", which I don't understand how could be
right.


This is from the sample for KERNEL_FEATURE in the poky reference manual.

If I understand things correctly and the sample is just malformed, I'll
open a ticket against it so it can be made consistent, otherwise I
appreciate the explanation so I can get my head wrapped around this
properly.


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

