Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FC0C4332F
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 06:51:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.7773.1699944673783817369
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 22:51:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=Gi2RdP36;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699944673; x=1731480673;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=7VjrhuQs4KemPt96RBsvfzR0XNIMx/fd9Z9tUM82AP8=;
  b=Gi2RdP36crPwwIKO3X8YYLUNlUl8hplvdla2GUFP53Og51/plXtuv5UR
   WxVOavxxsYcCKZvWlOel9w7GaFRSmz4k0VxmDfoSGG6Bfx31h5QBIJ9Jo
   nhnQCYjCNpFoDy3kckqezcZXgrlPjfefjIV6v2jg7b1l/eBZv47M2kfaa
   yvs0ymMOMiux3EYJLuD2B/2szSu4Lz5kNDfqQC2QJ5gwlqTtojWU+C9UP
   HcoWI6xcnBr+wIzEEsLwJaHK8JJex9DCWDRFIcVqLfQ9RybLd1XsVQjp8
   RGZmMily8Fg4vntonaLG9aOaibCVlZYF6FrXDWO2TlSeRf0EYbYZ37ZuO
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="387759722"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; 
   d="scan'208";a="387759722"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2023 22:51:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; 
   d="scan'208";a="12700710"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 13 Nov 2023 22:51:01 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 22:51:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 22:51:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 13 Nov 2023 22:51:00 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 13 Nov 2023 22:51:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TR05K9fBlFiUE1Gp17HTX+ZKz1XVDqVjR0WLl9EIgAdDyByOkefz83BS16WWbMpyF5ywbDmXn78PlqiX11POahf/gIBydM9LCiW9HfKANbyPfCnPVwqAfqnSLNZw2jWo0/1Q32eZ3Lgfe3dYexS+PSOHixgzpWNNhaHXAw2QE4qbtpGv5KU1zBeD4VNYyg8JuCayU3eDy//8im33jSrGkC1LtPAC102GDZsDjrABY4SFEyzA24xh7jKJeMizjt5Gdf1fz7gDBX29DuIcefiJUXpxx4nsn+7VHq+nbCANkoKKMZV5pDHQ1haNPsHH5M2JSS+RI6fhI1BJdZvBAkgC+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7VjrhuQs4KemPt96RBsvfzR0XNIMx/fd9Z9tUM82AP8=;
 b=VmHuA5ie6K+8QQO9oHf9ubxPqj4z5gJvyalANmbVAepin4BN9cCXocDwdyWH2vaMav6JSaT3BqN7KHBOa8GGwdz5s1pWuwafDmde2+mchgkSLxuQrmUZ2G2adlxhbTN1uXNfWf/BFxi9qEs1gFpcZ/8ENtTKi9NdC4m9UdsUVA/Wj7wlj+UpcJrpqeVFyP7KhHfAOT7fJA/uZl1gCffvwk7m6S08oAQLVM2DByFgorO2IUllwJP2eOplWyTxx72PiVqzJjphGbij1YalJitOPwgRb3ENBjvcyPehZ3SPB+tKFp0fVX+pusxy10KxRQgb+aHWA51pEkVPPQFXdIwUkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by PH7PR11MB6979.namprd11.prod.outlook.com (2603:10b6:510:207::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Tue, 14 Nov
 2023 06:50:58 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::1fb7:4c3f:3dd2:a698]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::1fb7:4c3f:3dd2:a698%7]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 06:50:56 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"michael.opdenacker@bootlin.com" <michael.opdenacker@bootlin.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [ANNOUNCEMENT] Yocto Project 4.3 is Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 4.3 is Released
Thread-Index: AdoTAXr8mW2oMXCeR1udw2drm2BUzAA5LIMAAAMjBoAAqzDIQA==
Date: Tue, 14 Nov 2023 06:50:56 +0000
Message-ID: <CH3PR11MB8093B5C52E8EDF1FFE2295C3B9B2A@CH3PR11MB8093.namprd11.prod.outlook.com>
References: <CH3PR11MB809364115B3E18ABF048E076B9AFA@CH3PR11MB8093.namprd11.prod.outlook.com>
	 <0dc758ee-2e07-436a-b274-f1b25c847bee@bootlin.com>
 <97046710f71b6c33e7da08ee9497d15fb5e300af.camel@linuxfoundation.org>
In-Reply-To: <97046710f71b6c33e7da08ee9497d15fb5e300af.camel@linuxfoundation.org>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|PH7PR11MB6979:EE_
x-ms-office365-filtering-correlation-id: f4d07e90-13a5-40b7-997c-08dbe4de0dd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IHN9u+nZuVBb3JXRgyZaFJQFENc196nlr9MgsP5I3Ma6iI8Y3dagKgpiu/kK9EN/VJR9arBK0WMdfd9DClxahzXPztfZ0CW1AWJjdrdWshyToNxXAYMOZY4uErI5qsywUYdgNdXVGZNacIjTzpGSCXRzTiM8FChWQMKVSl3tjZ3TpDFlZKXnLRWVw0Wm/1s3EzeuFs4vbDn4BpLd+H9eYOyr9plnAf38xnnzmrZgGJIMqqv93kYjUTxE6z9vSEUbFpCiSCn004/TxeEjHi+QqbGlw6xrxNgfKBPMS18PfuedFWDkTmsxX484SvdGQO06LEY58aDZFnEu6dZ8EOh7h+I3HoGN8ckkVraVNBiyHfGJYQSUl5CqHrXItGGcULrYCaTaawh4mM+F9q/SY6HWfo9h5ByvA9Z90OZU+8PECgt67eTxc0zcpx1435wr5Q6EoilULOoFu+j0XaHqgqYHttrPz9XazHxYd7l0CUrpATajWFxmeDrO29zwB4tJ9DMJknGm/vGdXC7zYYHkPEG84cGfNKoXYWCh9p7aj1uPJcvPacMQE7j5Y1nBpBiahw5Fo9ZX3Equ0rQbPmN1aAhNxwr+9q4FG5pqPWJJoOP89U8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(136003)(39860400002)(346002)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(110136005)(66946007)(26005)(8676002)(4326008)(82960400001)(76116006)(8936002)(83380400001)(71200400001)(6506007)(7696005)(52536014)(53546011)(316002)(9686003)(122000001)(66556008)(66476007)(64756008)(66446008)(2906002)(38100700002)(33656002)(4001150100001)(38070700009)(41300700001)(966005)(55016003)(5660300002)(478600001)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VS9MQjhrQ3ZDcXExeGVtZ0FSZ0plVkxDSW85V1dzZ3R4dFN3UWw2cHRDVmk3?=
 =?utf-8?B?MmJxaFowQ2VJZGNyUXNzRXdJM3BuY1ZBMVBKNXFyVGlDc28xUS9jTTl5SXI2?=
 =?utf-8?B?VDRXUWY5WTF1LzJ2c2NQbzRreFBVaXh2UmUrelRNYjVnRVhrSkl3cExLNGhn?=
 =?utf-8?B?TGdUbm1hU0ZWSnhFbUl5TzF3WUk3YXdldWNISDVaUTlFMDZ0QkRQZWhaU1Q3?=
 =?utf-8?B?Wk5MWGxSQ1JwcXlUbnM0NUE3UTM4TlhSd1ozZFNxUVFmVzd5bVN5NjRTTkp6?=
 =?utf-8?B?Z005OHFhTUJxTDZiNXIyeDRpMzkyeEcvMDVqT0NXN2d6L1lwTlNHSmh0WXNM?=
 =?utf-8?B?eEFoYUVPNVJhamhSUzhweTBIdFNuTEdkUzJ0TmYvVWN2d2dpS0ZHWVZhRUVR?=
 =?utf-8?B?c1J2dTRnUWZDV2ZUYWF5c2l6blg4TmNNWXdaOGxVTzIwTnU1RTIzRUwwR1Z5?=
 =?utf-8?B?YjMzWDhva2VmUzZxcUNjN0V3TjNiNlpBbzBpRVVtNk5rdVRQRlUrQ3Fwa2hi?=
 =?utf-8?B?SjRoQ0l0dkNmbnE3bW92R21jK0s2R1owTi9nbm1hYnF3aXVPU2NucVlENXRQ?=
 =?utf-8?B?S1ZYVW1ZTGNodUhmV0M4WEtDOG13SWFVVHpNY3BORnJqMG1WaDVxaXRMTFpW?=
 =?utf-8?B?RFQ1QU9iK01EQ3NsV2JyREtEdFRlRllFUmRjY0xzNWwza1VsQys2b1hNL09P?=
 =?utf-8?B?MEhUMExJZTFGbmltMGhBTGRjS21HVW5WWStVMktGSnltTEhXUUoyWWJUUFVj?=
 =?utf-8?B?TXJFaTA2MzZ0VDBNYkU1OWFMemd3NTRQQStVbUVJUGtPNU11U2E0K05sbDFX?=
 =?utf-8?B?WHA5QlE2SGxEcEs0WC9DczBOM1ZyWnVsQVFkWlFVeER6UlZVamxvbTl5NnVj?=
 =?utf-8?B?TnNsRE9lVkJBY1IyTmlBWnlnRGsvVGZpNlhpYU14NWlQQTRRVW9lV1pJMDF0?=
 =?utf-8?B?L3E4bTdSYkNuVlZnS25ra3NDNjlaMFYrYjBsclJ6N0Q4K2xTenpyK2JTNzZ3?=
 =?utf-8?B?S0JXbWt4K3BBTmYvQTl2QVFMTEdYbVRJVjV1eUNCSDliODl1dWE2TEtOUjFy?=
 =?utf-8?B?bWRJc0kvUUMrOWRzQmx4eEdjMkQzWWRWL1FBNDBtYTlKL1VkeElkZ1hyK2xM?=
 =?utf-8?B?YWhoTkNBTGIxUk1PRkJaMHlKYmJkYXZ2NTFBZFI1T25FSGh2N1diOE9UdDRH?=
 =?utf-8?B?WTlQTm5SOHoxRXhLQ0kyZnE4UHRyS0F0Lzh0YVFNRTVlb0RmWGxEUWVlM0JC?=
 =?utf-8?B?M08vK1lDTkVmSWhSQkRJeGhMcEtqMFVoSTc4Vm5jZzgwaUZJWFdKTFZKNGc2?=
 =?utf-8?B?YWxVQVNXT2toSVp2dys4Qzl0NURVWVJoamY0a2Y5a0VLKyt2a2VHWVVoUktx?=
 =?utf-8?B?UXIvQThJWE9wN0E1SjQvMXhiS2NudFNDTm5zQnFhWE5ucnppSEg0MjRVSVNE?=
 =?utf-8?B?ZGNxMEp5NFpUVWVwdVJtamhuZGpvYm8ya3hJbk4wTG9wV3JKY1hMV1drSklh?=
 =?utf-8?B?b01XU0ZaNWd0Vk5mOW1WcFlLQTJXaldKNGZ5S3Rpb1BJb0tEb1J4WVZGd2ZB?=
 =?utf-8?B?T1h4a29mbm5Vd1JPZW9GMk5TSTM3UEtVRFNtS1VpNytjcHVTb0FrQ01Ncmx1?=
 =?utf-8?B?QVJxL0UzRGNCOFErNDZqTTVhNEJ3bmJwNnVSeGEwY2ZjUDZiaDJvTmtLZ2hj?=
 =?utf-8?B?SFhWUWp0SHcwa0dSdDN1MkRjbFN4L0swdkcxS1dLVlZjdHlIdTcyMzZZcXFC?=
 =?utf-8?B?MWpkZmptR3l5NWZTT1JKelVBVy9GZmtmZHAwcFJ4b0NWZno1eGNzQkFNNGx2?=
 =?utf-8?B?N0NUc0JNY2tiTDFhSXZJVUVsM1gyRFhGeHcrWFUwY1pYbnhTM0hVRDNUa1RX?=
 =?utf-8?B?bEVzWDM1bWxVVmFKSTNzeXUrU2o2ZjNxZU1PWkVRWU9WOHpTVHhNTHpNb0x0?=
 =?utf-8?B?RS9PU3Q0bUdmWmtmZGZ5dExFaDI3U0ZzUStEdFB3ZG5hM3pqempkNkE5Z0o3?=
 =?utf-8?B?ZjBnUWNMajc5VjBBZG04RFk0VXAwUS94QjJ0dzJKUGFzRXhHQm9MZUF1Ri9p?=
 =?utf-8?B?SVhkOUMwS2R1TVMrY1NYWFhQb20xUGhqaUord0pRcGxRdXRGY3RkdkluZDgr?=
 =?utf-8?Q?reTkdJGJqP+3iXJS9NEzVsQvY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4d07e90-13a5-40b7-997c-08dbe4de0dd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 06:50:56.8882
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mrGFMvItbmXd/ojJqBwn4SdGsccfd/TdTuav/xfSaK5yxX37tb0XYI4OhkYXid59qdx1Sv+DUdy5Q9P3+UDGHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6979
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 06:51:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61671

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSA8cmlj
aGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gU2VudDogU2F0dXJkYXksIE5vdmVt
YmVyIDExLCAyMDIzIDEyOjI3IEFNDQo+IFRvOiBtaWNoYWVsLm9wZGVuYWNrZXJAYm9vdGxpbi5j
b207IExlZSwgQ2hlZSBZYW5nDQo+IDxjaGVlLnlhbmcubGVlQGludGVsLmNvbT4NCj4gQ2M6IHlv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gW0FOTk9V
TkNFTUVOVF0gWW9jdG8gUHJvamVjdCA0LjMgaXMgUmVsZWFzZWQNCj4gDQo+IE9uIEZyaSwgMjAy
My0xMS0xMCBhdCAxNTo1NyArMDEwMCwgTWljaGFlbCBPcGRlbmFja2VyIHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnDQo+IHdyb3RlOg0KPiA+IEhpIExlZQ0KPiA+DQo+ID4gT24gMDkuMTEuMjMg
YXQgMTY6MjksIExlZSBDaGVlIFlhbmcgd3JvdGU6DQo+ID4gPg0KPiA+ID4gSGkNCj4gPiA+DQo+
ID4gPiBXZSBhcmUgcGxlYXNlZCB0byBhbm5vdW5jZSB0aGUgWW9jdG8gUHJvamVjdCA0LjMgUmVs
ZWFzZSBpcyBub3cNCj4gPiA+IGF2YWlsYWJsZSBmb3IgZG93bmxvYWQuDQo+ID4gPg0KPiA+ID4N
Cj4gPiA+IGh0dHBzOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8v
eW9jdG8tNC4zL3Bva3ktMTViDQo+ID4gPiA1NzZjNDEwMTIzMWQyNDhmZGE3YWUwODI0ZTE3ODBl
MWE4OTAxLnRhci5iejINCj4gPiA+DQo+ID4gPiBodHRwOi8vbWlycm9ycy5rZXJuZWwub3JnL3lv
Y3RvL3lvY3RvL3lvY3RvLTQuMy9wb2t5LTE1YjU3NmM0MTAxMjMxZA0KPiA+ID4gMjQ4ZmRhN2Fl
MDgyNGUxNzgwZTFhODkwMS50YXIuYnoyDQo+ID4gPg0KPiA+ID4gQSBncGcgc2lnbmVkIHZlcnNp
b24gb2YgdGhlc2UgcmVsZWFzZSBub3RlcyBpcyBhdmFpbGFibGUgYXQ6DQo+ID4gPg0KPiA+ID4g
aHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL3lvY3RvLTQu
My9SRUxFQVNFTk8NCj4gPiA+IFRFUw0KPiA+ID4NCj4gPg0KPiA+IE1hbnkgdGhhbmtzIGZvciB0
aGUgcmVsZWFzZS4gTWF5YmUgZm9yZSB0aGUgbmV4dCBtYWpvciByZWxlYXNlIHlvdQ0KPiA+IGNv
dWxkIG1lbnRpb24gdGhlIEhUTUwgdmVyc2lvbiBvZiB0aGUgcmVsZWFzZSBub3RlcywgYXMgd2Vs
bCBhcyB0aGUNCj4gPiBtaWdyYXRpb24gbm90ZXMsIGFzIHRoZXkgd2VyZSBhdmFpbGFibGUgd2hl
biB0aGUgcmVsZWFzZSB3YXMgbWFkZToNCj4gPiBodHRwczovL2RvY3MueW9jdG9wcm9qZWN0Lm9y
Zy9kZXYvbWlncmF0aW9uLWd1aWRlcy9yZWxlYXNlLTQuMy5odG1sDQo+ID4NCj4gPiBUaGF0J3Mg
YSBsaXR0bGUgYmV0dGVyIHRoYW4gdGhlIHJhdyByc3Qgc291cmNlcyA6KQ0KPiA+DQo+ID4gRm9y
IHJlbGVhc2UgdXBkYXRlcywgSSdtIG5vdCBzdXJlIHRoYXQncyBwb3NzaWJsZSwgYXMgdGhlIHJl
bGVhc2UNCj4gPiBub3RlcyBhcmUgdXN1YWxseSBhdmFpbGFibGUgaW4gSFRNTCBhZnRlciB0aGUg
cmVsZWFzZSBpcyBtYWRlLg0KPiANCj4gVGhlcmUgaXMgYWx3YXlzIHRoZSBvcHRpb24gb2YgdHdl
YWtpbmcgdGhlIHByb2Nlc3MgdG8gY2hhbmdlIHRoYXQ/DQo+IA0KIA0KSSBjYW4gc2VuZCB0aGUg
ZHJhZnQgcmVsZWFzZSBub3RlcyB3aGVuZXZlciBpdCBpcyByZWFkeSwgc28gaXQgY2FuIGJlIHJl
dmlld2VkL21lcmdlL2J1aWxkICggd2hpbGUgdGhlIHJlbGVhc2UgdW5kZXIgUUEgb3IgVFNDIHJl
dmlldyApICwgYW5kIHVwZGF0ZSBpdCBsYXRlciBpZiByZXF1aXJlZCB0by4gDQoNCklzIHRoZSBy
YXcgdGV4dCByZWxlYXNlIG5vdGVzIHN0aWxsIHJlcXVpcmVkIGZvciBuZXh0IG1ham9yIHJlbGVh
c2UgKCBhbmQgYW55IG9mIHRoZSBkb3QgcmVsZWFzZSBmb3IgdGhhdCBzZXJpZSApPyANCiggd2ls
bCBzdGlsbCBwcmVwYXJlIHRoZSByYXcgdGV4dCByZWxlYXNlIG5vdGVzIGZvciBjdXJyZW50IGFj
dGl2ZSBzZXJpZXMgZG90IHJlbGVhc2UgKQ0KDQpDaGVlIFlhbmcNCg==

