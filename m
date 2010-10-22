Return-Path: <yongkang.you@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C8B84C810C1
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 20:23:13 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Oct 2010 18:23:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,220,1286175600"; d="scan'208";a="566321262"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 21 Oct 2010 18:23:12 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 22 Oct 2010 09:22:33 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 22 Oct 2010 09:22:32 +0800
From: "You, Yongkang" <yongkang.you@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Fri, 22 Oct 2010 09:22:31 +0800
Thread-Topic: [yocto] Please verify the fixed bug in bugzilla.
Thread-Index: ActxHi5o1AnlIwUrTmKpJFZokioedAAaR7qQ
Message-ID: <F26D193E20BBDC42A43B611D1BDEDE712151801D95@shsmsx502.ccr.corp.intel.com>
References: <F26D193E20BBDC42A43B611D1BDEDE712151801BB8@shsmsx502.ccr.corp.intel.com>
	<1287665254.16386.453.camel@rex>
In-Reply-To: <1287665254.16386.453.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Please verify the fixed bug in bugzilla.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 01:23:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On Thursday, October 21, 2010 8:48 PM, Richard Purdie wrote:
> On Thu, 2010-10-21 at 15:44 +0800, You, Yongkang wrote:
> > Hi all,
> >=20
> > I just had a quick search in bugzilla and found a lot of
> bugs are resolved but not verified. We'd better to verify the
> fix before 0.9 launch.
> >=20
> > The M4 resolved (but not verified) bugs (88):
> >=20
> http://bugzilla.pokylinux.org/buglist.cgi?bug_status=3DRESOLVED&q
> uery_format=3Dadvanced&target_milestone=3D0.9%20M4&query_based_on=3D&
> columnlist=3Dbug_severity%2Creporter%2Cpriority%2Cop_sys%2Cassign
> ed_to%2Cbug_status%2Cresolution%2Cshort_desc%2Cproduct%2Ccomponent
> >=20
> > All resolved (but not verified) bugs (198):
> >=20
> http://bugzilla.pokylinux.org/buglist.cgi?query_format=3Dadvanced
> &bug_status=3DRESOLVED=20
>=20
> Just to remind people, who is responsible for verifying a bug? The
> original reporter?=20
>=20

RP,

Yes. The original reporter is responsible for bug verification. Please do i=
t as more as possible.

Do we need to close (verify) all fixed bugs before 0.9 release? QA can help=
 to close the old bugs (bug ID <100).=20

Thanks,
Yongkang


