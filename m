Return-Path: <jay.shen.teoh@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20AA1C433EF
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 02:42:00 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web10.6413.1647312117545741588
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 19:41:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=Z5HoN850;
 spf=pass (domain: intel.com, ip: 134.134.136.24,
 mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647312118; x=1678848118;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=2q5nuOVyF1z/WIOyztfhyk6lv6c4TejP7USzSmknk34=;
  b=Z5HoN850ctKhRwV5NRJesPT8DFisqnTSDERvav71uzXK6qduyEv5EEBd
   nhtRYS7326jCHj3LIJsQKcTRybbbK3rPG25wUenJxQRqzabCi/X5JApm9
   I9ZsEt7x57aWZ0vwefhEHd1PhMGR9oM2+RG2MpYh9jiI5cRGQl6SIsvGK
   x08aA2kVxT+sQY0jz5h32zWLqtlohSrh0enkjocverVG081qlaG9CzR+c
   ddYN7A2DKxZ3G6pIpz5+PcQjVhGvRiMOs7354EfKNb30uwt7TC0Bp2YWL
   MQXFgHKUTYc9BbWeG1hElyT6wcOZw74lulggeZWtiBnf1zMtaXZNXA2Rr
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255924060"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400";
   d="scan'208";a="255924060"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 19:41:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400";
   d="scan'208";a="556721055"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by orsmga008.jf.intel.com with ESMTP; 14 Mar 2022 19:41:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 14 Mar 2022 19:41:56 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 14 Mar 2022 19:41:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 14 Mar 2022 19:41:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 14 Mar 2022 19:41:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=avNztiJNZxhEreyoRBCiX7AyKakOG+u9NGcClpv9ozXervq91btKh/zz5LvUkoCz6vfE/OT2StQR8klCGpgWso8BjjJOxsaC9+lR0NNu85N+ng34bRdzVXqqOJ0s07CwbsEwWVQJ3BKr2c56M05/CoM3BPP5jEkT/YD53wKHF6aLjT3Nh9GINoa8dFgPHwcFBI5sNeMi8fLuyYPTwR8JesQK2ddreRg7oLpz24z8pNuWjf/oTgFjiYIlXKgstULWrBQW7bKE5lj42E6e0JvW9TQU+XP4vMzc5VTAaRSxAi5Nx/1ovZgcbGQZ7GiRFlh5zXwSSBisGG5yHr+1cNcieA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2q5nuOVyF1z/WIOyztfhyk6lv6c4TejP7USzSmknk34=;
 b=fdCJF92SgQHGsoW6S5HNmRssI0mDNa2TaeeSxpyY6cSEkBcT6PuI05qHged9Ue0sTSSfYgnjlwB9nh9MO1ahKW/ng7b3dv5pMyVfREppq/8/DM1rN/kO+pI8/ahtLHVABaZ/2QVGn0cS4TJeGhqeJTCIty+WDFfDk5YlDX6H/TPDp1aPS+i43dPoxdS2XFLc6IVc8baXKp1OtGTLQ32jNYROiCKTI6rds0BdTpJwIYmdWbmrUcjyvSmYd6f4XV3ggEHTuQLAV+fE8yg3J9M4i/TwStYvQ0soE8NostEVQ3co0kOb8yr8+sYS/sDgtr6X5qEjO+RVl6WKKxS6WqBJag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2348.namprd11.prod.outlook.com (2603:10b6:3:a8::16)
 by CO6PR11MB5601.namprd11.prod.outlook.com (2603:10b6:303:13d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.21; Tue, 15 Mar
 2022 02:41:50 +0000
Received: from DM5PR1101MB2348.namprd11.prod.outlook.com
 ([fe80::3caa:2b5d:2d52:8643]) by DM5PR1101MB2348.namprd11.prod.outlook.com
 ([fe80::3caa:2b5d:2d52:8643%4]) with mapi id 15.20.5061.028; Tue, 15 Mar 2022
 02:41:49 +0000
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
CC: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Subject: RE: [yocto] QA notification for completed autobuilder build
 (yocto-3.1.15.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1.15.rc1)
Thread-Index: AQHYN/K2V624Fp+VLk6oPBA9NtqYL6y/uX4g
Date: Tue, 15 Mar 2022 02:41:49 +0000
Message-ID: 
 <DM5PR1101MB234893C14273072259D32723BB109@DM5PR1101MB2348.namprd11.prod.outlook.com>
References: 
 <8b4cbc719143fafed13c8a3ba6704510d3fa4e4a.camel@linuxfoundation.org>
In-Reply-To: 
 <8b4cbc719143fafed13c8a3ba6704510d3fa4e4a.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c7800c3-8b0c-4ce0-c60c-08da062d5aca
x-ms-traffictypediagnostic: CO6PR11MB5601:EE_
x-microsoft-antispam-prvs: 
 <CO6PR11MB560156B2094E55EEE020D667BB109@CO6PR11MB5601.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /TRs4+GDt9uIKuzNGashmjbjvkbSTaXqLNhgY1VWvq2nk+XghQHht65MwniPIL88n5QzCH70Shy5XEPPlHOTi/Mk6D9J4PXFiP55nhcSCMDLnLqDb20OmrBQZYe2s9IPmJfEEQLOcaCbVuQFfLPVM+qUi4LMSfGQTik1BVNnksf+YIv3IScBlMLrD1SF2AXgA0+a81B3+3GIXlXJFd7AdI3W9UFIIZGIdee9I7zdeudFmSUXDqi4k3YELFlsC0j7Qa9Ys+AGHSmYJEiRca3maR7AGbCfgCW1d5XeHY7/JOuRvN/hU1YYG5hQKlW4e8HW3S97PlbQ4nbOUUUXadhPjm6vlGzhhoRS2/bpFuhVscnOaFHSGd7rTkzm2WJMKM15ym7ZcHaz84Lx9nhVwXExmuLFZtEIwgXIImeE0ZqnGtrj1N4zN0tD8S0Swo0B2zekxXNNhb/yBaq94GpvxPkL6XCDwuDye8h1m3kRAz3uAuk8QBz89nOgxBcen1gH3s+O95eF2sVGXcK8kf08IimOX/5ZED/tNmD6eFYWDvER2EFgy7PbQwovNl5eGGOKcj3NAMZXK4I1pPztBIRUN6hwu6GhPgl5olUUj6EhRAeMVjrIcBul/pOKrmuz0X/WprTok9spiIFs3+TcmJBgnKRgNVaI/1wQlAdDOAbm5VddOs0ClvglHUq6PPS6tU+goldiW9aLKhFZ+yhiaG2gr7AmQGEs9VQEivXGgNurLqrnbTE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2348.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(53546011)(55236004)(83380400001)(6506007)(7696005)(316002)(9686003)(2906002)(186003)(71200400001)(26005)(66476007)(5660300002)(82960400001)(64756008)(8676002)(86362001)(66946007)(76116006)(52536014)(66446008)(66556008)(38100700002)(8936002)(33656002)(38070700005)(4326008)(15650500001)(508600001)(122000001)(110136005)(55016003)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?YkQyY1RFYUNzbXl6cCsyMFNFc3J5cU9aYllwRXUzQlp4bEg1UWVzWVVJUzBC?=
 =?utf-8?B?OW5zUUJIMzhQYnZybnFDNnBSU0JkcmI2YzIwRTRsTGxCVmMxcUduSVlBbXVz?=
 =?utf-8?B?UFNhT0diS2VEcWt4SFBOZlp1d1NuUUJvUWgyaTlwRUhSVWg1RzBzeDJZUFNV?=
 =?utf-8?B?NTcvT0lUbE9kUjkvREZhSVdDVGJpSTFFdndycEZsUVdyUzgvWmZJeHpWRWZG?=
 =?utf-8?B?UThwalUxajNuc3h0dWltd28xVXFqdlg0aFJ2VUtoUDNqc0Z5bTFtZGx1QmY5?=
 =?utf-8?B?aWFBYjJ1OGlEV2N4R3VSaHhNdzB4WHhsVDYyRXNUSXFvdHhaZXdkYi85aitW?=
 =?utf-8?B?WWJLTDhTTFpzaFhraVgxUVQrOURkd3NVeGJKc2NGb3Fmd3c0YnBRa3JhWGZL?=
 =?utf-8?B?SE9LaXJMM1B3WUpQY1VFekxJV1F3TnZObG1oN2RtSHVaamZhV0N5VUxFaytX?=
 =?utf-8?B?UzVEZUZXZEpjL0JiVW9MSFRneVBnT3p1dHR3My9RNjk0ZElGa1p0eEE5MzRs?=
 =?utf-8?B?WEFWb0p6ZmpzVGE1T2xUQ2RkR0lVQmxGb0pUWWFNSjI1cXRKaVd4a0NodS85?=
 =?utf-8?B?QW8wZmkyRmlBK2YwUmtwUEdGbHdsQVhZUWFsZEhpTGVORDZWdTRUTXBJMGd5?=
 =?utf-8?B?ZnhHTGdrTmJaazBUcWUzL3ZjVG5JTTFYUUhDb0RpQ1lKeE5KSnNhTS9Sd3N0?=
 =?utf-8?B?dWhlS3RBQ0JhWmVjTXB5NXJCY0ZpU0tFVWJTb1NoTlA2blc3NkRrTjZSSmp1?=
 =?utf-8?B?T0hQTHlwcWd4SVhsNWZGaEIvaGlmV25XTWNxRkJneDlFMWlQQjRvU2xOTUp6?=
 =?utf-8?B?T1Nscnd0RG9zMWhVSEpSZ1hYYXBpcHVFbmR2emFUaUJTcHRzWFhNRVd0R2RQ?=
 =?utf-8?B?QXpLUXI5dEMrb1ptdTQvR0UxSE1pMWN5eVZBa1RMbnhTWG1GM0lJWGdUSWhT?=
 =?utf-8?B?ZFk1ZHYxTmlhNzB4TFJ3eWxuSXVNMmk1U2Z3RnlHdk9JcFIvYUlrdVVPT2pZ?=
 =?utf-8?B?elhFZUFjaDdyWmV5dnhydHFWeXY1ZUp3MGY0RUxGQUlBM2JmdE83cmpmVFFv?=
 =?utf-8?B?WmozbitLV25LeUVwbjJEd1IzQjBJL0I0YW84NkJ6cFlOTFpiejEyOSs1a09H?=
 =?utf-8?B?OEdmMUw3NFV2ZDRacUNNYmM5Y3FqWEtPK2VMNXdnVlo2M3R5bTdPcnVvRith?=
 =?utf-8?B?N3FhMDROZ1IzdlJ3TmsyTEhCU1RoNUswa2FGTzhDUVg1SUFNdHhtcWdBTCts?=
 =?utf-8?B?MXlVSG84SlJMV0E1QzVIT2dKRy8rRFRVTVVPYzFwelYzYU8xQXR2emo1VXlO?=
 =?utf-8?B?dFliQXU3QkdlL2NsLzgrYWdPOGsrVE1rd0s4Nkh0L3BTTW9qNHZWbTdDT0VN?=
 =?utf-8?B?dkV4Z2h5am9jdjFnbWNqOUVzamJRMkJvaHEyZ2ZkUWpHZU5EVlR6dGtXczJm?=
 =?utf-8?B?NldUK0Q5TzgwQXlaNGlHZWNUV3VLd0hlaXIwQTlYYk5OcEI2RDg4dU5kQXE3?=
 =?utf-8?B?alBSTzJOM215S2FHM3pKT1ZhUXdoMWJTUGZRcXpwWUxkYS8veHdHS0lJNzhP?=
 =?utf-8?B?WUlkNWdXekYydlBlMi9WWGxSQWptYjZGY01IZlFMZWhIUTZ3S0h6Y0hRU3J0?=
 =?utf-8?B?RmJpSXhrUnlKdElJVFNuM1BkQVBjOCtWdWRFUVdFaFdUcGh4UVEzRDQ2ZVU3?=
 =?utf-8?B?dEZvSEw5UHdNSmJ1RHAzMGM0R2pYdXFyN2FHeE1QWFkvZDM3Mm1wZHRvTHV5?=
 =?utf-8?B?M3NRd09CeTlhUG1PbmhwWE1nUzBvU0dVbHVDWHd6cTBlRW1vd3RkYjQ0blF0?=
 =?utf-8?B?Rjd5cGR6ck5xblE5ZDFyYzBNc3FUa2ZQMW9ZS1dMRHFrU1VmMWZmWTFkMzQz?=
 =?utf-8?B?T201K1cydnFEOEo3T0ZkZUM2R0ZjYkV5bS9zMEdrRW1PbmVUWm9lQ2hEOS96?=
 =?utf-8?Q?SoriYP2IH0FfQ9I1ZktTR7tmvJNdUaZ+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7c7800c3-8b0c-4ce0-c60c-08da062d5aca
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2022 02:41:49.1786
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 K+kVJ4JO4c+e+ixqw87oUmVHvwf9Wh3S2lwft7ZPyCcdYejqsxTToSetDNNI2cRDxAqfmGSu6uyifpD9jJG3Uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5601
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 02:42:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56437

SGkgYWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgcGxhbm5pbmcgZm9yIFFBIGV4ZWN1dGlv
biBmb3IgWVAgYnVpbGQgeW9jdG8tMy4xLjE1LnJjMS4gV2UgYXJlIHBsYW5uaW5nIHRvIGV4ZWN1
dGUgZm9sbG93aW5nIHRlc3RzIGZvciB0aGlzIGN5Y2xlOg0KDQpPRVFBLW1hbnVhbCB0ZXN0cyBm
b3IgZm9sbG93aW5nIG1vZHVsZToNCjEuIE9FLUNvcmUNCjIuIEJTUC1odw0KDQpSdW50aW1lIGF1
dG8gdGVzdCBmb3IgZm9sbG93aW5nIHBsYXRmb3JtczoNCjEuIE1pbm5vd1R1cmJvdCAzMi1iaXQN
CjIuIENvZmZlZSBMYWtlDQozLiBOVUMgNw0KNC4gTlVDIDYNCjUuIEVkZ2Vyb3V0ZXINCjYuIEJl
YWdsZWJvbmUNCg0KRVRBIGZvciBjb21wbGV0aW9uIHRoaXMgRnJpZGF5LCBNYXJjaCAxOC4NCg0K
VGhhbmtzLA0KSmF5DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
T24gQmVoYWxmDQo+IE9mIFJpY2hhcmQgUHVyZGllDQo+IFNlbnQ6IFR1ZXNkYXksIDE1IE1hcmNo
LCAyMDIyIDY6MjcgQU0NCj4gVG86IDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiA8eW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4NCj4gQ2M6IHFhLWJ1aWxkLW5vdGlmaWNhdGlvbiA8
cWEtYnVpbGQtbm90aWZpY2F0aW9uQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+DQo+IFN1YmplY3Q6
IFt5b2N0b10gUUEgbm90aWZpY2F0aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxkZXIgYnVpbGQg
KHlvY3RvLQ0KPiAzLjEuMTUucmMxKQ0KPiANCj4gQSBidWlsZCBmbGFnZ2VkIGZvciBRQSAoeW9j
dG8tMy4xLjE1LnJjMSkgd2FzIGNvbXBsZXRlZCBvbiB0aGUgYXV0b2J1aWxkZXINCj4gYW5kIGlz
IGF2YWlsYWJsZSBhdDoNCj4gDQo+IA0KPiAgICAgL3Nydi9hdXRvYnVpbGRlci9hdXRvYnVpbGRl
ci55b2N0by5pby9wdWIvcmVsZWFzZXMveW9jdG8tMy4xLjE1LnJjMQ0KPiANCj4gDQo+IEJ1aWxk
IGhhc2ggaW5mb3JtYXRpb246DQo+IA0KPiBiaXRiYWtlOiBkMjJjYzFlNTg3YzY1MGZkNWY5MGNk
YTMyZjU3MjBmOGEzMTA1YWFjDQo+IG1ldGEtYWdsOiA5ZGY3YTQwZGQwYjVlM2VlMWVkNzJlNDYw
ZGM5OTE5M2VlYjRiZDZjDQo+IG1ldGEtYXJtOiBkMjFkZWQwODJjMjc5NTljOGQ2MTdmZDE4ZGE2
MGIyMzZkMmVjNjJiDQo+IG1ldGEtYXdzOiA5OTc5Y2ZhNjc2MTA1Y2I2OGNmYWRmZGFlYWJmMDQ0
ZDdjOTE5MzE5DQo+IG1ldGEtZ3BsdjI6IDYwYjI1MWMyNWJhODdlOTQ2YTBjYTRjZGM4ZDE3YjFj
YjA5MjkyYWMNCj4gbWV0YS1pbnRlbDogODc4MWY4MzUyZTY3ODE0ZGI3YTI2NzA4NDM3ZmQwODIw
NTI0ZDNkOA0KPiBtZXRhLW1pbmd3OiA1MjRkZTY4NjIwNWI1ZDY3MzY2NjFkNDUzMmY1Zjk4ZmVl
ODU4OWI3DQo+IG1ldGEtb3BlbmVtYmVkZGVkOiAwNzIyZmY2ZjAyMWRmOTE1NDJiNWVmYTFmZjVi
NWY2MjY5ZjY2YWRkDQo+IG9lY29yZTogODkwNmFhOWVjMGE4MGIwZjg5OThmYjc5M2Y0ZTk0OTFi
MzE3OTE3OQ0KPiBwb2t5OiBiNDFkNGU0NmQzMGVkMzJlMTFkNjg0NjY3MjFhMGY0MDU2YmFkNzAw
DQo+IA0KPiANCj4gDQo+IFRoaXMgaXMgYW4gYXV0b21hdGVkIG1lc3NhZ2UgZnJvbSB0aGUgWW9j
dG8gUHJvamVjdCBBdXRvYnVpbGRlcg0KPiBHaXQ6IGdpdDovL2dpdC55b2N0b3Byb2plY3Qub3Jn
L3lvY3RvLWF1dG9idWlsZGVyMg0KPiBFbWFpbDogcmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZw0KPiANCj4gDQoNCg==

