Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13A1EEB64D7
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 06:04:21 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web10.2574.1686895451165449266
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 23:04:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=nncQnj69;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1686895452; x=1718431452;
  h=from:to:subject:date:message-id:mime-version;
  bh=pCus9I3yQr8IJXjJliLObOpT/KsbMtM1v1M5/T2emSs=;
  b=nncQnj69rT4m5v18dILTlq7mmDDff3SGnkFmi627lR/qXLV9urrsJwTR
   f7C8kfcR8ugc9QBr6RS/JCrh9G3tCnfoRf8Oie4TBJkVQGTKtXTuYYqsB
   laYRs7sZcYZ4reCikWu5jSNR47AGugcYPmIrLs/Fuouc/UaSeHCJ9/j4f
   e+QI6NkQMH3eYng4+xOPOCyi8maUV4PGRTgHRV/dqyXdb/bwAZoWemRfR
   vli6qGkp1Elp78LI1AKYTI9SszTwcwaqxtOHb9U6mD5zqRUC6Proq8qRU
   snD2g1BebQGABAKhMBE6IiQDtxri/Y7lpaZRH1k1/kAK9jluqI3DXgga9
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="356621182"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; 
   d="scan'208,217";a="356621182"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2023 22:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="825598000"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; 
   d="scan'208,217";a="825598000"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga002.fm.intel.com with ESMTP; 15 Jun 2023 22:49:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 22:49:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 22:49:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 22:49:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 22:49:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+j2dgYpEA/YX7hL+N3sNYJR4TYMvr97tkZpMZqTvt1kHgBOBeL3+4d8eOSNQf+KV3wzg0zqwz4mLSBpz/rkwCUSO+PhrzHQ0tzWURu6MbZObiH54FLwpV9E5rmTeba2KfLo81K+4ZR93CQNmV7B8U/PRHXYQ2PE2wELssaRHayVJN1D9cxd+qKQPI9kDqpjtWSw467D3DGcXSLSoaXJo/clgiUdF0MGUueDYyq/4CoLd8P2S632gvUIfrgUD1Ozu5kSSuxM+hbikeArduRIdjg/Ngt8VF4ykosHmtpRv7dkEDId0gmjOGMCIGGGZw/UTZCggdZthipGcQ75qm6aFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pCus9I3yQr8IJXjJliLObOpT/KsbMtM1v1M5/T2emSs=;
 b=QfF8/Q17+5ZN1leCgslNU0vDPDb5r2TyWWnKjZ+5A9tVAZEgRxXgoKCTJw32yeQ13nN2ZO1JpRQ+T3OG2+LxGrrGc02zcRrqNymqyKeyUwZA5Gf0nScSNFmBsTOcgMHDXsnh6d1WjLeqqpBypUD35Dr3gkb6Z+uvxNuKR79INpMfp8jEnJw2lgARvaGMh9rRBf12LHICStGeVwGI9+SRNQsGB7HK7JWRBsGjuueLiqvAYNYM3JuWCgKb/e1PXzWRyjFCQS5wQ+fnC4OQ/0mK1MF4w88UVIlt/vldUEEYoMl0vQRb+1/9r7iaFNCxLHcbc87ocdm9skhmXZ8J9cSSdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by IA0PR11MB7912.namprd11.prod.outlook.com (2603:10b6:208:3dd::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Fri, 16 Jun
 2023 05:49:16 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::53a2:4949:8a9:d82d]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::53a2:4949:8a9:d82d%6]) with mapi id 15.20.6500.029; Fri, 16 Jun 2023
 05:49:16 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 4.3 (yocto-4.3_M1)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 4.3 (yocto-4.3_M1)
  Now Available
Thread-Index: AdmgBROy36zPaS90TjW4KvIoJA8jNg==
Date: Fri, 16 Jun 2023 05:49:15 +0000
Message-ID: <CH3PR11MB8093120CEF0636B6DB202CDFB958A@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|IA0PR11MB7912:EE_
x-ms-office365-filtering-correlation-id: d532bc8c-638e-4dda-b674-08db6e2d6b54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nz/MJsxUnOM1/m4gww6PR1nPIzuJgcX4viMmlGIJG7q27/UFN2vms6nWTZzWtQLj1MoP2+iJjsdBP3r4U8xxVN/+/AwrEDM37lbeIeI/TP3UzGyw0m2GDUqr6IlNauIJvPGQ88+VAodjHJsWdhLPQLdPxbchgQx41N/WtF44Q5xTxM8z6CKzis/lnnUEyDWMItGVIHHwUEC8mpvBstEwFGf1zemh+GCxh/O6RNHoQfvDPbZiaFF4K+lVHW+1lKm1/fJlmaZrYRPgdx52HPjmTArHD+cpripb0rDCqgRpUMm1eIsHzo94H5PzSUTIMsPazHiRNztA9bLYXbhHbvigDypnTv+oLIs3HTlcv0wdQXGlFjbqPHzzyrxjU4HPB3u2Kem4/F5FC2Qu9v/GxI5+smYPZm8noGU3RoBw6zCZPGTholJjDznoRntvAzGxoAohmvv/u/kqPg1/cIIV6eNlrSMxKC43HDGSumIDvQvAefGnE0YNp3iGi8MKuF5o5NLvXsjMr6QbjoRYz19ih4owxj6dmgnePKII8ZVeagMru5r13wjyjU1VacyuYcF9d/RriGANfVqwXyn4xK/m7Sfi6b+tk5nwO5IZ/5VVbTb/ntL1ormKTTl+RpwFEt4grYv90wN2sapewdt8WDwjg0jh1w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199021)(110136005)(41300700001)(86362001)(7696005)(66446008)(64756008)(66556008)(66946007)(9326002)(8676002)(8936002)(316002)(33656002)(71200400001)(66476007)(450100002)(76116006)(478600001)(9686003)(55016003)(5660300002)(166002)(966005)(52536014)(83380400001)(6506007)(2906002)(4744005)(186003)(38070700005)(82960400001)(122000001)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MllUTnJieGdxMy9hQkZzcU9KY0MvUjNPTTUrQ3FuazE3cnY3OE1YNk5zaVE5?=
 =?utf-8?B?TEc4Tk1FVjhrQkdKdll1N0NiMlIrcGg5STRBUTVodUhXeUtrbjZEWDNTUFBy?=
 =?utf-8?B?V2MxVENodWRrbE8yVURaclhSWWkrWVBJMmNINkpjaDlvd3JNNEk0am8wM3dY?=
 =?utf-8?B?YWhQemxHL1JvVTJwdlVvbGdLUDc2TDRjWE90U21TVGYrWlduNWZCL25ZTUVX?=
 =?utf-8?B?ZFFhV0ROeWp4Zkg1cjhTNVhvN01uWlRaaWhlQkk0dlNvTVFCNDBjUG43ekRT?=
 =?utf-8?B?Rjc3di91VDdwTzNpQ2NZZkc5d3F6RkQ1MWVEV2RtRnF3TG82Y01Kem1udElw?=
 =?utf-8?B?OTQ2Yk1TL1JQMkxyZ2p0NzA2UlVpSnNPOXFCcS9EcGZrM3NkTk9Ca1didXVn?=
 =?utf-8?B?Zjlaem9NelFnb2VaTzJieDBRMi9ncGFUMnBoL1h4M0tteDA5cXlGdUprR2dF?=
 =?utf-8?B?c0cwSllSL0t1dHg5aDlINWd5bDBBUlFRTSsxdCtPY3RVcGtFNlVvWGgxNE5r?=
 =?utf-8?B?M2F5WE1tVFliUTNNMzRGWHZVWTR0Vk54WW5UdXRQL085b1M4MkZhN0VZUmhZ?=
 =?utf-8?B?QXdHY2xvSSs3VldHcmJnNFlLeEdGNVJKeTR2RkFzNmllUU95ays0bUxkakgx?=
 =?utf-8?B?MDdheHhTK0pjVzBiSmhNRmRHeHUwU3dkTkhvaGpURS9uWFhXQjg0TitsT0gx?=
 =?utf-8?B?TmI0NTRvQzBHVzJla08xQlRqbVVGUm1GanBoU3pEbWpkNis1ZTFkSlZtRTNl?=
 =?utf-8?B?c0tGTjZ4TVBRQWVaWldGWmhacEl5NDNNdUR3SjMvaUIyTEtjMnlybFM1YThP?=
 =?utf-8?B?Tk9lVVRJaFRraFpmR2U3d0JCNWQvalQ5TmlFdkkzUDFGS3k0KzdiUFR6djlv?=
 =?utf-8?B?d0ZwK3JJcnhoakMwS2FoZE5HbUt1VncvOTVvTldLVWV3OUFENHBYWVJJZ21R?=
 =?utf-8?B?bi8xQ1U4M1ZIVXd3SEVJWEJQVTBhOXVHRjcrWlJaQ0xlakpGWUJ4TlAxSWl4?=
 =?utf-8?B?L1RROVE4OStwWmc4aUlNSTNXM3dKNFN4Vm5zcWhCbVAyUDZWNWV3NlBuZC9u?=
 =?utf-8?B?b1hWZnlhYXJkSVZxQXZEQlI0WTN4b3k4WTNFK05XQklaRkRIQnRVTGkwY2kv?=
 =?utf-8?B?V0MyVFRnTUtKajRZRW5Fb1Zja2UwbERuRFVNVERNUnpPVEc5dTFZeFlLd3pQ?=
 =?utf-8?B?OVFmeEFhRlcxaXNoSHoreTB6ZnlseHFKUlVFQ3d6SnM5SVhSRUYxbXF5bUxN?=
 =?utf-8?B?TDFTTzVRU2JkOTBaeWU4SW5PVTU4aGpSa2p3c0dFYXQ3MFQrYXRaZC9ENEpR?=
 =?utf-8?B?QnF1bnNndzFxSmM4eGxqTlVpdkIwSE9Rb3BHSDBobTNYN3d1Q2ZOMTZvc3NI?=
 =?utf-8?B?UUNYUEFrcjFVemlMM25JZHNLZnp6ZU0zSkFqc0FpM0tBMmNQb0Y5QnhldWdl?=
 =?utf-8?B?OHp1d3FPcktsYUYzNTQzcUJJZmZPbGZ0ajFxMlpQTzRGdE9JMGJsWG9nQmhj?=
 =?utf-8?B?R2phWG1tRUk5Tjc0Ui8zL3VZOG54anVMSlR5ZTVOd2FDOE9GTWRzY25tN0FE?=
 =?utf-8?B?bVBuTGIvaDU5NGRiOHZBSjdrYlF3RllxRXpqc2JpRnU1dEk3eUhtK1ZGMzhN?=
 =?utf-8?B?dWJGZVo5OXRiVGpSNUxJbmZtY09tSlh1UTJwRG1GN25jZXRqZWdIbVdHR3o1?=
 =?utf-8?B?ZjFXT1ZueTJNRUtBdTdodTdTdmQzREtUeG5QNVloT2VzM1FVSTN0SnJ2dHFM?=
 =?utf-8?B?N09SLzg5UVZ3eHZlVjF5KzJsQkJUaHpGVFVmUnYxRGczaXlyMnBmajB0N3kr?=
 =?utf-8?B?U3E5bFphaFB3dDM5NkhsRlIvZjExdzBaS045dENNNkltNHNwVjYvYndhRE1S?=
 =?utf-8?B?Qm1WT2VVYU53YzZSOGt5UDV6TEdod0dxcTRsVHl1eU5QMlVSV2hjb3ZxMGI2?=
 =?utf-8?B?WVJ2aWhJQlZlMHc2cEllQzFTSS9uNVhac3o5MU9LWnpHektaeitPZ0FqZGhn?=
 =?utf-8?B?R0lkSjYrNDU0OEJIM0x3MlpTTFE4TENIMWxnd2VOdXYyVFJicWppK1A1azU3?=
 =?utf-8?B?VDJNU00wVllDUGY0cStGcVQzYU5RZUY2YWpoSFk3VnNOR1ZyV1l1bkl0SGxV?=
 =?utf-8?Q?2EPo=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB8093120CEF0636B6DB202CDFB958ACH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d532bc8c-638e-4dda-b674-08db6e2d6b54
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2023 05:49:15.6205
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AkpW7Uu66OodOiq7pRv6TPnPf81PC2pu8dJeuYVQU9Ll/atB/xaJkK11g+vPdFc6ZhllfxXLq6hdZxO6TRrkbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7912
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 06:04:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60323

--_000_CH3PR11MB8093120CEF0636B6DB202CDFB958ACH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8NCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIGZpcnN0IG1pbGVzdG9uZSBy
ZWxlYXNlIGZvciBZb2N0byBQcm9qZWN0IDQuMyAoeW9jdG8tNC4zX00xKSBpcyBub3cgYXZhaWxh
YmxlIGZvciBkb3dubG9hZC4NCg0KRG93bmxvYWQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9w
cm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19NMQ0KDQpiaXRi
YWtlOiA2YWJkYzgxZGVjMDZhMzYyYmZiY2MwNmQ2OWI5MGI5NmJkOWJlZjAxDQptZXRhLWFnbDog
MDkxMzUxNjRhMjFhMjE2YzZlM2U3NWQ3ZGVjY2U4OTZiOTI5NjJmMA0KbWV0YS1hcm06IGMxYTdk
ZDVlZGE0MTkxMDliMTc5YWY2Y2JmOTNjYjBkYWMyZjdhZTMNCm1ldGEtYXdzOiAwM2RiZDQ0YTg1
MGIxM2M1ODFmNDMzNTI1NGY5MTVjZTUwYmMxM2MzDQptZXRhLWludGVsOiBlYjY5NmU5OWZmOGM1
YmU0ZjliMTgxZGE5ZjEzNDQ5OWQ5Njc2MGU0DQptZXRhLW1pbmd3OiA2YmFkZWRhYTNlNGRmNWIw
MGI1YWE5OTJjNWMxNzRlMzE1YjA5OTcyDQptZXRhLW9wZW5lbWJlZGRlZDogMTk1NWQwZjE0MGE5
NjEwMzQ2MDIxZDQyZmE0NWNiMTg2ZWI2ZjA0Mg0KbWV0YS12aXJ0dWFsaXphdGlvbjogZDlkYzk5
MjgyZmE0YTdkZmNlODYxZjY0ZTc5MmIxYTgzMDdhNGE4Yw0Kb2Vjb3JlOiBmN2VkN2FlODU0ZTQ5
Mjc2NzUwZDE4OTU1OTNlMGEyMDMzNzE0MjM1DQpwb2t5OiBjYzk3ZDc3NWNiNDAyZGYwZDQxMjJi
ZjU0ZWFiMWE1MTk4Yzk4NDcxDQoNCkZ1bGwgVGVzdCBSZXBvcnQ6DQoNCmh0dHA6Ly9kb3dubG9h
ZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19N
MS90ZXN0cmVwb3J0LnR4dA0KDQpUaGFuayB5b3UuDQoNCkNoZWUgWWFuZw0KY2hlZS55YW5nLmxl
ZUBpbnRlbC5jb208bWFpbHRvOmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPg0KWW9jdG8gUHJvamVj
dCBCdWlsZCBhbmQgUmVsZWFzZQ0KDQo=

--_000_CH3PR11MB8093120CEF0636B6DB202CDFB958ACH3PR11MB8093namp_
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
YTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29s
b3I6IzA1NjNDMTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHls
ZTE3DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkNh
bGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0K
CXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fu
cy1zZXJpZjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJ
bWFyZ2luOjcyLjBwdCA5MC4wcHQgNzIuMHB0IDkwLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJ
e3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+
DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+
PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4
dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxh
eW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLU1ZIiBsaW5r
PSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4N
CjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IZWxsbzxi
cj4NCjxicj4NCjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+V2UgYXJlIHBs
ZWFzZWQgdG8gYW5ub3VuY2UgdGhlIGZpcnN0IG1pbGVzdG9uZSByZWxlYXNlIGZvciBZb2N0byBQ
cm9qZWN0IDQuMyAoeW9jdG8tNC4zX00xKSBpcyBub3cgYXZhaWxhYmxlIGZvciBkb3dubG9hZC48
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RG93bmxvYWQ6PG86cD48L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxhIGhyZWY9Imh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0
by9taWxlc3RvbmVzL3lvY3RvLTQuM19NMSI+aHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qu
b3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4zX00xPC9hPjxvOnA+PC9vOnA+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5iaXRiYWtlOiA2YWJkYzgxZGVjMDZhMzYyYmZiY2MwNmQ2OWI5MGI5NmJk
OWJlZjAxPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWFnbDogMDkx
MzUxNjRhMjFhMjE2YzZlM2U3NWQ3ZGVjY2U4OTZiOTI5NjJmMDxvOnA+PC9vOnA+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hcm06IGMxYTdkZDVlZGE0MTkxMDliMTc5YWY2Y2JmOTNj
YjBkYWMyZjdhZTM8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtYXdz
OiAwM2RiZDQ0YTg1MGIxM2M1ODFmNDMzNTI1NGY5MTVjZTUwYmMxM2MzPG86cD48L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWludGVsOiBlYjY5NmU5OWZmOGM1YmU0ZjliMTgx
ZGE5ZjEzNDQ5OWQ5Njc2MGU0PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5t
ZXRhLW1pbmd3OiA2YmFkZWRhYTNlNGRmNWIwMGI1YWE5OTJjNWMxNzRlMzE1YjA5OTcyPG86cD48
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLW9wZW5lbWJlZGRlZDogMTk1NWQw
ZjE0MGE5NjEwMzQ2MDIxZDQyZmE0NWNiMTg2ZWI2ZjA0MjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+bWV0YS12aXJ0dWFsaXphdGlvbjogZDlkYzk5MjgyZmE0YTdkZmNlODYx
ZjY0ZTc5MmIxYTgzMDdhNGE4YzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
b2Vjb3JlOiBmN2VkN2FlODU0ZTQ5Mjc2NzUwZDE4OTU1OTNlMGEyMDMzNzE0MjM1PG86cD48L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5wb2t5OiBjYzk3ZDc3NWNiNDAyZGYwZDQxMjJi
ZjU0ZWFiMWE1MTk4Yzk4NDcxPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkZ1bGwgVGVzdCBSZXBv
cnQ6PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxhIGhyZWY9Imh0dHA6Ly9kb3dubG9hZHMueW9j
dG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19NMS90ZXN0
cmVwb3J0LnR4dCI+aHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lv
Y3RvL21pbGVzdG9uZXMveW9jdG8tNC4zX00xL3Rlc3RyZXBvcnQudHh0PC9hPjxvOnA+PC9vOnA+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5UaGFuayB5b3UuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkNoZWUgWWFu
ZzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0ibWFpbHRvOmNo
ZWUueWFuZy5sZWVAaW50ZWwuY29tIj5jaGVlLnlhbmcubGVlQGludGVsLmNvbTwvYT48bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPllvY3RvIFByb2plY3QgQnVpbGQgYW5kIFJl
bGVhc2U8YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1s
Pg0K

--_000_CH3PR11MB8093120CEF0636B6DB202CDFB958ACH3PR11MB8093namp_--

