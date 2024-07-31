Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA36C3DA64
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 07:44:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by mx.groups.io with SMTP id smtpd.web10.37782.1722411836140725208
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 00:43:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=aOvZop9b;
 spf=pass (domain: intel.com, ip: 198.175.65.15, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1722411836; x=1753947836;
  h=from:to:subject:date:message-id:mime-version;
  bh=gHYBpa9DmJhClJFIuZ5+zfyKFdFXGOp9AP2ulmCaSaI=;
  b=aOvZop9bh6tx5cvIVasCDlo+0yOoElYst50hLHHpf3uSlk4XWqNUQZP+
   KEB3P8Kkjym+Iy1GXz04K2ayJ4tJm9UAlw1WFsfV/N/9oN7IN99r1WMJG
   /A6XAicKkzdeFCiZP4G/GZIk93TJT2YN/lLD10uuNimn1VrycktrcD6rS
   VsSv/KCxWhUsJT5Byzg20CUbpbulRftslb9GjCnXF7eNEdphxSwk9GtQP
   ptYIMCay7IdFMvfVkLK/N5zHGuUB3y3RcESJSXLyYUj32HCCWuThxebob
   AaascC3wHFAqpty+SqyX+m+UxUYdR1O2gMdlopVF3O3jHmBSCIFYAufsQ
   A==;
X-CSE-ConnectionGUID: fDvnUdKLQ0S92YHONyFbsw==
X-CSE-MsgGUID: pC7mDPcUTbuDJb/B8kdcLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="24035046"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; 
   d="scan'208,217";a="24035046"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2024 00:43:28 -0700
X-CSE-ConnectionGUID: FVm7OfMtSSSlPyYqJV9s0w==
X-CSE-MsgGUID: UMhz8/hBRe2BoOZ3XBJeaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; 
   d="scan'208,217";a="58733297"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 31 Jul 2024 00:43:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 00:43:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 00:43:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 00:43:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wniWlCoVB5Hs6E+jKyjrU7VMCn2an0GG9DxCa9cxElyRSltPwPkAWkJ7AEKd/JECYLU/kbcD+4JNb9/28/gcoWg2SX+u7P4dAxfxHduFU/roemN5gIoIxLNJYaIBXbq2RQpilN9x1rmnUk802p33Aa4R/O7MVQC2Z4T5QWg/eS9Pf3q4JRp6mG+zUNjMkG63pi61RZZ1oFDQLQUg8CAj7FodLU/XEMROyst19EG+cOPbOQHTFpbDZslbo6zZbpLDnktAkXGfcrNNxf2CYZEf4q/6n7iUWgmvu7+0StZKYhjD50cpZCx0XqpXxOy/XxwxYStgT1JiRKsWrn4J6E/mbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gHYBpa9DmJhClJFIuZ5+zfyKFdFXGOp9AP2ulmCaSaI=;
 b=B7H8JqvwaeqqdDSvpBBUFisdVQOtyTjjCCF9ZRz7cbINMhoaj+J4A0aalTkih+PejyhVgtBIOOstEr7yx8BlbN+KmRcdrJaYXRH6jHYLDAKhxQKdRMg9V9ptHavODWwKI6SOd88+gLTh2+qAp/I18kB5OLyduowq547qF19wJjQvCGxpGioWJ47clVNTuP1LXfrctEXI4aOxTOzCNo2alRAQcKKCW5QfHxgBVX2AbMud29mESbLM7ExfP3P6/FjzXJRLCCaIflfC+ULQoXShp8u5DyXnfpEzmRGaNSINFo2BH8yuyWViFYQUaMZEjHFXE/FbVLf8kUlusgskphSzYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Wed, 31 Jul
 2024 07:43:19 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::fd3f:dc5d:e481:43d4]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::fd3f:dc5d:e481:43d4%3]) with mapi id 15.20.7807.026; Wed, 31 Jul 2024
 07:43:19 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 5.1 (yocto-5.1_M2) Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 5.1 (yocto-5.1_M2)
 Now Available
Thread-Index: AdrjGMBYULS3s8oeS4CfhrfdAheRbg==
Date: Wed, 31 Jul 2024 07:43:19 +0000
Message-ID: <CH3PR11MB8093A044270559D268E09DA5B9B12@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|SJ0PR11MB5134:EE_
x-ms-office365-filtering-correlation-id: 7fa37ca4-3eb5-4625-7659-08dcb134723d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d0c0SmFtaEVydXBXclpXUWVUUVpmS24ra3ozZnY5bmRiS3NVSE1uVWQxWXNl?=
 =?utf-8?B?bkgzQzZobmpCWStUTkZZQUtHNDJEaU5wNElJMktPRytyVmhZQzd6LzByeHQr?=
 =?utf-8?B?eElIdldieVFLQ2NqL0ZEcnVLanI2QytFa3RhbkdMRURiQy9pVm9qbklwTXRB?=
 =?utf-8?B?alRQZWNDb25vVmFqT3pieXA5WDRpa3YzZG9xeGJsTWorVDV1MXhCZWwyVjlp?=
 =?utf-8?B?WktSK0ZqbGxCamUzcEJ0OEhXSFljSC84eWszODNWSlh1WWZYZkNSKzF6Nzhz?=
 =?utf-8?B?VkYzb002SW90RkpodVhKU1BCNFZWSnNyRDhyb0NUdjdKM3EvTzF4RXF1cUpJ?=
 =?utf-8?B?SDllZXBoUmZNY01JTEpMWWVLWTkrNXd0dkJyZktKWmVycWZSL1RPeU5VRytG?=
 =?utf-8?B?Vko0Q0tYQ0xpNHd6REhUTHU3aHJYTTIvODVsSWpPUzArVEtvWmdNZy9EaXMy?=
 =?utf-8?B?UHlmalFqZTBRKzZzNGYzMVFubUFOZkJjZUd4clhyaTFrdGFLL3pab3BDNHBj?=
 =?utf-8?B?WktaODlRUlR0UEpkUTVMTXhFTlAvbEE2c2FZdnVTUG5EV2pYZGpHQjNGOGp3?=
 =?utf-8?B?MnZhcEl2cjZwZVFKSGJGR3VMcTJTT1I5bW9pc2R5VzNXaWFKOUZHbGJzVk51?=
 =?utf-8?B?YmFRd0lkdVl2bHhWcUNQWDNNRDdVVHRwOVhWd2FBMWRNdDZxRS9ZNGZWWVVZ?=
 =?utf-8?B?VDUzY3cwY1hic0FlSVhSUzF1Qmh0VExjYlJ5NlYvWXlLZ1FtNTcweWd2N3VY?=
 =?utf-8?B?cUZBb3prdFlCSmFQdlBGVWJaWHJiY0RPbGFBckVmczdCaGVUK2l4ZU9vTkhZ?=
 =?utf-8?B?dCtDTlRFd2ZQdjNHWXd4aDZpMEVwZlE0aCtPVHBKcmROOUE5UnY1REhDN0tv?=
 =?utf-8?B?eXhoVXB3WnViZWVHbzVPSXY0ek96VEZoTC9XcEJUY24xT2xzQXVVZHJrQnBP?=
 =?utf-8?B?YmE3c3l1cE1NSnpJRnVYY2c0d0ZQY3RYVTQvV0NSbWhwYzFLRVlKWFlXYVR2?=
 =?utf-8?B?MzJLa1dWK0hzTmx1dmdwQlRwTUdjQVowZzJBVGNYUnRBQXFhSG5NTlRKZyti?=
 =?utf-8?B?TmxHdWhobTRsTjkwUmI3SDFJOW5LNWo4YjFIcUszYXNFUGNtekpXTmpJRVZ5?=
 =?utf-8?B?eTA3akdtQ3hrT2JlbTBhM29QQTZWdHlKblVBZWFXS3NmVkwrTmxqWkdlcjlm?=
 =?utf-8?B?ZEg0VGxqZGx2TWpmdWRKWURhZ1hQSDF6aDloVHBwd2Q2TEFNRUU0UTM3Rm5I?=
 =?utf-8?B?ZDg1RW5oaUdjb1lmUVRyQk0zWlVlNkU4UXhSdmZnelVvaFlObW54RTZwVFMx?=
 =?utf-8?B?TmZtbVhHRjJaZDNlNUNCOW9UeW9ORE9TUndza3RJd1ZzR0NlSzJKbnFGSWla?=
 =?utf-8?B?c1hhemNjMmo1UkhnUW84Z0M2SWxveGk0VEhSYlhOYjl5VXUrV0R2bGUyVlZV?=
 =?utf-8?B?b3NaRzV4bkNBNDJZUWtrUkNyQWk4ZGhvRGxQc0hUOHorT1dqeG1jblJic05Z?=
 =?utf-8?B?Q2t5Ync2TjlLeVh1SDFoRGdCVjBqbTFsNFgzRzNYU2lGZDE0UWlWTko3eHpv?=
 =?utf-8?B?Q1NjNFRHSnhxQUJ4cDdPcXpwOVFJN0hIaFk2eVp6bVNHbWZPS3d2UHpuOVNy?=
 =?utf-8?B?Q3NhWG15RWt5Mm9GMmpJTEdKajFKQUhXNTQ3Z0txVzhIT2c1ZWxraHdlbDNJ?=
 =?utf-8?B?Z3JlUWVtekRBRTR0SFd4NnlDR0FUWHJUU2s3UzB6b2E2ZTdsMk9ZN2QrWlln?=
 =?utf-8?B?TlRNSElsWjBZQnMzLzd2N2IxSU5MVjBrZ09td3hKNUtKc0FxbTltODRNeXV3?=
 =?utf-8?Q?NXai4m4hvDC4g8U6pfLpER3STit4fHA0mecAA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NkVKUGc0WDZ6UHB3NXlaNkc4RXdjeGRvRUh0d1czbzFvUktSWEM0cG1FODdi?=
 =?utf-8?B?YXMyZmgxQmhkcTRscThQZEZ5azgxek8yNUh2eWRvMmpjRE45KzlORWY5cnM1?=
 =?utf-8?B?L0h6RjRTcU5jR1BwTXRHNWZ2NCtIa1Bsdmd5VGQyT01rcU4vVWs2OVhVWHBh?=
 =?utf-8?B?UWZWTlR2c2VhTkpyTVpReGJPWGQ0RWEzb0wrVFhoZ2xndkxOYWJReU9WaHpp?=
 =?utf-8?B?K0FSOFpkMXM5dWFDN0VXbHRhbDJtUFBsa1R0eFJVSk9wZ1RKUVJPdUtqQXI3?=
 =?utf-8?B?ZVNFajRZZFlhd3QxRjJjUjZ0MGc0Tzd0YTQ4MWp0cG5HeHlvTEUvNmJIdTF0?=
 =?utf-8?B?cFM5OGZXb3FncmtDYjNjcGlBbkFmazZINXhGODREQXZIYzdIYXZHbTI4ZUlR?=
 =?utf-8?B?U29wTU9Ha2NGK1JXL3UvZ2ppMitzblhUdUdjRlJMNklnbmk3eHBDWEhXbm9a?=
 =?utf-8?B?SGhzMXRqSUlON1k0R25EcFQweG9qNDdOUWxqSWNmMXU2eEpmNUtyenFKa01v?=
 =?utf-8?B?ZkRTNk12RktOQ3RKTEpqdXVqT0QvbC9GL25HSFQzYUQ5WjNiQ3Vmdkk4WHow?=
 =?utf-8?B?UXRlOUwva2l4Vmh3czE4dU9welRSbjR1QmNVNGdhOGo5K1h6d0xtSWIyZkNN?=
 =?utf-8?B?NDd3V2tOSmJqeGRpamxqSDg1bnRmMytuYzlma1BLM20yaDgyWmdRa1FleVBB?=
 =?utf-8?B?ZFhmSUlZZG1lZ2xJRmlHdzQ5RU4zalBiT1h0bDZ0UUFSZTFkeXBUSW1qL2NH?=
 =?utf-8?B?N1V6WXBtSCsxOEFtWlFxb3BFVlhyWktpMWI3YnNwOUd1Z0taZUxqZElrZ21N?=
 =?utf-8?B?R3lpLzZSTkdidW02bEIvTDZ6aGcxR2RFQzUzcnp2dUxyMXIxY2ErSmoxNWZL?=
 =?utf-8?B?S2FNWjQ3bnBCd2czWTEvVFVDNlpHdTI5cHkyTlBwU1ZFMW4rVFhiYzUyK2Nj?=
 =?utf-8?B?RGZwaHpjQTFEMEZmeXpvWW92bXRHZWx4RkxBdnN4WmZCcjhiVXRYU2gya3BF?=
 =?utf-8?B?QjhLV2JrN3BRSE9XVFNCVFkxMTY2R2hDMjZJeTgyekVaMTBVaXpxdDk2YWtv?=
 =?utf-8?B?V1JyQ24wMk9hWmhiUDVZZFIvZ0YvRkdDZG5HcVJYYWJtN0czeW1CWFVyY2ty?=
 =?utf-8?B?WmZYMzVNajllQWdrVXhMeFV0WGJUOS82SWxTOCtwUWdKNGdWN1dJZEo0L3My?=
 =?utf-8?B?UndSeUZTMGVpVVFqcFJOZU1YY1ZyYnFCS0NjQWcyQjlGQlJUZGFUWHFjNSty?=
 =?utf-8?B?ZkQzZTRoZEx6TGVCbnh2OEs0OFMybmJDd215aUpqQ0hkMXJ4R3BQVC93S3ZL?=
 =?utf-8?B?ajdJOC82WHdlOGIzZTZ5cWlKRDdyNnlUMVMxVm9rVDBvY1BmM0tvR3ZpSzVa?=
 =?utf-8?B?a1Y5dEdLelFuRHA5L3BYZ1c0dW03NHNucGRBS1l4YXo5YnFIN1BwN0pLdm1N?=
 =?utf-8?B?TndiTGV5bUxIUjZJRklGV1NOc082c04ybkc5TlAvR3lpbm9nWVNRTm1wSHhs?=
 =?utf-8?B?cUVVSy9PL1ZlK3R0Wk5IaE9YREhPTER6TXRRT3BNTGh5aEtmL29XWDUvcEUz?=
 =?utf-8?B?NDVpV2dMVGtNTDZmemhTSjROei9HOTBCR0xQSkdqbDA5OENPRytpb3UwL0dO?=
 =?utf-8?B?czUyOENneDFOVGFsNUdOaTB4Q2ZuWDcyam04TloxbUl2ZTB1dkFtT3lJRzFW?=
 =?utf-8?B?eEtySjNXYVpJTS9DS3VBWDVxRDlyMmlaV2F5WG9WODZPYisrTFFHb2cxcHBS?=
 =?utf-8?B?NGNnQ3VXeHdBdVJocXB2VTZaeG42RTEvemRyUDVJaHhIUUtSWUtEdDZ0UHVD?=
 =?utf-8?B?MzJTWlJDMjlqaTRjQVFiRVlDaHN6QXAwSk1oMzBRTTIyYTdINFhMMy9mVEY2?=
 =?utf-8?B?aVo1OER4UHJYYlVOQXRvSzBhQi9uS05GM1NNaWsxUE1BK3AwWWcwSFlnZ0ZL?=
 =?utf-8?B?Z0psVGJyNE4rTGh0eXlwSGZLYWVqUlBqejgvbE9JSnlIZzg0RlpQc0tyeFc3?=
 =?utf-8?B?TTlSUXNlakgxbEIyNXRFTHU5c2lpSnhTWU1MRVlTU2U3bmhnTnc2dU41WWZM?=
 =?utf-8?B?by93L1JhZTU1azNCYTE2cWRHNWVxd1VFUEZCRDROSFNRQXFYTUVpNk4rT1Ey?=
 =?utf-8?Q?9GpTIdHjVp9LucTxYjkXLqD9/?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB8093A044270559D268E09DA5B9B12CH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fa37ca4-3eb5-4625-7659-08dcb134723d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 07:43:19.2768
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BD2nPeQnGecTciRci3E99RXDb0cdVero00g/GVAS1Jx4E4RoooeGiJPI3fO3HJ6nTSzXGAukM2buvMQloHoNLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 07:44:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63620

--_000_CH3PR11MB8093A044270559D268E09DA5B9B12CH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHNlY29uZCBtaWxlc3RvbmUgcmVs
ZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA1LjEgKHlvY3RvLTUuMV9NMikgaXMgbm93IGF2YWlsYWJs
ZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJv
amVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjFfTTINCg0KYml0YmFr
ZTogMWQ3MzYwMDMxMTY0ZjA0ODg3Yzc5MmZiMGIyZGQ4NmM2Y2NmY2MyMw0KDQptZXRhLWFnbDog
M2YzYmJkMzg3MWU1YTdhNGU5ZTI3NWUyYzk1N2I5ODUxNWNjMzBjMw0KDQptZXRhLWFybTogMTRk
MjRiNTUyNjI5OGNkZmQ2ZGI2NWI2ZTExYjU0ODA0YTZhNTUzZg0KDQptZXRhLWF3czogNGQwNDhl
YWNiNWNiZGFlYjNmMzdkMDQyN2NjOGE4MTBhOGJhN2I2OQ0KDQptZXRhLWNsYW5nOiAxZmRkZTU1
ZDk1MWI3YThmMWU1MzdjY2Y1NmFjYTJkYzkwYzQwMDkxDQoNCm1ldGEtaW50ZWw6IGU5NzM4NjI1
NDcxMjA0N2YyN2Y1NTU0ZGE2NDcwZmUzZmI2NWQwN2ENCg0KbWV0YS1taW5ndzogZTRkMzc3ZDVk
ZGI2MmIyNjU1MzZiZDMzZGJjY2ZiYjA5MDRmODcwMQ0KDQptZXRhLW9wZW5lbWJlZGRlZDogZjgz
NDI4NTVhNDQwZmE1YzQxOTRmYzU3Mjg1ZThkYjllMDM0ZmNhYQ0KDQptZXRhLXZpcnR1YWxpemF0
aW9uOiBjMTM4OTQzZmVkMjllNzY4ZGY5OTAwNjFjMzBkNmYwNzFiOThmZmMzDQoNCm9lY29yZTog
NzU4NTA4NjE0NTQxYzY4ZGQ2YTJiNzA4NGUwNzI4N2M3MWY0MGE4Zg0KDQpwb2t5OiBlMThkNjBk
ZWIwNDk2ZjdjOTFmMmRlOTAwZDZjMDI0YjQ1Yjc5MTBhDQoNCg0KRnVsbCBUZXN0IFJlcG9ydDoN
Cg0KaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVz
dG9uZXMveW9jdG8tNS4xX00yL3Rlc3RyZXBvcnQudHh0DQoNCg0KTm90ZXM6DQoNCkR1cmluZyBh
dXRvbWF0ZWQgdGVzdGluZyBvZiB0aGlzIHJlbGVhc2UsIHNldmVyYWwgaW50ZXJtaXR0ZW50IGZh
aWx1cmVzIHdlcmUgZW5jb3VudGVyZWQgd2hpY2ggZGlkIG5vdCBvY2N1ciB1cG9uIHJlLXRlc3Rp
bmcuDQpXZSBhcmUgaW4gdGhlIHByb2Nlc3Mgb2YgaW52ZXN0aWdhdGluZyB0aGVzZSBidXQgZG8g
bm90IGJlbGlldmUgdGhlcmUgYXJlIGFueSBzZXJpb3VzIGlzc3VlcyBwcmVzZW50IHRoYXQgc2hv
dWxkIGJsb2NrIHJlbGVhc2UuDQoNCg0KVGhhbmsgeW91Lg0KDQpDaGVlIFlhbmcNCmNoZWUueWFu
Zy5sZWVAaW50ZWwuY29tPG1haWx0bzpjaGVlLnlhbmcubGVlQGludGVsLmNvbT4NCllvY3RvIFBy
b2plY3QgQnVpbGQgYW5kIFJlbGVhc2UNCg0KDQo=

--_000_CH3PR11MB8093A044270559D268E09DA5B9B12CH3PR11MB8093namp_
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
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkFwdG9zO30NCkBmb250
LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlxA562J57q/IjsNCglwYW5vc2UtMToyIDEgNiAwIDMgMSAx
IDEgMSAxO30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9y
bWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowY207DQoJZm9udC1zaXplOjEyLjBwdDsNCglm
b250LWZhbWlseToiQXB0b3MiLHNhbnMtc2VyaWY7DQoJbXNvLWxpZ2F0dXJlczpzdGFuZGFyZGNv
bnRleHR1YWw7fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3Jp
dHk6OTk7DQoJY29sb3I6IzQ2Nzg4NjsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnAu
TXNvUGxhaW5UZXh0LCBsaS5Nc29QbGFpblRleHQsIGRpdi5Nc29QbGFpblRleHQNCgl7bXNvLXN0
eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJQbGFpbiBUZXh0IENoYXIiOw0KCW1h
cmdpbjowY207DQoJZm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fu
cy1zZXJpZjsNCgltc28tbGlnYXR1cmVzOnN0YW5kYXJkY29udGV4dHVhbDt9DQpzcGFuLkVtYWls
U3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZvbnQtZmFtaWx5
OiJBcHRvcyIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCnNwYW4uUGxhaW5UZXh0
Q2hhcg0KCXttc28tc3R5bGUtbmFtZToiUGxhaW4gVGV4dCBDaGFyIjsNCgltc28tc3R5bGUtcHJp
b3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IlBsYWluIFRleHQiOw0KCWZvbnQtZmFtaWx5OiJD
YWxpYnJpIixzYW5zLXNlcmlmO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4
cG9ydC1vbmx5O30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsN
CgltYXJnaW46NzIuMHB0IDkwLjBwdCA3Mi4wcHQgOTAuMHB0O30NCmRpdi5Xb3JkU2VjdGlvbjEN
Cgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHht
bD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3ht
bD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6
ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBl
bGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tTVkiIGxp
bms9IiM0Njc4ODYiIHZsaW5rPSIjOTY2MDdEIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQi
Pg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5IaTxicj4NCjxicj4NCldlIGFyZSBwbGVhc2VkIHRv
IGFubm91bmNlIHRoZSBzZWNvbmQgbWlsZXN0b25lIHJlbGVhc2UgZm9yIFlvY3RvIFByb2plY3Qg
NS4xICh5b2N0by01LjFfTTIpIGlzIG5vdyBhdmFpbGFibGUgZm9yIGRvd25sb2FkLjxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+RG93bmxvYWQ6PG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48YSBocmVmPSJodHRwOi8vZG93bmxvYWRz
LnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjFfTTIi
Pmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3Rv
bmVzL3lvY3RvLTUuMV9NMjwvYT48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
UGxhaW5UZXh0Ij48YnI+DQpiaXRiYWtlOiAxZDczNjAwMzExNjRmMDQ4ODdjNzkyZmIwYjJkZDg2
YzZjY2ZjYzIzPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij5tZXRhLWFn
bDogM2YzYmJkMzg3MWU1YTdhNGU5ZTI3NWUyYzk1N2I5ODUxNWNjMzBjMzxvOnA+PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+bWV0YS1hcm06IDE0ZDI0YjU1MjYyOThjZGZkNmRi
NjViNmUxMWI1NDgwNGE2YTU1M2Y8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRl
eHQiPm1ldGEtYXdzOiA0ZDA0OGVhY2I1Y2JkYWViM2YzN2QwNDI3Y2M4YTgxMGE4YmE3YjY5PG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij5tZXRhLWNsYW5nOiAxZmRkZTU1
ZDk1MWI3YThmMWU1MzdjY2Y1NmFjYTJkYzkwYzQwMDkxPG86cD48L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvUGxhaW5UZXh0Ij5tZXRhLWludGVsOiBlOTczODYyNTQ3MTIwNDdmMjdmNTU1NGRhNjQ3
MGZlM2ZiNjVkMDdhPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij5tZXRh
LW1pbmd3OiBlNGQzNzdkNWRkYjYyYjI2NTUzNmJkMzNkYmNjZmJiMDkwNGY4NzAxPG86cD48L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij5tZXRhLW9wZW5lbWJlZGRlZDogZjgzNDI4
NTVhNDQwZmE1YzQxOTRmYzU3Mjg1ZThkYjllMDM0ZmNhYTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb1BsYWluVGV4dCI+bWV0YS12aXJ0dWFsaXphdGlvbjogYzEzODk0M2ZlZDI5ZTc2OGRm
OTkwMDYxYzMwZDZmMDcxYjk4ZmZjMzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb1BsYWlu
VGV4dCI+b2Vjb3JlOiA3NTg1MDg2MTQ1NDFjNjhkZDZhMmI3MDg0ZTA3Mjg3YzcxZjQwYThmPG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij5wb2t5OiBlMThkNjBkZWIwNDk2
ZjdjOTFmMmRlOTAwZDZjMDI0YjQ1Yjc5MTBhPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PGJyPg0KPGJyPg0KPG86cD48
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMS4wcHQiPkZ1bGwgVGVzdCBSZXBvcnQ6PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTEuMHB0Ij48YSBocmVmPSJodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5v
cmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjFfTTIvdGVzdHJlcG9ydC50eHQi
Pmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3Rv
bmVzL3lvY3RvLTUuMV9NMi90ZXN0cmVwb3J0LnR4dDwvYT48bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij48YnI+DQo8YnI+DQpOb3Rlczo8YnI+DQo8YnI+DQpE
dXJpbmcgYXV0b21hdGVkIHRlc3Rpbmcgb2YgdGhpcyByZWxlYXNlLCBzZXZlcmFsIGludGVybWl0
dGVudCBmYWlsdXJlcyB3ZXJlIGVuY291bnRlcmVkIHdoaWNoIGRpZCBub3Qgb2NjdXIgdXBvbiBy
ZS10ZXN0aW5nLg0KPGJyPg0KV2UgYXJlIGluIHRoZSBwcm9jZXNzIG9mIGludmVzdGlnYXRpbmcg
dGhlc2UgYnV0IGRvIG5vdCBiZWxpZXZlIHRoZXJlIGFyZSBhbnkgc2VyaW91cyBpc3N1ZXMgcHJl
c2VudCB0aGF0IHNob3VsZCBibG9jayByZWxlYXNlLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxicj4NCjxicj4NCjxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTEuMHB0Ij5UaGFuayB5b3UuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTEuMHB0Ij5DaGVlIFlhbmc8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PGEgaHJlZj0ibWFpbHRv
OmNoZWUueWFuZy5sZWVAaW50ZWwuY29tIj5jaGVlLnlhbmcubGVlQGludGVsLmNvbTwvYT48bzpw
PjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjExLjBwdCI+WW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZTxicj4NCjxicj4N
Cjxicj4NCjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_CH3PR11MB8093A044270559D268E09DA5B9B12CH3PR11MB8093namp_--

