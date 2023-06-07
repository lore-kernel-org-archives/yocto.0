Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A8CEC7EE2F
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 01:49:37 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web10.4191.1686102569979294030
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jun 2023 18:49:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=WFM0Vgoa;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1686102569; x=1717638569;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=/RLNy4pSvq2tOxWFofeIq+gIwA3pt1k5HE+SOQiY1CI=;
  b=WFM0VgoaMI4f379y901S2pdONW82Msl1z9OqjUsSm2/PsIyH6KSkyiis
   PhPmgdgQK9yH8decnEr5/EPcoblQ9f5zhEH1kFiXVJ/dKnQaMknv0jR5r
   klHarv/LHFGESSJZpLWmqCjVBFtJ7k9XOKC2muJ3hJxME8PYbOFQ4s8jB
   uQIErSzdu0i2TdpsdXY9XZPLRDwMV8L7XRRF7Shn2pe8nmD96m5jtaRr7
   Po3IoWyJ1/tIXSsQPsbd7FPWAzz8TL704B6T9TgmWa9d4g+cj1gtJ8CQQ
   NNQi4G0cD54ZpiwPlCbfq1lnFgjJekzLQ40PqIjEcjd5HID7n21YVL4YC
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="346456606"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; 
   d="scan'208";a="346456606"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2023 18:49:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709297494"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; 
   d="scan'208";a="709297494"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga002.jf.intel.com with ESMTP; 06 Jun 2023 18:49:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 18:49:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 18:49:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 18:49:17 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 18:49:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=drOYwju3L6RHsmGGgxEiRIELKOfrUGUvyho2zYcuGKi3d4yTlwN60DX7tMPh6zNJwFgR8o2sC0UZ1e14RAWeEVqchSywkaN1/1wAXoi10vEy1VECCDp/WoHeA+gW69FloJB8PvcgZ4OZQPnPvySNEaMhv0fLeCCFT94GOhx2Y2QM7ubutxwoUNqw5fNC4Q93Rk7zzSph/L09LAv/trwbrSiv4row8Tl7n5evPsLdndGu53HpkVqO1QaiJrV90JqbkFFa0Nc4P2k3gsN66rA78PycvKRLzXDxkr5cfNz5GVCvPdlc3FlBTCHUZJlJB4WxlOwpVlrlaDq5N1SpolcGMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/RLNy4pSvq2tOxWFofeIq+gIwA3pt1k5HE+SOQiY1CI=;
 b=hmIr938cjsuIBlA/Mi5QebB4mz6HjHVXsmU01PFmbm/RSmgdEsPccyguWIWZAq6I2P+rE925W/QCbnPFxkOU3GALIEx2r3X0Vv1Z55LpEwmZKruBzw97LbavrK7ANOk0hlROXEL0Nb5l6Rnzfx5doL2mGzzQwUDIPzcwd3vKapHaAZghFWnS09/eyT+bUV2m3tGHLTpsxNaBnZDu4Ry6nPvLNkBCGvXgINwofMDRvTKw7Pa4AlONbRHPsJknNBVnZJBh+eK0Nx7y4MV/94dzC+QLnKYwEGvmrhqh5PmQ786t0KmysKM9CuFWKiHAJi/IjraoRLjAZjjHDx5Xmj5iWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6418.namprd11.prod.outlook.com (2603:10b6:208:3aa::18)
 by DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Wed, 7 Jun 2023 01:49:13 +0000
Received: from IA1PR11MB6418.namprd11.prod.outlook.com
 ([fe80::2728:b097:ff42:bd19]) by IA1PR11MB6418.namprd11.prod.outlook.com
 ([fe80::2728:b097:ff42:bd19%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 01:49:13 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"huykhacnguyen1983@gmail.com" <huykhacnguyen1983@gmail.com>
Subject: Re: [yocto][chromium] Need support to enable intel VAAPI with
 Chromium
Thread-Topic: [yocto][chromium] Need support to enable intel VAAPI with
 Chromium
Thread-Index: AQHZmN7lpkQe+3V7uEO8k/7WtW4czq9+ksSA
Date: Wed, 7 Jun 2023 01:49:12 +0000
Message-ID: <0028e972a327c914b1cb7979ba8fd82bb2e103a4.camel@intel.com>
References: <CA+gF+GmO=MJWUzhpmw5J7DoixHkOOcBqNr2f7A2LZe_+FUnOcQ@mail.gmail.com>
In-Reply-To: <CA+gF+GmO=MJWUzhpmw5J7DoixHkOOcBqNr2f7A2LZe_+FUnOcQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.48.2 (3.48.2-1.fc38) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6418:EE_|DM8PR11MB5573:EE_
x-ms-office365-filtering-correlation-id: 7054e6d4-62fb-410f-6a50-08db66f964b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dZ3RHnNSF25llxDRMdhhpgtGvYkVBIXab2/bjRIIW0lyPdVJ+8AukkLZ1JnBYOthDL91lnJbGCY0hdJmeIxMiG81TI4QLALVS1Md/NkHCkoiBsEn7jzGcmwoGrBkxZ8A03VGp4VqvBLdXWbnHES4COaUjbFFifeSSbO2WL5aLvkEpDh/DN/whgT0k3seRD67ikYZE7V96D5md63UWaOj5R2P4mXP2wiTqulz/bPEF4YQgNw2GIQmQqi6mhXhmUsfSeQQCYmyEuNjrLZPfoRtfBqcxcWw83KdCuunsKeKimGU55nu0C/fnnjka9VTJL6BBmi4bG6Fl1gCW+zL8zfBGb29HBmvpaxCOtMhsveRG37mCpgo3nhW+yTTvngnYs+tutWGwaXTJraOXHRtBb0K10JU5VkVIbMSKAlZkU9h3UbSRwXE00ZE3rjnq3PrUzDN0jWNzg2js5FL4cj+igd+st+KgDroGe0aGBOcm0ZYk48ZdsrF3wQorsrV4Xxx44rm7HxKBwDStKSP4Q1UN2upnHj3qGqvSY+opWoy7nAjPrH69qcSpg4zyBs6Yt1qjBkcmTgR1EWlHxtBZ8F+WV0R6SLgIEmTjFIfTiKwcd/hNps=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR11MB6418.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(376002)(136003)(346002)(39860400002)(396003)(366004)(451199021)(478600001)(66446008)(71200400001)(38100700002)(36756003)(82960400001)(91956017)(66946007)(122000001)(76116006)(66476007)(64756008)(110136005)(86362001)(8676002)(8936002)(5660300002)(2906002)(38070700005)(316002)(41300700001)(66556008)(2616005)(966005)(66574015)(6506007)(26005)(6512007)(186003)(6486002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkQzdFd1M2FwMUVjWjl0ZzlXQ3ZoTFJTNTdPTEJWdDZNeUpXVlZ0dVh3L1Z0?=
 =?utf-8?B?SjdZd2psU2tVejBucVcwMC9sSHJmTjBMQ1pJWUwyWFlYRmhjdUFXdzduY3F6?=
 =?utf-8?B?TUFlRnRKVGR5QW0rbWFPV0s1RmRqZ24wWVJGYU0xdWNhZUdLbnpYQUd3MGFM?=
 =?utf-8?B?dlZpQzZkYzdNc21GbU5Lb01GSWtoWFNMUVF2c1ZOZ1RRRUxtelNvZGN1OTRS?=
 =?utf-8?B?S1FacmtKemZ4Q01jTExBMmFYY0lLZlZxQ0NudmZ4cnBPRlBMejNxOHA3d3lL?=
 =?utf-8?B?TzZiUXFaT0szak9Mc21RVS9QVjA2NzQyWmN2OEhNOXZadGNRd2FRemRVVnRP?=
 =?utf-8?B?SmVqTVAzaUZTNTVBb25LV1dlV2Y5S1JyTHgwNXVBc1dxNnZnc2krZDVGVkwv?=
 =?utf-8?B?S2doUTFiNmhhbjBZYWU1YUlsVFZ4VXpUT2R0WlRTd2ZPbThnTlFpY0t3RHJP?=
 =?utf-8?B?a1hSWWxSNS83VlZVSjI1dnZDRWxNbFJETHNWaXhrQ28yS1pGL0RGWFZJS3Zn?=
 =?utf-8?B?V1RGT3MzRUpSMWt2Qmw5UE8vejhvN3MxNit0amE4aDgzcG9sRGRyZjc2bitB?=
 =?utf-8?B?Vnh2KzZtRkRQWTBnU3dPcEMzbTJRTTBsaDhxem5ZbFNjMERDRDEzQzV3cTlH?=
 =?utf-8?B?UWJiRElyQXY5SXlsZDZaa2crdkRIc1ZLemhOVDRnMTUxbjcyT25oM3ZvOXR6?=
 =?utf-8?B?YSsyRldtSVpGc284SzBZaSttd2d1dWt0Uks5UVFLRUhpOE5yOWdkM1RNK3U5?=
 =?utf-8?B?RTVqRmpZT1c2ZGFiTko5T1c3bFUvKyt3dFQ1dW5RaUtCU05EdkZORlF5blI4?=
 =?utf-8?B?RCtPVHVoaWQ1d2U2b0RjWlkwWW1LaE9LQXczRXVuZThHeWVNcU5ESmt4ZWc3?=
 =?utf-8?B?UWxZTXFZdEs5djRLQnk5SG1HWDl3c09hTFZtMEJPYVM5anpHSXQ1TUZQaWlD?=
 =?utf-8?B?UkVWT0VoUHdRWk9iVnRBdkVTQWFwcGhjUmNHeVRXMU5LTldyVEdoZXh4d3dR?=
 =?utf-8?B?aEFsVmhFQ1dVb1BwU1RydkhPb3Z6UG1LVlI4U0liUUtpVjZQWmhXUEphM1c1?=
 =?utf-8?B?YUhMcFNUMVB3ZmVyK2dKTnV2ODlWOGpmMlJ2MTJ5d2U5cHRvakpjZi9aYjgy?=
 =?utf-8?B?T2FCaEZ5Yi83aWs0dE1GWmZQY0FvZFhjN0FhMURtWmFXQ1pSVk9YZWFNVXNB?=
 =?utf-8?B?c0V6V2xybVIyQnc4NXRsZ3l1aUhPa2xKYXA3Q3pJYm84N1htbFFOVWY1VWRp?=
 =?utf-8?B?c1lTdmxwODJPOWVUcUE3UHVhM044ZnlyN1FDUzRiRGxFc0Erci9mN3ZGSkhX?=
 =?utf-8?B?aEEvQ1pXS1lxVUp2ZjQxd1lza29Ra29ScnJHRTB0MEJrczJBa3RxVTFMcTc3?=
 =?utf-8?B?S1pvUndKWTFtN3Yrd3lBbHIzb0RnOCs3RVZqUjE0SXdYYTlaSmI4WFBFYWpF?=
 =?utf-8?B?b01FbTlqK2NXbmh4dVpqNkVjWFRydmk4djd6WVQvK1h0aFVLUG95RUI4ekt0?=
 =?utf-8?B?MnAvUDM4L0tkY1M5aVdFZlFuRTBCcnduTDI2T2xVcGR3UndkVFdzUUNUeUxi?=
 =?utf-8?B?ekZIK0JnVGtJN0FEMGl4ZUx6dmhFZzluVDJFS0ZZL0kyY29DSHY5UjhyOGFK?=
 =?utf-8?B?RjBLTW9STTJHTjI5TG9PMkNHbktQV3ZjT001U2V3M01GY0V4Nis5ckQ4L1pY?=
 =?utf-8?B?NmpqS3lraGN4djJnZkZLUWtKYVVPTDFuVDVJT1hEeWVaM2lvK0pmMkhUZyt3?=
 =?utf-8?B?NnBNMXRyRmlLL0ZpRmhROTZZU1cwUlk5MnZmcUtlZmROOHNHbE03dDI3TmRn?=
 =?utf-8?B?c3R6Vlo3UWdZZ3NFNlNxbktpNXZoREdTUDRtZVBPZGRwemEyQXhSUjZwd0Jz?=
 =?utf-8?B?OW5DN3BiQTZrWEJKTmZtWlBsMHVKZDZNYzJxZXVIR1BEVEJwUE0rTEc0SjdQ?=
 =?utf-8?B?WFNnRDNVaDF2K0FUMFRUSi9WbXdFZEd3RjBXWW03dEZNajE5dWorbURxMS9v?=
 =?utf-8?B?SW83ZFdKUzM0cy9vUHdOQnhSRG1maFo4bXE5VDh0WmUyMTJOdGVhU01KSk9F?=
 =?utf-8?B?VGloY2ROUjNXQlNWRWtGeGNwdXAvTG4zWXB4QjVpQmJiQlYvU210M1lFY3RC?=
 =?utf-8?B?czlMcE9Ncy9wcWtyQU9naTBLbDJwcFJvb3Z3eXI5ZDh3WTVqZnpERGtVcnZD?=
 =?utf-8?B?Z0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F4B025A8173B994F9AD87EABA9B97C2A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6418.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7054e6d4-62fb-410f-6a50-08db66f964b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 01:49:12.5264
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fWLK9yQihSHlXLu1FA6g6A1i2ogAhrtUsRmv6NIr82vIBONVBxY3SqoFLB3aw5gUUo918a4uurDBEe7l9e0odg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5573
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 01:49:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60193

T24gV2VkLCAyMDIzLTA2LTA3IGF0IDA4OjI0ICswNzAwLCBIdXlLIHdyb3RlOg0KPiBIaSBhbGws
DQo+IA0KPiBJIGFtIHdvcmtpbmcgb24gSW50ZWwgSjQxMjUgcGxhdGZvcm0gd2l0aCB0aGVzZSBt
ZXRhIGxheWVyczoNCj4gwqAtIHBva3k6IG1hc3RlciBicmFuY2gNCj4gwqAtIG1ldGEtaW50ZWw6
IG1hc3RlciBicmFuY2gNCj4gwqAtIG1ldGEtYnJvd3NlcjogbWFzdGVyIGJyYW5jaA0KPiANCj4g
MS8gSSBidWlsZCBjaHJvbWl1bSBieSBjaHJvbWl1bS1vem9uZS13YXlsYW5kXzExMS4wLjU1NjMu
MTQ3LmJiDQo+IHJlY2lwZSB3aXRoIGFkZGluZyAidXNlLXZhYXBpIiBhbmQgInByb3ByaWV0YXJ5
LWNvZGVjcyIgdG8NCj4gUEFDS0FHRUNPTkZJIGluIGNocm9taXVtLWduLmluY8KgDQo+IFRoYXQg
Y2hyb21pdW0gZGlkIG5vdCBjYWxsIGludGVsIFZBQVBJIGZ1bmN0aW9ucywgYnV0IEkgc2VlIGl0
DQo+IGxvYWRzwqBpSERfZHJ2X3ZpZGVvLnNvIGF0IHJ1bnRpbWUuDQo+IA0KPiAyLyBUaGVuIEkg
cmVzZWFyY2ggdG8gZmluZCB0aGlzIGxpbmsgYWJvdXQgYXBwbHlpbmcgcGF0Y2hlcyB0bw0KPiBz
dXBwb3J0IFZBQVBJIGluDQo+IGNocm9taXVtwqBodHRwczovL2F1ci5hcmNobGludXgub3JnL3Bh
Y2thZ2VzL2Nocm9taXVtLXdheWxhbmQtdmFhcGkNCj4gwqDCoMKgKyAwMDAxLW96b25lLXdheWxh
bmQtYWRkLVZBLUFQSS1zdXBwb3J0LnBhdGNoDQo+IMKgwqDCoCsgdmFhcGktYWRkLWF2MS1zdXBw
b3J0LnBhdGNoDQo+IMKgwqDCoCsgdXNlLW9hdXRoMi1jbGllbnQtc3dpdGNoZXMtYXMtZGVmYXVs
dC5wYXRjaA0KPiBUaGlzIGNocm9taXVtIGxvYWRzwqBpSERfZHJ2X3ZpZGVvLnNvIGFuZCBjYWxs
cyBJbnRlbCBWQUFQSSBBUElzOw0KPiBob3dldmVyLCBjaHJvbWl1bSByZXBvcnRzIHRoZXNlIGVy
cm9ycyB3aGVuIEkgb3BlbiB0byBwbGF5IGFuIEgyNjQNCj4gdmlkZW8gc28gdGhhdCBIVyBBY2Nl
bGVyYXRpb24gaXMgbm90IHdvcmtpbmfCoA0KPiANCj4gwqBbMTM0MzY6MTM0MzY6MDYwNi8xNTA1
MjguMjYzNTUyOkVSUk9SOnZhYXBpX3dyYXBwZXIuY2MoMjM5OSldDQo+IHZhQ3JlYXRlU3VyZmFj
ZXMgKGltcG9ydCBtb2RlKSBmYWlsZWQsIFZBIGVycm9yOiByZXNvdXJjZSBhbGxvY2F0aW9uDQo+
IGZhaWxlZA0KPiBbMTM0MzY6MTM0MzY6MDYwNi8xNTA1MjguMjYzNzg5OkVSUk9SOnZhYXBpX3Bp
Y3R1cmVfbmF0aXZlX3BpeG1hcF9vem8NCj4gbmUuY2MoNzMpXSBGYWlsZWQgY3JlYXRpbmcgVkFT
dXJmYWNlIGZvciBOYXRpdmVQaXhtYXANCj4gWzEzNDM2OjEzNDM2OjA2MDYvMTUwNTI4LjI2NDg0
MzpFUlJPUjp2YWFwaV93cmFwcGVyLmNjKDIzOTkpXQ0KPiB2YUNyZWF0ZVN1cmZhY2VzIChpbXBv
cnQgbW9kZSkgZmFpbGVkLCBWQSBlcnJvcjogcmVzb3VyY2UgYWxsb2NhdGlvbg0KPiBmYWlsZWQN
Cj4gWzEzNDM2OjEzNDM2OjA2MDYvMTUwNTI4LjI2NTA3MzpFUlJPUjp2YWFwaV9waWN0dXJlX25h
dGl2ZV9waXhtYXBfb3pvDQo+IG5lLmNjKDczKV0gRmFpbGVkIGNyZWF0aW5nIFZBU3VyZmFjZSBm
b3IgTmF0aXZlUGl4bWFwDQo+IFsxMzQzNjoxMzQzNjowNjA2LzE1MDUyOC4yNjUyOTQ6VkVSQk9T
RTE6dmFhcGlfdmlkZW9fZGVjb2RlX2FjY2VsZXJhdA0KPiBvci5jYygxNDIpXSBOb3RpZnlFcnJv
cigpOiBOb3RpZnlpbmcgb2YgZXJyb3IgNA0KDQpUaGlzIGRvZXNuJ3QgbG9vayBsaWtlIGNvbXBs
ZXRlIGVycm9yIGxvZy4gQSBjb21wbGV0ZSBsb2cgd291bGQgaGF2ZQ0KaGVscGVkLg0KDQo+IA0K
PiBTbyBmYXIsIEkgY291bGQgbm90IGZpbmQgYSBzb2x1dGlvbiB0byBmaXggY2hyb21pdW0gZXJy
b3JzIGFuZCBJIGFtDQo+IG5ldyB0byBjaHJvbWl1bSzCoGludGVsIHZhYXBpLCBsaWJ2YSBkZWJ1
Z2dpbmcuDQo+IA0KPiBQbGVhc2Ugc3VwcG9ydCBob3cgdG8gZGVidWcgdGhlIGVycm9ycyB0aGVy
ZSBvciBndWlkYW5jZSBvbiBob3cgdG8NCj4gb2ZmaWNpYWxseSBidWlsZCBjaHJvbWl1bSB3aXRo
IGludGVsIFZBQVBJIHN1cHBvcnQgaW4gWW9jdG8/DQoNClRoaXMgZG9lc24ndCBzZWVtIHRvIGJl
IFlvY3RvIHJlbGF0ZWQuIFRoaXMgbG9va3MgdmVyeSBzaW1pbGFyIHNvDQpwbGVhc2UgdHJ5IHRo
ZSBzdWdnZXN0aW9ucyBoZXJlOg0KDQpodHRwczovL2dpdGh1Yi5jb20vaW50ZWwvbWVkaWEtZHJp
dmVyL2lzc3Vlcy8xNDk4DQoNClRoYW5rcywNCg0KQW51ag0K

