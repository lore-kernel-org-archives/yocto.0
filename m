Return-Path: <yongkang.you@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4611A4C80FA4
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 08:44:22 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Nov 2010 06:44:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,178,1288594800"; d="scan'208";a="625404855"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2010 06:44:20 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 10 Nov 2010 22:43:23 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 10 Nov 2010 22:43:22 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 10 Nov 2010 22:43:21 +0800
From: "You, Yongkang" <yongkang.you@intel.com>
To: "Yu, Ke" <ke.yu@intel.com>
Date: Wed, 10 Nov 2010 22:43:19 +0800
Thread-Topic: Bug Fixer and Verifier
Thread-Index: AcuA2cv8qcTG/QMLR1SZdsydarmvfAACpUKA
Message-ID: <F26D193E20BBDC42A43B611D1BDEDE7122183FB3A7@shsmsx502.ccr.corp.intel.com>
References: <33AB447FBD802F4E932063B962385B35302B3E57@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <33AB447FBD802F4E932063B962385B35302B3E57@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bug Fixer and Verifier
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
X-List-Received-Date: Wed, 10 Nov 2010 14:44:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ke,

I think that's okay. But if reporter can ask somebody (who is in bug's cc l=
ist) to help verify, that will be greater.  And it needs to provide master =
tree's commit info, when mark the bug to "fixed" stage.=20

BTW, we also defined the bug should not be marked to "fixed", until it has =
been included in master tree and built into any formal build. Well, this pr=
ocess is not easy to be manually followed. I noticed Bugzilla 4.0 would be =
released soon. I am hoping we will have automation bug status changing soon=
 (with required bug fixing info added to patch).=20

Thanks,
Yongkang


On Wednesday, November 10, 2010 9:19 PM, Yu, Ke wrote:
> Hi KangKang,
>=20
> One case of the bug process need your input. In bug #467, Josh
> are both reporter and the one who fix this bug. When he fixed
> the bug, as a reporter, he also verify the bug according to the
> process
> (https://wiki.yoctoproject.org/wiki/Bugzilla_Configuration_and_
> Bug_Tracking) . I just wonder if it is appropriate that bug fixer and
> verifier be the same people?=20
>=20
> Regards
> Ke=

