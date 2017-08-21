Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2673CE00DF7; Mon, 21 Aug 2017 12:03:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60663E00C78
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 12:03:27 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 21 Aug 2017 12:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,409,1498546800"; d="scan'208";a="121239410"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by orsmga004.jf.intel.com with ESMTP; 21 Aug 2017 12:03:25 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Mon, 21 Aug 2017 12:03:24 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.70]) by
	FMSMSX125.amr.corp.intel.com ([169.254.2.141]) with mapi id
	14.03.0319.002; Mon, 21 Aug 2017 12:03:24 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Release Candidate Build for yocto-2.3.1. now available.
Thread-Index: AQHTGqeDth+P/BpPt023n5ncMA/9gqKPKVkQ
Date: Mon, 21 Aug 2017 19:03:23 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A16A36FCE@fmsmsx101.amr.corp.intel.com>
References: <1503338452.584579.56219@fedora25.yocto.io>
In-Reply-To: <1503338452.584579.56219@fedora25.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmNlZjQ3YjQtM2EzMy00YzYwLWI5YzAtOWFkYjg5ZWUwZGNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IklqOXBjdmMwODFreHVqNlJMNXBNUlhSNlVVcEwyMGk2d3g3SFlWRWVTMTQ9In0=
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>
Subject: Re: Release Candidate Build for yocto-2.3.1. now available.
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
X-List-Received-Date: Mon, 21 Aug 2017 19:03:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=20

This mail is kind of strange, artifacts are not published, there are not rc=
 specified and afaiu we worked on QA for pyro 2.3.1 last month.=20

Can anyone clarify this?=20

Regards,
Jos=E9


-----Original Message-----
From: pokybuild@fedora25.yocto.io [mailto:pokybuild@fedora25.yocto.io]=20
Sent: Monday, August 21, 2017 1:01 PM
To: yocto@yoctoproject.org
Cc: pidge@toganlabs.com; Perez Carranza, Jose <jose.perez.carranza@intel.co=
m>; Cruz, Libertad <libertad.cruz@intel.com>; otavio@ossystems.com.br; Zhao=
, Yi (Wind River) <yi.zhao@windriver.com>; Graydon, Tracy <tracy.graydon@in=
tel.com>; Lock, Joshua G <joshua.g.lock@intel.com>
Subject: Release Candidate Build for yocto-2.3.1. now available.


A release candidate build for yocto-2.3.1. is now available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.3.1.


Please begin QA on this build as soon as possible.


Build hash information:=20
meta-intel : 16aea09d224f3ed2021623d17c3e807f4b8ff18d=20
meta-qt4 : 88989ae3abe98b30089e7518d3adabe990c40a10=20
refkit : bc70be2fdc2c9fb8fc9c7618770392bd0fafb0b9=20
meta-mingw : 4bdb99650a053f254ccd158a6d0c25c80e79f6ee=20
meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d90197a456f=20
meta-gplv2 : 07e5dd2136a2a7cc069ad8c70bb422fa9d5b14f0=20
poky : 4a39979c8d1e560fa54240e99734a651dfbaa63a=20

\nThis is an automated message from\nThe Yocto Project Autobuilder\nGit: gi=
t://git.yoctoproject.org/yocto-autobuilder\nEmail: pidge@toganlabs.com=20

