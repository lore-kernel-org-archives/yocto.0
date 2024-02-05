Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86785C48291
	for <webhook@archiver.kernel.org>; Mon,  5 Feb 2024 05:27:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by mx.groups.io with SMTP id smtpd.web10.57244.1707110827573209097
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Feb 2024 21:27:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=ObOz7iix;
 spf=pass (domain: intel.com, ip: 198.175.65.16, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1707110828; x=1738646828;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=l3GD+XaE73lDqz506s5KT11a66fqNXNR7JOnC0+bqKg=;
  b=ObOz7iixnGS5Ru6CNCNj9cgApVd7TEA9cjMCft0zqqOZi1JELMbMvCyp
   F6yhwSrrSvNtYTY4GmeXbFZ0A4J9IH6IX6eIqsx/Z8GWM3DTzElWja1Kg
   90niZNV03CG6e3bqweANzyiKA4JhxWr9wfLstLBEnYAt861Gcg94LHFoP
   UdDumQfc1Poim3iMTPQQP712+QQUDIuwwaDjYPbzFDU7myUUz9I/JKb+u
   wKhM+GdaErdbKzehjziwVmiMNvr/P5rApk4OB7CLHkdIqWEzfjtf0F5tk
   w2manNbhSN1RmKfpog6n4uYlqJVbirfCNwxMdGsawZ7eDp85s+l8VZdSA
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="621761"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="621761"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2024 21:27:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="916501"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 04 Feb 2024 21:27:06 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 4 Feb 2024 21:27:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 4 Feb 2024 21:27:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 4 Feb 2024 21:27:03 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 4 Feb 2024 21:27:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAMePkQIM29XsBDRY5UiNhdctR1bq2yiRrUjS8xWPmB/LENKBNltDNUM0lB5wIEey1R5tHdRcsKvkYw5rPvW3pxcdOIPBPDXH32+FnVMQD6Wk2ZmY78nhMzLuiaQMp+c2DBJRWrtuh7ZkRAjMn/v56tN0KvkyUtoF09pzw97S8QNyqgdz3UnsT2z2UpBZ3TNOEG7c+30sABQTGmW/sF3yS6e24vX64nLX318YPAK1gsDWQQyzvnDKDjk5JRuEa1NHHi4g/bKxnMkyx+y+UZoojDdMpBK+qwd4kSLJfwxd04GiSWiIfWhSOAgl78buoeKewOigNygR3TPBs52qrMcmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l3GD+XaE73lDqz506s5KT11a66fqNXNR7JOnC0+bqKg=;
 b=m3QrK0HZ2g6Cp4/Cosa3kAAMhtSM0XlRKlXgJsTKxLnTzwmmI1n+L8Z1qXp6RYTpKce3nz/S53fWy94pSPuxVe55pCN0KyBTPB1nkgn0dA4A+d2Ofvb5jcKBrbbMX5LwFGeFRYpcmb1cuV2jrq4R8HZXVJkz/jAzK50eDn73kMr3gG9LT7521Gm1Jzd1CUlCv3Uia9wWLs32iCCK0d10WyyK+2vK65GQLO8tlJ+VJYeEDVgkXRM53YAisvhTKPxPCLRuuaJEmRVY8L8n6ni2c5LnlRpMQoJ067JeUlD1b0g6cwWJ13Xfzn27lRZJ+jHq762p4hUB9H0USkrwqjJ28g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6418.namprd11.prod.outlook.com (2603:10b6:208:3aa::18)
 by DS0PR11MB8163.namprd11.prod.outlook.com (2603:10b6:8:165::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 05:27:02 +0000
Received: from IA1PR11MB6418.namprd11.prod.outlook.com
 ([fe80::f9dd:37dd:4a05:e9ca]) by IA1PR11MB6418.namprd11.prod.outlook.com
 ([fe80::f9dd:37dd:4a05:e9ca%3]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 05:27:02 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "sairajlp99@gmail.com" <sairajlp99@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] PROCESSOR-SDK-AM62X: Applying Patch to BSP Giving Error
 #distro #dunfell #github #linux #patch #poky
Thread-Topic: [yocto] PROCESSOR-SDK-AM62X: Applying Patch to BSP Giving Error
 #distro #dunfell #github #linux #patch #poky
Thread-Index: AQHaVdIaKgFj7+S44UWjb7bTykqP9LD7PD4A
Date: Mon, 5 Feb 2024 05:27:01 +0000
Message-ID: <382357538cf65c015ec80f3658e0b027d884141c.camel@intel.com>
References: <1ncR.1706876359643755966.ZuQv@lists.yoctoproject.org>
In-Reply-To: <1ncR.1706876359643755966.ZuQv@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.48.4 (3.48.4-1.fc38) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6418:EE_|DS0PR11MB8163:EE_
x-ms-office365-filtering-correlation-id: c7143736-89b5-47db-4936-08dc260b14fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dXtYzmpadaSRJ5gIE/JVg+1xCtU6t2+Ecq+vj6ZlQ1ULWeyZcdFgK8WesPO4bOB/pC+iE8bF2WDgITvZGmHurVqGPjcl6LcdQd5p50uD11eac12VXZkDXNPZkVLul86BEkenmk10ZUIJnkekV6PClFP36Xo7qKtLFsvaXGeCV8Ir9OSwwB5MnN55Ps42kBTkZpVKjZ4JVjVOTzhvIAY1F2J2KeIPfaDrfIilMDQH/ZAyA67N/OEPVC1WiqCVJ01YpKmR+yWcFQRnnRb8aw9vA6MQwX1Rs58x6kLzzSxTJ8Q+8y4/UhFZs7ylPCoA6qIwE6A46ehmnNPs9WXIrFpf9Hs6IxwEiAWS1gD7RfeAop3RoYWKPHujA2BpQV/bYni4OdloX0y+T/WsEmTEHRY0P86t4lmYYeW4gfArAYGvM43hPN+OMuptA9FAD5w2/UJEwjgYMYIS9XJHvMsk3bBtwYF82gyQfY6ddOr331ChisSS3O/lEztRXKwCfW3+6eQhdNgnQ1Ji/329g1vZ1dgHaQbqW/URgvaSrKDf9wmUgSlGz6fg526zdpBqpG5HS69zhfk+L2+QOGdmKWaLkkaIxQR7Ysa6/25koVKC7VIBfME=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR11MB6418.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(39860400002)(366004)(346002)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(316002)(122000001)(6506007)(82960400001)(38100700002)(83380400001)(26005)(86362001)(41300700001)(2616005)(8676002)(8936002)(36756003)(6512007)(71200400001)(2906002)(478600001)(6486002)(966005)(4744005)(5660300002)(66556008)(66446008)(64756008)(76116006)(66946007)(66476007)(38070700009)(110136005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UERRZ0xaSkhqUVRMUHRyRUtNVjYzMXU4Rlh5dG5jb1ZwZnc2UGR6d1ZCc0ly?=
 =?utf-8?B?aFExazdEOVBZcU1LU2szR0txeWxUYmdFWHRnaHVOaElFWmw2d0xlQklpaXFX?=
 =?utf-8?B?aUVhMkUva3BGOXRLLy9RSHQ4T3VrYW41LzB6MGViZzBkMExEdWpiaCtORVhU?=
 =?utf-8?B?eXE2dDRrL010N3p6NllSMFI2SXNNbEREaFY2dzF3M29MeXdzdENNZWpaNUt4?=
 =?utf-8?B?OXNLQzA1MXZXTzB3SGIzKzBkQzlwclFMOFR1Sjc3b3RiVWNwWmU1c2krZXdY?=
 =?utf-8?B?MkxxNVliZm9QQjNML0oxVXNha3NMZzdGREZCVFBNaTV5cXFFNTBTRmdkUnFE?=
 =?utf-8?B?RUJFUUlhYjhZYUdMaFFvcXRNbWpLQ2FuLzFTcDZ0U1Z4bHdyMFJrMXYrNHdn?=
 =?utf-8?B?WFpQMjNISTI1Vlp1dWpVWFNPQk9LWW15Rms5YS9BQ1FkZlc1MFpZSkNjaG9p?=
 =?utf-8?B?Z0x3Nll2bkpiOUI4SjNpZEZ0NlMrN0ZrQUFvNjdhdkYwQ09BVTlpMHNmUGxO?=
 =?utf-8?B?cEpVdVE2M1BTRGc4N1dReWN5cVpmYlppT25xekYvTStWZnNOaXU0ZUxZUkdX?=
 =?utf-8?B?TWFHNHhGWjY3cHJacjd3Q0UrSkNyYXNTRDdnbnRCdFVPY2dvUGFKdXM5WHY5?=
 =?utf-8?B?SlhEV0RNMDNQUnh3V1hLQmhLVkRrdjNIUHJncENCd0lKRFlFK1dWNXVpN01q?=
 =?utf-8?B?cjM3cXhiQjlhLzk1YUZheGxZUTBjdWpCcHV3TXpGOXJXRU5taXRMNUhrTy9T?=
 =?utf-8?B?Nm5YaXA3ZkdoVW1xY0hHbEdXSzZ6YkxEa3ZpNmt2d1UwbEVZcjlWd2RyL1Rj?=
 =?utf-8?B?WlpxaXErZ2dQU1dDcHQ0aTVKMFIvazFvOTV2SWhEOWNXSk1ta1FrdEpZdi9J?=
 =?utf-8?B?UXhlMWZtRHoxc1ZlODJMRDJHdVVXVTZBZXhuSGdUT2xvRDN5b21BVk1Wai9i?=
 =?utf-8?B?UVltY0dvNWRqdFRlWlVRQlBzOVVQQXNYMWFPenpaNHk0czlmRkt1ajRSZTBi?=
 =?utf-8?B?d3craHMrU05ZYmovTWEyQm1MRGpZekFWaU5hbWlrcXFwczI5Smx5UzhGemdZ?=
 =?utf-8?B?d2NkelFGUGpUNnBYUTdDRTVuVUtxV1U5R091cDJQbitQZFJzV1I5ZHVCdHZT?=
 =?utf-8?B?VmlhZ1hXR2d2Q0NpSERGRkMxbjNUeVBqYkpNREttTUFuVGNqM0M3alpwYTRw?=
 =?utf-8?B?TVBnYnpBVUhGS1JKdkFFYm5vbHFRK04waGlWQUdSb1gvMU9jVUlDWVNBd3FV?=
 =?utf-8?B?aTFJWUhlRWNpNGdpMC9QUi9vdUtsN05CbWxBVFBrOEtVT1dLalNGTyt4RU9H?=
 =?utf-8?B?bG5QNFFhQUdZYnl2WmJvblRHK1EvUU5wYWNUN1lwc0s2dWl3czgrQVMweTZr?=
 =?utf-8?B?bVJlc0ZuZW5HR0lQS015WlUrN3YxZFh2REVZZThPVG5hNzNRYkVDcGlvZ2cv?=
 =?utf-8?B?clMwemkvc0oxdUR0MzkzdHllcTJPQ205enpUVnY2VS9nZjZkd2VNSmxWQjJV?=
 =?utf-8?B?UitiNWVWMTU3ZnhjVWZtZVpQMWVMSWluVmVuNFQ5M3lxcnRQamljRWtWR2gw?=
 =?utf-8?B?S1c1YWpkaHlzN25HdGZsaWpBL0lteVNKcUtMM0VNdEV4NHBveFVqcjQ0ZmJ6?=
 =?utf-8?B?SW83dUdNOXpkeGxMdU5jWUZSQ1JrQi9VLzc5TDJ1VFJuNDdaZnVmVHNER1dy?=
 =?utf-8?B?dTd5Si9LTnA4NlFweVlLa3I3WllUcVc1eWl1d1l3MG9qWEpaUndHT282TUxh?=
 =?utf-8?B?SDkwUXNrbldyVkYwc3VHL0hHcGttMlord2RnQ2RnS1JDbFI2TkplZWNCQWk3?=
 =?utf-8?B?V1pvQ01BamFXM1ZmK1NSY21ka0E2aEIwaElpNUorTERmWmlmbjVhWWEyckts?=
 =?utf-8?B?aEh0ZWFYY2toR2ZvS0JkZ0lHTHFLa2lTSUNETXFoR1hhRVlpa0pYamRtWnZ0?=
 =?utf-8?B?aU5EVWgwYUZuOVhpcHpEK0h1S2hqV2lsMmdHYUNwT0FhZ21rTnBYbFc5b1J1?=
 =?utf-8?B?cUhSa0ZTa3V4a0NpbmVCckNGV1ZFWUg5NW05M016VWQ3b0dTYXg1b0lGZ2E2?=
 =?utf-8?B?bEV6SkN4TVVDbUF5bUt5Z0xuVEpHUkhVWURQSHlGTVVRb0FJclVPZzlYNURu?=
 =?utf-8?B?SUFkWHdFV052SlZWWk9IeVhNbC9paUZOZzAwWkhXQ1FKOXRwRk8xUjVoUmcx?=
 =?utf-8?B?S0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <29DEAD4E662051469B8C85A06F4BB09F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6418.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7143736-89b5-47db-4936-08dc260b14fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 05:27:01.8124
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0pqt8y0u5KMOFkKa6YuR65aJ9ZHU3iYuigU58IziIOiJNrqSDssURLWEC3w2e4qzGrwoiCv5gCyDR1lWE0wSaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8163
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 05:27:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62389

T24gRnJpLCAyMDI0LTAyLTAyIGF0IDA0OjE5IC0wODAwLCBzYWlyYWpscDk5QGdtYWlsLmNvbSB3
cm90ZToNCj4gSGkgLA0KPiBJYW0gdHJ5aW5nIHRvIGJ1aWxkIHRoZSBCU1AgUEhZVEVDIEFNNjJ4
IHVzaW5nwqBCdWlsZCB0aGUgQlNQIOKAlCBQSFlURUMNCj4gMC4yIGRvY3VtZW50YXRpb27CoGlh
bSBhYmxlIGJ1aWxkIHRoZSBpbWFnZSBQcm9wZXJseS4gQnV0IHdoZW4gaSB0cmllZA0KPiB0byBh
ZGQgbmV3IGN1c3RvbSBsYXllcg0KPiBvZsKgaHR0cHM6Ly9naXRodWIuY29tL3BoeXRlYy1sYWJz
L21ldGEtcmVkYmVldCDCoGlhbSBhYmxlIHRvIHNlZSB0aGF0DQo+IHRoZSBsYXllciBtZXRhLXJl
ZGJlZXQgYnkgcnVubmluZyBjb21tYW5kIMKgYml0YmFrZS1sYXllcnMgc2hvdyBsYXllcnMNCj4g
wqAud2hpbGUgdHJ5aW5nIHRvIHJlYnVpbGQgdGhlIEJTUCBhZnRlciBhZGRpbmcgbmV3IGxheWVy
IHRvIHByb2R1Y2UNCj4gcmVkYmVldCAuZHRibyBmaWxlIGlhbSBmYWNpbmcgZXJyb3IuIEtpbmRs
eSBwbGVhc2UgbGV0IHVzIGtub3cgd2hlcmUNCj4gd2UgYXJlIGdvaW5nIHdyb25nLsKgDQoNCkkg
dGhpbmsgdGhlIGVycm9yIG1lc3NhZ2UgaGVyZSBpcyBxdWl0ZSBkZXNjcmlwdGl2ZSBhbmQgaXMg
c2hvd2luZw0Kd2hhdCdzIHdyb25nLiBUaGVyZSdzIGEgcGF0Y2ggZmlsZSBjb21pbmcgZnJvbSB0
aGlzIGxheWVyIHRoYXQgaXMgbm90DQpnZXR0aW5nIGFwcGxpZWQgd2hlbiBidWlsZGluZyB0aGUg
a2VybmVsLg0KDQpUaGFua3MsDQoNCkFudWoNCg0K

