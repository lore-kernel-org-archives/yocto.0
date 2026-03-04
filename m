Return-Path: <debal.ghosh@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D73D1EF8FE7
	for <webhook@archiver.kernel.org>; Wed,  4 Mar 2026 13:35:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.18065.1772631303679401021
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2026 05:35:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=SQVDIxKr;
 spf=pass (domain: intel.com, ip: 192.198.163.15, mailfrom: debal.ghosh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772631304; x=1804167304;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=/98bjgUBVJD/RWmRnRsbvOGnuIjpberqg1EIVXJk8aw=;
  b=SQVDIxKrzPiTm8YCtkqDm8UCtKYlHI1ndsD65zsfGMxu0hqjFxxfqxSU
   2Jc+FX+Wzi0E4hjRi8ldVoQbTYhOHjZ31fhI2qtSXklxg3Yt8/kgeIMaD
   hRGSyE1Dvolfn7DNNzjljqCuF3Qg1jhkuy6KOyFifwPjabJN2llgVp5l2
   i2VrKHvd5AwcKZ2QWQld4oqAlzmx4d60KAsowwZ09NO7Nwwu2fA57BI/j
   701JoN/CgI71H67UBBKB6gkX8zIij673qBVyetVC4T+FzqAAtqfwtmG/9
   MRIoLKLCJvtg7DN0gJs8z6jva19u50KU5b0gCf6weZJzg69zkyYnIVvPV
   w==;
X-CSE-ConnectionGUID: bXkzPMPUTFCGHpLLm2nBbQ==
X-CSE-MsgGUID: WxDtUEU+S3+AHsByzpsfFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73816465"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; 
   d="scan'208";a="73816465"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2026 05:35:03 -0800
X-CSE-ConnectionGUID: /JJ5rL9rRByR1budZDfrWA==
X-CSE-MsgGUID: DaR70I/sSzGeN4y7AJMysQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; 
   d="scan'208";a="216654046"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2026 05:35:03 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 05:35:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 05:35:03 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 05:35:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D3IXqsZBbuJ7Hb/qbNxjBQIRTafO81itT7JLZD3XrrBAJAYqNudhV2iLrjB8bOlUzuQGPoukl/xzOD6fc8s0it79GQwRENZazIZyK/8awQA1rCMk2wOGe23nJiV0OYHmOVagZt80zrNCo+adncUhE5ga7nyX0I0CBqe2i2Kss61fwbcepE9HXEiQ5TZe3yYgZhI86vXdaVYqYENcCO6Cq3QJ9LgEadsJL7vHiOcMI/H/mogpsaPI02OXdoRdXvLbY5zJQW0+QB6BRMyM97sxyPPOCCem4/9b6SwMcwWP8qNxct5NvCC1FsIDCBc1xeQN1fMrNOmelLieYrdlQXdMVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/98bjgUBVJD/RWmRnRsbvOGnuIjpberqg1EIVXJk8aw=;
 b=hsQy8QM6+/IVjJ4dIHdqgNYXsu1K+X4LkyXHCnIbs1PGtKsTre9Hw8eC0XzlBx+Jnz1JrH0UILRNhgoZoab2dUP8C6Ifpw2u3Plc69YnshGq/CqZ7lxFmiTURE316CP8SaC4avewVC5bBz5vZ6z5FDMI6QfIvicIE3RQJmOfBqwhlVBJ/60a5rJ3TA/qgM48QcmJDHaOnB2VrAVlMV5HTVDnjrfE8aPP8ydHIHoobJdNYeft+f9ejts+2daHbBE3SCc6g4U+Inbf4nK+V2jEzJiQ0/7htzJS1LwfdqQc1XgbEqvvjXYy6rOotvwjKus42XWamzhn+fQv8mDCqJgE0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7018.namprd11.prod.outlook.com (2603:10b6:806:2ad::14)
 by CO1PR11MB4945.namprd11.prod.outlook.com (2603:10b6:303:9c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Wed, 4 Mar
 2026 13:35:00 +0000
Received: from SN7PR11MB7018.namprd11.prod.outlook.com
 ([fe80::bc48:bc16:39d:b43]) by SN7PR11MB7018.namprd11.prod.outlook.com
 ([fe80::bc48:bc16:39d:b43%7]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 13:35:00 +0000
From: "Ghosh, Debal" <debal.ghosh@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"paul@pbarker.dev" <paul@pbarker.dev>
CC: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>, Yocto TSC
	<tsc@lists.yoctoproject.org>
Subject: RE: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0_M2.rc3)
Thread-Topic: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0_M2.rc3)
Thread-Index: AQHcqjkn9HD6Y+57AkaJYCNeqkgZd7WbW5EAgAGLSgCAAXsc4A==
Date: Wed, 4 Mar 2026 13:34:59 +0000
Message-ID: <SN7PR11MB7018E68EA0E93D5006987D10F47CA@SN7PR11MB7018.namprd11.prod.outlook.com>
References: <0101019cae57f45a-ae8dfaae-ad81-4664-9a28-1121fc1fbcf0-000000@us-west-2.amazonses.com>
	 <55ddd958fb39e440b7a45cd9c18aa175c3e893c6.camel@linuxfoundation.org>
 <7290c6b8e404189f6865ab2288b5d534d1475227.camel@pbarker.dev>
In-Reply-To: <7290c6b8e404189f6865ab2288b5d534d1475227.camel@pbarker.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7018:EE_|CO1PR11MB4945:EE_
x-ms-office365-filtering-correlation-id: f88a87de-2c11-4567-cc72-08de79f2d531
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|7053199007|7142099003;
x-microsoft-antispam-message-info: Hg27dB8lEOD29fJmsawtnfc2asveeTlDsYr/EfAt9YPFBXk6k3ceC1ZUg1itF95gi33vqI3W+ZuWFM9UgrKX+nvURCjVWvUOV1sbLid88WGvariTFCjNBQE6HtkgNIaEXDlK6AGoWfD6UB0PoDbcuMpCacI0wU92oNQqHv+LkIABx948EKDxHSjKDs+PKEFIoUoQx35TiyfxphwhEgf6RqSTK7jLXC9Rtbu79qnkd/ExrIH2xXcxtFbsrb+Qcsy2XObQX5Qv8Uq/jCbvWNg0E2bIh/cRLcgg44xGO80dWrucOEyc2E2YwHX5f58J3d0eCfHRYzCngPqe93FpVeUO7PcXqFFd4miTBZs8LvbwPG2DpItBtjPPZK4rhecZTjf5GnaYatha2n+xn6G61algBD6j+lUOFsPqGvFf2Pgxt0SdpBPFXSuBj7QjBCD/+MukEpk+KeBN0QnEu9/OAieFsP2mpHcR4i4N1hLw1K5AggJoBYz63tqHJY+N9FuY3oIVgDMnmp576Vgqzy4auccTF63GbrIYSE8uZWucjOvqyav3MueFYO61xozlDfqrck1pd+pQOFU3O8qwNmQ414LRKou4Xa6JM3mToKu4CqfPGtRsGasNC+aIzoXCygUBUrNT4U8IqobyTE39iDeKuLetY8zyVcyCpYOq/dBKgJewpyrstAjKT1q4B02b+vtk/R03TvdQL9geVQ6hC3Uk4X5EcbxjfCRITVq3keyNGUC1xDT+c+boZQzATCT7XLwlz/2A
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN7PR11MB7018.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007)(7142099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDBrcnlTNVVvS0pvd3Jaenk2WksyZng1eDZPVXJMOU0valQ4MHNTUUgxbFJR?=
 =?utf-8?B?SkNDUlN2TnNsc0pPTGVkYnoxT2MxZ2dBcldBa2dPUlJsRGNYYm9ITDIva3li?=
 =?utf-8?B?SVZTYXNhVmU2ZklRdElJWVZBUmdyeUNydkEyZjBaakgzeUd2TXhZaWRuMWFO?=
 =?utf-8?B?eTl5QUFPZmVZOE9CRFVMUmR3NUZqTG9uQW1PNU1GdzFvVjdJQlFsVUdxV3VQ?=
 =?utf-8?B?Zlk5d0dIQWw2SWxuTjMyZTdqQjZZK0I2a1hxbndLRXF1aTlkZFU0TnE1U1Js?=
 =?utf-8?B?c2EyWEgzcndQVHVGTk8vYUk4aVh4UTNmZU9DNFFDMFUvbVF2RUJOV2ZZZ3lL?=
 =?utf-8?B?UmpsUEFpZzFPRjEybnNINUpvNTc4ck1iVWx5NklyYmZhNVRxWDRCMGl6ZjE1?=
 =?utf-8?B?SlNQTVkwNmFITGVycTdKcTdQbWpSSitXN1V3c0hVQm56QnYyTzFiVVA4UHZz?=
 =?utf-8?B?OUc2c2hqNVJ1bmZCSWU2U2tHa29aTmpEblM4ajYvdGJUWUgvOEFVNFBBeVNq?=
 =?utf-8?B?QXo2MVFjUnhGdG50UjdsNGRlZHFIVlFwRkpWTTdIRFNra0VQYlY2OGZpWGkz?=
 =?utf-8?B?S2tQZnFnT1VienYrMERYaTFNSERqbnVqWk1yYmtzbzNEQUZIc21va1h6ZWRq?=
 =?utf-8?B?Z3BLMyt5VDJ1Z3YzcXF4ZncydUttdVdlUFZGTVhvSFRmdXZZSkp0cHNUZWhC?=
 =?utf-8?B?ZUd0dSt6UHZCUzhmMzk2ZW8vRTVTQU9Jcjd6bkFubFRFWjlPbmVKVVg5RUVq?=
 =?utf-8?B?cUJRNlVyQ1NMa3RCVEw2M0wrVnI2NlFnV1pVb1JqVDNPalIrRjA0RnR2VGRU?=
 =?utf-8?B?NFU5WlIrZm9LaFlGc3VjZ0JIMG5FMW1ENllRKys3VVlUYmhERVJ4dHFmdTh0?=
 =?utf-8?B?amoxVjV4YkhMNGJ6b09qQmhTNEtwNGpEUG41NTMycEwwU1RwLzJDUXg0VkZi?=
 =?utf-8?B?OHRyT0s5TnlZRUZQTnFJTjdsNEVIaTJhOE9lMDVjT3c1dmkvenlDZXFlclBK?=
 =?utf-8?B?RGJKWndEOWFFYjJNb0tzOWhnc29LZUhFMFhRTVAxeUR3Uk55NXBTSXI1dUFj?=
 =?utf-8?B?MzRad1VTNzk4VllIMkFGN1BYS0JjUVk4YlJXOFl1cDhZeEFkZFBBWFFXNGh2?=
 =?utf-8?B?Sm9SMXZtSXhFRW1DZFlucEkxNTRRZjJOdjB5YUZxYVJ1eUJrQnhDVk5yYUNl?=
 =?utf-8?B?eW5uV0taS0ZpZ0ZnN3lNajZ5TEN6VHZmbDk3MnpCK2t2YWFpTElyNDg0OXNS?=
 =?utf-8?B?bytTMEk2NlErTVBEQktaUmN4TTNFaVVKREtsN1VFT3FjNG5Wd09pVlRHaXZS?=
 =?utf-8?B?Ni90dE5xa1UwaWNMWmU5YkorSFpxUGowT2czbDJIc0JETWN1bnB4dWFOSVU4?=
 =?utf-8?B?b1k4MzlYZnpJdG5EZ0NTSnJxQTFGak9MM29lTGFtQklTemp2bDIxcDhmQWZT?=
 =?utf-8?B?alhleFhkTkhVcXZ0d1hrelhvcGRsb0w2ckw1TmFBMFhWM3FSUlJzS3RzSE1X?=
 =?utf-8?B?THdjbWFxNmhsTDBJaVVxeFBYdEZJQVZlcFRmRGxTZktuNDRtc3Ztc25NNXA4?=
 =?utf-8?B?V0oySGpGcWxrdkFxWWs2MUJBem43MVlSVjdNbGQzZjdHcDBIK21vYjVBSkNp?=
 =?utf-8?B?ZWJMWitnakVoWjBtd3NneENyNVY5MnRIWkJMcEJLUm9lU1FhWGNCWmZqZjRD?=
 =?utf-8?B?SDRFOUFhSVFnMDUvdXJnc0JhV0FFV3VEdk9pWWIwT2psQTNXaXMzSE5jWG5v?=
 =?utf-8?B?eGhLRkJEeUZvYWF2blZxUkFLQXU1ZGhORDFOeDd4ZWNvY0FxdmRiL3pDRFYv?=
 =?utf-8?B?TUYvY09IbGNqMFB5Qm5DOTZjZTRQNTBKRDVweW9rV1dvRUsvRzk5SVRCMGZz?=
 =?utf-8?B?b2ZBNlJTRjJwa3kxd21CbzF1Sk55aWFTZHB1ZzFxUFRzL2NYNUxLWFEyL3ND?=
 =?utf-8?B?cTg5dnJiZFJhTkxmc0M3TmxTZ0gyTDFscXB0OWdrdDVQbnVLZGRCd0diY0tV?=
 =?utf-8?B?dm5GQlVUZmhBU1hnSklERXg4cCtPdzlGNnFKemwvM3NVQ21TZk5BMGhPSFB1?=
 =?utf-8?B?VjBPMFlSa0JhT3J2c2EzRlh4S2xleVhsa3N0OHNZQkMzWDRHenBFajNYQ1RG?=
 =?utf-8?B?NklOZ2xscy9TYTIrTGRhT1NOZEFKWVhrb2tOWWZqQ3pyTWQrWjk0RGtBSk0z?=
 =?utf-8?B?aXMvQU9YZWZjN0RNMmVjZTU5SkR2YnhlSHdhKzM4ODlHVEpJTGxYWDJpemxz?=
 =?utf-8?B?UW5NZi8zOGdGVEsrR2JwSUtGRzExKzNBeUNuOUd3UXpIQmZlc0FHY050UGRQ?=
 =?utf-8?B?VUc2Qk1GMkp1RnZPSWEvNHNMU25uM051by82Q0tkNWNLSUIrcGlFdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7018.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f88a87de-2c11-4567-cc72-08de79f2d531
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 13:34:59.8290
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t7Qtc2t6i+yjlIrMQzGnDffrqpDUT/yA5DM1sL+HFTIqmVyKIE+XUkn3Y8syb8FW67VPnC5Eaj9ZI+sGdUqx+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4945
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2026 13:35:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66302

SGkgUGF1bCwgZXZlcnlvbmUuDQoNClN1cmUgdGhpbmcsIHdlIHdpbGwgZXhlY3V0ZSAmIGNvbmNs
dWRlIFFBIGV4ZWN1dGlvbnMgZm9yIHlvY3RvLTYuMF9NMi5yYzMgYmVmb3JlIHdlIHByb2NlZWQg
d2l0aCB5b2N0by00LjAuMzQuIA0KVGhlIFFBLWN5Y2xlIGZvciB5b2N0by01LjMuMiBoYXMgYmVl
biBjb25jbHVkZWQuDQoNClJldmlzZWQgRVRBOg0KDQp5b2N0by02LjBfTTIucmMzOiAxMS8wMy8y
MDI2DQp5b2N0by00LjAuMzQ6IDE4LzAzLzIwMjYuDQoNClJlZ2FyZHMsDQpEZWJhbCBHaG9zaA0K
DQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogeW9jdG9AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9mIFBhdWwg
QmFya2VyDQpTZW50OiAwMyBNYXJjaCAyMDI2IDIwOjI1DQpUbzogR2hvc2gsIERlYmFsIDxkZWJh
bC5naG9zaEBpbnRlbC5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzsgcmlj
aGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZzsgcWEtYnVpbGQtbm90aWZpY2F0aW9uQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmc7IFlvY3RvIFRTQyA8dHNjQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBbcWEtYnVpbGQtbm90aWZpY2F0aW9uXSBRQSBub3Rp
ZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZCAoeW9jdG8tNi4wX00yLnJj
MykNCg0KT24gTW9uLCAyMDI2LTAzLTAyIGF0IDE1OjE5ICswMDAwLCBSaWNoYXJkIFB1cmRpZSB2
aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90ZToNCj4gT24gTW9uLCAyMDI2LTAzLTAyIGF0
IDExOjM4ICswMDAwLCBQb2t5YnVpbGQgVXNlciB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3
cm90ZToNCj4gPiANCj4gPiDCoMKgwqAgQSBidWlsZCBmbGFnZ2VkIGZvciBRQSAoeW9jdG8tNi4w
X00yLnJjMykgd2FzIGNvbXBsZXRlZCBvbiB0aGUgYXV0b2J1aWxkZXIgYW5kIGlzIGF2YWlsYWJs
ZSBhdDoNCj4gPiANCj4gPiDCoMKgwqDCoMKgwqDCoCBodHRwczovL3ZhbGt5cmllLnlvY3RvLmlv
L3B1Yi9yZWxlYXNlcy95b2N0by02LjBfTTIucmMzDQo+ID4gDQo+ID4gDQo+ID4gwqDCoMKgIEJ1
aWxkIFVSTDogDQo+ID4gaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3ZhbGt5
cmllLyMvYnVpbGRlcnMvMjkvYnVpbGRzLzMNCj4gPiAzMTYNCj4gPiANCj4gPiDCoMKgwqAgQnVp
bGQgaGFzaCBpbmZvcm1hdGlvbjogDQo+ID4gDQo+ID4gwqDCoMKgIGJpdGJha2U6IGJjOGJlODNh
ZWYwYTZkZTg1Y2QzM2E2ZjEzMmYyODFkNTE4NTk0ZjcNCj4gPiBtZXRhLWFnbDogYzE3NjFlODk4
ZDdmY2EzZDg0MzhlOWIwMTBlYWYyMzRmOTRmYTQwNw0KPiA+IG1ldGEtYXJtOiBiMDBmZTg4NjJi
YzMxY2Q0YjZmMDI5OWI2YTJlZGIyNDRmMTk0ODdhDQo+ID4gbWV0YS1hd3M6IGI1NzA1NzdiZjNh
ZTM3NTJlMjdiYWMxNWZhZjg3MzNlNDVhMDEzNjANCj4gPiBtZXRhLWNsYW5nOiBjZjIwZjhiZDEz
NjZkNDEwOTRjOTQ1NTk3Yjk1ZGQ3NDZlODdiODcxDQo+ID4gbWV0YS1pbnRlbDogYjZjMjM4OTZk
M2VlZTBmOTI1Y2JlMTg5ZmYxZTY3YjNjNDk1MzM1Mw0KPiA+IG1ldGEtbWluZ3c6IDExNjY2ZmNl
NmEzY2M5OGJjZmY2ZmUyYzZiZGQ5ZTQ4ZmFmMDM3NjcNCj4gPiBtZXRhLW9wZW5lbWJlZGRlZDog
NmJhNDVjMWY5NGUxYzIwMTVkZjk0MGVjOWVmY2Q0NTY4MzQ2ZGY1Ng0KPiA+IG1ldGEtcWNvbTog
MWE3YjZiMDM2M2ZhNzUyMzJkNDZmZmI5ZmQ3MDZiOTUzOTg3MmUxMA0KPiA+IG1ldGEtdmlydHVh
bGl6YXRpb246IDUwNmQ1YWYyMzBmMGI0MTgwOWRmZTc1NGU4NGQ1NjExYjc1YzY1ODUNCj4gPiBt
ZXRhLXlvY3RvOiBmM2I2M2QwZDY4ODJhZjYxMDIwYmQ2ZjcxNTBmYWU2OGEwMzIyZjYzDQo+ID4g
b2Vjb3JlOiBiZThjZGNmMTNhNjU4ZTllODFmZjJmN2I3MWQxYzhjMzdhOTIwY2U3DQo+ID4geW9j
dG8tZG9jczogZDk3Y2ZlYWE1NWVkNDI3MjI5OThkMzMxM2MxODU3YWEzNzdmNjg4MQ0KDQpIaSBE
ZWJhbCwNCg0KVGhlIFRTQyBkaXNjdXNzZWQgNi4wIE0yIHllc3RlcmRheSBhbmQgYXJlIGhhcHB5
IHRoYXQgUmljaGFyZCdzIGNvbmNlcm5zIGJlbG93IHNob3VsZCBub3QgYmxvY2sgUUEgb3IgcmVs
ZWFzZSBvZiB0aGlzIG1pbGVzdG9uZS4NCg0KUGxlYXNlIHByaW9yaXRpc2UgNi4wIE0yIGZvciBR
QSwgYWhlYWQgb2YgNS4zLjIgYW5kIDQuMC4zNCBpZiBwb3NzaWJsZS4NClBsZWFzZSBnaXZlIHVz
IHJldmlzZWQgRVRBIGRhdGVzIGZvciB0aG9zZSB0d28gcmVsZWFzZXMgaWYgeW91J3JlIGFibGUg
dG8gdGVzdCA2LjAgTTIgZmlyc3QuDQoNCj4gDQo+IFRoZXJlIHdlcmUgdHdvIGVycm9yIGlzc3Vl
cyB3aXRoIHRoaXMgYnVpbGQ6DQo+IA0KPiBhKSBBIHJ1YnkgcmVwcm9kdWNpYmlsaXR5IGlzc3Vl
IGluIHRoZSBkb2NzIHBhY2thZ2UuIFRoZXJlIGlzIGEgcGF0Y2ggDQo+IG9uIHRoZSBtYWlsaW5n
IGxpc3QuIEEgdjEgb2YgYSBwYXRjaCB3YXMgbWVyZ2VkIGluc3RlYWQgb2YgYSB2Mi4NCj4gDQo+
IGIpIEEgZmFpbHVyZSB3aXRoIHRoZSByZWdyZXNzaW9uIHJlcG9ydCBnZW5lcmF0aW9uIGR1ZSB0
byBjb25mdXNpb24gDQo+IGFib3V0IHRhZ3MuDQo+IA0KPiBBcyB3ZWxsIGFzIHNvbWUgd2Fybmlu
Z3M6DQo+IA0KPiBhKSBweXRob24zIHB0ZXN0IGZhaWx1cmUgb24gcWVtdWFybTY0DQo+IA0KPiBi
KSBXYXJuaW5nIGFib3V0IGR1cGxpY2F0ZSBpbmNsdWRlcyBmcm9tIG1ldGEtYWdsLWNvcmUNCj4g
DQo+IGMpIHdhcm5pbmcgYWJvdXQgZmVkb3JhLTQzIG5vdCBiZWluZyBhIHN1cHBvcnRlZCBob3N0
IChwYXRjaCBub3cgDQo+IG1lcmdlZCB0byBmaXgpDQo+IA0KPiANCj4gU2luY2UgdHdvIGlzc3Vl
cyBoYXZlIGZpeGVzIHJlYWR5IG9yIG1lcmdlZCwgb25lIGlzIGVhc2lseSBmaXhlZCwgYW5kIA0K
PiB0aGUgcHl0aG9uMyBwdGVzdCBpc3N1ZSBpcyBrbm93biwgdGhhdCBsZWF2ZXMgdGhlIHJlZ3Jl
c3Npb24gcmVwb3J0IA0KPiBpc3N1ZS4gVGhhdCB3aWxsIG5lZWQgbW9yZSBpbnZlc3RpZ2F0aW9u
L3dvcmsgYnV0IEkgZG9uJ3QgYmVsaWV2ZSBhbnkgDQo+IG9mIHRoZXNlIHNob3VsZCBmdXJ0aGVy
IGJsb2NrIE0yIGZyb20gZW50ZXJpbmcgUUEuDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBSaWNoYXJk
DQoNCkJlc3QgcmVnYXJkcywNCg0KLS0NClBhdWwgQmFya2VyDQoNCg==

