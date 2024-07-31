Return-Path: <karn.jye.lau@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB2FC3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 04:42:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by mx.groups.io with SMTP id smtpd.web10.35613.1722400930081082238
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 21:42:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=gRpcFYKZ;
 spf=pass (domain: intel.com, ip: 198.175.65.21, mailfrom: karn.jye.lau@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1722400930; x=1753936930;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=T+CrGuh9TwvttrsTVk2a+u0QJXqf6T4RTZLIH06Ul2s=;
  b=gRpcFYKZ1aNqge9AA4AZQhlOiKMxlU8kTJf+WDx6HxafFayofRCmvNLu
   tfdwBkPNpM6LIa4eonLt0zvU1gndWMIz7i84IyqDfPU46qdKsGPeAXVl9
   4QZNkOR0LAIdtF8fjTKhnA6a0c5tnDdVkwtuEllYC/4rCiY1NTn3uV3Qc
   O0NX/1iWPiL6BgFeXsFENkHSpibu81toocRzMbie29dBiuZQafE4zaSE/
   UXnD6JX7N2JYKi2bodTP4btsWL4vgo/DQFFUq5DFMummC9CsSomosIacP
   Xr6bzN+5JdNv9iduF0HMds+fMJehBXksD2ZTG0+5yzSCzpUkT2NsLDRKH
   Q==;
X-CSE-ConnectionGUID: zPpOHURTSROSIZEfP33rOQ==
X-CSE-MsgGUID: yvEuoibNTUC8zwXCk3k0qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20204508"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; 
   d="scan'208";a="20204508"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jul 2024 21:42:09 -0700
X-CSE-ConnectionGUID: QuELhb8UR7CtcMmbfk5qBA==
X-CSE-MsgGUID: P8Gj1SM1TyKRciu7i/41OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; 
   d="scan'208";a="54808679"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 30 Jul 2024 21:42:09 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 21:42:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 21:42:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 21:42:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ETOx9VwA+5mdG8Za1yy3KhbBH3ca41aCmB2tVajCnxpZ1FwPbOD4ek0ZUCUUDRKFSRC5wRAvjjNhxPJYcBWKsIE+zca3l2a9t36aIprl+ObT6xUzZlN5nRspf+4pnRo/vFD0N6FJZJByMyvYAK2TXGv0USqr+xvjSGpp8nnl5vGvWeTGvXgG8Qj7IwksQyXo8gHWcQi3XL8/hCJRAWjBvkRd4tuOflrXffVYFlC1hO6N8KY69/USCzMwv+EokIIl4DEFMo274/DXM01X8CDcr0Vh//p5t/L2+DmB+d0ZB2fKDw+ivHesCpV1RNcfvDa6gVo+VQrwQx4zNVqQrkB3Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T+CrGuh9TwvttrsTVk2a+u0QJXqf6T4RTZLIH06Ul2s=;
 b=H7DtlDfVUPEqFGzXBap/JCG3aeb47qrRw/rVxpNXSvpHFbh0jUE2e+o2Nh55TIEFUZNvHR8FBG4hydCInYW8AYSmUrIUB5UjoCksqLbiZGHDOtUL5wnQMnrg5UZqAnNF/kGOIlXH65iq1j7aHMIp0cQxiTmA87GowsjW15qs7G16QWuGzY3RPwHxPIKXPNosazwKIxw1g3iTvj38vbPiAEhxXg7kLz6Ie+Eyleyhazcsjm9em+cPIe8mOk4aH3AZ6GGqe7JvLbiKgg6EOlkmHIshxKzIp0rClLCjTVkzZvFGSyep7AJGT75+1aEGQgwMa5x9IrI7qk3daWBlhInuDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8702.namprd11.prod.outlook.com (2603:10b6:610:1cb::7)
 by PH7PR11MB7075.namprd11.prod.outlook.com (2603:10b6:510:20e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 31 Jul
 2024 04:42:00 +0000
Received: from CH3PR11MB8702.namprd11.prod.outlook.com
 ([fe80::f368:94ae:13d7:a3bd]) by CH3PR11MB8702.namprd11.prod.outlook.com
 ([fe80::f368:94ae:13d7:a3bd%6]) with mapi id 15.20.7807.026; Wed, 31 Jul 2024
 04:42:00 +0000
From: "Lau, Karn Jye" <karn.jye.lau@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"yocto@ww7.be" <yocto@ww7.be>, "Rahul.Kumar1@amd.com" <Rahul.Kumar1@amd.com>
Subject: RE: [yocto] How to enable /var/log/kern
Thread-Topic: [yocto] How to enable /var/log/kern
Thread-Index: AQHa4oeA/lhG+SV1ZEeGlm0a6ph2KbIPj02AgACzU5A=
Date: Wed, 31 Jul 2024 04:42:00 +0000
Message-ID: <CH3PR11MB87029138E58F5846D84A6A44D7B12@CH3PR11MB8702.namprd11.prod.outlook.com>
References: <MN0PR12MB5906A7619F31614B3AC16FBAC0B02@MN0PR12MB5906.namprd12.prod.outlook.com>
 <CAJyeiY7E5UDCuNq8nV4SnCa1NKoZCy3rujZQE17fajzhrT3efw@mail.gmail.com>
In-Reply-To: <CAJyeiY7E5UDCuNq8nV4SnCa1NKoZCy3rujZQE17fajzhrT3efw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8702:EE_|PH7PR11MB7075:EE_
x-ms-office365-filtering-correlation-id: 83856efa-86de-41a6-3378-08dcb11b1df3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TlhxZ2lvWFhLOFFMa2JTNVdjR0I0dkpQM0VKS0pvWXlQS2RNTTRJQzJIZEdQ?=
 =?utf-8?B?Rk8yaU9WSUNRVXNBNy85cVBMK2ptcjgwNWFmTlhsdU9OcHN2REdTQVR5cFVI?=
 =?utf-8?B?bFdXTzlRbEZaNXpobC85Y1Q3Tnc0YjFNMXBkaDZIZWZHN3RSenluNVIyYi9P?=
 =?utf-8?B?QVppakprT01JUWJPY0QyQkRGSFE4dWNCK2o1Vk1xNk5pVVBoTkRxZVR3Nm0v?=
 =?utf-8?B?U2tMMXRCeWc2RVhiNVM2RmxxYnhDWXV6U0VUNGFZVnVibVY4d0lJczV0em00?=
 =?utf-8?B?SzdaNGtSOHF3Ky81SnM4Z0ZXS1NMUnlFM0J6TjhkbjVVUlJKQ3pmR3Zud2hO?=
 =?utf-8?B?Z2tyS2pOdjQ3dkZTeXNtVHF3QitvcEtWMHFRKzFnN2hIc0pKZmx2NzVKdGpt?=
 =?utf-8?B?NDNVTFNpNUdDWHEyTkxkY2FUeHZ6SldEOUVYeHFqOTlIaTVtUmNueWY2SE9v?=
 =?utf-8?B?NGMxZmpkTkNVTENwcSt3dW9IS3BXSlNTT0NNZ21GS3J2SVVqMHg1cWxEMUxh?=
 =?utf-8?B?Skk5RFJhQ0c1dmtJZ0JpVThITjlWR0tydWlzSS9Ld2pEdk41RjU4QTJ1SzdY?=
 =?utf-8?B?R3J5MDJqYVU1ZDUzdFBwUUxzSG9DQTJxSkl4T2JYbXZIQXh2RmtJRkt0ejhK?=
 =?utf-8?B?NWxMbEpsbXNhRForV1JzSjZFVFNqaUxSSlFFN0pqSXBPNEpjdFZKTnhiTmFz?=
 =?utf-8?B?azk2eWd1V1NEcFUvTXRQbUhDYW1WVXhnSUxGMTFPaUlLZEt1bnJCQUdpZG5L?=
 =?utf-8?B?eDlHYTRNNVFNUlBZb2hicVB4VEthbVR2MU5DWC80aDBITGVWcS82d3V4TEpq?=
 =?utf-8?B?WEVyMENlaEVsN0hIRm5aOHo4c1M4ejRsNGV3bFpRY3NyL0RVOUlVSWo4Sjg2?=
 =?utf-8?B?L1I5UVlSc0NRZmVTV2VneE9MaTlQSXdkVGphVXBnbENFNzBUdXdLTXd0RFNV?=
 =?utf-8?B?dHNxTWJ4ZjFtTXIxMWlFY283NWhEbU5uSjhVcGRiaGxFOW43NkpsdUJ1L0Y5?=
 =?utf-8?B?ZDF0OFBER210SHdzMmFvdFhHYU9QYTNmK0p2aWY5WGpqYWhqN2lNcitnZkZ0?=
 =?utf-8?B?TGhPcC94N1hLRjdmVTRRZmZCQjY0MVBIODdoSWVzMisrMjhkNXpBQlJOR1hp?=
 =?utf-8?B?WFhOWkZqVVZPNGltaGd5UU1aWXdiTG1vWlJON3NkZFJldzdPcDdzMFYrN3lW?=
 =?utf-8?B?LzIrVHcrcjJSWnkrMFNqa3RrSGMrZGl5MGl4SmZHdXJFQ3Z0VElrMzVzbCtX?=
 =?utf-8?B?QUV4Smw5bUVkcDN1WXl3MVFJY0lnVFRXdGUyUnE5c2xsL3RBWmNCbWlGY0w5?=
 =?utf-8?B?WXR0WUFuZk52cGlzcGY0WTdwRlJ3a0xNUG9xdVdtQ0FiTStSVVkwd3BzYm1T?=
 =?utf-8?B?Qi9CK2hybEFvcGRRbG5FUVg4Rzh1RTltd2dTVjFxNUVMTHJCS3dNUDJZNDN1?=
 =?utf-8?B?K3pDb3pUZi9aY1pETzlNRGZ2VGtPK0Y3SGt6UWhoZWg2d0srOG5lZUZiWFFl?=
 =?utf-8?B?b0tNZWl0eVUycmt6dFBaS053Q2pzWUIwL1IyK3haR25OZ2FQQmtyb3JkclVl?=
 =?utf-8?B?Q2pRVW4rSXFaVy9YVFg1MXNtdTBFUEFudG9lNC9IM2l4ZGxocVlDa1RjSExn?=
 =?utf-8?B?NWt0amdEZmRaWUZpUjFLZ2ZtMGQ2ZGRDU2IzdlJhUzAyK0JNdDRmeU91UWw5?=
 =?utf-8?B?TkI2UENLTzJoZnpqUnR0NERPSG5YUEYvM2pDM09tZnB0dGdMVkt1NDhURE16?=
 =?utf-8?B?YTFtelNHeHIyN1hTcWo1REs5WmxibWpNenBtblRYZ1E5NFptZkxyTFg4UEpM?=
 =?utf-8?Q?gTmnO9QRFi1X9P2mQWGREd7faSJ/VrRl65fVI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8702.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEdZVER6SUJsYVlPWU1sN1lCMlBXOVl2Zllnd1JxNGM3bmRBRmg1N0JYd21Z?=
 =?utf-8?B?YmZ5dWlCT0h4RjYwUlMzMWFsdHdaelVQaDlacy9hQWxOdXBNWHA4dDRtRml0?=
 =?utf-8?B?MTI0NUQxS281bTRveE9nSE8zNW1GVUVXcGgvQTlDM0kvZ3JPVDVyem4xVk1z?=
 =?utf-8?B?SytYbWRxZXZVM1pjTjg0MWdXMXhVTDJOMDBnMXFVR0hEeFVoaS9pMnZGK0U4?=
 =?utf-8?B?eFNkejJTWGF2RHlQbEMxNHF4VWdyZnBPNlRZQWJEdFRabFl3SldXZENhaHUv?=
 =?utf-8?B?M1B1YzJjeWtnT21pUlU1RTRhSk95V21BcnpKM24xSUFCcUFpQUFaTTQraWpG?=
 =?utf-8?B?Wlh5M0Y0WXowbzJja01JTDErUE5ySm95WlZoNmlQWDRqbnZFdEJzNGtMMk43?=
 =?utf-8?B?eEswMWlkQm80S1VrWERxdDhsd1V4a3l2b2prV1RhblZsd0JJRFVlMFJScHFn?=
 =?utf-8?B?SjZPR0FVNFhsb1FoRlhzSnpDeFhYVnBVV2lNY2pyZUxWQXhxYURxczVVSDI0?=
 =?utf-8?B?c2tISlFkcXYyeWVZS1pQOVNHbDdXRzlvN3RrbWNVS25nSm9aaWMwa2N4eTQ1?=
 =?utf-8?B?Mm1JSEpNaFo5UHNjYjN2N01EdE5WSzI2cWdFeExwZSt1YmVJc0NQL3NtVVBy?=
 =?utf-8?B?TzdHdlJhS1Q3NlBwUGk3Z3hoVjU1Smw1cHdzYkpCM1NvOVliV0d3alFIR25F?=
 =?utf-8?B?NDROZnloZ0JWbG9STzJUQUtIQ2RBZ0dGYVNWTzExaWV4em5KNWg2bml6VnVq?=
 =?utf-8?B?amZLM1ltMENqd2toaVVmUkRvcEtvMG90aGdPdlkzb1VVdjBnN0tJdTY4ZDNC?=
 =?utf-8?B?L2V6bkpZQjhKZGpVYXlrbjJOMERRMlpqWVVVcVloOWtBSVl2eHRuMG53alc0?=
 =?utf-8?B?OXJ4Q2d2YnhZY2tTeDZtTmhoMzFUT3dCRVhicWxTWGp6MG5xZW5qa3VDYzBx?=
 =?utf-8?B?VGtrOVhRL2w3TTNTclF6ZTlsMTk3cjNTcEkxNXdqQ1pMMW5WUER2Y29GUGVU?=
 =?utf-8?B?ZGhCN0l5Tk8rRnJhTGZ1ZkIvZFluVEFsdXNBc0JOZFJORGxscGE0U0V6Y3lT?=
 =?utf-8?B?OEdQWlhocnBBNFNqdTJ5UGpRSHpGYnh2ZEFMSmhkKzd6MGIyWEZlUWRJQzVI?=
 =?utf-8?B?SzZQL21PZkh5b1V6NitoY3M2d2JtSC9pNXRBNThieklUemwwUC9hRUd4Wld3?=
 =?utf-8?B?SEtGbGRJdkdZd0xWQ21OaXR0MUdjNHVQV2RheFBpczBLUmtlaGt1cHdVSVRY?=
 =?utf-8?B?cDhOcElGOEVPdTVFRUI2ZGg1QmMxT05CVWRDaFhFZzdOdXdTTWlMeHdPaDNJ?=
 =?utf-8?B?M3Nnb20wRTZzU2szU0FtSVMzNmpGODZVVUR1cHFkNE02U1oydStici9wWUN1?=
 =?utf-8?B?bGs4YXZoQVkxaW5tKzVoS1Voa1hMOU1WVE9kbm9Hd3JVaDNtQU5qNzlOTHdN?=
 =?utf-8?B?YVg0QVYwRllKdll3Y2xuaUNkeWNzNi9zdXMvR3d3cVNMeEZTclZWOHM1OVFH?=
 =?utf-8?B?UFNyY0c1aURjcmlzNVRqeUZPeW9OZHhrNGhHVE9sV3d5NUd5YnQyUDNiV0dN?=
 =?utf-8?B?Q2VuZVdZSzVDUExDK2NRRnVhczVHbDUyMlVrZlFoTGE3VTQ5WjU2ZDJJTVRM?=
 =?utf-8?B?d1ZPSThxRUx2eGQvaXZRMGhkZXNEbmZUc083YlhKVlNNMkxmMVEvYlBTU1Fw?=
 =?utf-8?B?L1BYZzZNRGxmc0dYM1gzTnlkV3BDZ3dVQkIwNDBhaWFmaUc0ckhDTHRYeDZT?=
 =?utf-8?B?aTRtL1p2MUZ2blZFQjNPOXQ5N1prSnNJWlhIK0xONXovWFc1VG1nSWNXYjJY?=
 =?utf-8?B?dS8zTTR2REl1MXhkeWtFb2Z6QzlLRXNXVjFMMmh5Z3ZwMlN1NUtCWWtRajQ0?=
 =?utf-8?B?bHltV2NiclNUNGNCbjZuanYrTnl3SVpSV2cvT3IzRzZtd09HeXVkQUFKdlBR?=
 =?utf-8?B?ZmdaeDRVS1hzZ3FGT3FURVZnVHY4dnY3S2pPbVZodlhwd1NqYklSRm9PeDYw?=
 =?utf-8?B?VjIwbDVJQ3VKVEl0R2dFenBVZkpKRVBKWWgyN2xQSm4xUi9qU0pucHdHeVlN?=
 =?utf-8?B?RjJsb3cwR2dmcGd3Y1RGaS9vUU5SeUQzYVdULzZKRitPUU5peUxoYnRrMmF2?=
 =?utf-8?Q?rwnNgkeAFNGgP3eBgbQEst5A7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8702.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83856efa-86de-41a6-3378-08dcb11b1df3
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 04:42:00.4180
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rmTvDYZGz1i6Kmq5u9du6M5ikrzEJQFczu4Bt9XpH9U00J6YRy5lGsx/LZjzSai73zTwfHM1mjTaSKJOtnvQ+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7075
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 04:42:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63619

SW5zdGFsbCBzeXNsb2cgcGFja2FnZSBpbiBsb2NhbC5jb25mIDFzdCwgdGhhbiByZWZlciB0aGUg
bGluayB0byBjdXN0b3JtaXplIHVzaW5nIGJiYXBwZW5kIGFjY29yZGluZ2x5DQoNCmtqDQoNCi0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYgT2YgbmVvZnV0dXIN
ClNlbnQ6IFdlZG5lc2RheSwgSnVseSAzMSwgMjAyNCAxOjU5IEFNDQpUbzogeW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZzsgUmFodWwuS3VtYXIxQGFtZC5jb20NClN1YmplY3Q6IFJlOiBbeW9j
dG9dIEhvdyB0byBlbmFibGUgL3Zhci9sb2cva2Vybg0KDQo+IEhpICwNCj4gSG93IHRvIGVuYWJs
ZSAvdmFyL2xvZy9rZXJuIHRvIHNlZSBwcmV2aW91cyBrZXJuIGRtZXNnLg0KIHlvdSBuZWVkIHRv
IGNvbmZpZ3VyZSB5b3VyIGxvZ3MgLCBkZXBlbmRpbmcgb24gd2hpY2ggbG9nZ2VyIHN5c3RlbSB5
b3UgdXNlLg0KDQogaGVyZSBhcmUgY29uZmlnIGV4YW1wbGVzIGZvciBzeXNsb2cgYW5kICByc3lz
bG9nIDoNCmh0dHBzOi8vdW5peC5zdGFja2V4Y2hhbmdlLmNvbS9hLzUwNjQ0OA0KDQo+DQo+IFRo
YW5rcywNCj4gUmFodWwNCj4NCj4gDQo+DQo=

