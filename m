Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4047C433F5
	for <webhook@archiver.kernel.org>; Sat,  9 Oct 2021 03:04:49 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web08.2292.1633748687551741089
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 20:04:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=CGXdMJ5c;
 spf=pass (domain: intel.com, ip: 192.55.52.151,
 mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="207436888"
X-IronPort-AV: E=Sophos;i="5.85,360,1624345200";
   d="scan'208";a="207436888"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 20:04:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,360,1624345200";
   d="scan'208";a="590740523"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by orsmga004.jf.intel.com with ESMTP; 08 Oct 2021 20:04:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 8 Oct 2021 20:04:44 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 8 Oct 2021 20:04:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 8 Oct 2021 20:04:43 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 8 Oct 2021 20:04:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cta29CbWxqafmuhVx01Dpj04EtFgur0xxEKuLs3dxqAyZqdfJbN2UV6Ow+SDL4lSjqwfMSjNTJBZoVrIbeUXwSPr2X3o2AtoZQTSkBJMrahX0tf0OKxPjuX0KoBrzg9zzJbovnnn7nnAxDZhSYeAmNLevFLZHIJZnSu+BrePOKf0JPus6SnRsn/88NA55ExOxssJBuvh/U2XNz2PBk4H8Jsw4WlItlbQXwk3P9F1NCFfxlp6AD7bGkkOsBB2Jin6/L5G7/oNyRUiUCkvbBwVozyEEjyM81V+gfEW5E1uWXrueCIxSoReNYt3MN1riFNnUS/CwvSdsnwFSCFn9a4qhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eespMAS3GyUWHUIAJ9GUqzC5Ghdq9c8tx1JEpNzOczc=;
 b=GJ9kcNk8GXi4Sn+vdeoCi+DRFHnrL5KfqN/H+i7I1x+CZdCdU2W6iXQonVGGuuS/+AqVvdw3MgVWKzhNnGiG6YLBgVQG8yddjOdAi05jwj1G0Dki202N6CbOeX9njAKfNQXZGW7mW4P1WOUkhTR/ncJPBCq/wibATAV+N5keEsYAGd2OHrW/MMspbeloQrlTkfpfoA18NOmb6b+MXysPMdjgxKkYxROXbh/Yqf1hWu7kB/9T4kaogPa0+f2Iv2patnZh5TugwPSifujbPo9AlU+P3fnZB54NYQYuLk5FavA7Ab0O7GnGpGw1x7MSqM7bcrUr2Wzvr2k9pDcyfSU04Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eespMAS3GyUWHUIAJ9GUqzC5Ghdq9c8tx1JEpNzOczc=;
 b=CGXdMJ5ce5bsFmfMiNlHentWwJifNsqfoBckboJcIMXbt61zpzLCuCZKBEViKlL4NP2jO6f120JWl14qZnqFiA/jTNF382KqzzLM4WJASFE3zPBf7R6/6HeA49MI5eatS2F5ZoHFPuCmNDOlY4geCcjaWnA7Nys5+P5m0ZEuRs0=
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.20; Sat, 9 Oct
 2021 03:04:42 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be%3]) with mapi id 15.20.4566.026; Sat, 9 Oct 2021
 03:04:42 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #zeus meta-intel
Thread-Topic: [yocto] #zeus meta-intel
Thread-Index: Ade7lYNzGnXDdfszSXOKckUgK88nGwAwKyaAAAC+XnAAASNjAAAAO6hgABbwMwA=
Date: Sat, 9 Oct 2021 03:04:41 +0000
Message-ID: <e781fe16cb184843698c9bb417953be22c913a5d.camel@intel.com>
References: <MADEUP.16AC1A1B0F173D71.20366@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16AC1A1B0F173D71.20366@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: baesystems.com; dkim=none (message not signed)
 header.d=none;baesystems.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad16d1c4-3d30-489a-940f-08d98ad18a36
x-ms-traffictypediagnostic: SJ0PR11MB5865:
x-microsoft-antispam-prvs: 
 <SJ0PR11MB5865B4E349213EA9717DAC4CF8B39@SJ0PR11MB5865.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8pFKVFjrt2xfubCnf07cl0nVhvjv+ZlXXlTgAm9clGtZENaf34J6uJ31sl4CskvPGEhdUv3fEDsvsxW/6nPhoaASHDq5BHf4QQa4vla7LWRFuqiDZMH1FG5zz5kVHwS2T8uVIlV80DMnz6depHIdgcLIycXR6TOQ3fdccP2PX23PVOgaImR2PlV3Mx5jhFmCQi4fu8SHEFcTKMwfPaE1GZHYU//OkFrFsAVfZ/KFYLSdberecGki6Nn+CwWFt5SgP7gTnio+wXXST9UjDRF+X7Rq2KTrnC2h4T1yOZ5QBVu0kZz121LJMRYYlXE6oBvW9u+ZDJEk/QXUBO7C9bydTWGZRjoqBr6fHoZPxez8mvPCgL+eiDpqQBHja6JKGE5fw7czFb+Qh78hMJID6/qrTTCcctcSkNoiZUrXHgXXwejTCwVlaPkaXdfokXgAbcVL1UcPy3GCYM/OTnYDpnfg6aearVUQPwO3fwlzQ6uDz0QQUU3GcRYLjiFvXQXy3AX9TBS2xgW5H3LY2d/thxtejBKzRu/t4vqtXi6SzV6WKh/hszED5Fjzdn0sShKX4UPNAn1f+Lu6HD1IxTTimXRq7l3InzMFEJiQ2/uTZzlYvRWelrVkDdT7n+5+bkjWpgSM5Mg77kJW17+9ja2bEKpYU0ZZHLg8FtF6F8meUgd+66cEoGpegmI4rGQKs8kEH1oQaaOqVqqNeStB21q+79QYSk3uzk2JUH0ou2zXBXH5CGE331veJUu+Pu9kkSHPD1vBe2Hb7AZTsJsogfXv32a8VGqBvqOQB/SZTDWGj/9/ClPBvacX5vEsADGb6JQYWIyP/S5/0kiK6yVy6JnkANc8fg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38070700005)(6506007)(53546011)(8676002)(966005)(508600001)(86362001)(6486002)(122000001)(38100700002)(8936002)(66556008)(5660300002)(110136005)(36756003)(71200400001)(76116006)(91956017)(26005)(66946007)(66476007)(45080400002)(66446008)(64756008)(6512007)(2906002)(2616005)(316002)(83380400001)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZXBwL3VyazkxaWlNVTZocFRkaFFMc1Z1WGFZUUdhT2dSc3E5Z0RiYVg1dW1j?=
 =?utf-8?B?Tk5LQ3h6ODhHK0ZRNHU3K28rTzJoTUJDUXpmQi8yS2pDUVFkL2xIODJwTll4?=
 =?utf-8?B?UXRGbkhqUGNBS055N0ZuRGVadmhDdENKY2FNYmREbEJqK1JFb21TZjZuRGNx?=
 =?utf-8?B?U0NCVEl5a2dObHB0MWJwenltRFNzRU5zenJtdGRoL2hZWjdYaDJFQ3dXMDRU?=
 =?utf-8?B?bVlYSUVWL0pSU1VJY1pST256VXl5ZHhrZWhlYTdnbzJUSDJXTWNRZ1hBV1pw?=
 =?utf-8?B?a2k1cWwwbUk1bVREK2lpczFnWUNjWlp6RUVsUUNKc3RzV2xjT21vYUpVb2lq?=
 =?utf-8?B?elZ1L2tIZHhwTHN4WVU1dzV2MklNSHVzTkJ1SndOdER6Zm1lQXc1WVh5U0VH?=
 =?utf-8?B?cC9qWGlTaFhZWEZnbTZ3VlV5NDZEUUtjR0ZhS3U2QWlQNjNVOXFEZjljK3R3?=
 =?utf-8?B?ZHIxcHdwTXNRbFFja2dVT0gxOHdtZG9NR2p4eUtYSG1Td0xlSUdTZW1GTnoz?=
 =?utf-8?B?cTVlbWU1c0lFWi9HOXNZY0wyS3lQWENsbUVXeFIwQ1BVbkt6MFlzdXdKMGwy?=
 =?utf-8?B?cW53cVNTM3NTTXg5aGNvMVFwQlFLejZ3WHVCYmFpL3R2M25VaXZoS1pRUlhC?=
 =?utf-8?B?QmZIRmNJenJaZW1vRmF1aVpZOUxZNGFwcHRPRmxWWWY5czlBS2ZDV1l1MW53?=
 =?utf-8?B?YlA2cHl6VUNCZEFFSFA3dnFCYTAxSU9QY2x1RWhsb0R0MC93V3IrRndwdklP?=
 =?utf-8?B?U3MwTUlMTXBoVmgxbkQ4dHhTZmdTOWxsc1VhdjVXRlFUQUVXZ1dyOUVWM0d2?=
 =?utf-8?B?bjdCNkR6YmFyQUJsSGorcDN4eVF6eFVRallGdkpVWDUwZ0FHSE5Jb1JHRkxC?=
 =?utf-8?B?NGJxRnRVUElXczVLSFU3dWF0YkFzc09GMUwxQk1RZjdzdGpjVjlHbVNQeDFn?=
 =?utf-8?B?VU8yU3ZpbkI5WGtXMVpkU2txbFRib1pVY3B1RzlUWUQ2ZVYveUNIeU81ZDls?=
 =?utf-8?B?dXk1dmh0MGFiU1pjKzczejVHcTJVRW44alV4UkdUUGh4U01udUlSM211TkdO?=
 =?utf-8?B?QlowWUsvVE5kUVkvS0VENnVLNWFtSVc1RnB2SHJ5dEdKbDI3K20rMjJWc2tM?=
 =?utf-8?B?M29ta2dlWk52YVNmajU1YUdVVnJqV0xjdUcxRXVodjNpTHlpc2VWSzFrUkZ3?=
 =?utf-8?B?SE1adjBNOUZkeklNdkREcmJUT3JQZkY3ZVFhSVYrOE1rSldTeEUvQUVTRGVC?=
 =?utf-8?B?VkZHc2hubTlqQnJXYVMxbmlFbUpud0s4bU1tRlJLUkRLTk82Y0hRK2U4YWVX?=
 =?utf-8?B?K3Y2eVFMYzFOdzViYzY4RTBaZ1VOUDRtdDB4WEI3M05pZk15ZjM1VlB1QnNi?=
 =?utf-8?B?MUpWWlJnalZKOVdWZWlYRzBwYlQ4UWpEWXpESEswcFpLSFpwMTR6TmZhdm9s?=
 =?utf-8?B?NnVMRlh2bitraUFDTmZ3NW5CQU1xbmxyWFJiN3h2WkUzVDJTM3RWcnZJOGVY?=
 =?utf-8?B?QzEyWlFxcHY5TzZobDdnSmZLUGZUZzZnNTRoZ3JtTWlRL0tTdkJQTlVxUmM3?=
 =?utf-8?B?dUR6c214dDdCRnoxakJPcXhRZkpTZlh0Q2xLOHN3S0twNEc2Z21jWTUzMmlt?=
 =?utf-8?B?R0hlZHlwZkpNbVk3Y2VVdGhkWHM5a0lyc24yc2ZWdXFERFpJOGlQaWNUV1dL?=
 =?utf-8?B?WXJ3T0Ryd0dLbVVFZWsrdGNaSDBuL1BGbUp2Mjd2cllCQnBsSXFxdjdCNTZh?=
 =?utf-8?B?RDFhcG1RWDFTdmNEYlhlNUptcjZ0cEIrZ3lhblpyZTgxSjFXcWZrWVEwOFlo?=
 =?utf-8?B?SjRzeTkxUmF3RXdOOTVydz09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <9A0DD23569C19C408B2973842A93F9E1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ad16d1c4-3d30-489a-940f-08d98ad18a36
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2021 03:04:42.0230
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 CqdDOU5EoFBbWgzUUdl3UWpkXYBSOUFQzWkz+tlSXlr8kQF2NKtyYNV0vHQ+5oNNk/pj/YO1dkRK28YmNRmtWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5865
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Oct 2021 03:04:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55007

T24gRnJpLCAyMDIxLTEwLTA4IGF0IDE2OjEwICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMp
IHZpYQ0KbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90ZToNCj4gDQo+IFNvcnJ5IGZvciBteSBp
Z25vcmFuY2UsIGJ1dCBJIGFtIG1pc3NpbmcgeW91ciBwb2ludCwgd2hhdCBleGFjdGx5DQo+IGRv
ZXMgdGhlIHJlY2lwZSBwcm92aWRlIHdoZW4gYnVpbHQsIGludGVsLW9wZW5jbC1pY2QgPywgd2ls
bCBpdCBwdWxsDQo+IGluIGlnYyA/DQoNCkl0IHdpbGwgcHVsbCBpbiBpZ2MuIFRoZXJlJ3MgYSBz
ZXBhcmF0ZSByZWNpcGUgZm9yIGlnYyBpbiBtZXRhLWludGVsLg0KY29tcHV0ZS1ydW50aW1lIHdp
bGwgcHJvdmlkZSBpbnRlbC1vcGVuY2wtaWNkIGJ1dCB0aGUgcGFja2FnZSBuYW1lIGlzDQpkaWZm
ZXJlbnQuDQoNCllvdSBjYW4gdHJ5IGJ1aWxkaW5nIHRoZSByZWNpcGUuDQoNClRoYW5rcywNCg0K
QW51ag0KDQo+IA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNaXR0YWws
IEFudWogPGFudWoubWl0dGFsQGludGVsLmNvbT4gDQo+IFNlbnQ6IEZyaWRheSwgT2N0b2JlciA4
LCAyMDIxIDEyOjAxIFBNDQo+IFRvOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4ubW9u
c2Vlc0BiYWVzeXN0ZW1zLmNvbT47DQo+IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4g
U3ViamVjdDogUmU6IFt5b2N0b10gI3pldXMgbWV0YS1pbnRlbA0KPiANCj4gRXh0ZXJuYWwgRW1h
aWwgQWxlcnQNCj4gDQo+IFRoaXMgZW1haWwgaGFzIGJlZW4gc2VudCBmcm9tIGFuIGFjY291bnQg
b3V0c2lkZSBvZiB0aGUgQkFFIFN5c3RlbXMNCj4gbmV0d29yay4NCj4gDQo+IFBsZWFzZSB0cmVh
dCB0aGUgZW1haWwgd2l0aCBjYXV0aW9uLCBlc3BlY2lhbGx5IGlmIHlvdSBhcmUgcmVxdWVzdGVk
DQo+IHRvIGNsaWNrIG9uIGEgbGluaywgZGVjcnlwdC9vcGVuIGFuIGF0dGFjaG1lbnQsIG9yIGVu
YWJsZSBtYWNyb3MuwqANCj4gRm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24gb24gaG93IHRvIHNwb3Qg
cGhpc2hpbmcsIGFjY2Vzcw0KPiDigJxDeWJlcnNlY3VyaXR5IE9uZVNwYWNlIFBhZ2XigJ0gYW5k
IHJlcG9ydCBwaGlzaGluZyBieSBjbGlja2luZyB0aGUNCj4gYnV0dG9uIOKAnFJlcG9ydCBQaGlz
aGluZ+KAnSBvbiB0aGUgT3V0bG9vayB0b29sYmFyLg0KPiANCj4gDQo+IFNvcnJ5LCBJIGRpZG4n
dCB1bmRlcnN0YW5kIHRoZSBxdWVzdGlvbi4gSWYgeW91IHdhbnQgdG8ga25vdyB3aGljaA0KPiB2
ZXJzaW9uIG9mIE9wZW5DTCBpcyBzdXBwb3J0ZWQsIHBsZWFzZSBzZWUgdGhlIFJFQURNRSBmb3Ig
dmVyc2lvbg0KPiB0aGF0IHlvdSdyZSBidWlsZGluZy4gQWxzbyBzZWU6DQo+IA0KPiBodHRwczov
L2dpdGh1Yi5jb20vaW50ZWwvY29tcHV0ZS1ydW50aW1lL2Jsb2IvbWFzdGVyL29wZW5jbC9kb2Mv
RkFRLm1kDQo+IA0KPiBUaGFua3MsDQo+IA0KPiBBbnVqDQo+IA0KPiBPbiBGcmksIDIwMjEtMTAt
MDggYXQgMTU6MzAgKzAwMDAsIE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgd3JvdGU6DQo+ID4gDQo+
ID4gVGhhbmsgeW91LCBqdXN0IGZvciBjbGFyaWZpY2F0aW9uIC4uLg0KPiA+IA0KPiA+ICJCdWls
ZGluZyB0aGUgTmVvIGRyaXZlciIsIGRvZXMgdGhhdCBtZWFuIG5vIE9wZW5DTCBsaWJyYXJ5IHN1
cHBvcnQNCj4gPiA/DQo+ID4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBG
cm9tOiBNaXR0YWwsIEFudWogPGFudWoubWl0dGFsQGludGVsLmNvbT4NCj4gPiBTZW50OiBGcmlk
YXksIE9jdG9iZXIgOCwgMjAyMSAxMTowNyBBTQ0KPiA+IFRvOiBNb25zZWVzLCBTdGV2ZW4gQyAo
VVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT47IA0KPiA+IHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcNCj4gPiBTdWJqZWN0OiBSZTogW3lvY3RvXSAjemV1cyBtZXRhLWludGVs
DQo+ID4gDQo+ID4gRXh0ZXJuYWwgRW1haWwgQWxlcnQNCj4gPiANCj4gPiBUaGlzIGVtYWlsIGhh
cyBiZWVuIHNlbnQgZnJvbSBhbiBhY2NvdW50IG91dHNpZGUgb2YgdGhlIEJBRSBTeXN0ZW1zDQo+
ID4gbmV0d29yay4NCj4gPiANCj4gPiBQbGVhc2UgdHJlYXQgdGhlIGVtYWlsIHdpdGggY2F1dGlv
biwgZXNwZWNpYWxseSBpZiB5b3UgYXJlDQo+ID4gcmVxdWVzdGVkIA0KPiA+IHRvIGNsaWNrIG9u
IGEgbGluaywgZGVjcnlwdC9vcGVuIGFuIGF0dGFjaG1lbnQsIG9yIGVuYWJsZSBtYWNyb3MuwqAN
Cj4gPiBGb3IgDQo+ID4gZnVydGhlciBpbmZvcm1hdGlvbiBvbiBob3cgdG8gc3BvdCBwaGlzaGlu
ZywgYWNjZXNzIOKAnEN5YmVyc2VjdXJpdHkgDQo+ID4gT25lU3BhY2UgUGFnZeKAnSBhbmQgcmVw
b3J0IHBoaXNoaW5nIGJ5IGNsaWNraW5nIHRoZSBidXR0b24g4oCcUmVwb3J0IA0KPiA+IFBoaXNo
aW5n4oCdIG9uIHRoZSBPdXRsb29rIHRvb2xiYXIuDQo+ID4gDQo+ID4gDQo+ID4gT24gVGh1LCAy
MDIxLTEwLTA3IGF0IDE2OjIwICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSANCj4g
PiBsaXN0cy55b2N0b3Byb2plY3Qub3JnIHdyb3RlOg0KPiA+ID4gwqANCj4gPiA+IMKgDQo+ID4g
PiBJIGFtIGxvb2tpbmcgYXQg4oCcbWV0YS1pbnRlbC9keW5hbWljLWxheWVycy9jbGFuZy1sYXll
ci9yZWNpcGVzLQ0KPiA+ID4gb3BlbmNsL2NvbXB1dGUtcnVudGltZeKAnQ0KPiA+ID4gSSBoYXZl
IGJlZW4g4oCcdG9sZOKAnSB0aGF0IHRoaXMgY29tcHV0ZS1ydW50aW1lIHJlY2lwZSBzaG91bGQN
Cj4gPiA+IGJhc2ljYWxseSANCj4gPiA+IGJ1aWxkIG9wZW5jbCAoTmVvKSB3aXRoIGFsbCB0aGUg
cmVxdWlyZWQgZGVwZW5kZW5jaWVz4oCmIEkgZGlkIG5vdCANCj4gPiA+IHRoaW5rIFlvY3RvIGhh
ZCBzdXBwb3J0IGZvciBPcGVuQ0wsIGFuZCB3YXMgbG9va2luZyB0byBidWlsZCBOZW8gDQo+ID4g
PiB1bmRlciB0aGUgU0RLLg0KPiA+ID4gwqANCj4gPiA+ICgxKcKgwqDCoElzIHRoaXMgdHJ1ZSwg
ZG9lcyBtZXRhLWludGVsbCB1bmRlciB6ZXVzIG5vdyBzdXBwb3J0DQo+ID4gPiBidWlsZGluZyAN
Cj4gPiA+IE9wZW5DTCBhbmQgdGhlIE9wZW5DTCBHcmFwaGljcyBjb21waWxlciB1bmRlciBZb2N0
byA/DQo+ID4gDQo+ID4gY29tcHV0ZS1ydW50aW1lIHJlY2lwZSB3b3VsZCBhbGxvdyB5b3UgdG8g
YnVpbGQgTkVPIGRyaXZlci4gemV1cyBpcw0KPiA+IG5vIA0KPiA+IGxvbmdlciBtYWludGFpbmVk
IHNvIHRoZSB2ZXJzaW9uIHRoZXJlIGlzIG9sZCBhbmQgbm90IHRlc3RlZCBub3cNCj4gPiBidXQg
DQo+ID4gaXQgc2hvdWxkIHN0aWxsIGJ1aWxkLg0KPiA+IA0KPiA+ID4gKDIpwqDCoMKgT2Ygc28s
IHdoYXQgd291bGQgYmUgdGhlIHByb3BlciB3YXkgdG8gcHVsbCB0aGlzIGludG8gbXkNCj4gPiA+
IHlvY3RvIA0KPiA+ID4gYnVpbGQgPw0KPiA+IA0KPiA+IEluY2x1ZGluZyBtZXRhLWludGVsIGFu
ZCBtZXRhLWNsYW5nIGluIGJibGF5ZXJzIHNob3VsZCBiZSBlbm91Z2guDQo+ID4gDQo+ID4gVGhh
bmtzLA0KPiA+IA0KPiA+IEFudWoNCj4gDQo+IA0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0K
PiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4g
Vmlldy9SZXBseSBPbmxpbmUgKCM1NTAwNSk6DQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNTUwMDUNCj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xp
c3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvODYxNDk0MzcvMzYxNjcwMg0KPiBNdXRlICN6ZXVzOmh0
dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL211dGVoYXNodGFnL3pldXMNCj4g
R3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gVW5zdWJz
Y3JpYmU6DQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vuc3ViwqBb
YW51ai5taXR0YWxAaW50ZWwuY29tXQ0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiANCg0K

