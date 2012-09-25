Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F378CE0027E
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 10:11:11 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Sep 2012 10:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,484,1344236400"; d="scan'208";a="148912362"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Sep 2012 10:11:11 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.89]) with mapi id
	14.01.0355.002; Tue, 25 Sep 2012 10:11:10 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, Brian Lloyd
	<blloyd@familyhonor.net>
Thread-Topic: [yocto] Documentation clarification
Thread-Index: AQHNmz6m2lF+4F4lZkWUh2B/cZT8AJebvUMA//+Ng3A=
Date: Tue, 25 Sep 2012 17:11:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A243@ORSMSX101.amr.corp.intel.com>
References: <1348592103.1852.5.camel@omclinuxballt.devnet.ordermatic.net>
	<CAJTo0LYJbHkqwAyYnf3ccvKBhkBX1a+rhH6dY8SPeNqyGajcZQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYJbHkqwAyYnf3ccvKBhkBX1a+rhH6dY8SPeNqyGajcZQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 25 Sep 2012 17:11:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This has been fixed.  See http://www.yoctoproject.org/docs/latest/poky-ref-=
manual/poky-ref-manual.html#var-KERNEL_FEATURES

Thanks,=20
Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Burton, Ross
Sent: Tuesday, September 25, 2012 10:00 AM
To: Brian Lloyd
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Documentation clarification

On 25 September 2012 17:55, Brian Lloyd <blloyd@familyhonor.net> wrote:
> should
> KERNEL_FEATURES_append_qemux86=3D"cfg/sound"
> have a space between the " and c?

Yes.  Please do file a bug.

Ross
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

