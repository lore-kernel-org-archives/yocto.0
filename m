Return-Path: <yogesh.tyagi@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D321EB26E5
	for <webhook@archiver.kernel.org>; Tue, 10 Feb 2026 16:29:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.23688.1770740987970603992
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Feb 2026 08:29:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=a/hgevIg;
 spf=pass (domain: intel.com, ip: 192.198.163.9, mailfrom: yogesh.tyagi@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770740988; x=1802276988;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Nru1lqd1uoKHqJ5cPJBNbI83fBaUnv8sceZdu6yVyno=;
  b=a/hgevIgRM6Sh8ubIzYCsI6URJj1zaBF9E4ng95k5L02mS9g2XtOm6Ul
   aXPPNL9/9V7Ex1cCsBlGGXbPhpeIjyyTXbwF1AW8rynwowXT0wZVZJryN
   +Uhs0yi35HwWHfh4izZ4j4AixCNfN8mvpoRiYywOjgXxUgXNUU/hnAXkA
   KR77T3Ws7WlKpjZ4DOeNOjEgT+HMtVI8ZMxdlWwbBT4I9NZtograDrayb
   LPq2bb7LEBQy8XYKxPH4HHIIBHOkSpKsc3L99fYfGX0NxpZqi46aVUoQM
   PdJ5k/m6Vcvpz/PGlPXxKeYxNkADIF5m6eGqQ0EoctPlcl5B+YLjJkzOX
   A==;
X-CSE-ConnectionGUID: BbU2USXGTCqb2pf31N54lg==
X-CSE-MsgGUID: AQ4vub7RT0aHDoGfBXtaeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="82604720"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="82604720"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 08:29:47 -0800
X-CSE-ConnectionGUID: O0um5dbISb691xywn6hO9g==
X-CSE-MsgGUID: Ld37EUIRRBKKw7YPpUS5og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="212049023"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
  by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 08:29:48 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 08:29:47 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 10 Feb 2026 08:29:47 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 08:29:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C23OcyuJ2Kvu9yJK5gWXmAVIhCBWeuLntN7hU+ygUJUt0BGYkWsd8r1IxDKJblcKAVNY0i7OHNNupNwg5MEvmLbHZm1q9Ad13kbHkQHazN9wZ8O6p16aSkMTHBjVx+jxl0NIQJEm54Dpxs/ZiOKQmSFH9dCWH3zKWXeT9KczgjEAcwzyNSquInAOBs2gAMz3NtdneZ/g8BtdvkDZAFo899KsjRRdLQWCJ2Pbe0XIkyQtZwr8BUkDjH16LcR5pLuefqddWj88d7rvNd/3exM3hCSvNQNTQqkwfy43Y0mSjlyQInIATwYfdwtztJzGb6cc1VkJT5z4lhViWnuAIATamg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nru1lqd1uoKHqJ5cPJBNbI83fBaUnv8sceZdu6yVyno=;
 b=kbPUip1y6nyoRllWHOaS4TVjJUoWMhK4YabbqCR1kMg842TjUI8M47z1W/thc7zUlcN/RaX0V9UhcRp/SpcqMEKC4IUf6DP5Abm02//fkkKs+Ai61AD3HIp3aS/GTqisbpq1k+poqzOKZTrQffn1iS6baQvBUoFoTpRQWcmjBf9Pab3VZUpUy4sU2FC6rmEy+PmcMzfmXTf7rwRdkvfFxFoWEm7S/ifbqoVjVYyXw/f6Nws6qdQMdHKyTQbR03cssmNmBR1ya37Da6z6OzhcoLMFYn/Xa4Gi3lzmAShhn1+LVgjbO7mLxm/5uIOW8m266aiL6Cj71OhZNnVF8INP1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8987.namprd11.prod.outlook.com (2603:10b6:208:574::18)
 by SJ2PR11MB8298.namprd11.prod.outlook.com (2603:10b6:a03:545::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 16:29:40 +0000
Received: from IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::f91f:4301:96d7:1925]) by IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::f91f:4301:96d7:1925%6]) with mapi id 15.20.9611.006; Tue, 10 Feb 2026
 16:29:40 +0000
From: "Tyagi, Yogesh" <yogesh.tyagi@intel.com>
To: Yoann Congal <yoann.congal@smile.fr>
CC: Yocto ML <yocto@lists.yoctoproject.org>
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
Thread-Topic: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
Thread-Index: AQHclO+Z6680zGoDCk2LSLjHEQiat7V8Kr6S
Date: Tue, 10 Feb 2026 16:29:40 +0000
Message-ID: <IA3PR11MB89872EF6500D42F1A753C0188C62A@IA3PR11MB8987.namprd11.prod.outlook.com>
References: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr>
In-Reply-To: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8987:EE_|SJ2PR11MB8298:EE_
x-ms-office365-filtering-correlation-id: b44b6974-2ea5-4cb7-4596-08de68c196fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?Windows-1252?Q?JY8IilWzgMXjJ6ue4GRrvNnDaLmgNH0t2z0/PpIMgwFHxCS96Ss/ZZKW?=
 =?Windows-1252?Q?mBA5BODp7HVIdn8xayHc+H1EGq5Q2biVclB0pX9dOJJsPSzHMeQcfADx?=
 =?Windows-1252?Q?RF5vaYZUYv98V0U4mjkjBtyXmY7PUW7g9dvCQkn089sPcjMy5ySWKdBc?=
 =?Windows-1252?Q?fEp2WuZWAoqRqgfrrOEP/b8SZA7d9iNvQIATlw3IFQcCiB2//Krm6oML?=
 =?Windows-1252?Q?MDVgdtDhrDs1xUvIxjwoHzk9Jinn2xDR7/WZthMVVOxc7M7BMNb5nrqX?=
 =?Windows-1252?Q?ipmBCamK4Zq58cQcHRGbC4jWoFUA0rTCnlQiNZwHj2SXic+wSbumGXsi?=
 =?Windows-1252?Q?xaQucual2R+mXsuxnbRlKjvYcl50pBNnoSMyvfmSaFjlBGMAqUKOCifZ?=
 =?Windows-1252?Q?5fKEkp1gYpDzoTRFAK90zyZdOKxIjlFGZr8ksy5GHEr38Rdb04i8Bv0y?=
 =?Windows-1252?Q?mRL881Cz12uPbE9u/jghRZ7rnDp8FHis+9siDaF5IFK936Zd6md44QZ4?=
 =?Windows-1252?Q?ISaNz5fLJwUy+KpXeNNYYanZBz3VRT7UOMYc9Sbho2u406b8nTZvW2LQ?=
 =?Windows-1252?Q?ek9+WJXBgAO8nTmyp0muYfVaK71QJ2OQY35hNJ7kCZqtKJeglsLz9WFE?=
 =?Windows-1252?Q?di5+inu1SbaxUniag9bmRqtkh82b4IIyJglO0QsS0IjMhOOIsm49HFCy?=
 =?Windows-1252?Q?cfZdsJBGQPbm/P2DwLye+gNMyRthNHADFXH6vlWPB81eFEN3qtu/nkFS?=
 =?Windows-1252?Q?fQbl/W5df06922V85G4mBvKNIclV17EarMIas/kUEbPzlLHXL8XVTSRG?=
 =?Windows-1252?Q?OzQKdq5ws+OevtTGBUC4bwFE7/yQ87ZQy330IiHiJAHBVOpJTmEg/th9?=
 =?Windows-1252?Q?GS1ikPWDQ4f5qYFEtCyfNmmubv2AF+wHT6DNZ70zXeSI+316IcZ8L6Hl?=
 =?Windows-1252?Q?Q8t/cml5vwA47KxdLGMcc4pN0GEv1mWLtdTD/ugN3TJGoo4VfPUtaqYN?=
 =?Windows-1252?Q?bkh+qkOvsdNMb/791CseO45LHLlZQG+rTXTSnOJ18RqpkYd4L3XiC+v7?=
 =?Windows-1252?Q?Yyj6NEdiPsGKOgYQtkhpJoB9Kp7HaV2iYEoGAZnH81j1OgmtjSocGPnF?=
 =?Windows-1252?Q?Zc5+dPoxg9DgP/6uIJPZhD8ao0IIco7Y8X/WTRS6YeASzEjI+rcMqq4A?=
 =?Windows-1252?Q?RhwEOkwe2GBWYeQoYLFZmvhuV/3w1R3kzDuRJEk4l1DL9XcOA8k22MZ1?=
 =?Windows-1252?Q?XiEZcPZdZmwLVunInnLjDbD2zqsb/JjBPaoTs9wS0TJZ2CNOP6Mus6ZS?=
 =?Windows-1252?Q?P+s5CYO3MtIX31ebhMpR63OPROmdtcep7TxZ6tj/SH450FhhO/JWvxpp?=
 =?Windows-1252?Q?EQcRSVnYSbzL695oQNZC1itNUhSy+V5rJ1yqFZMa2OOErzKUK9yP4WsY?=
 =?Windows-1252?Q?L8wu2MToE/Q48sELtWxSsOb9BrkXqmuX+mtyMWPgt7MramybSEgSetU6?=
 =?Windows-1252?Q?7owNMcHVGC4jskUJDPPaxzkGEDJGhl5TdSRMlB/ZzTDTGVVKaWAb5F1j?=
 =?Windows-1252?Q?wbQyLBWGKJBt6O40owDv1TXI3gizfjnVNu4hDE1y8AdFimyRL+EFKzAo?=
 =?Windows-1252?Q?pqqB6w94RKKKEC93KY2sp4L2bQdr4J7B0zCFDJT3Jswgf/sYZR5Gkzvc?=
 =?Windows-1252?Q?ukZ5Uq/uJfE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA3PR11MB8987.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?LXx2UyswAiiGI2/HpMJunFm/10EMgEfpV3T8BlUbISfj6t7s4zktpWwq?=
 =?Windows-1252?Q?v+a8mVtK+L8V6lfdhc4txHGSp237kBJJ1hXJ9bnUeRo3D/CZ7edADNqn?=
 =?Windows-1252?Q?NulLgskbAAV6Btk01vZYxko6Q9V0w85K7iMAosaBmMOuHQ8l3NJo5ZEA?=
 =?Windows-1252?Q?LM7Cbr2k8IIPqKKNZfqyqbCHkEX2o0FtnUuGy57xGuiVyfs+QMbaNqCE?=
 =?Windows-1252?Q?JdURvpQXu63E+HSeH6/vJ7xV0kLGSrxw1rfq+XEiXxi+JXDd9FAdfIqJ?=
 =?Windows-1252?Q?lQPCD7zKZv43rV431ptaG9Z0qFNmbywqWJvK/tJsaFdkvRf4uK3nR1Pr?=
 =?Windows-1252?Q?y2CxvHH3dOwUPm8d7A2dMtW7+ZvnDdUkdvzi4hKkX2HPooUfRm3nMH4C?=
 =?Windows-1252?Q?31zjJ8VxBvOKufGOIodvwaN24ugppFhYbdXEqtl/4tAu9JB9SExtYHGZ?=
 =?Windows-1252?Q?21RD4q84qhvnK5w5Keolh6qLmjsOujTjg7bLKK+O0S+zzrNUSzHVUu+C?=
 =?Windows-1252?Q?GTmdHF+JHBtE+HwNiHpEHvIggd5J759CjnI1jeBBd9Cfsz236ocQxRMy?=
 =?Windows-1252?Q?+oOp8Sm85AYxXBMD9dPbJaCWqqf+/141Kz/hxuZCw1f31jG8R1hVgQGg?=
 =?Windows-1252?Q?zAxBiIJW9Qc8NcGJgnJOp+7I87etZht0A/HjkztfEW7EiFPlNDUZwzc5?=
 =?Windows-1252?Q?VK+Kn7oMkn4H9+C2mFvd8ZiU9hzZg6jHdxwGJ98PfkDh+JluA6IW1GWR?=
 =?Windows-1252?Q?df0+JRYU1MRHglL+KS9+I+LSE0h+3ieOW9cc7BrlkiVeeJdDPkgQ5koJ?=
 =?Windows-1252?Q?yc394WDWWjlcVyJ/5jCLtlcPta9WtMcMwC3LiUqMGzgJafkJmuAfWqX6?=
 =?Windows-1252?Q?jBxL/9cPeCpJ3erDB3Rshz3+DDq1vpvO1OtqIqaSWcdX/7J9HKDJISFP?=
 =?Windows-1252?Q?nx3ZSImgmrPdWLNxEG25LCN//RtaY98QP7bBiA6m4mem7J/Lo/0MovdQ?=
 =?Windows-1252?Q?uzKh0h1ePrX1WFGBhZX6fzQZXUwNBplRe/NYyiEloyQGUNYDg9KCv3Kq?=
 =?Windows-1252?Q?rixLeUqJBuu0JdQvKzw3tT92D4bBgrznLnUzNkPFZfDgds2/Mpl0VTz8?=
 =?Windows-1252?Q?7GRbfPogrrDGEe5gG7hWP3ZkDjPwBYbW04n1bpc7wm1UKnTYhwCV4FSz?=
 =?Windows-1252?Q?wGkkDq3STLkyVgOtmmhcuFqaKtJn9Bq20lCNWTlrxxv5ZujkoyJh4FUN?=
 =?Windows-1252?Q?jVtZkA0DJ7vvusQBsMtpfBLJyCGUIcnBvUAmdzF3Og/Yw3fYUjxNqabY?=
 =?Windows-1252?Q?UwHmNV65EPnJgxhKl/pwudbO4ECadCYmTWk06vxHW6PZBRUd1C4h7qgl?=
 =?Windows-1252?Q?up811Dc9RcLPHNUOlhv/MnIo8p+oc2wigNkn5wn9QPZ63Lg2JQqbfxTB?=
 =?Windows-1252?Q?L/eSvcPykundBc8QiYWNSpjqZg3TlK+er7Pltfmycokfi5BwcYo9B/+D?=
 =?Windows-1252?Q?EmxD8tM3TVu9HCIchSak1t3Gk+beXtVk7laLuc1PuKy9NKL27y0HwYgV?=
 =?Windows-1252?Q?UKG2lj0tL7FfRL2mI0Z7PlNLcHSLfU+Wx6CIHmS12O6IOgXK6d0w3ZUu?=
 =?Windows-1252?Q?iabB3eu/pRF5N6J6uCmGrM6I0YbT1mSPWZ44IuTqgolYogX3vIjd0lOC?=
 =?Windows-1252?Q?QY45vg4fcSE3BWH0PqoNumwurqrjz5g6Wc/qhpC4h+Y4sXfzuwq/bpn9?=
 =?Windows-1252?Q?AEQIqp7TpycYaZNhBWeYR1soFIcef9VrIFOsH2i0v430NHA2DOtJ3Rpf?=
 =?Windows-1252?Q?LHK1dhgLSBYIjrqkWc7c8l7rXTYQsu/UXXGW5ZjH3z4AJymv?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b44b6974-2ea5-4cb7-4596-08de68c196fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2026 16:29:40.4358
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gCWh6LR4vpPvPSBCXpBVVdCLDxNne6PETZDoqrX+9HrU1o54tXYfh6aiLvDqIk5fAGou38WSIdyG1BC+qRZ2Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8298
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Feb 2026 16:29:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66239

Hello,=0A=
=0A=
The only solution I could find at present is to shorten the build path.=0A=
=0A=
Cause:=0A=
=0A=
* `intel-media-driver` CMake generates ~626 include directories per compila=
tion unit=0A=
* With long paths, the expanded compiler arguments exceed Linux `ARG_MAX`=
=0A=
* GCC expands response files before spawning `cc1plus`, so wrappers/respons=
e files don=92t help=0A=
* This is a kernel limitation, not a Yocto or compiler bug=0A=
=0A=
Impact:=0A=
=0A=
* Fails in Yocto builds with typical CI/workspace paths=0A=
* `ENABLE_NONFREE_KERNELS=3DOFF` does not reduce include count=0A=
=0A=
Workaround:=0A=
=0A=
* Use very short workspace paths (<15=9620 characters), e.g. `/w/yocto/...`=
=0A=
=0A=
Status:=0A=
=0A=
* Upstream issue filed with `intel-media-driver`=0A=
* Proper fix requires CMake refactoring upstream=0A=
* Path shortening is the only reliable workaround for now=0A=
=0A=
Thanks,=0A=
Yogesh=0A=
________________________________________=0A=
From: Yoann Congal <yoann.congal@smile.fr>=0A=
Sent: Tuesday, February 3, 2026 2:59 PM=0A=
To: Tyagi, Yogesh <yogesh.tyagi@intel.com>=0A=
Cc: Yocto ML <yocto@lists.yoctoproject.org>=0A=
Subject: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on mast=
er=0A=
=0A=
=0A=
Hello,=0A=
=0A=
meta-intel/master seems currently broken: intel-media-driver_26.1.0.bb:do_c=
ompile fails with:=0A=
ninja: fatal: posix_spawn: Argument list too long=0A=
=0A=
This happens on master and also on whinlatter.=0A=
=0A=
We can see this on autobuilder:=0A=
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41=0A=
* master: https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/buil=
ds/2967=0A=
* whinlatter: https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/=
builds/2966=0A=
=0A=
Regards,=0A=
=0A=
-- =0A=
Yoann Congal=0A=
=0A=
=0A=

