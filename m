Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7F8C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 05:22:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by mx.groups.io with SMTP id smtpd.web11.4510.1708665743227558965
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 21:22:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=FGNQ3XQg;
 spf=pass (domain: intel.com, ip: 198.175.65.15, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1708665744; x=1740201744;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=7EQtWq9nZKSzJh4MNmil9nI+Xk1mwlsc2dDgkKvCu84=;
  b=FGNQ3XQg/WDnasOB7ttvTScRm2wMiMKSpmraawyirYAnWGCOFPEXeRIJ
   DGgLI+N30ZvRcPSzeP3ZSAOdiUODpoObGTskzZaJYIFltDObYYj7q7wZA
   o+QzCZSuvI8oGkxyrTvtkLGoXr49vHOpcXsAin1gTnqMm7yfhPzxqtfjp
   zq92GXAEz0cjGN6CPtih5RvCeTqOZM7i52A1Fw6+2YGy2kgztX/ekyNdB
   V+2Mc+kvCG5y7jUywJZfmlpw11MA/L1JBE5Ayex6IDXdqhNlt5aqbPodd
   oOi0vCqpfz6D+6wgc5MqQ0Gom/My4/iRo0/9KcFy9t0RG1ohuujpbGMVi
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="6779857"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6779857"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2024 21:22:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="10455151"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 22 Feb 2024 21:22:22 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 21:22:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 21:22:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 21:22:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b21xRAnnccN7DPmDbP6DWy7YY/RU+W9hTXjx4CgJ/bbeoXp0UyPH4HCeT8VgJsu4wXJdQxld6OpBdAmyNrgV+9ihEMzmS6+CZLeiQ8tSXOAXiKBFRMCH2KgMEIOlW1GcTAJxwXseWDNpO9g9fnspCENZYU7aNoKtlX+87wFyacBBzCxA1DGUOKhJTF8OAJvAjD21CgLO/D/RUhZqZQfWDRUmvUtlOLwBq8JmMFa25tepFVca3DXWWqJTyLChhy4sFaJVm+olVdgEAtX0/O/w86GUb3XZXt8rNog22jSTvBBXnya66qhHpki+zcnqleajd+n5EuEUF6WDYCSph66aew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7EQtWq9nZKSzJh4MNmil9nI+Xk1mwlsc2dDgkKvCu84=;
 b=h/nYi5DgrxMNkWmd9CQ/qWgsrazI+QVQVudAkC8HPLmH+dkhDNoDIUrBa2ySuQNE7lIdu8Z+AyBvxxcM0rkcCwHdosnau8iYoGYUw/wvtNPxJ9+bN66rI6t6HOrfHDXeK+3WUYGERSluzy73tq4t165XI9dv+B31pX+bMljEXXkUp7ZTdDqCf4HF2XzkImO1GbGnuUp8eBIHjUhf60EKvJBDVEnnXkNjHQYTbUhpBUB+NmzlrUNeGbeAWbRnYwZaofJKMQSZJ6z3ZJYnMDHJcL6MbDzr4c2EWgpJ8TlFKGcxbU2A5pyTs+asrZZv5+wPxXTeMp0DScm9OokKXCTcxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6414.namprd11.prod.outlook.com (2603:10b6:930:36::19)
 by CH3PR11MB7795.namprd11.prod.outlook.com (2603:10b6:610:120::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Fri, 23 Feb
 2024 05:22:17 +0000
Received: from CY5PR11MB6414.namprd11.prod.outlook.com
 ([fe80::4406:afd0:bb87:ece9]) by CY5PR11MB6414.namprd11.prod.outlook.com
 ([fe80::4406:afd0:bb87:ece9%5]) with mapi id 15.20.7292.033; Fri, 23 Feb 2024
 05:22:17 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] meta-security: Drop ${PYTHON_PN}
Thread-Topic: [yocto] [meta-security][PATCH] meta-security: Drop ${PYTHON_PN}
Thread-Index: AQHaZCLF06Zur3Jbp0ylvCt1a+nRorEXaECA
Date: Fri, 23 Feb 2024 05:22:17 +0000
Message-ID: <bfdc6fb984b4398d181b73f8e41160808331e82c.camel@intel.com>
References: <20240220173209.1761469-1-akuster808@gmail.com>
In-Reply-To: <20240220173209.1761469-1-akuster808@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.50.4 (3.50.4-1.fc39) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6414:EE_|CH3PR11MB7795:EE_
x-ms-office365-filtering-correlation-id: 56c3e9c1-668a-4e19-06f2-08dc342f66c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DwigUqzFytNCgO58M4dviEA14+pkgzuOTdZZMeB6YWu+AiFTMfObptQeMDcJ4KboO08rx6iEoRyOzU0fjAeOKQpc02Hs0PpDzhUIKIREpXIVRzr132PG4EZc1BMztMmgtxFxnV1RDor+Wwv5aytKQZyx6Orm4B80gomnmFKCcDYu4D7RswxpRGj5W4Bnh33Xzbeuyq0/6KnXR5cn1uue8FrCaGB8jw1aWHPlH3QKulHjeiDsILDyQ9zq8pFfvXYTCY5mdFPFxbEbuYPH8Uv+OiX/y6bg33igV+KAeASKknP45xqbURHlBJ8jDbyx9ZGLa4H4BX/bREnUInlnJZrMnuZxSI4wMc9Xlu5lWdxvMNCEoOxv+NQcQz3IJubpttV59bhPMAWf7UphiYcViI9DnoRTNgHQ//JLLsnM/UKlH5EzCXzR/cfz9w4KaemN8l67uCF4YP9Zao8bMeQrMdcFvhiEMzPVDCz5uwpRQjW4rRrA2nLwfQfF2MewSvfUJUEs65Q/QQPOma5hyNZf9uyR9/o3qaZYs3uJk21egzamzWuhCxBTOAAQ3G3St223CzfU2TnyhfZeT0EBpEIdG2dGc0y4emM9yEpV9DN5tPrbOlc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY5PR11MB6414.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L05HbUZKWTU3TEtUMDBlREdBR2ZYWlF3MklqbVdJK1pudVFrMW13ODF4VlZT?=
 =?utf-8?B?N01PN05EbVRnT0pPS2FLNHBDclVlSE9EK1BPQTB0emlaakRjdjlDUmg4QXdL?=
 =?utf-8?B?eDdqYjQwTzFiSUFwWHRuRjZDbThEeUdLVEFOcFFxa2JUVndtMjBwYXhNalVw?=
 =?utf-8?B?OXdXNG1HREdaVStYM1ZWVi9PMURXdThqZEJmL0FlcndmSEt4bnRpVVpHcVJx?=
 =?utf-8?B?eUE4YlRiNzc5c1Q1L1BCeXl1aFB0a1BCUVZ5bW03c3o1eW9wM0d2SUNYbnVv?=
 =?utf-8?B?a2VVN3ZFeEhWNGQydkFOQWRGMnNTUGRKMU8wZmlobTl3V1YvMmVPTGo4UFhr?=
 =?utf-8?B?d3FVTGZ3VEd2SnNtYXMycUtGVjVPQUFhTHFkSVZlVkR1Q2ovNUFZM2t4SmhU?=
 =?utf-8?B?Nm45Zis5dGhHYTg5NkErcVJlclliZHJsbmNFUmZIVGRwNkwzdUhQTTZRdkwr?=
 =?utf-8?B?N1ByWGhvb1Z6L0tWMC9VdCtSMHdORjBZT2V0ZHBBOERTSE5MbEFZaDZkaWE1?=
 =?utf-8?B?MkNTWWpLZjMxVEE1ajdhb1lUdS9Jd2ZjV2FrQnpTbmd6WGZLZXJQZTJnZGpK?=
 =?utf-8?B?LzF2Y2g4YUFoN0Rwbnh2Y1JKc3BEamxHVGFMWSsrZXcwUytDbk5pakFDTldB?=
 =?utf-8?B?SzJYMkZOL2lzWU16SFlQVEJ4SjU4MTJFWVRaWkk5QzlacUR6aGJTenJIVHpa?=
 =?utf-8?B?UlRjd1BuOEZ6ZVFrWXFrQ3dKajlkdnBBMjhranN6cVEreVdubTVLNGdHTURi?=
 =?utf-8?B?WTl5U2hDNXBWNkZWeVducTJ6cU1OVVBETTZOVUgzN1lhMUlrbUNPaCtyQ1BL?=
 =?utf-8?B?NndLeGJwZjlWNVdHYXFwMGwyaHVqdTltZjl0bENvOFgzVUNyVHFzMXdHZ2Z6?=
 =?utf-8?B?ZDYvdTVNTGJzQWd4SUloamhESXZYNG5uOWtZdUFiOW05R3pnVVlheEhtRWJZ?=
 =?utf-8?B?dXdHL3FmQXZIOWZIbGZDVkYrMFdwM1JXNmlLajhnd2lzNDNBQnlUblpDY0xj?=
 =?utf-8?B?TTZXTlNKT3FxYnRMWklFeVphdll0aUo3aCt6S0ZDWml3TXpiNGMzamp4am5V?=
 =?utf-8?B?WTZ1WDQ3SVI5OFczclk4UE5tVmJzSEdzMnJTOWQ0WENEaFZvMVdhWEo0ZHNC?=
 =?utf-8?B?cUpYU1pPNWI5WTQzbDVwWDMxa0FLRHFLSWliSjVoN3kzL1RQK21jdk0yZmFF?=
 =?utf-8?B?ZnMvbnVtakpTOEdDR3BVM2k5ZGRQYVRtQXg4Wk1Bb1dNMVN3MGVZRjl1aEMr?=
 =?utf-8?B?SEV3UEFKRjg0NkFnK0dyRXhpTDJZQm9JZHh4cU9taEdxK2xtc1ZzeC8raVBC?=
 =?utf-8?B?a0dkRy9wVXNzWWxtSmZuWE1uaVFzTWVVVkdYMGRDVTJYb3lsVjZ6dDlrd0p2?=
 =?utf-8?B?UURUaHVYK3o1Q3ZSbUk0bkFKM2dIdktKK0JydDhtdDhHNUVmZlkzZUE1a3Bw?=
 =?utf-8?B?emtiVXYwYm9nUHN1ZVl4ZTJIQmI0N0JHSlVrTGRhQmF4bEhUbjdVTjlDcVc1?=
 =?utf-8?B?Q2hyWmxadEoxdldWMVJKNnZhaUxDa0dZaDY5NTU1dVFEMkhObWR1Ymp3MWg3?=
 =?utf-8?B?c1ZJTWxUZDM3VE1aQXRtQ2x0amtybnc1dFQwTWx6UUNJV2xod3l0WFl5TDVM?=
 =?utf-8?B?WmVnZ3VqRWhBV1ZOT1ZVcmNXTXRXZ1pZa2lqYnBkWmR5ZGJPMlU5RGxDcnRm?=
 =?utf-8?B?SXY3ZEhYcmR2KzRhQ2xxNlBPVHpEUXZjVFJIZlZaVmIrMXR3U3Z1aWhSa1VS?=
 =?utf-8?B?elpRNjB6bXNNdGJLaUxpN0ZENmliTzVuRzU2dmdITm0xZVZ3dEYrL0JrOTcx?=
 =?utf-8?B?NUQrV2JscmJqOVpvbzlYUm12WlpnVW8reUhwa2N3cVpraDJhNXE3Y09YUXRQ?=
 =?utf-8?B?V0ZWai9EV045bnZuMldpald4bEdQc3J3MGZnNHAxOUNXbDBLRWdqSjN5NHdI?=
 =?utf-8?B?RGs4TVRXNGJXamJpeDNYWlozQk5CYW9va3IwZlNJZTNpOGZES0RHWU1aamZN?=
 =?utf-8?B?c282TEI4SElTb0hGQ1ZzRFgwR1FFVkt3SHJ4K3VSZml6aE15VUVpNjluczVr?=
 =?utf-8?B?UzU5Z3JDd01Ka1lUTHRDQzlhVitvZDNLSDNoQWVHeVNTdXVjQ3Z5YWc5RHFx?=
 =?utf-8?B?ZFpiZURpR3pTcFF5dmN2amlaYWpIRVZDdDdvaHF0Vlluek93dEZ6Q0lHV2c0?=
 =?utf-8?B?cEozVG92UEt4RHZKbHZkMzZlUU5kNHpVNVIxRForRTZtMkgrNUllaTJISkgx?=
 =?utf-8?B?cjRKYTRTWUZJUnh0MGwzL0hmSTRBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9B8611F98E25B4439BEF6EE886D598CF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6414.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56c3e9c1-668a-4e19-06f2-08dc342f66c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2024 05:22:17.1538
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FNH4g2M8oUpdQsg//shP7UJDAnBKGhi/ky0b2u3+yseqEmwrkgFKik1/V9mzran/D+jd9veuWMWLzwKh8gK4+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7795
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 05:22:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62573

T24gVHVlLCAyMDI0LTAyLTIwIGF0IDEyOjMyIC0wNTAwLCBBcm1pbiBLdXN0ZXIgd3JvdGU6DQo+
ICvCoMKgwqAgcHlodG9uMy1jdHlwZXMgXA0KPiArwqDCoMKgIHB5aHRvbjMtZmNudGwgXA0KPiAr
wqDCoMKgIHB5aHRvbjMtaW8gXA0KPiArwqDCoMKgIHB5aHRvbjMtbG9nZ2luZyBcDQo+ICvCoMKg
wqAgcHlodG9uMy1taXNjIFwNCj4gK8KgwqDCoCBweWh0b24zLXNoZWxsIFwNCj4gK8KgwqDCoCBw
eWh0b24zLXRocmVhZGluZyBcDQoNCnB5aHRvbjMgLT4gcHl0aG9uMyA/DQoNClRoYW5rcywNCg0K
QW51ag0K

