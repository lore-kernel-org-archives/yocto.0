Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.27930.1629966684747321784
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 01:31:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=GrbuBAPe;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="303276637"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; 
   d="scan'208";a="303276637"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Aug 2021 01:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; 
   d="scan'208";a="516410995"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga004.fm.intel.com with ESMTP; 26 Aug 2021 01:31:23 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 26 Aug 2021 01:31:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 26 Aug 2021 01:31:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 26 Aug 2021 01:31:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 26 Aug 2021 01:31:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N18pWtp39XjCkWATxuEDBA/bC8LmP9EX+ZHLAYNtRaPGx3Yt4XRco7TotAxxYJ2WRoFaNQXqtC2kJgl/k1+sh900+T2UaRwRku7keX3WKUdwGHzdtZFzpbmkwwgqrQ7x4Hiwd1D5UgXgZNwZhbSNLe84fgV6IMuWDpm8C2dUAjgFOCcRVRWl6mb/YyDvsQghdQuFSG7KjT2FchSEiRTeDvQD6FSrmLXlsGGSsBZ/L8AOYucz9kHWAg5ZRAPhbrMwa+/gZtzfRnXt0qd2vM7Du2u1p11a6m3bZvYKDPAshW3Hw+eYCz8D1MlrqUA+ABaWJ/gbbVdT9EDYk+/Bno1VIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jT6bIHkf+wcvsBUNSm5MF2hmuTYZ0Al7DYAVcQad4dM=;
 b=Tsutnn8h4A/gI5ZIbgA+Mx2wXnNAmxxBBeBvH0keU6ae8Iqe0d8ib8QnnZelc8qXjqWtIfS+YKnee2FTauSYcP93yOzaAH4L6ENm26Fz/FlBymIOxxhaNOP+Of4NWvAblL47RcccY1aJ1TzfHM5FrPe7yidA8p/0wlpXUAboncwEXDuvo6ngX4q9dAkX6Wwn1RiLpdNa+n2JLYnlIvJkstnIcLRO5WnW4KAEOqnVcfEeBTSfSVd0YVQO3zHj3YbqUqV33KShzMSyQrKjXpNYd5KrkUHZDMN2A1ktNiOiiMHOM0+5f6MdBtc/T3yOKVYWKVyPiHDNhXhUYm8R/AgaSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jT6bIHkf+wcvsBUNSm5MF2hmuTYZ0Al7DYAVcQad4dM=;
 b=GrbuBAPengkgbMIcNw1+5SyuEkuB9oixRY7HoPpJiHEPKpJwPgYHAF3CncY53gCPhDfp+o11tHfsdkTCtLGdPQv8ORHh6Eh3z/XifHsteVNW4MwBBNTdeJq/d04Zs2UZP83POEY/3cBdSseW8YP68uhFuQ4Z9NpfWeL9p6yFOM0=
Received: from CO1PR11MB4881.namprd11.prod.outlook.com (2603:10b6:303:91::20)
 by MWHPR11MB1279.namprd11.prod.outlook.com (2603:10b6:300:2a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.18; Thu, 26 Aug
 2021 08:31:18 +0000
Received: from CO1PR11MB4881.namprd11.prod.outlook.com
 ([fe80::1526:a53e:e787:6b8]) by CO1PR11MB4881.namprd11.prod.outlook.com
 ([fe80::1526:a53e:e787:6b8%7]) with mapi id 15.20.4436.027; Thu, 26 Aug 2021
 08:31:18 +0000
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"asconcepcion@acoro.eu" <asconcepcion@acoro.eu>
Subject: Re: [yocto] Dependencies are not resolved correctly when building the SDK
Thread-Topic: [yocto] Dependencies are not resolved correctly when building
 the SDK
Thread-Index: AQHXmkdBHnP5tl0WXk6nEhYr/aqiKquFYYWAgAAGb4CAAAz3gA==
Date: Thu, 26 Aug 2021 08:31:18 +0000
Message-ID: <011a8e920057889ec1b6161944316e7be2a5e7cc.camel@intel.com>
References: <2d03d24613484fb47acc4fa2b257fbe5e3a4a1dd.camel@intel.com>
	 <9702.1629963893309656836@lists.yoctoproject.org>
In-Reply-To: <9702.1629963893309656836@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0842cd3-565c-4245-41e1-08d9686be0a2
x-ms-traffictypediagnostic: MWHPR11MB1279:
x-microsoft-antispam-prvs: <MWHPR11MB127978A18F97AFFE9BD58D8DF8C79@MWHPR11MB1279.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MAvMrLLI7eJYEnln17u/gNTMG2InbSE8qRZgLxLIWksnDFtBqYn7ZfJKq+ni780XvDL/zbPMM+MkExyJJoJKJCCZLo4rmBiamIO9WaJ1JJ6TJvSqZSCKcCy6xu2t2q6XOHJZHoIphVyPii82pp3wM0o/2fg+7CEBE6xZjxq6vUklh5yaOA9mKnfDNHq3ioQbWhZEwa+JItwh8oigc3WCTbJPAgDQ1uSj65TGJRC5+2+NJMRAlSbmb9BohGuYuhv+Qdvi+WH88ap93JReUYXNsu+H7DRiwQGwywqR28kkbmyfWjh1IX7A7kVA2G0Dp7Ax+mekUSVE/2dP1qqdpzsysTgMZsJwK65zpcu+3kTWo/nSIPIn23yIVB9dHdMwghnsFwbno+QOmslRL/m1xXUN0GQ24/BNH7WeNHAR81+G4sA+Cv2Rxnpnwf0qYf/nFO/1ssjpqKCEW94QiFwkDuDIhlmRpJvwOK+//elVQBWuq2rjLtkUwkcblFkkb1Xc2PfLPTLix/m3TgjYI6pA5BH4vFBpu/O0twzXlpYQ7g9JjcHOWCq9Gaivw/Rt9+qzjkDy9vSmAT5GXslmwy0HSsTXdNscz7NeREEYrQvP27xlUMOGytEoJ99YVP1CVY9+xJ0BLb0xlig/gcCS1BmWgdojH2B2lEFWCkgI2fupwprLtfwRKLHcAQ9lzkH1gUsWO/3SBXl8VElX1efyO+9WH1WRsg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4881.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(376002)(366004)(39860400002)(346002)(6506007)(122000001)(38100700002)(38070700005)(8676002)(71200400001)(316002)(110136005)(478600001)(6512007)(6486002)(5660300002)(4744005)(2906002)(66446008)(64756008)(76116006)(91956017)(26005)(186003)(86362001)(8936002)(2616005)(66946007)(36756003)(66556008)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0w2cDVkc2xTUHYrWUc2TUg5T0w2Rzk4ejVNMmJuRzRreWJSbTR3dVVjVDdE?=
 =?utf-8?B?dkgzNVNaMzF3eXdEM3FuL2Z3ejNMcW9kLzJwQWh2RlBFYkJteDJxbUdDMjBw?=
 =?utf-8?B?cWYrUTBtTUNpWkZ4K2NhQm9vT0hYdC9GV0pxWkI2cHU2Y0xScW4welZCZEdk?=
 =?utf-8?B?Vm1sY2RrUnRQMHZuWFVzcm90RWh4MzNlN1AwSlRhUjFZc2MrNzZESmo2c1dK?=
 =?utf-8?B?a3dnOE9reHZEeWFHNGM5WElwZS9ldk14MTByUE9hOThDVnhzWDl5VVhaSUN2?=
 =?utf-8?B?SkNFUEZRb0pMNm9WZTgrNFd1YnBWR09uVEN3OWEybkcvSHg1L1lTOEtZNUZq?=
 =?utf-8?B?VmhLaithS1BieGgreWROSDhnSURaYmNqV3lYeXNpbUtlWXVvM2x6S1FkVWhj?=
 =?utf-8?B?bmxvWSs1T1gwMHlDd1lwSHpaaDZaV3NNdEZyYm40ZjhlaTNhZEF4d2pVM0xO?=
 =?utf-8?B?MlhDRzIwRU5kRlphMWJrUGM4b3JaWXdwd2pTeDhqdzBwUXJBTkZ1SjNEK0dN?=
 =?utf-8?B?djNxcG53STVCUkRTUnVqOUt2dm8xNXp6aE1DVkpaWEhJTDZmclRaVW96RGdD?=
 =?utf-8?B?OGQ4WXkwdmxEQjF5NHAwODY0L3kzWUlpNnBEeGFzQUU4RDN3UVVja1VzTFQ0?=
 =?utf-8?B?MmtaNlhXT1QvaWkzLzQ2V2w5SVArcDFidWhDK3NpdTZzcFZ6SU0rSjZ4U0pI?=
 =?utf-8?B?K2F4QlFGdTFPejVTUFZ1Rkh6b3JtUWdDTjRKOS9YN0wyZmNlVTZtdEZwNTN2?=
 =?utf-8?B?a3FzbXBmanJ6YmR6b1FwaFNldzhrN3FHOHBHOCtSeUNYaGxmMzRqME56Mjlx?=
 =?utf-8?B?bUtQY2czVklBc01jenpWby9UVkd6bnhpcmF2VFJ6TUtzSGF0bXJvRi9mVlRw?=
 =?utf-8?B?Rlc0V3grejBYQkZQZG5RTUhFVlNlYXVpMjJpcXVYMlR0dmRLTG5PaGZoOWdL?=
 =?utf-8?B?N05YV3lJK1pJTXJVU3d5eVFjMXJQYTBMMTBiTzZVSDdtNDY0Z0hDN2VxbHpS?=
 =?utf-8?B?MzZ4ZFRFRDZlMjlqT0RJaS9ldXhaOW8zcG9EcWF5SGNBdDZEQ2Z3cDkvRUxM?=
 =?utf-8?B?Wk9tc3hNV3pHUFRveXB1WFc2N0NhTHRlMU1KY1VBUFBhQUQzd2ZOQUlmc0JR?=
 =?utf-8?B?RFFjdDhZZHlPcVNOVGZJMitjN1VQbGJyWEcrcXNDaWlNSXBQVnlrMmEranRj?=
 =?utf-8?B?RjBOUW9rR1NOeittV0JibjNvQzJuM0NSZ0d1WG4vVlFmMS93NU1HSHJ5aU5K?=
 =?utf-8?B?WFZHaDFVVU5qTjhpVit0R09kazJpUEhiRkhpWEwrWEZBc3FuMXZPUlRaVXNq?=
 =?utf-8?B?SkVEcE5LZzRNS3dQdTlYRXc2Njl0aTkyU0JidlVDTDBEVXJlNi9RN1FLeUJ6?=
 =?utf-8?B?ZWlHc2w3NDZrTDVyQiszWnBoMUMyU05vV3dtNE9GZkg0R2lHU0o2V0xjQmc5?=
 =?utf-8?B?Y1ljdXMwa2lOd2tGTzJJMFJPMUhXYU1IOHpFU1lYbU1QSTA5RFlJU0VYZEl3?=
 =?utf-8?B?aHRmSkROeThqR1Y3Mk1mZkF3QnJCdklNYlhDQzl4Rnd4QTg1NDB0OGtzc3pk?=
 =?utf-8?B?dUR5V1l1Y0RKOFdGenNqNjhCcFJRUUs4NlBMd0hYcWRPc0Q0TWRtMTZ3K2NS?=
 =?utf-8?B?NHVycElYc2FKNk5LaGJmZThHbjJJTlNKNGpJQkFibVVDOXBhVG5lSzk2MTBm?=
 =?utf-8?B?TVdXSmJzSGVLUlpneStscWZac0IycEhHcEh5Q1hMVzVhc0JsUUxaSkNxNWIy?=
 =?utf-8?B?QXNvM003VTRZc2tGLzAyblFORm1LbW5YejA0RUJoS1ZFSlU2ZTUxS3FIYWIr?=
 =?utf-8?B?REJ6blFOcXZnbk5VSDEzdz09?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4881.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0842cd3-565c-4245-41e1-08d9686be0a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2021 08:31:18.8070
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IKE8YeVuemBimx3t0n0MqXVrx+cCBkweomhZxpqV36lB/Z9X+IWCidmaOVX6gn0ZTLkTLjXpCM6LEpxhbNSWQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1279
Return-Path: anuj.mittal@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <BC1515365B6C394A9876A899B3FE5C3F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDIxLTA4LTI2IGF0IDAwOjQ0IC0wNzAwLCBhc2NvbmNlcGNpb24gd3JvdGU6DQo+
IEhpIEFudWosDQo+IA0KPiBUaGFua3MgZm9yIHRoZSB0aXAuIEkgYWRkZWQgIkJCQ0xBU1NFWFRF
TkQgKz0gIm5hdGl2ZXNkayIiIHRvIHRoZQ0KPiByZWNpcGUgb2YgdGhlIGRlcGVuZGVuY3kgcGFj
a2FnZSwgYnV0IEkgc3RpbGwgZ2V0IHRoZSBzYW1lIGVycm9yLiBEbw0KPiB5b3Uga25vdyBpZiBJ
IGNvdWxkIGJlIG1pc3Npbmcgc29tZXRoaW5nIGVsc2U/DQo+IA0KDQpQbGVhc2UgcG9zdCB0aGUg
ZXhhY3QgZXJyb3IgdGhhdCB5b3UncmUgZ2V0dGluZy4gDQoNClRoYW5rcywNCg0KQW51ag0K
