Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06B13C433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 08:13:08 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.31154.1644826385351859577
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 00:13:06 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=kgUH6KgC;
 spf=pass (domain: intel.com, ip: 192.55.52.88,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644826385; x=1676362385;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=fRLxHzyREP+5sKl+5dqwMTs1DPwPZeGUSpbxDI9CTL4=;
  b=kgUH6KgCWtEn967/Nd7Ek7t4z6GDyS+6/aAadeNFxxOS2ycffTsiycnW
   JsZdFQIc3ygs8v4nMjZ2qhOHbaeicyQHwFyawl6uLjzEB4Xuh+fGLmqAA
   uPYPAeJHkXkQJU8Gf/7Ky5YRT/FggTc23kuVTnErpxzkoXGrwZTn0N+mZ
   Ytdwh64L4CyUxZbMWAiqqCiAWj4BriE8uSBCc5+7JH51pf02zkRYizDP0
   JF1vLQ4RIoo3wmwCc/KHSRNdlDLQ9+HqMPTEqPGK97lYePjTz/D2EozXT
   MjoqwpeS5QeZPi84B4dOg7owuhpwCJJeuDfHO6zwQml1btrZ2izLY4dD2
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="274609894"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600";
   d="scan'208";a="274609894"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 00:13:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600";
   d="scan'208";a="587092950"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga008.fm.intel.com with ESMTP; 14 Feb 2022 00:13:01 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 14 Feb 2022 00:13:00 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 14 Feb 2022 00:13:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 14 Feb 2022 00:13:00 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 14 Feb 2022 00:12:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHVRUCJRLClJTp2F8MavoBbgW5PjotxkkpvX5UNbjRdooBHtPJUdizJVla8A23cCSi4PHY26HveTjutTLfH7PnnoXBFaSpKQc4wHG7/wy3NHRrtIj3xqpWuAHE7aG1S8Xnl8ivWipapATVY2OXEdtxvK3TSBz5MW93nQhrx0ZH7K7m21FrxZRoGgsGZ8Gv/7oqfhcu1Nkv6NseqzL+aZyLXPHYximhhABik2nXLEKZGLXCBk9HdfO3EnKcvOLK0kcC3v6439+PV7EboKWtyE/sCoQ575QpkBImxgvN54lHp2zLl6HSAp/usxZ8wr6yM79fyvDx27jRcCTh1wa5ypdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fRLxHzyREP+5sKl+5dqwMTs1DPwPZeGUSpbxDI9CTL4=;
 b=S5uzrVzvDdZsnRMFzsC6xGUIimfwXV2G1NONaJTjhy6Weyx/MuOZPFDQca14+xeZss1s7WLwzUheFyX5AT5RZ65YABfTbwW3046ySXJgsOYKHa8/OJ7ar+TX1ICDu5xgIKAZPZtqSbK4kbHojuX/IvNZa+eiTJYg11Yg3IuOoQRdRkYQlNsotNIyXQSW4TnxdhEqgO+o5H0WF0fxd1WFkmPAJknFhSYyQ75z8fE7l/c4ainkaVd0pMBG5iS8HpOOV1oFSh6l1hrNogAJp9MACNGWqFbb5EyyjGnV+cXRRI+Z48Lwzb+z7fO1BSU93ZgNpxh5DunjJlL2vD6VIYVbnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by CY4PR11MB2055.namprd11.prod.outlook.com (2603:10b6:903:23::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.18; Mon, 14 Feb
 2022 08:12:58 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::fcf8:25a:89f:2006]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::fcf8:25a:89f:2006%4]) with mapi id 15.20.4975.019; Mon, 14 Feb 2022
 08:12:58 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"Khem_Raj@comcast.com" <Khem_Raj@comcast.com>, "tsc@lists.yoctoproject.org"
	<tsc@lists.yoctoproject.org>, "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "scott.murray@konsulko.com" <scott.murray@konsulko.com>, "Teoh, Jay Shen"
	<jay.shen.teoh@intel.com>, "dl9pf@gmx.de" <dl9pf@gmx.de>,
	"mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>
Subject: Re: [EXTERNAL] [tsc] 3.4.2 rc1 QA
Thread-Topic: [EXTERNAL] [tsc] 3.4.2 rc1 QA
Thread-Index: AQHYHmtXq8T14TJUoEKn2uNBdiA9NKyM+hUAgAAAn4CABb3MAA==
Date: Mon, 14 Feb 2022 08:12:57 +0000
Message-ID: <acfbd884b715598a89035f8ffb723b72b2742627.camel@intel.com>
References: 
 <8a5f2620473c2663bcf372c2967b25624ae29724.camel@linuxfoundation.org>
	 <BY5PR11MB44511B9570CD729185664770BB2F9@BY5PR11MB4451.namprd11.prod.outlook.com>
	 <153dd2864ff928eb9db681d6346a765594d70653.camel@linuxfoundation.org>
In-Reply-To: 
 <153dd2864ff928eb9db681d6346a765594d70653.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.3 (3.42.3-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62c88e0e-4f6f-4b6c-67b6-08d9ef91cf85
x-ms-traffictypediagnostic: CY4PR11MB2055:EE_
x-microsoft-antispam-prvs: 
 <CY4PR11MB20554CC3A7E5A76AF640AD32F8339@CY4PR11MB2055.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9YqVovQcX164fi1D6nsUKk0urBCtxiLAPTKL4pzdAWLPVhsg8CEFq4dfQh99c5+Iw9jqMApgRmqGzif6VxGo16gl3W+kuLMVuLkuv3wJzjUJjx9k7dVN+fjQp+u5Mpfz4tQ8OGr4z5OCfA6NBsnCkJmzIkoQbVhmGH2JlIQ0Jbc+ZEBHIzIw2Rs4Upmv1Tlv1pwguGTCyaIeOUUfmt6Bj0RK/ynmhAAuU5cUas62AHyY//JALFJT4JDZStBh0VykVWytcfBzf3Htz5UU7YVA+awEdi9vpSmvYK6qFRCXeeV3fB1vxXcsVJ6JHSfwGq+EK2PFEam5Gebn7RsedutPDNmXhPZIKFiKstohq6G6ngt8v83Hk0bOIHEufb4d8fJ+mwwVMGpwyIeQ/swILq8aZgFG9wZZ0iTZNZoDiggk9uOJLpHrLrgjnoe+MB4fwILyit5CPTq11c5nZN40kO1V1XIoBOYcK14l9MzPbK4HtFCYxrUuO6k2+tJkaFJCQD2MiT1OseJYanZJ3PJcyG6gqCbPUi7TlLz4sww02sIjfRdYgPNvcuh4GQMLoUGjowPSEjwOWQ11ls2+HIYWj9xQ6fJ/JCtgODAGd86IWKuOGoTFnFEhHScR/4wFwk+1RoOrc44dAa0jsrKoionez5V+jHVssPmQzJX1QdaKxMZ+GRD7GPzJDeeI3raDCt2xvPLb6HC0xFeDI3gPOh88frrmkg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(508600001)(6486002)(54906003)(110136005)(316002)(2616005)(64756008)(71200400001)(66446008)(66476007)(91956017)(76116006)(66946007)(66556008)(122000001)(36756003)(4326008)(5660300002)(82960400001)(38100700002)(186003)(26005)(6506007)(6512007)(8936002)(38070700005)(4744005)(8676002)(86362001)(83380400001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dXZ3N0FmNS9yUmt0a0hOZy9VRm1US0ZJTnJmak1GVG5kaSt3YmM0YXJuYlhI?=
 =?utf-8?B?VjIyeVdqWlppQlJwNHFOWnRqTmo2QVhLWnE1SVJCNXRDV3czWFNISVFGK2Mv?=
 =?utf-8?B?NFd0MFRuVDIrLzVsN3dXeXRqdzJEUWl4aENST3dxSWNkTXdwa0RJM3VzeCtk?=
 =?utf-8?B?M3c2OWVGbkxSeXFsMG4zY3BnOEI4RGkrZ082NkhOY28zSVhZaWMwSmFlSG0w?=
 =?utf-8?B?ZHJJcTFZUUVXUmtoNG1adEp5c25pbGhiVFVQcDRnZzArY1pmUUJqRFFMQVBj?=
 =?utf-8?B?dGFGcE9uS251TmMzb0t4SGk4MHpEbXkyYVNoblQ1U2NnNDZrK3F1UUVQK3J4?=
 =?utf-8?B?K3JYeXZ1Q2NmYXBueDB2NmRWNE9rSDk2Yjk3RjM1eXZQdCtkSjNVUGR5dVkr?=
 =?utf-8?B?b2VMS3EyaWdVaVZzeXdWNG4yZ1RnRVRxUGd0QUQ2U2xtMHUzL01MTUpWSjlO?=
 =?utf-8?B?Zks1Y203cGhTbGVNT1NkMVl1NjQxYklrRzJzTFFZditRc2JFSUJmMU9SOUpB?=
 =?utf-8?B?U1A4eVB0RW11VlFnSnI5di9TL1FWWGoycHByUjVveW92MVZOZ01xazMzZkRP?=
 =?utf-8?B?aWNkdTNmTGMwTGt6dlNVbytPRVZvZ3owc0NmQjVEUFNaMjRJejkvWW82Mm54?=
 =?utf-8?B?RlFMWGpPSStIalRGbzJLMVl0bTAycTg0MEFmdVBqQ3Ruc2lZZmJlbG91NWpD?=
 =?utf-8?B?MHBuMUZ3RTRERUJwd0YxR2ppbXNiZTZkbEx5bnVURklPNGRNcVovWGVCSko2?=
 =?utf-8?B?N2Q0TW92SGlVQWFuQU5ucGxtUGVrY0VkVFM1UjVEWSszSU9YaFBvVGZQcUcy?=
 =?utf-8?B?RUkzdTlJSnBDcndGMzErNklwK0tvYUVSWUx0WEJOMkYzWFV6YXdxMjlPcHVW?=
 =?utf-8?B?RTUyRkdVVDJ0L2hyM2JmQmtybkg3S2g1SzFqeTEzdk9ZUWUzS1NrT2lmMUNo?=
 =?utf-8?B?MjMyazhCdWpPL3FYRW42eUpGc0ZJWk1nV0t2U2RvMHpyNHMvMFNkS1hXWjBS?=
 =?utf-8?B?S2YvVitmYkNzQ0k4cWE2SG5NRHBJQ0xkYjZhcXFmR2ZiSzBVbkRZUlFjV2xG?=
 =?utf-8?B?TFdzTDdsRG1lWTd3cFM2bGQ5YjV0d1EyQUdYL2U0dDBKcWJjY256THVOYW8v?=
 =?utf-8?B?UXY2OEFoSXNPS1k4eEhjM1lneVJRSVJ2dDFpdk5yZnNJamJYLzdLakxNL0t4?=
 =?utf-8?B?RkZwRExQOVJhNi9zQllQTTUxM05RcnhVanV0TzFmaXQ5NEV1UVdPVlA3NzhC?=
 =?utf-8?B?RVZNUXVxaFpEendvZW4xWHJGQVU0WWVhendHa3ZteHN3U0FlNXZjcG5GOUo5?=
 =?utf-8?B?eExGRkZPUVJ5em93VnlrUm9QTlNGMTI3QU9EMXUrZFBEbDBkT0huZHllMG8r?=
 =?utf-8?B?a1d0bGRReWRQazFldHR1RVdmY2Vyc29XT2hlM1ViMi9BNExQalJOMS83YVZP?=
 =?utf-8?B?YXhWOFFKTE85WGtTSnkrK1dOTkxUeEhEV1JOOWlRSkdjTnhjMzZ5VXQrb21k?=
 =?utf-8?B?N2lTcjdJM1NrdEhDbEhNK0dHMldCRmplYW9DOEk1QVVOSm9yZm1YNVc0cFJq?=
 =?utf-8?B?UTlLT01DUEcxK3VGZlBTMG9oSjVnMkV1dE5ZWWhBMjM1Wkl1UVdEMWo3SWhJ?=
 =?utf-8?B?S0FJWXA3RzNIK1poUkZyUm1hVithZi9KdWphTkRic2p2QXhIMit1QkZiUm1P?=
 =?utf-8?B?SHRvVVMvaFYxVHMwTm5NVG0wcHhnK3RMUitYMCtTK1FZTEQzS2FWdm5ZVmNp?=
 =?utf-8?B?ZGNrWitWUUoyY0hDSWlsTnRBTFoxQUVnaEZuT3o3RzFEN0l1L29UWXdQVXNw?=
 =?utf-8?B?Si96MEFaRk1NbE5oSUl4dG5FeGY2R0FCNW9mUkV0UXdIVnlSa1BsNWNUVDJC?=
 =?utf-8?B?bk8wbGNhSXNsb1lJWUhVM21kQkFPa1cwQklHdmxCTmtPeXRUSUYyR0pvZ1VN?=
 =?utf-8?B?VVQza0JBMFdyWU5OUmF3V0hiMG9HTmxVcGhQTXZXWDhFTWNjMUxkS1ZFMDdv?=
 =?utf-8?B?UmVqbS9KMkxFekFqY1krdEN3cnFXdjYvUnp3MHh5elFtTkJSWnRRRFpYTFhJ?=
 =?utf-8?B?VHB3MWRuaDFWOEpXaUtOblVKcStQMHVIdTgvZjVSOFhJTk1ZK3BCN3pkekp0?=
 =?utf-8?B?Vms0Y2YwdHRKMkZ0VUlmQktpeVFveGh1TXZwVHhQZmVUMnd1RjFFdW10OWMw?=
 =?utf-8?Q?lgs/46LLCmOfsgMY2YsGlfZef3Y/M+mXzB4KevBKJ76+?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1FBD41E221841349B351D3BA90BEA12A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 62c88e0e-4f6f-4b6c-67b6-08d9ef91cf85
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2022 08:12:57.9933
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 tO74jVHcMkgHSkvU80unm7hb0wALhT4DYVWwLuI/BeJE7474gKAYKWiZOIGOEEgFJK9z5vq6mQjLWhdF1hLOLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2055
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 08:13:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56181

T24gVGh1LCAyMDIyLTAyLTEwIGF0IDE2OjMyICswMDAwLCBSaWNoYXJkIFB1cmRpZSB3cm90ZToN
Cj4gT24gVGh1LCAyMDIyLTAyLTEwIGF0IDE2OjMwICswMDAwLCBSYWosIEtoZW0gd3JvdGU6DQo+
ID4gQ2FuIHdlIHRoZW4ga2VlcCBtZXRhLWFnbCBmb3IgTFRTIGFuZCBtYXN0ZXIgb25seSA/IGFz
IGl0IHNlZW1zDQo+ID4gdGhhdOKAmXMgd2hhdCBpdA0KPiA+IGlzIGdvaW5nIHRvIHN1cHBvcnQN
Cj4gDQo+IFllcywgSSBnb3QgYSByZXBseSBmcm9tIFNjb3R0L0phbi1TaW1vbiBzYXlpbmcgdG8g
bm90IHRlc3QgdGhpcyBvbg0KPiBob25pc3Rlcg0KPiBnb2luZyBmb3J3YXJkIHNvIEknbGwgbWFr
ZSB0aGF0IGNoYW5nZS4gVGhhdCBzaG91bGRuJ3QgdGhlcmVmb3JlDQo+IGJsb2NrIHRoaXMNCj4g
Z29pbmcgaW50byBRQSwganVzdCBhIHF1ZXN0aW9uIG9mIHRoZSBzc3RhdGUgaXNzdWVzLg0KPiAN
Cj4gSWYgd2UgZGlkIGJsb2NrIG9uIHRob3NlLCBJJ20gbm90IHN1cmUgd2hlbiB3ZSdkIGhhdmUg
dGhlbSBmaXhlZCBieQ0KPiA6Lw0KDQpJIHRoaW5rIHdlIHNob3VsZCBub3QgYmxvY2sgdGhlIHJl
bGVhc2UgYmVjYXVzZSBvZiB0aGlzIGlzc3VlLg0KDQpUaGFua3MsDQoNCkFudWoNCg0K

