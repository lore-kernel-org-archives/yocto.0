Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C538BC433F5
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 15:07:29 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.10853.1633705644289192646
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 08:07:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=G7AQmc5d;
 spf=pass (domain: intel.com, ip: 134.134.136.24,
 mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226424428"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200";
   d="scan'208";a="226424428"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 08:07:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200";
   d="scan'208";a="624765458"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2021 08:07:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 8 Oct 2021 08:07:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 8 Oct 2021 08:07:21 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 8 Oct 2021 08:07:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S2MKn/wo2KT5F9ZQFcH7TjNoPRzOPY9bjQ/oOf3DEElUcLsu4ha/kOkmBcjAzJX6NhPp0zANl6c8/l6SY9hcLRKc4XF/DEd7cfamsqsS8JrYkw2N3ZYKu8jdlKOwci29tBSTLwASHxaJrsNZMIAhpf8OLP6uSyuMyV38rBu6riZS0BOCyl647wrbzbJKjys7b0ufL9w9bgDmY+1RqYZvL6AbonPC+O7V4+p9YfN24/7Z97A029SrEIA4WTeJ/tcMo3VFSi2pzxcprCUA3MH2UV9uW0h+efn+q3wPmpKmNKH05sgXL/QAl5h1E4AWD/62yfFzjIuhybNCzRC2p1HA+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TU6qhQVmzlymqbDAB9PEJPpMeJ/GdQpjLe+RcO0Xd8E=;
 b=Vp+q28M1WRU5mLfZo4l62s9bQtKoIAyLhhcMDm0RH52lFMJF+JG7DWA6guWISgNT7f6HotUu9bZA9yDuH1TrBn3SKMI++bULXMWfj3oG5P0wlqy1D3+J/G9VLFg3KdeIkuJn6M1hd4C61+9o4OQdBaSg5pBn8UgvfYN8j00JWv3i2kLOyJuK/yhXkDHNswIMDbSXCMVNN2wPBYlOj8cwCyrxBKI1I9FTywyGZPiiR0qLiWO2DwjyC2OZUhXs9PIjYG5ShOSnXyyfFO2FLzaUNuaSgSIxWKPLfK0rZsifmXF04VVXlaA7n0cnrozplnxmbrUxI4D5GM8Ik5LkJgmNYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TU6qhQVmzlymqbDAB9PEJPpMeJ/GdQpjLe+RcO0Xd8E=;
 b=G7AQmc5dwWDcb7PcCN7DR8OT03JDP3QXKd+ysA/1PrNsqDJiMG5w/9gyITJUmFj1giYId0jHvdEDWVl42oqFmFa7B8mXGKaG1t37/ah+0OVjtYqOKTlxOEOUcxCDTJXUosTBt+PZ9BgRWzRhKtJGKtaLWdqoInYdJO8ITePM2nM=
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by BYAPR11MB3815.namprd11.prod.outlook.com (2603:10b6:a03:fa::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.22; Fri, 8 Oct
 2021 15:07:20 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be%3]) with mapi id 15.20.4566.023; Fri, 8 Oct 2021
 15:07:20 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #zeus meta-intel
Thread-Topic: [yocto] #zeus meta-intel
Thread-Index: Ade7lYNzGnXDdfszSXOKckUgK88nGwAwKyaA
Date: Fri, 8 Oct 2021 15:07:20 +0000
Message-ID: <0219a929fc8ed991f796cfd40b3b47ed3679e92f.camel@intel.com>
References: <MADEUP.16ABCC21AC1C56E0.1166@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16ABCC21AC1C56E0.1166@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: baesystems.com; dkim=none (message not signed)
 header.d=none;baesystems.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2ef4666-5e15-440a-409b-08d98a6d5393
x-ms-traffictypediagnostic: BYAPR11MB3815:
x-microsoft-antispam-prvs: 
 <BYAPR11MB38158720E9FB5EBA6D875F3CF8B29@BYAPR11MB3815.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 1JvVwOhffGaB3M0GA1UaikLSkFG/RtDdfpTdKY4VdsOeIrnE2KdEK9Y//XmtS+K3LY+ZjgxjxGk6ummMj1Dzb2awCh0ivygin+eX0LhUg6JgkbVgI6kAWb8b+m0e5L/EjX6Ltn0Urmp8wuWPfLuxF1AkiPT16iVEijyCpE42Jsa6qxckft6BaQKik5YsYTdFGJELooOGH7iLrLFU4/uE+Zm3kRo1tXWSdlAOqAOO0HWr6lrgpiy4dPooJ73JEWjM13Gwnnr18UBBhfk54aLN/eGc6GiwlgTXwbWA3TDSj6tB+2zZmhZ6ffkGJmrw5eCpzDIOgylcKMLwMtXoxlifzY3YtnlQowS2MquaNq0V89jj5zTUKa5ECgqPl7QtgjrSHzAtYcjNDfjlHxX2E6eRLQ2wx4TIEELu5fYUckplBbouzYMQUpU8FTVRS2XfliiXV/RbOLWvePIz9uI/3ANbxtawJ+41ExQZqm0mpPCMpdhIa6kxwzFQS5j1Z2ICLD0peoe++QhFJBcWbfz4orvUXrAzLWPeUXhKKpY7iNoQLUsVO+hOitknTG20KZnPHvMSTn5czBO8wgYAN5ifK68ZnM9TwgMYeBoDtGCouQpDXUr4+YGiR7nS/CzSCE+Jfvml3VOsGoFKsrqL6ZtlCqkeVv7bG7Z0Lk5X28ZyUa/aSyURxGWxe4HjMsa5XkwtleNZgfERc1vUJGS2u0ghDXXcyg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6506007)(316002)(8676002)(6486002)(71200400001)(6512007)(508600001)(91956017)(76116006)(4744005)(110136005)(2906002)(38100700002)(26005)(66446008)(36756003)(64756008)(186003)(86362001)(66556008)(66946007)(5660300002)(8936002)(66476007)(2616005)(38070700005)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?T3FFSzJ2Rm8xVW9HaFl2OFZ3VVh6SHgwV1RqSXdTN3NxWS8xZmhPNk94NFkv?=
 =?utf-8?B?WVVpTVd2eDQ2SlE2WEhwS2E2MmpVYXlKd25wcXcwMitISENPMnRxWS8yelBa?=
 =?utf-8?B?L0hqVGNCR3ZzN0hkcGlSK0VGZm9VS1JFL0hBa2gyeE4rQlZhU2VkaUtvYUdI?=
 =?utf-8?B?RExXTVFraTU1T21uZWpscEpvRnIrOVBxVHk1N0grM05vOG45cDBJSHlmV3BS?=
 =?utf-8?B?WGYzQUpRWGFPZzRXNGxOUHByckY5ZXBodmd6bDZPaU42NWg1ZE5TSHo5WFB4?=
 =?utf-8?B?THZkZVdHTHcwejJQaVRnVzlKV0tZM1lQYUNrckdEMEovZk4vb2ZHNlpneVEr?=
 =?utf-8?B?cFRwY05DSDByUlFRUXlqMkRLRENRKzU1NnBzSHZtVGMvR3JyVGN1T2pRWWE3?=
 =?utf-8?B?SXErdk9wdlRQcFdqQ3hmWHlkMWNHYlRpY1VuRUJMY3hqMFlsell3L3JNdUI2?=
 =?utf-8?B?eEp6N3lHTStTZzFCNlIwejFiakJpaGVxV0lmV0c5aGlzWlRTZG9hTE9ocVZl?=
 =?utf-8?B?dzUxcHVRajcwM2RiYURhU0hzTjJJemZaUlZhMjFsTzM3bS9zbjRSRURxR3Rk?=
 =?utf-8?B?MmVVYXNSZXZXakxYbW9BVmo5OFRmSHFXckgyY1JvRjlYMXJrb0Z6aVJqWjB4?=
 =?utf-8?B?ZFhTaGpKbmdtSDR4RUtaRVdKdCtxR1RkcjQyaSs0Q3dBR3JnbFpCdzNacHhr?=
 =?utf-8?B?aFBzU0RTd1R0b25sUFlibThMVmt6bkYrV0lsdzVRVTJZQzN5S081QjZtZEtF?=
 =?utf-8?B?RFVUNlE2ZWlKcXZ6Q29BSGpYcmZGMnk3TStqc3hzU1RwVzdFNGgvVnNUNFN1?=
 =?utf-8?B?b0dUWW0vZTJjTTkxWVJ2Zm1pUnhheUlTUnRBWFBSeEozaS9BOGxRTlVYazkv?=
 =?utf-8?B?aTJIeWc5aEJmOStBcUtpUEtWaHFabG9ZWlY1dGYzZUlqTG5qR3k4M2pDQXg4?=
 =?utf-8?B?cGVMMk5ZTitkY3NhMm9GNjJtVjFPNEt0dFJVNXoyaGdmMDBkYmo0RXdCMmhE?=
 =?utf-8?B?STNJemxtR2ZXV2NiUmFKWXdLd05qL0dBcnN2aHNIYlduamJ4QzZ6TUpsV3A2?=
 =?utf-8?B?NnVxK1YwK0l6aFRYUEE4MG5ReDBvWklXRTF1SFdDYWRmdEZraHF4NDJoWDR1?=
 =?utf-8?B?YmJIckEvWVF6S1Z3K0ZKK0V1M3pDbng4NWpHdFJZOGx1dy8ySUFMVFpOSjNh?=
 =?utf-8?B?WmE3WDdqNllodExuM0VZTmZQY0NTelBRV2cyOEdqeVA3MmR0RGVYM1BXdUVr?=
 =?utf-8?B?Umk1M0RQR3A1ZUYyS0FJV1hUQUJRejdWRW85L0hwUUJlNS9iMWhIZGpwOVNP?=
 =?utf-8?B?NDA3d2ZwbzdNSGI3MzZJZk5DZ3JtTTI1UGtPWm14WWFDUnB4RnRZcVlacnRR?=
 =?utf-8?B?V3VNZkVneEJJZ3k4bkhqUnBObkdXamk2a2dQc0RGbURHUU1qdkRORVM5WmZl?=
 =?utf-8?B?QVBHNVMyM2tkaEU1R2UvcXNFSnZkUk4vbVh4RW9OZHUwRzRtWUpaR2xlbk5v?=
 =?utf-8?B?d2ZIWndqNlFMYyt1azBsa3VXTEtlQ04vRUE3b3pjdXRoUFplY1FZZGZzV01H?=
 =?utf-8?B?R3FrcHNNRTVZc3VweVY4eFF5WC9wSWV2RjJIRTJJZWJDZjRhOGVyVXZFeVEr?=
 =?utf-8?B?Z2dnOFhUMzRrWFIxTjhwSHJZN3VMUDhpTjhLeDN6Z1lFK1Q4T00ySjBCV2R1?=
 =?utf-8?B?OFl1YmFGTFZ6dkhKRUlvcUM0SVhnbUwzZU9ONy94UjF2L0RVVWhLRmMrNWNL?=
 =?utf-8?B?RG5rbldBZ3h6d1psb2N2U0o0Z3FBclBFbEFiSk5uLy8yRU9CMEdUTS92TmJU?=
 =?utf-8?B?TG9pazdYNHVnTUhoODZFdz09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <670937CC4C47D5459BD695FCC8310E74@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d2ef4666-5e15-440a-409b-08d98a6d5393
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2021 15:07:20.6509
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 6VXIh20umMgUHQikXYe/sySET+AJl1KbjJPx84v33nIgLRcMS/UV76tLL/8AfjR6GhAbC8NN6HIBVR8uHlSCAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3815
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 15:07:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55001

T24gVGh1LCAyMDIxLTEwLTA3IGF0IDE2OjIwICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMp
IHZpYQ0KbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90ZToNCj4gwqANCj4gwqANCj4gSSBhbSBs
b29raW5nIGF0IOKAnG1ldGEtaW50ZWwvZHluYW1pYy1sYXllcnMvY2xhbmctbGF5ZXIvcmVjaXBl
cy0NCj4gb3BlbmNsL2NvbXB1dGUtcnVudGltZeKAnQ0KPiBJIGhhdmUgYmVlbiDigJx0b2xk4oCd
IHRoYXQgdGhpcyBjb21wdXRlLXJ1bnRpbWUgcmVjaXBlIHNob3VsZCBiYXNpY2FsbHkNCj4gYnVp
bGQgb3BlbmNsIChOZW8pIHdpdGggYWxsIHRoZSByZXF1aXJlZCBkZXBlbmRlbmNpZXPigKYNCj4g
SSBkaWQgbm90IHRoaW5rIFlvY3RvIGhhZCBzdXBwb3J0IGZvciBPcGVuQ0wsIGFuZCB3YXMgbG9v
a2luZyB0bw0KPiBidWlsZCBOZW8gdW5kZXIgdGhlIFNESy4NCj4gwqANCj4gKDEpwqDCoMKgSXMg
dGhpcyB0cnVlLCBkb2VzIG1ldGEtaW50ZWxsIHVuZGVyIHpldXMgbm93IHN1cHBvcnQgYnVpbGRp
bmcNCj4gT3BlbkNMIGFuZCB0aGUgT3BlbkNMIEdyYXBoaWNzIGNvbXBpbGVyIHVuZGVyIFlvY3Rv
ID8NCg0KY29tcHV0ZS1ydW50aW1lIHJlY2lwZSB3b3VsZCBhbGxvdyB5b3UgdG8gYnVpbGQgTkVP
IGRyaXZlci4gemV1cyBpcyBubw0KbG9uZ2VyIG1haW50YWluZWQgc28gdGhlIHZlcnNpb24gdGhl
cmUgaXMgb2xkIGFuZCBub3QgdGVzdGVkIG5vdyBidXQgaXQNCnNob3VsZCBzdGlsbCBidWlsZC4N
Cg0KPiAoMinCoMKgwqBPZiBzbywgd2hhdCB3b3VsZCBiZSB0aGUgcHJvcGVyIHdheSB0byBwdWxs
IHRoaXMgaW50byBteSB5b2N0bw0KPiBidWlsZCA/DQoNCkluY2x1ZGluZyBtZXRhLWludGVsIGFu
ZCBtZXRhLWNsYW5nIGluIGJibGF5ZXJzIHNob3VsZCBiZSBlbm91Z2guDQoNClRoYW5rcywNCg0K
QW51ag0K

