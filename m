Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC7F7C3DA7D
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 00:34:30 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web10.170736.1672187666279324315
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Dec 2022 16:34:28 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=L8Ynf9T9;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1672187668; x=1703723668;
  h=from:to:subject:date:message-id:mime-version;
  bh=GwSihKZxH/XiF5Jr/0UHi8omZuqNMLQFHSjaLu56cP0=;
  b=L8Ynf9T9kZVbV8OouD5asx1iYQZ7DQkvGMIFR4B6vbbvKEEZzgsucJOn
   3fHT6MGQMtnO/fEYZjYppSbSEjzIHOf0X5s4pexllFJCanI37WNuXxPAz
   QwlLlnqYWj9SyDQ9Q2AvefiijFoD/QvaL2ObvWwpOpYDrjRLIRJB55dUF
   kLcnZRzTh0Xa9SaI1CMunNb6e367WvYCoZ1UQXlMxy9CubG6B6nHlLFM/
   /odrJNjqk0HR6JF5vZrAN8u3y2Kjm7ajQLnWp/1Y/zNy26WAvUQk3i/TR
   7K3grJJ2hNR6scfz1CGlYtLQOPASd3IJkBXgl+ckQSyc+kCtNNERJmR4v
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="322015861"
X-IronPort-AV: E=Sophos;i="5.96,279,1665471600"; 
   d="scan'208,217";a="322015861"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Dec 2022 16:34:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="653167535"
X-IronPort-AV: E=Sophos;i="5.96,279,1665471600"; 
   d="scan'208,217";a="653167535"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga002.jf.intel.com with ESMTP; 27 Dec 2022 16:34:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 27 Dec 2022 16:34:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 27 Dec 2022 16:34:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 27 Dec 2022 16:34:17 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 27 Dec 2022 16:34:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nh8vzq8MvET1qjgO3ZdMWtiZIfcpXZVnNkTsyGbnLg5/XCwaWwz6Bm+0fJgzlkeK+7TIa7UPko+t5Lj5fq1IycMAcYiZ5noEn61lPEkoV1LJMky3hb2biEhK+Wkm4xMeKrYdlCPUAytf5gqQfrWhAwoJTIZk2DLwuUuZXbxy68PQPFH6KqSw8A5JI2QIfjLKU8HyTjlkTfPm6B1b51B0jk/r8wy3F1VUVBQFcOns1QH+azpZEhUOUuonqAReIR9tVQcEwJHZdxZLP4wI+JLYDkYnQtNaVaRnxfTtEoARyLNUbW/dQaBEyKX5sdlLg3X5XVCrG4/Jq6kQHEnTB/qPEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GwSihKZxH/XiF5Jr/0UHi8omZuqNMLQFHSjaLu56cP0=;
 b=DsK7389qV/wQUIol4cbHiG7w+EPkiYG0llcd25zz3gb6kAviv+unyuRs9L6RnZrPNkIwQ5fno7JlNUxPAF32OYT/30y9aMqtncT/HsWYql2HGJDLh8g8j4we7thiAPCCUgkVdktcHaPND7QQLZPdAJdDq7Nay3hxNYHeHJ1sImWifvCGwvZyyNc70fmVlvfr0lJPapxgu0i6tveLAlWUzmK88VS1piqhboS2SV/CnLX7j88Jf1P/bYJsfhhMBhFmtBDf3g408TPD+YemNpLbTlQWq2gMcw27TsvaSFzvkwbwNpK6ui9aU1kqkhpgN7C7kY9Ts1o1EWW9dnnAtTm/qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by PH8PR11MB6829.namprd11.prod.outlook.com (2603:10b6:510:22f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.25; Wed, 28 Dec
 2022 00:34:14 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::57d8:134d:1254:d138]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::57d8:134d:1254:d138%8]) with mapi id 15.20.5944.016; Wed, 28 Dec 2022
 00:34:14 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 4.2 (yocto-4.2_M1)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 4.2 (yocto-4.2_M1)
  Now Available
Thread-Index: AdkUGywHGoGnLBGZRXKlsi9IwVtpOA==
Date: Wed, 28 Dec 2022 00:34:14 +0000
Message-ID: <DM5PR1101MB23612E8A2F720FC24B71A890B9F29@DM5PR1101MB2361.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1101MB2361:EE_|PH8PR11MB6829:EE_
x-ms-office365-filtering-correlation-id: 3b185f63-5ec5-4822-157f-08dae86b3f36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qwSrhIjZPsbE9xJ8/0Frb5ognW+PoCklB+GT13WBSw70WAP+0staIrtxb2bDUcj4hwziEzbG288HJiaJE1XhyQwicFfueYXLaPuNHZ9hXC5r46BdHxeQaj3krm2ydCKy98ZmzLWTz1xLLNULZH1TDF4+BQtoZE6ycmxc8QrCXVK9alliintgwvUpyByfSI9bDroKFGlcpHoeLVzsPeGEZxBC0wN2ei/EgzQltqsSABeDicMcr6HvPkW0PWYWEToQtNrF/U9ItDKSdE1beUJq0/kjkEieH4A6Yd+PB6YRLeunplBJhDNJSo2gMPIL8xHO3JFYHs6XzumLetC9uBIMKYTd2E+f5ZzmwzPaGDlD3nj7T7whzxCHVA2Ig044SK408cKIo+9DOvyj8W6XdCQNxDNvZLDkfIDN+pJYPqg9oxxkAJt4Q38jNXJu7bclVLwKNOxiEY/Efb4F3miHd08rAegQYVFM5fPcfqdv3LER7vPEOpH0i41ke6ceMPbga3Z3Quc0HKUnhoQqlIFLWyQrIIigoUFpdRgdQ9wmYYTbdWvhPjoqK+0nWKZGwz0MK9GNAVLK+zx3OteI1iLlE6Su/M7Vo9N85KIuH2Fs/ASo+C5zka05IlTNt9k2N9uZzxntcXkvmF7VPTC0/VJcRl8hG/XGsleEuYdxwvTBYyK5pQH0E3HC1cSNm1pyaQ5zErZAzAhAdx8WbH+wq9kUzWmVMMBIRlO+k6oKhduCQpwcBpa9/NLRqsBxr1+P/VjvsRLSjm7xt47oPv3ndyYw1kYUzw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(136003)(376002)(396003)(39860400002)(346002)(451199015)(110136005)(33656002)(83380400001)(4744005)(316002)(2906002)(38070700005)(6506007)(478600001)(82960400001)(9686003)(38100700002)(966005)(122000001)(186003)(7696005)(71200400001)(66556008)(76116006)(9326002)(66946007)(41300700001)(8936002)(55016003)(66446008)(64756008)(8676002)(86362001)(66476007)(450100002)(52536014)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUJYeWhyaFcyK24vd1kzRnFadVN5MHlIRXU1NGljcFBvUndpODg4ekhmWG9J?=
 =?utf-8?B?d3J6V29qUE9LV3ZNZS9YQ20rRjNiVGNBbmdRWEFTbThJYWE4VVpGQldKd3hV?=
 =?utf-8?B?TWRFak1oYnNSeWRVODY1UTE0MHF0TXFVNkltS1JoWVYxQkpSQW0vVXNhRGNN?=
 =?utf-8?B?MXJlL0YxRUlZcXBTUGJZYnlSVWNaV2FSUUZSOUR6S09ReTh4MEIyQTNSN0lL?=
 =?utf-8?B?bjM5cXk0M2IyR2N0MjhONHJ1K3FOSmw5Qmo2a0hYaFJUV094RGxCUlhudWNS?=
 =?utf-8?B?R0RZS1RtYXIrdUpRMDhJTmVGSXY0bytleU9QS0hJUDdwMHFReW5JMklVMWhq?=
 =?utf-8?B?aXJhTGdFM1NxandKamdYY3JLU042ZnA5M2Z1R0M5NmY5ZXRsSWNkVFIrWTdJ?=
 =?utf-8?B?Vjc2akdEMFBUNEdNWWFBU1cwdHJ2WTRNTmFHS3k1Zm4xeDFrWnZuZDJ1REo5?=
 =?utf-8?B?VHpvaytZMCtUNXJTYkVoU1B3Y00wbXpkRFcvc1BVS0gxeldwSGUzSXhZVzly?=
 =?utf-8?B?dnBqMXZFQ3lNQlBmZjBTQ1dJeUoySndWL1ZMa1FVSjJyMzFKTGxqNFFrUmVQ?=
 =?utf-8?B?bDJVSklyN0JnUHZPMk9OKzJCRVFVbG5zZmkzV2JXaTNpemtlUTdhMEdrM0V4?=
 =?utf-8?B?VmdVbkduMDF6cGh3eGFOdjJ6ZWRSZ25EcW1wRnB0M096d0V5MTdpSCs1S3V5?=
 =?utf-8?B?T3Y5eVQ2K1RwcDhpbEFOTWJveE14YzBhSWQ2RENnNkdkT0kyWmhqN2d2VEo3?=
 =?utf-8?B?dUI5aENpZVEya3VIT2lZejlUNEJ5QWFaT2xPTVVjNHJnWmZuc1dHTmp2SDlW?=
 =?utf-8?B?Tm9SNmF2K1VTUDZiV3hmUWQ4QmxxMW1vZlhyS056TEx5eDBSL3E3UmNyZExP?=
 =?utf-8?B?eERiSnk3c0pML2xUUVlqMUYwNi91L05Kc0VGTU1RR05iTWZNcTQ3Si9zaEdV?=
 =?utf-8?B?K0Y5NVFqTTZQa05RWXVPajduZGxuRmFKN0tiVkdEbEJOL0dSeEhFM1hVa2cy?=
 =?utf-8?B?KzVJekdyME1YdnFxN0NSc3pETnJtRmU3RUVvVitnb0diZDhVM3lRTHIveWR1?=
 =?utf-8?B?a3BnYW5kN2pINXlQdkNuVytMTHBsZHYxTTJ5dCtWb1haOXE0SmFvZmJPTFNo?=
 =?utf-8?B?TGNkZzRPODA5dDhlZU0zNWlYWWpFbGhGQThtN3J6WmZlbTNSOEh3ZVJlenBG?=
 =?utf-8?B?NmxpSlMwYUcxSXkvRFBJSExtQmJYRHBsQlRCSnZHU0hxWDJVR0pCNlJsa2hL?=
 =?utf-8?B?NUl4SzBQOFNRaWFCa1daUDVrejFrN2RiYjJlVWtnRXl2YW13SXI1Rjdncmdp?=
 =?utf-8?B?YlNDd1NCdTJIeVhkUUEyUUZVa21Yd0NpTEZMc29ocjhaNkloM1JCSFlzSndo?=
 =?utf-8?B?SHFXN3RoUjFDRERRL29PTnpxbEZSOTJkdFlGc0MzMW9ETjRUa3Fsa2RDaXdD?=
 =?utf-8?B?aFhYZUV2bVNCSFc1QVhoOFpWcDQrRHB0R21ORkpsU0s0eFJKOS9yS01UTFJz?=
 =?utf-8?B?Ynl1RTFNNjRnZkFrR2l3RGFiemY5YmJSV0k5aEh2SnpGT01PU0djejNMN0xz?=
 =?utf-8?B?NUpoRFlxaDEyWWVwWGtQTzJVL203aEtJWEkreCtXMTFaN3ZhaHNWTzU4Ykdx?=
 =?utf-8?B?M01jTEpCYSsrM1RaMEplZE8vUDNteUJ4bVFTbHF5bUhibndGRHY4Q05tdURj?=
 =?utf-8?B?cE5rVzFpV0NvQnB2VXNHVGk0Y0FXOUZnOFBHc29BM2dNWkE1YmdXeTBEVTRF?=
 =?utf-8?B?b2hwRC9OdUJ0NGZLN3JWZ0pWSXRIWEwxSit5b21QVTdNQTlBSEllTWhPTFJq?=
 =?utf-8?B?cVp0TU5IV2FVY2xFUGczbXNFUXBoNTJMVlQ0cVoyMFFnYjI0S0VLbDJSRm14?=
 =?utf-8?B?Y1pTcGhocW9TMmdCaWRFRFpSMGZQcXRJT3VTb2Z1Z2RvRXUrSVBlb0FOYkRH?=
 =?utf-8?B?WXJ6ZCs0YzZLUlVpTmJiL2J4dFJPcWgzYjdpTUJFZlA1WXMrL1BCck9lbDNB?=
 =?utf-8?B?QXI2S1Z6bzM1T1lQUUFVTkhYamtoN2VjUldmYjNuNWF3WWsyS3orai9BMzFV?=
 =?utf-8?B?eHVubExEL3pGZ1FZMXZzQmJyWGd3WnExbnp6Y1UvRFhTTmh1empwYzcyRDNp?=
 =?utf-8?B?bWR4RHpoOENYcksxY2kzeEFGdXFya2FnVnRFK0tsM0pLRkhDb1I4bCtickth?=
 =?utf-8?Q?JAlRtcDbrBOcuW0ayusX2RCmwQTZokDddXfV7zJJY5ZU?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB23612E8A2F720FC24B71A890B9F29DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b185f63-5ec5-4822-157f-08dae86b3f36
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2022 00:34:14.5531
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ln282GCVHK3Bwxfbkb5YJVjag/JSriHpP6B0EAiQ7rxKBSWG//RYf9WU/7xMQD3Yg8zkYrjSUAEMMfw8K22Veg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6829
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 00:34:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58877

--_000_DM5PR1101MB23612E8A2F720FC24B71A890B9F29DM5PR1101MB2361_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCldlIGFyZSBwbGVhc2VkIHRvIGFubm91bmNlIHRoZSBmaXJzdCBtaWxlc3RvbmUgcmVs
ZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA0LjIgKHlvY3RvLTQuMl9NMSkgaXMgbm93IGF2YWlsYWJs
ZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJv
amVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjJfTTENCg0KYml0YmFr
ZTogNjcwOWFlZGNjYmIyZTdkZGJiMWIyZTdlNDg5MzQ4MWE3YjUzNjQzNg0KbWV0YS1hZ2w6IGUy
YzMxZWJkYTIyNGJmNjgxM2ZmODYxZGY5YTUxZThmYzQ2OTQ0ZTUNCm1ldGEtYXJtOiAwMmI0MzBk
MDQ1YjUwZDVlNWNhYjlhNTJiNzg2ZDExMzRiYTE3YzE5DQptZXRhLWF3czogZGEzNmJmOGJjM2Y1
YTFjYmI5Mzk2ZThkMjg1NTljNDIyY2Q5NjQxMg0KbWV0YS1pbnRlbDogZGU1OWQ0OGFkMmNlODhl
YmUzMzFhODM1NWU3NDJmY2U3YzNiNDI4Yw0KbWV0YS1taW5ndzogNGEwNjY1MTFhOTQ0ZWM5NDZl
ZmE3YTQ1NzEwMjljOTkyY2YwYWUwMA0KbWV0YS1vcGVuZW1iZWRkZWQ6IDhjNThmNDE5YzI5OWZl
Mzc2NDQ4MmViZTRmMzY2ZTI1NTMzZWEyM2YNCm1ldGEtdmlydHVhbGl6YXRpb246IGNiNWRmZGE2
ZjZkODYyYTU3NWYwMjllZThkZWQwYmMzZGI2YmM3NjYNCm9lY29yZTogOTZmZjliYWE4ZWFkNTc1
MDRmNDBmMzYyZWQzYTRhYWE3NzZkMWI1OA0KcG9reTogNGQxOTU5NGI4YmRhY2RlNmQ4MDlkM2Yy
YTI1Y2ZmN2M1YTQyMjk1ZQ0KDQpGdWxsIFRlc3QgUmVwb3J0Og0KDQpodHRwOi8vZG93bmxvYWRz
LnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjJfTTEv
dGVzdHJlcG9ydC50eHQNCg0KVGhhbmsgeW91Lg0KDQpDaGVlIFlhbmcNCmNoZWUueWFuZy5sZWVA
aW50ZWwuY29tDQpZb2N0byBQcm9qZWN0IEJ1aWxkIGFuZCBSZWxlYXNlDQo=

--_000_DM5PR1101MB23612E8A2F720FC24B71A890B9F29DM5PR1101MB2361_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5Ouetiee6vzsNCglwYW5vc2UtMToyIDEgNiAwIDMgMSAxIDEgMSAx
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUg
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJcQOetiee6vyI7DQoJ
cGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0K
cC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0K
CWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0K
c3Bhbi5FbWFpbFN0eWxlMTgNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglm
b250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5N
c29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZTox
MC4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBhZ2UgV29yZFNl
Y3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3Mi4wcHQgOTAuMHB0IDcy
LjBwdCA5MC4wcHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQot
LT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4
dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3Rl
IG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpl
eHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+
DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1NWSIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRG
NzIiIHN0eWxlPSJ3b3JkLXdyYXA6YnJlYWstd29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlv
bjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGksPGJyPg0KPGJyPg0KPG86cD48L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5XZSBhcmUgcGxlYXNlZCB0byBhbm5vdW5jZSB0aGUgZmly
c3QgbWlsZXN0b25lIHJlbGVhc2UgZm9yIFlvY3RvIFByb2plY3QgNC4yICh5b2N0by00LjJfTTEp
IGlzIG5vdyBhdmFpbGFibGUgZm9yIGRvd25sb2FkLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5E
b3dubG9hZDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+aHR0cDovL2Rvd25sb2Fkcy55b2N0b3By
b2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4yX00xPG86cD48L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPmJpdGJha2U6IDY3MDlhZWRjY2JiMmU3ZGRiYjFiMmU3ZTQ4OTM0ODFh
N2I1MzY0MzY8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtYWdsOiBl
MmMzMWViZGEyMjRiZjY4MTNmZjg2MWRmOWE1MWU4ZmM0Njk0NGU1PG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWFybTogMDJiNDMwZDA0NWI1MGQ1ZTVjYWI5YTUyYjc4
NmQxMTM0YmExN2MxOTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1h
d3M6IGRhMzZiZjhiYzNmNWExY2JiOTM5NmU4ZDI4NTU5YzQyMmNkOTY0MTI8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtaW50ZWw6IGRlNTlkNDhhZDJjZTg4ZWJlMzMx
YTgzNTVlNzQyZmNlN2MzYjQyOGM8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
Pm1ldGEtbWluZ3c6IDRhMDY2NTExYTk0NGVjOTQ2ZWZhN2E0NTcxMDI5Yzk5MmNmMGFlMDA8bzpw
PjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtb3BlbmVtYmVkZGVkOiA4YzU4
ZjQxOWMyOTlmZTM3NjQ0ODJlYmU0ZjM2NmUyNTUzM2VhMjNmPG86cD48L286cD48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5tZXRhLXZpcnR1YWxpemF0aW9uOiBjYjVkZmRhNmY2ZDg2MmE1NzVm
MDI5ZWU4ZGVkMGJjM2RiNmJjNzY2PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij5vZWNvcmU6IDk2ZmY5YmFhOGVhZDU3NTA0ZjQwZjM2MmVkM2E0YWFhNzc2ZDFiNTg8bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPnBva3k6IDRkMTk1OTRiOGJkYWNkZTZkODA5
ZDNmMmEyNWNmZjdjNWE0MjI5NWU8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RnVsbCBUZXN0IFJl
cG9ydDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+aHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2pl
Y3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4yX00xL3Rlc3RyZXBvcnQu
dHh0PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRoYW5rIHlvdS48bzpwPjwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+Q2hlZSBZYW5nPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5jaGVl
LnlhbmcubGVlQGludGVsLmNvbTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
WW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8
L2JvZHk+DQo8L2h0bWw+DQo=

--_000_DM5PR1101MB23612E8A2F720FC24B71A890B9F29DM5PR1101MB2361_--

