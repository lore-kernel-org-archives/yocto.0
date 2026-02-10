Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7EE3E9462A
	for <webhook@archiver.kernel.org>; Tue, 10 Feb 2026 02:51:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11773.1770691881438744281
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Feb 2026 18:51:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=KGvnr1No;
 spf=pass (domain: intel.com, ip: 198.175.65.9, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770691881; x=1802227881;
  h=from:to:subject:date:message-id:mime-version;
  bh=sX/ofciyYfGKz67Gx6rqmYYQf40Xwzg1k01KoBemIDk=;
  b=KGvnr1No5E5kAZ4fXrX4+ueLvv1s/Nv9kczEuK/NWEmhG1gUvua7ikwH
   yM+seIdNTeBUjRKdOKpWxvV28B0Dcc1E7oo7vLxGMIWoVHjmp91y++Jy1
   UePcMiVqary0sXW9dmAk5dy34d8VrEteqTLjl5fai6HJi2Aq3rZciBXzB
   j4IuIlkIQIHmvNv+HpHZaGE/5OBav323LyKeCNGM/jeJBnIUrRtVxpyVI
   SIoK4TpRfoue0lIEZVCD/DLTbjuFYmF1UyuepskjzDB5dPUY37lyz3dgk
   7xQAoUp3e5kEMeJztqX0yco6NfrZDlUODm6VukUKt3HspWViJ0ZN/tDOR
   w==;
X-CSE-ConnectionGUID: Dz9DD9OESEGwuRIQ/ElJrg==
X-CSE-MsgGUID: 6Ma1GYZKQ4OP9U/61I1pBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="94455765"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208,217";a="94455765"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2026 18:51:20 -0800
X-CSE-ConnectionGUID: dTju7AGGSO+wmqzZnniwsw==
X-CSE-MsgGUID: s3O2+ahuQNCCrz/4ziJFrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208,217";a="241819884"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2026 18:51:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 18:51:00 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 18:51:00 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 18:51:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZZZXJNkB7/6CngQS7U7Np/q2FOqZg09TLAJIRj8Pq/CtSB3NYYQhodllMD1bnbxDQBLu1FNY1SZH1BKmzK3kEaSx5lUtJrbRIxogTGugLxM0Q7j/loKACl4b3dDk9hr8Uebd+harfeA06Cx4RGQ8n7fMODr011K3gpc8Nx40GrqKYtViDeLCqESTnMbFFf9Y0K2jo+Y5nBmy1RNt/IuP+mAvyKailAdvxkNrmWui2+BAsilkvNqDrF0zbB4jmg1TzZhPsRMsrdB5y7L3QDnm5BVLRU/jNCtXAByfIn/n17f9u5JeJWmqRQrnDV9CFoIscLTPBYcgRHHLUd2/r/tWMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sX/ofciyYfGKz67Gx6rqmYYQf40Xwzg1k01KoBemIDk=;
 b=TJik5nVYtliRT4G4+h0pljuSES1Kh/lBXTz2lwhQwTYVJLouHvToZGRr4dIAHYybk7wWgRwlw9jA8ithHx2xRpKYMZ6l4NErRnbyhBvoefFGk0Mx3/kksbY6XwP9KmGkDuMsOlKzy9GKETiwTBBl5TaMvZzZypDHinMkmKisxHcQQHcQ9ZSdT+eEP+v9vc1NkMGREAB+YQDvAzH/vaAn7l5yMxnWLBbY8OE5NgOpLFTqOTDsmMn+/hyQjINzixREj4Qi56RhDlWmJC3Ntlv3v9knXoj13MU/qcM9mX3+yYLZTwYqsub7urwXxUCGdMAa3azt5WG0La4iVPobB/8qIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SA1PR11MB8327.namprd11.prod.outlook.com (2603:10b6:806:378::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.16; Tue, 10 Feb
 2026 02:50:57 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 02:50:57 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 6.0 (yocto-6.0_M1)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 6.0 (yocto-6.0_M1)
  Now Available
Thread-Index: AQHcmjNN1/JboQTcBUa+riKmvXnfCA==
Date: Tue, 10 Feb 2026 02:50:57 +0000
Message-ID: <BL4PR11MB8797016E244D535507130176B962A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SA1PR11MB8327:EE_
x-ms-office365-filtering-correlation-id: e0432e05-5838-422b-87d9-08de684f373a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021|8096899003;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ngyC3Q3JqO5Y88VeCd/qqh+pstc/k//9//WCyCoYqEjuXOon77ZXUrzKMA?=
 =?iso-8859-1?Q?9tqje0ZcfQTjLkqcbO3O8xmGFEQt4JPpZ1VRSiAQPczp++Dm8ZMx1KTNCr?=
 =?iso-8859-1?Q?xyY/4Lhbzvi6voaWZ5L7TTlZFHjELFTBubKPzA6D1hIxqa6bcv/W1D5owI?=
 =?iso-8859-1?Q?198WG+Ma8EzLmn5Z1mVw+c4bhs3zOYr6MnUAKyTL+Pff4qBikhP799FqUo?=
 =?iso-8859-1?Q?dia1iizDyMOvK0jUFe/DmcbNklNyQLqqb0eETkn0PSntl/mi9RPZnoS18A?=
 =?iso-8859-1?Q?2eI91tOOBZf7UG4R5rWstBBYHYNYxU8m3FvsEuyAT/TNMRDc6L4CwkqhK9?=
 =?iso-8859-1?Q?cYYQ64yPlqdUtHzi3uTx78i8WjZjA/ow4xU0nB+rqTpQ5qD50rnyabrNqT?=
 =?iso-8859-1?Q?oq71pVlU3MKtCFejnM89jwBKId/HzkeL0VC/0f6uhHQUQVDrS+XcembdJr?=
 =?iso-8859-1?Q?G4zX1647l4Iw2jubNDBrDzXyRrxSz2YTywj0jRtUuZbNsrI65OhkeOcQ+k?=
 =?iso-8859-1?Q?IVRUp3Ozi5Lb8CDkD2meAiIrLUkBBhlTt8YnGkPlrELKiF51Q6WLheU2f7?=
 =?iso-8859-1?Q?R9j12QCVel7p03NJjHKc4Z6JHAYs+Zl1VF/xE+5PxOvz+bV7gT+DL2DOmy?=
 =?iso-8859-1?Q?nq2Rj9NbzzMS5g7ZbmUAcPiTu43uUCQUvuVSpV+Xcd/+aTc9/ODEJL+blv?=
 =?iso-8859-1?Q?qxU8nRKPjBT4bnDigRv9bw0wolcJvOJzU/SK9kwvgVL+Wk3yIGNleE4rG/?=
 =?iso-8859-1?Q?k/KgucSnEbyaUEUgdSYT2Ix6jSWYJiufkULvbUjXhl1V/AmLoVSqE13MWM?=
 =?iso-8859-1?Q?D5Q5zkqSF4PB6CDY5IJD+z40AlUdbrZCeC6lUXuuK3VZQ4wFvqsJuKvUbM?=
 =?iso-8859-1?Q?+wvpAK7GdNRWONUEvkDiY1Sx1701RaWC+cTxJp+XPE9Sitf1AVwGUaCLMC?=
 =?iso-8859-1?Q?NOmkWBWmkUaRQlfh9x6xO59diPVUqXdj31oS+aGUKDPaDG1ABs4argrNN/?=
 =?iso-8859-1?Q?5MPE2n2hIRCUfwjoS7yptI6x8WAF76KCLlKMxpLGD8Os7YsEx81/hLusG5?=
 =?iso-8859-1?Q?72USH9Ty7fYfbW4n+kkK3TuBm2oKYRosd0HbL14Xu7kf/JjHH+N5/LHT0l?=
 =?iso-8859-1?Q?uERacftEZ3amH2L416q6TAaY6JisX0D/LTUqvFuwiKy7TppBjjd4bturto?=
 =?iso-8859-1?Q?0WqS/Xoz/FyARdMstdcIwqWw2gD7cmJUGB7Kdm+7W71H2ehuvj2JByi3EC?=
 =?iso-8859-1?Q?nTGbAyWg0+7+M+wlAEWAhw7hjWDFBr+xyzrBAenjarKFXnX8E89+7O4bth?=
 =?iso-8859-1?Q?RnhcQcajYdemTC0WTASNrjLIXQL13/FHD5EPlhkFAOvRxvTU4PtT3WBgDU?=
 =?iso-8859-1?Q?ErK3W4zbSCwDVXvGPM9H2icGGkJXGxCReAzyWXXL3kk5fev16loaR46Jhw?=
 =?iso-8859-1?Q?XFyYVkeDp1e57Dyv8bz2QMMNwsFCo5XH9bgNrWS/k94Mui1oNhTSE9tRgj?=
 =?iso-8859-1?Q?Yer2OjfBe1wOwQ0UERFG3mOXFQ8VM2yBkKSVUjw5p3YIZu2husrQaGQByv?=
 =?iso-8859-1?Q?ZDhd0OcfbA6bUKfSCghajdctF8wLx6eRrlU4M6BYhuHKTm3tFCGrun83O6?=
 =?iso-8859-1?Q?krf1XFr0etA2+4OAoUuWQiZdidbbYcK5RA?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?jDJb0RWW0stlu0ZLRcxwPTE8exYgyohJxxqR/k/TvZCJtlmDIFMwfBC4my?=
 =?iso-8859-1?Q?ZHSxeddG6/lqM7Yi0ofaByZfIZhAqCuL8iYsxaiAKNtTBHLNmXMcFtCfH9?=
 =?iso-8859-1?Q?VwbMu9xIP8tP+/TI6j7qL8JRPhd4TJHE9jGSkVL7XUSlRfBcN/bWbpZTkX?=
 =?iso-8859-1?Q?Umaa9AT3bsdgkI3RHjDoed/0DW40/vq0W9nYmKVyQkLBOhJA9wP8/whSIm?=
 =?iso-8859-1?Q?6yt8bdxn85D8p44u+PZX0tXTWeUZNuXCtgI+AZaBiM32xVyHC8nwlQ9Bi5?=
 =?iso-8859-1?Q?i3As8wXhTrZsYxBavRtTBd67OvshGwHKIxZQnyzimin5PljV03ICzNB7aj?=
 =?iso-8859-1?Q?9kgxfOYtAMnntIwSsRI/aI7obyNZouB6i1Ql5Nl95r4rUjShKwVrxwximV?=
 =?iso-8859-1?Q?lAqTuXmsnMdSwqf0EZtwF6TXKBP8j1rCeQ4vTkkebfL7iBZjV4K+LNuy++?=
 =?iso-8859-1?Q?QxthYq4uF6Rle83oLI5PJAM7GtQatQ7nQoAJB6KmHBjGG0uhln0zNDmSZp?=
 =?iso-8859-1?Q?B4RRSqFvIBnOrUudeOS3lJC+4gld49FFNsjY4k1BR2GuPWpbS030YoLqZl?=
 =?iso-8859-1?Q?SDJ1qY8gezEQpO4F4vQVTSYo+D2aHJJIM6Ljo/jwpgKcCvahqHSkJ8cFJk?=
 =?iso-8859-1?Q?GORfvHsojf7Z/9UAsa38QubtuGAJG7zjroc4bMu+/eSCmcmoCV1kAPcB6Z?=
 =?iso-8859-1?Q?7h02d+YooHdDHFrPjq/HRxr0X5MoPzQorwzl5bHMYa15naNvMgqizFgrFc?=
 =?iso-8859-1?Q?65wA/OR/SohwOyOsclEwVtuektZniu+uOWLsR4Bm5Eh0OCtxQjBDJ0brU/?=
 =?iso-8859-1?Q?MrqJdlgE43TmYS1aU8NEDonXHkxlQQT2Z7LnJapjM0V4rVQcy4InAlB6Lh?=
 =?iso-8859-1?Q?VIvMpilvSmt6Xt2uSZAFQ3FM70SEXi137E7jJLKfsNM+U4qInss9/kHrjh?=
 =?iso-8859-1?Q?2K5oqjlsXjXcJAP+HlqodeqpXlIHSHoSLaPAwvrZOW9uPbkyp6tT2m6myu?=
 =?iso-8859-1?Q?G07Z6I5xBCrvQ2PldzgqS6PzZJDIXa7O4Q13QcdckrnzVcjdpYroIJf+8f?=
 =?iso-8859-1?Q?VIgoEKREg6T2woHh+ts56zOF3G5emEMuhp6lf1YCTF13ZtBO24gOokX4TX?=
 =?iso-8859-1?Q?OH9RnY1YIdzbObqtb80CMhIHzg64HKuqO9C4kuIA9iC9QSjtM/geWudC73?=
 =?iso-8859-1?Q?nLPYlq86R9Ug5p5MeCWIb0SJCJixhLMFdwIIAsYYQEij47X1vQHBpTHBTs?=
 =?iso-8859-1?Q?0wH4skXqeO9f3PSrbOk/noJkeNagH5l4rjIDTzAsDw7XRlryL6T+zJfYKl?=
 =?iso-8859-1?Q?IJmEmP22iuLAfDpW+Q4R3u7a8JMT96i6AJcFriRZQGYnxQx/2TvqR46nWU?=
 =?iso-8859-1?Q?nWXOIolJLBPEEJyOwzLTGkGlGSVBO0PAIzEwe9S/vOCoM9mB9S9+5jjodY?=
 =?iso-8859-1?Q?eoopHAu/gTJ5pqSp1odiD3AbO5qHXX2BH3EV95XbTpacmTGY7xvayhTkGX?=
 =?iso-8859-1?Q?kZwOQ1xkxGrmCodRWNfacfm92IN93JY+qwDL3YWtU66kScgR31DauDSJ6t?=
 =?iso-8859-1?Q?5p9UCGnAFBe0QCIkd4bb2iW4f6/3c2MRGYPsk8oVo3xYOjw/8O4tYzmyp1?=
 =?iso-8859-1?Q?Jqm2kANMU9fc1EccGunuUq5JUMSxIjoM+nL6zqtIddP3rPT0hNqDVs+Hmi?=
 =?iso-8859-1?Q?iMMxYeP6jy/C5oxGaYjLGpEQ6+dhEfdPlwdzjjKyF6pr/NOlR/QyqSvUrD?=
 =?iso-8859-1?Q?X2l+blz+n4Ova1C0ZBE6ve4uAYIpKSlgB7fkyeju81fOWb9psFcC5MpG7N?=
 =?iso-8859-1?Q?p1bPkfay5A=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797016E244D535507130176B962ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0432e05-5838-422b-87d9-08de684f373a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2026 02:50:57.1049
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +IHZ3ly38AEIAjRdNb/FNXxLOf/ivDltNRH3jfc/NZxBx5F60n1jInRB0K/fPhlIbcr2771xdJcMnW8NiPFatQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8327
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Feb 2026 02:51:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66236

--_000_BL4PR11MB8797016E244D535507130176B962ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the first milestone release for Yocto Project 6.=
0 (yocto-6.0_M1) is now available for download.

Download:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M1

bitbake: cdd79c1768ac396a9c6577e38098da4331507f24
meta-agl: fcc4176504cd4b5b9d27d20797b11be5330e9f10
meta-arm: c3c97a6b8f39afa7459ec21ac55fa04164c0fe92
meta-aws: 72441d9befcb4416952f31bdd245f44d9d80f8ae
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: c62b2d0e99e6526d0ff0d0bcdb23816cfdcb6292
meta-mingw: 11666fce6a3cc98bcff6fe2c6bdd9e48faf03767
meta-openembedded: 7bbe4a4e200452b1fd6c09c7fcf36c4b229146f6
meta-qcom: 18c6e3f42ddb07f4b4a87f44324b3fb60e6c3a2e
meta-virtualization: 28d26fd95397bf575e65fcca0cbb302b1e9bc7ff
meta-yocto: c23c19e0b300812bad314f1d0a901965315271ae
oecore: 6c31c2a731858108e790acaf38679a01b0d1a035
yocto-docs: b8a56b8b2e8c0417b2f7204f80c79b05d95e9ce4


Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M1/t=
estreport.txt

Thank you.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--_000_BL4PR11MB8797016E244D535507130176B962ABL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
We are pleased to announce the first milestone release for Yocto Project 6.=
0 (yocto-6.0_M1) is now available for download.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M1</=
div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
bitbake: cdd79c1768ac396a9c6577e38098da4331507f24</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-agl: fcc4176504cd4b5b9d27d20797b11be5330e9f10</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-arm:&nbsp;c3c97a6b8f39afa7459ec21ac55fa04164c0fe92</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-aws:&nbsp;72441d9befcb4416952f31bdd245f44d9d80f8ae</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-intel: c62b2d0e99e6526d0ff0d0bcdb23816cfdcb6292</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-mingw: 11666fce6a3cc98bcff6fe2c6bdd9e48faf03767</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-openembedded: 7bbe4a4e200452b1fd6c09c7fcf36c4b229146f6</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-qcom: 18c6e3f42ddb07f4b4a87f44324b3fb60e6c3a2e</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-virtualization: 28d26fd95397bf575e65fcca0cbb302b1e9bc7ff</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-yocto: c23c19e0b300812bad314f1d0a901965315271ae</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
oecore: 6c31c2a731858108e790acaf38679a01b0d1a035</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
yocto-docs: b8a56b8b2e8c0417b2f7204f80c79b05d95e9ce4</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Full Test Report:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M1/t=
estreport.txt</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thank you.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Chee Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
chee.yang.lee@intel.com</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Yocto Project Build and Release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB8797016E244D535507130176B962ABL4PR11MB8797namp_--

