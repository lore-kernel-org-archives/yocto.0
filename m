Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22B8EE01572
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 23:55:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Jul 2013 23:53:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,792,1367996400"; d="scan'208";a="355330120"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 31 Jul 2013 23:55:43 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 1 Aug 2013 07:55:13 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.157]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.33]) with mapi id
	14.03.0123.003; Thu, 1 Aug 2013 07:55:12 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] 1.5_M3.rc1 is being built
Thread-Index: AQHOjkFz7iDNp4OAX0CBnRdE4TYAFJl/yPmAgAAiXYA=
Date: Thu, 1 Aug 2013 06:55:12 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F231AF@IRSMSX104.ger.corp.intel.com>
References: <CAPhnLPCBvA21qDdJhT-wUqEJYBvvJYo0jBe6+G3pM76g4H5qkw@mail.gmail.com>
	<CAPhnLPCFG0_PgPB=49TaWDZL1xrW=a-6+PM+ijY8FB4g+uzF+A@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C634A5@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C634A5@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Chandra K
 \(chandra.k@huawei.com\)" <chandra.k@huawei.com>
Subject: Re: 1.5_M3.rc1 is being built
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
X-List-Received-Date: Thu, 01 Aug 2013 06:55:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Please let us know when we can start testing and on what build.

Regards,
--
Alexandru Georgescu

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Zhang, Jessica
Sent: Thursday, August 01, 2013 08:51
To: Flanagan, Elizabeth; yocto@yoctoproject.org
Subject: Re: [yocto] 1.5_M3.rc1 is being built

Hi Beth,

I've fixed kepler build issue so please have a re-spin.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]
On Behalf Of Flanagan, Elizabeth
Sent: Wednesday, July 31, 2013 3:58 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] 1.5_M3.rc1 is being built

All,

This release candidate had a few failures some of which I've fixed due to t=
hem being autobuilder issues:

build-appliance: was including meta-intel (which it shouldn't have
been) which failed. We've rebuilt the BA and updated it in the download dir=
ectory
eclipse-plugins: all failed. This was caused by the updated buildset.
I've corrected them and rebuilt. Kepler fails but it's relatively new.
Juno passed and I copied it over.

Assorted sanity failures. There were systemd failures, but the ones I'm rea=
lly concerned about only happened on ab06 and was due to being unable to ac=
cess a free tapdev. I've not had time to look at this, but will try to look=
 at it tomorrow if someone else doesn't get to it first.

-b

On Wed, Jul 31, 2013 at 1:00 AM, Flanagan, Elizabeth <elizabeth.flanagan@in=
tel.com> wrote:
> We should have artifacts in a few hours at
> autobuilder.yoctoproject.org/pub/nightly/20130731-1
>
> meta-fsl-arm    fdf3fe6296790b0c0817a58c064d7da1cca7dd0a
> meta-fsl-ppc    399c1ab5e86cf6dbb7c0c48d5253ac8798d6bfe4
> meta-intel      ce8f48d28c8d6d99b860e3f6480d9d3a6fc0b301
> meta-minnow     a1cfe0e7fc59eb1e430db07840d6b6d54b8733e2
> meta-qt3        b73552fb998fd30a01dbee5a172e432a16078222
> poky    9de0ad47462c13ac4a2d73e12e92be6c1b4e0415
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



--
Elizabeth Flanagan
Yocto Project
Build and Release
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

