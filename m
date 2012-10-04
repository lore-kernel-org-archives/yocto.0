Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 530ACE00524
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 15:28:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Oct 2012 15:28:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="230138094"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga001.fm.intel.com with ESMTP; 04 Oct 2012 15:28:20 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 4 Oct 2012 15:28:20 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.180]) with mapi id
	14.01.0355.002; Thu, 4 Oct 2012 15:28:19 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [PATCH 0/1] meta-intel misc commits
Thread-Index: AQHNom1V43t99q2DykOi2UTHSXUIxpepsKBwgAB65AD//43scA==
Date: Thu, 4 Oct 2012 22:28:19 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C1572F9A6@ORSMSX106.amr.corp.intel.com>
References: <cover.1349381455.git.nitin.a.kamble@intel.com>
	<ADD6A3980E8C39419A432FF422031B4C1572F973@ORSMSX106.amr.corp.intel.com>
	<506E0A16.3000002@intel.com>
In-Reply-To: <506E0A16.3000002@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] meta-intel misc commits
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
X-List-Received-Date: Thu, 04 Oct 2012 22:28:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Hart, Darren
> Sent: Thursday, October 04, 2012 3:14 PM
> To: Kamble, Nitin A
> Cc: Zanussi, Tom; yocto@yoctoproject.org
> Subject: Re: [PATCH 0/1] meta-intel misc commits
>=20
> I'm familiar with the user-guide and have read through it. What I'm sayin=
g is
> that there should be a technical reason for adding a kernel command line =
and
> we should cite it in the commit. How does this improve the current state =
of
> things?

I have seen once the EMGD kernel driver throwing unable to allocate the mem=
ory errors while playing a video file. I guess the issue is scratched only =
in shortage of memory conditions.

Nitin

