Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B659C433EF
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 03:45:24 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web12.5275.1637034321744891534
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 19:45:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=DFZDnM+g;
 spf=pass (domain: intel.com, ip: 134.134.136.126,
 mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="220504466"
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800";
   d="scan'208";a="220504466"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 19:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800";
   d="scan'208";a="506235382"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by orsmga008.jf.intel.com with ESMTP; 15 Nov 2021 19:45:21 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 15 Nov 2021 19:45:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 15 Nov 2021 19:45:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 15 Nov 2021 19:45:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fvElyB8VongKm7QkOFxwH3fpG3FaaFeL0DdxPqJCh9qVPS+D29scng4niFwC4M/POOae4VvSatRprTk8hwDS9ltF60MM+/bxhVtzJhBcI4W4/sBkZx5u4k5cZrk94v7R79IAg4zGOweWG1pOYoprWZcDMNJ/7SYQCbbemOUW99r1HB0m4quCfo28DLGEi8Cd5IGOdr27wRN+cNWEoaKr85lqNH0XkjPZ6mgnUhwGR5WqO/KOafnWgRp4OvyUzBd7aYEYHTWDbzHdANk42PV4V2U8pBNhDmfLD+ep1HQTxfbgHykbN0BBj2frwX3QQSVcFzsRXB01fuGuCjaG9QjCAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ythopNXMvXb+WrQEUhD/0eJJEg2KPLJmcWwSFp2x1zw=;
 b=U4xr/6zXo7GJ/EaHQQig7pc6mjSRC01qOQJjOx65W0plAbpCy9m3lyS0mF77/nviXU69yZGNyXjkWhfvxa5nLkHCeMj2zqB0Zoa/02MVqLnIyhdqHd4GsgYN1kDVylZ+E+35wtN7bW+dKPa0IM/Wh/9VnWpMa9FWdlJhmbpPNtpEX3T10nG6qiQjrBe/hl9sfo/FHRhMkWHqWc826Q+CUWo+dRIkKKK/doRm5eo3pmSwS61bk6UWVVAM35qz7VOWsXygDYUWSNbTOzSYyU43/o5WWfULXnNAT6YOgnaRQwfqfB9smy7WVOB+jMiKUZii3DcxjyU4Fi2m+P3NkzA4Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ythopNXMvXb+WrQEUhD/0eJJEg2KPLJmcWwSFp2x1zw=;
 b=DFZDnM+gYkQmr3S6/VO0DRGRG5K5ls0dRIWjHXaPsREhjsPgI8BqMICLneKJ2o/5hGXN62WXw5MmB8JUO+Gwwrnri12g5qk0+OF1/648L3j1DiI+Vc+k3lPpP6xq7ZnESXlBeOyH6upoDADmO0WkM1J7CnFiEAuePuZUHmzKcE0=
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.15; Tue, 16 Nov
 2021 03:45:19 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::2c3d:dccb:aa85:53c5]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::2c3d:dccb:aa85:53c5%2]) with mapi id 15.20.4690.027; Tue, 16 Nov 2021
 03:45:19 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-intel / zeus
Thread-Topic: [yocto] meta-intel / zeus
Thread-Index: AdfaRsa0f9OaRcMSRsu9xLoN2zbVEwAVZgKA
Date: Tue, 16 Nov 2021 03:45:19 +0000
Message-ID: <014cea0120abaae6556bacc282650d7a11e9c3ba.camel@intel.com>
References: <MADEUP.16B7C8A9C1B44288.17212@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16B7C8A9C1B44288.17212@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.1 (3.42.1-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 013abf0c-ab7b-4a56-cee5-08d9a8b382cf
x-ms-traffictypediagnostic: SJ0PR11MB5866:
x-microsoft-antispam-prvs: 
 <SJ0PR11MB58667220B6CDDEB276E7BB0FF8999@SJ0PR11MB5866.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZcsVMEhW5KHcIe9T0jziADXrBXyCHISGZbTWwoBSqx/1akyKf/YjvGobdbRYG/EZU8+V6gjDQi+YfDWitsMMhUcTg2rufqBx3ZKaGxg7TFLb4N5DUhWE5TBU93saJPmN2z0IX7Zz+I1wJ6x8UrUy+gCJ3ZxQobFFB0MU+W1DlE0rXqlbR3tWHqnqf9iMYo1RrRemhf9emitSbBVBF0KfbWCCP+2bQuJXzUA5cqrcKVv/buPNBJdM7IlMfslVPW7TdMbX3p/oWFpekvXDdjDlxMUgZOWHQHQMaGXC/jffpOZtjO2PgJyMI2k6XS2yzqbM3fWBN37IUH6d8kwroBZduss8M6tYYd1MRtcKBh7+nM4FLrWmMBAC+5uCKLXll9E0PipiAwGtQ+16+SNGIVrL00+skuu2ct+05u/3YqciuQG/4hPvaNOG9lHQROmKr26SyEOZ5+XEHdvk8CSdTp9DJ8dF1bP4vQamRE5dcO//hyIULZYr9UE37JUCSPhW07SsvCLhz7f3maybWi7KVCnE/h1j16jg5nEc265sT5HRpfn6D01m5U2RwuNLeGA38S8aQW25a8vE6sIfjHpeGw029pBBwDUZ8qLHTDpZyDZJtvBOyhN3QeH/vlx+gKCkuwfMMSVlF6ETW1EAJi2wMSkOGyD9W06l5T8K6iHV6zKpc7OzTHllkP8wQMyWWsmvzDzU1CToNuJoWMLp95okqPg9XhiNnN4wHuO9HLZwzmw0K3fZlVh/5cVc6moKd8k4TFUiM0O53HuHrOlckBzZXX6ZUQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66556008)(66446008)(4001150100001)(8936002)(66476007)(64756008)(36756003)(4744005)(8676002)(71200400001)(38100700002)(82960400001)(2616005)(83380400001)(6512007)(5660300002)(122000001)(6486002)(86362001)(38070700005)(186003)(316002)(966005)(508600001)(110136005)(2906002)(76116006)(6506007)(66946007)(91956017)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UGpPMFNpYlptUEh3ZkZoRENNcUdxZENBMlE3bG9HL2xPNjcrN21tUVJ6WW0y?=
 =?utf-8?B?VGRRbit2K28xSVVYeUlvZHcvSWc4QkJKazM4U3JRb0c4bVpvVjVsSXlpc0V3?=
 =?utf-8?B?M3BJSWRPWmtoMFgzc1R4N0E0MzhjZ1RhUU1PQlV4N051YlczWGZSQUVaYjM3?=
 =?utf-8?B?RkdVSlNoME5YVWZQb1RwcklVcTIxVkthREwzM2Jnbk9rcU5HL09TcVEzUkV3?=
 =?utf-8?B?Y215VVZnYVJqdE9oeWJLRmgzTnZlYUpXdHlIYkZ0cVhmMC85dk40NlVRQTBj?=
 =?utf-8?B?NUdWK0RqQ3J4KzJsTUU0a1VNL0NlYWJ5dFZCc0l2SDAzQkhRT2ZPWmk1M01l?=
 =?utf-8?B?VlJVdWs4akZWeElMd3NJWnhnTkRheHhRMVdFSUtiYngwSE93WWZkcHMvNFVM?=
 =?utf-8?B?VG4yL2VGdEJlcHcwS1VRUnkxb1RUNXBQNytkZzczRzNtOTgrVzkzcW5OTnF3?=
 =?utf-8?B?aStGSTdmVitDblB2Y1UwWnhMV1JlNlZVOHQyTmRlTFBiQkhZNGUxWFNxVWxt?=
 =?utf-8?B?SzJCN1RIS2hUcnhpaXVTbVozMG9Zbk9ybmRCZ0h2M25pZGRLZTExR1Ntdkgz?=
 =?utf-8?B?bE9pUTVabk4zNW1Ua3ByaEVYd3dJVGJoS3JZNkVLbk5jNFA3cVRQYnpTZDRJ?=
 =?utf-8?B?UHYyb0t3T3hYRlVEazNzcFZaSlArcTlPNFpRUWpCOEpmVmFKY0kyQUZVNmRL?=
 =?utf-8?B?RDZTL21yQ1dheFBpdnEydkxHajkwNmlzQ1J1M0xnRW40cjRXTWYzNDEydG9a?=
 =?utf-8?B?NGpFaVB4YUVYNkhHU3Q2MjJMTUtHNk9PZDBWMVpTc21MMUUyZHRuck9vZjZj?=
 =?utf-8?B?cW1XYnFnVGV2MHFjUUF3TzR2Uko3S3lBQzNjcFpqV3crcG1KRlVRL1kzbFU4?=
 =?utf-8?B?aUpHY0pzSk1yKzZNa3I5aEYwUGhDR3lhSWtNVVlrR21nVVRWdXFlTERGWlNN?=
 =?utf-8?B?ZEh2SW5nMmdJTTFoR3lMMFRGLzFRWVdINHlXQy8zeDcyUHM4OVhMV1hwZXpy?=
 =?utf-8?B?ZWxvZkZ5UlNNUG5CNXRCTEUza2REUEUxd1FMVDR6RjZseHN2R2tQUUYzYVR6?=
 =?utf-8?B?cGtwNThONFdvNC9TbFJrZTU4WVZVa2J2WTJuOVNjUXQ1NFgvKzBmNnBIazhB?=
 =?utf-8?B?QXVwMWVxeWt4MFVMbGllSzlINTlRd25xUE9KYklUUnJaTjhYYUlLQkhTc0tQ?=
 =?utf-8?B?M0J5c0poL094WVJiVkFaMFF6WVFxcFh1bTNiMlZLR3ZrV2dmUnJPeC9WWnF1?=
 =?utf-8?B?dlBwaDZHYU4yK3d3eTdKcDNKbW9yVzRGMm5iUk9uL200NFVjdnMyRzNpUkph?=
 =?utf-8?B?S1FtUW9OaTRmeUtwNmw5MWdrS01RK01tNis2WkpkdG9rNEd5enNTU2lEbjlJ?=
 =?utf-8?B?aDhzK0lKRlNaL2pQcTRWQnNPV2VlOGFxTHFBOVEzcjBQS2t5UEFxYjJieEJn?=
 =?utf-8?B?eU5JMWgyOHFxUUplbGVDUTNLWHFXUGtkWkxjOXBWNU41NGNKYStpZnNSM2lJ?=
 =?utf-8?B?L1BNOW4velNhd3JZY0ptUmZZaEdtTnU2OVVqQlhJQ0dRZWpSckljQnZEeVgz?=
 =?utf-8?B?THZWTUx1Nis2N1RKcTh1TndvNDJKc0NEaXg0a0lYenBmMjNRdEY1NWVPSFFO?=
 =?utf-8?B?R3VUKzVsSnEzVFR4cTI4ZTRVOWxmTHJsc1VlV0poeHJ0aEtaMHJvRGNnbmJ4?=
 =?utf-8?B?cUxEWE4wMzl1cW9EVmNkZlhxRFA1Nit3MmhUMklsRWgrM2ZGUW4wVkxpUTlW?=
 =?utf-8?B?NFM3ZE1Ja1JQYllYYm9jaXE4UDc0ZVhDdzdsYVg1akJFVXU1bVRqWTRaU3Fu?=
 =?utf-8?B?MWJSMzFlbmVIUS96Zi9JY1pkMGtWbDRXTk00bnk3NmRUMi9scGNKemsxR0pL?=
 =?utf-8?B?SE9Bc1IzRzVGeUliVGFTMDNzWHpLeUFTU1JGMmdJN3ZWU25xZ1VCTU9jMlpr?=
 =?utf-8?B?ZC8yUGRURFZzSXZiemgrcGEvL21jbGlWZlMyNUlaMmpnVzEvMEhma0VUSXhs?=
 =?utf-8?B?RUtVYzBqWEpMZlNBbEVIcjl3R2xLVGxoaDdlWGk2WHBsU055WmpYWFkxcHh2?=
 =?utf-8?B?SjVrMHpxYUpwZjA1Y21nQXNhc2FkczVoRk8yd0k1ZElLc1d6VnMwbmQrc1pN?=
 =?utf-8?B?dlZ0OXRkSnd0SVMrNjFnVm1SMEJvbVpSREJuaU1iZTZGeE12R0FFTzMrOEhZ?=
 =?utf-8?Q?8rR2CpOC6UKvzA1v3kmCnrK0fDlHPRNz4/gbfNbrak2g?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <677AF832F3D6354D99EC19164E0FAC50@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 013abf0c-ab7b-4a56-cee5-08d9a8b382cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2021 03:45:19.6128
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 YX4t7Fp2FddS/hFqws2z8alJsj9jEGmORjFc42xxbWWTwVEbTfLKsGvz9/d9H5bSg2AvY2vCyCCGyDYcO09ZjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5866
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 03:45:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55335

T24gTW9uLCAyMDIxLTExLTE1IGF0IDE3OjMyICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMp
IHZpYQ0KbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90ZToNCj4gwqANCj4gUmVjZW50bHkgSSBi
dWlsdCBpbiBiYXNlIGludGVsIE5FTyBkcml2ZXIgY29tcG9uZW50cyB1bmRlciBtZXRhLWludGVs
4oCmDQo+IEl0IGFwcGVhcnMgSSByZXF1aXJlIGEgbGl0dGxlIG1vcmUgdGhhbiBqdXN0IE5FTy4N
Cj4gwqANCj4gRG9lcyB5b2N0byBzdXBwb3J0IHRoZSBraHJvbm9zIGljZCBsb2FkZXIgPywgDQo+
IElzIHRoZXJlIHNvbWV0aGluZyBJIGNhbiBidWlsZC9lbmFibGUgdHAgcHJvdmlkZSB0aGlzID8N
Cg0KbWV0YS1vZSBoYXMgcmVjaXBlcyBmb3IgYm90aCBLaHJvbm9zIGxvYWRlciBhcyB3ZWxsIGFz
IG9jbC1pY2QgdGhhdCBORU8NCnByZWZlcnMuDQoNCkxheWVyaW5kZXggY2FuIGFsc28gYmUgdXNl
ZCB0byBjaGVjayB0aGVzZSBzb3J0IG9mIHRoaW5nczoNCg0KaHR0cHM6Ly9sYXllcnMub3BlbmVt
YmVkZGVkLm9yZy9sYXllcmluZGV4L2JyYW5jaC9tYXN0ZXIvcmVjaXBlcy8/cT1pY2QNCg0KDQpU
aGFua3MsDQoNCkFudWoNCg==

