Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47DB3C001DC
	for <webhook@archiver.kernel.org>; Fri, 28 Jul 2023 02:47:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web11.24890.1690512466066756015
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 19:47:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=BGeuK+IY;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690512466; x=1722048466;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=CBW1BJkcY4avz/wNfY7ZrtaPIgBN7gBf+DpAEPsVVro=;
  b=BGeuK+IYGZB4sCyBWeUWPCq8OKoBrIB2U7TGIsPCwt24f9oyf8WCJBOl
   eNCulr66LvItfEgjzsGy6sZAqBY/ZDy5Loe+LVN2CsEe5lxLFXXYxActX
   jkqjQXiu20jOwBoDmDZHlsPwACHf6CtTGl3hSCBqpMfvqhwpetgmB9aVK
   LbAVqtXDMhF5V3pa5x5kJR68kDYDr9Kz5IxfloHko77VFJAiJGKtJ3EyK
   6xil3X6lDp6Aoj8zkNrlOoIVBiyO+bZrw0vDBFoWwMzfw3IRAotUBIVut
   bzAsosedeMuL/woJzoDqgUm1w8MV/hWlTcpIC0CGdLinQ3EFqzEIsfpJa
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="434776650"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; 
   d="scan'208";a="434776650"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2023 19:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="677360193"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; 
   d="scan'208";a="677360193"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga003.jf.intel.com with ESMTP; 27 Jul 2023 19:47:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 19:47:44 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 19:47:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 19:47:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 19:47:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GAEhCscRy5S8DULTe5TSXTMr8XCAncuJcKi81lAq5VtF/BzDHKZiLoGfL2E3S6V/tqz9WZnV4Ecjhh2LCokql4gwmgEjP5ud+oM4My7AO+rGRV/PhE1LD9K5LRgX2UP+f29NwR0eyNc8fz9rCFZvSP9n+10nxikHWpZGtF9CSSmnTSH5OPTQ8dSl5GqK8+Hn9ziPZ3bb8ss6nlyctkLUZn1VpG/MOibaCbklvT+3JA8LRjxUKDNg1t2ctRSu2EkmtE14SxDrpXsqlBvaSr2MIMUbdYnuWWHNUDDdhT5rINhlzdaBJYTcYeCokg8je3lm6FPsiN2p07AxcmweD72Gvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CBW1BJkcY4avz/wNfY7ZrtaPIgBN7gBf+DpAEPsVVro=;
 b=n5AZV6lBqphmVYxSgk1V89rETLiOW9wYTW5HkHhA4YQMGEpjdneigZ6m5BUCtwpTqkmhsKoLDIS5DOUrff8OqK7txniyN90pHKbZDk0IhujOwS3kYtwjxbrYcPa49/qUfpnBuGtFsKq24703ml41sf0gteklBtmjYxm2u43lmKY9EzerNpXECKev972iNgSx3VVwEqKOr/wk7ybjELaxGDqi7gKTf+eQ1MR2vW7fMHVm7w316KzGzOcuN/mjOCmb6JHYwv1nR7ZTFkrClG0ct8w5qYEOvQ77y15oTBCssZLqt6Dd+Gf+ZmRcpfrpcO7iJLt+/0i37n+QnsCSAzWeKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6418.namprd11.prod.outlook.com (2603:10b6:208:3aa::18)
 by DS0PR11MB7507.namprd11.prod.outlook.com (2603:10b6:8:150::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 02:47:36 +0000
Received: from IA1PR11MB6418.namprd11.prod.outlook.com
 ([fe80::1b87:b80a:6e3b:c2af]) by IA1PR11MB6418.namprd11.prod.outlook.com
 ([fe80::1b87:b80a:6e3b:c2af%4]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 02:47:36 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"tom.isaacson@teknique.com" <tom.isaacson@teknique.com>
Subject: Re: [yocto] OpenSSH CVE-2023-38408
Thread-Topic: [yocto] OpenSSH CVE-2023-38408
Thread-Index: AQHZwN/oTYQM2TFNIESM/3BGvBIh2K/OefqA
Date: Fri, 28 Jul 2023 02:47:36 +0000
Message-ID: <4f84b355795e4debd6cca7f151883f9b6ae2faf7.camel@intel.com>
References: <CA+EiEZLaKctM8jE1PFpOpiDpF9QG=0Jr7Scv79i0LBGZJ_r7dg@mail.gmail.com>
In-Reply-To: <CA+EiEZLaKctM8jE1PFpOpiDpF9QG=0Jr7Scv79i0LBGZJ_r7dg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.48.4 (3.48.4-1.fc38) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6418:EE_|DS0PR11MB7507:EE_
x-ms-office365-filtering-correlation-id: fb47724d-6d2c-446f-3845-08db8f150019
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 98J59uOH8GTvrf8+Ie5OrZQprL2FoTjkC/o+X7unfJpNokzykjip2XyVTlP8y+QAjT5WW4zLkZrJsJo9XvsJ+vLBG/prsMGLrncJ1OGuOxGc6GfyuZVgEAcg3e7DhbK+sg4NqFYhplzUfj2/ww/MbAqMfB22sjCSxO4eRtN5rJwX0VH7XL/xqGw8y6zGdAbNYII0TmWrA/Uk6gWsENG3/3/jZ3q/EPKi7xmjp95jgER81xqO4MzW/B2eCCEgpo/9cXjNc+82MJWL1kOPhSsfjvP5hmlvQeLl+QM3LnwdK9dApYBUSW8F9IPp8JSK1KrG0H7eiTIl51GLpartoYGu3XCUaBrbuCRSaXHD+VkNPEi58TDNCSUVSTl+O2Es5XGkgI8tNac7Rj8r5SDN+vhziIWoa2ZxQlB7Tc1SFoQsa7KURhJ5+MQiUeRxCFKHJe21NaQ1MgECfXtU1wmWXEKHax3duDkrdGyuP45X5kLbkaHhvwxry97oNqsNXoY6qIbn9wwj+8on0zuZ7rh3Ye8E7VMIOzUNoDA0fhkR0R1/PfxsUP5L4DfpijN0P0UzmSt49aALFzT60BeMCJGz8hQLi+a43gYuHyLc0oxwaWwp/gw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR11MB6418.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199021)(83380400001)(82960400001)(2906002)(110136005)(2616005)(4744005)(6486002)(38070700005)(71200400001)(26005)(6512007)(86362001)(966005)(91956017)(478600001)(38100700002)(5660300002)(41300700001)(66476007)(66946007)(6506007)(186003)(66446008)(66556008)(316002)(76116006)(64756008)(122000001)(8676002)(36756003)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkdPWGJnWkh1bXo4RldUQ21aa2FSMGs2b0JUdTRibmdENlpBU3RjVW4wQ0Fi?=
 =?utf-8?B?T1QvVVE2Um5CendlcEl5VXNTVUd5RGFBODkrc1RmMENZRjhqWXEvOGZ4RTNw?=
 =?utf-8?B?SUQ2VGtRK2VGQ28zdys3Uk9QTkRwUk41bzVnbjFUaFZScXpFcml2cis2WVpJ?=
 =?utf-8?B?SUczOFdSZXQxdTE0N1JIQkNrWnJsVkUzQUtQNkRuNjMyS014bWh3V1hTWDha?=
 =?utf-8?B?QTRHUEw5QTMxT1JSQ2F4STFwWEZ2ZnVLSUExS0hoV0tpYStmQUxUMmM2M1lR?=
 =?utf-8?B?WWhvUGlCUStidVBSZUI1UDA0Q2RKL0NZOE5xT1YxbW1pR1c4MjN5NmExRHo3?=
 =?utf-8?B?VkRpT0tuY25wZEE2dmFtM1N1bkFxVEtKSStSTGNnTTI4QkhZNHZqeGZZdUZO?=
 =?utf-8?B?SVdBMjdLN2ZJeWsyVVljU2IzOHJkbE11V2c1c0V4cnJFMGFWNnlTaDZmK1p1?=
 =?utf-8?B?NDhiNnNNK3R4NHU2dnZZSnlsTTNrNkZobWNCNmlFaTJ5Z1JjVW9YZWxFc1RR?=
 =?utf-8?B?aThpMzVUZzNyVzg2ME55Q1RRYU9JcXdXaU1UK1NWNzZsb0RxajNkeU9ZNWlN?=
 =?utf-8?B?MjhPdjRkR1kxaEE4VW1RZjFaMDlncDFCeW5WSXdQK0xqL0d6K2lZcVJXbWh5?=
 =?utf-8?B?OWNqZTBzT3ludVpySWRHaVZSR1dCZm84REhNcDNlOEdlZ3NIS2kzM3F0VW5h?=
 =?utf-8?B?dXJmankxaVdTL3Y1elpWMDZlNVQzNFc0YitDWWlYR25yeVg1YzNjd0xnTWVV?=
 =?utf-8?B?TjJ0aS9CdlJDeXByaHlqZzVRZzRNd0lyUnp5M3p6WlVtbW05REFxNlpuYytY?=
 =?utf-8?B?dnVSY0hEQlpwL3pnRUgxWjR1Njk0bkdSVDRSekNRRzFuR1ZzVkgxZ2p6cFJI?=
 =?utf-8?B?UVE2c2VpWjhQK0NyazBmc0Q0QTJmZ3JiLzlrUUhIcW5ETmQ0emZMVFdBU3RL?=
 =?utf-8?B?dXhkMWdxWXpkV2hRM3BhQ2U5bUZmcnpMUlgzRW5EV2tLbHdXQ3pwWlBkUC9X?=
 =?utf-8?B?Sngxa0h5bVkrY1FEV1ZzTERzQ3FjTUVCWERvR2xuV1QwUGljQURkTUNzUVB6?=
 =?utf-8?B?ZTUxZDZtNFBxemNxNkwyeVZ2VEtmMFdtR0hsY1lGZGJmeXM1SUIrOFdTWXRk?=
 =?utf-8?B?a0lvcmw5VzE3eFErU3VZZDhaNXJMRnZweWJtcEM1TjZNRHJQS1pHQUMybGdr?=
 =?utf-8?B?azJyTGZZcUozOE1Db1NDdnJnVU1sMnZ0bFpweEVCUDRwZis1VThHdzdhckxh?=
 =?utf-8?B?TGJhOVdUVlJCNlIvbmNMbmllMXorZmR3Wis3eW9zcmtFaW1CNlA2WHYwb2ll?=
 =?utf-8?B?UjhGa29VWkFRVTYrNWVUNU1ZZmdiaDd3bzFzYS9qbE5nMTVjbzcwSjBOR2Z2?=
 =?utf-8?B?VzBPcWxZWWd6U0ZhYlJPOUR5Vkp0bC9sbWZncjkwN0xicnEzOG04QXpLNUdl?=
 =?utf-8?B?Wjl6YW5zejFDRU5tS3VqSTgwcVhPVDUzUDUrVGVTTTNtNDVIcDA0cnhoU21j?=
 =?utf-8?B?TmJjL2xiZWlpeHlHNTNBV1JDdXpoNE5DMjNUS0FPcUpMWXNKRFA3VTRWQTlJ?=
 =?utf-8?B?U3pOU2ZoM3Y1N0k1R2hJdkFTS1U4KzZrdDIwcGRPY0ZFdDlLdmxWQmsvV09D?=
 =?utf-8?B?eUFOMm1uQWlkWHAwTXd4ZXdySU5rRFIySkFvaU51eHBrL1pmOG5aVXcvN3d5?=
 =?utf-8?B?cTlsZnVwMVZDVm5Zc3pnU3ZXZW9DZWdCZXNzUVFXT21UeG9hUnI3V21OK05F?=
 =?utf-8?B?MytqVFV5UEVzSDBWTGZpQ1pFVDY5cGVXclFZcWUvcDlBWmlVOGlEbmhUZito?=
 =?utf-8?B?SmppM0pZUlBDRjRjZ0gwMnVkVm5yditDTUJGbG9uMWE2ZmJvT0JDdDJGd1lw?=
 =?utf-8?B?bDV2ZVlJQjZoNkx6TjM5N1dsb2NKUVpWdVRBV3czalhtTXRjZHZsbzNiR2VU?=
 =?utf-8?B?WUJUbHlvQkNxdjZJbVNJRGNocy9xMlRQQ0N4bTUvMllBc1FjYm05SERWeVdD?=
 =?utf-8?B?UDU3c2NqWHJEV1hVL21UVmM2MHlFMG4ySnVIdWhTZThlMUJSajRtNy9lbEkz?=
 =?utf-8?B?SldVWTRYSk9HbmRGRjk2b2JSV3krUWNXeEovcWlvRmVLTE9qelNGeWJDU0NI?=
 =?utf-8?B?REw0M1hMa2VOL1R1dllsMnJYTHVlcDgwbzFvN3k5VlVTcE5aWXZBaHpVY0Ro?=
 =?utf-8?B?b2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <54BA8669CD8C3C46A5CB1C875BF2A8C8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6418.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb47724d-6d2c-446f-3845-08db8f150019
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2023 02:47:36.1687
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oRbXiOVGTTsUqmZl9v6LdOBdK6Ih/XRo1rMF3WOjQnxznLj7HUL5tnyCq3ROKIR3iD8mcnYiDy1B88F9dIZwkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7507
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 02:47:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60671

T24gRnJpLCAyMDIzLTA3LTI4IGF0IDEwOjQ2ICsxMjAwLCBUb20gSXNhYWNzb24gd3JvdGU6DQo+
IEknbSBhIFlvY3RvIG5vb2Igc28gYXBvbG9naWVzIGlmIHRoaXMgaXMgYW4gb2J2aW91cyBxdWVz
dGlvbi4NCj4gDQo+IEkgd2FzIGp1c3QgY2hlY2tpbmcgb3VyIHVzYWdlIG9mIE9wZW5TU0ggYmVj
YXVzZSBvZg0KPiBodHRwczovL3d3dy5jdmVkZXRhaWxzLmNvbS9jdmUvQ1ZFLTIwMjMtMzg0MDgv
wqBhbmQgaXQgYXBwZWFyczoNCj4gMS4gV2UncmUgdXNpbmcgYSB2dWxuZXJhYmxlIHZlcnNpb24g
KDkuM3AxIG9uIG1haW4sIDguOXAxIG9uDQo+IEtpcmtzdG9uZS9MVFMpDQo+IDIuIFRoZSBGb3J3
YXJkQWdlbnQgZmVhdHVyZSBpcyBlbmFibGVkIGJ5IGRlZmF1bHQNCj4gKA0KPiBodHRwczovL2dp
dC55b2N0b3Byb2plY3Qub3JnL3Bva3kvdHJlZS9tZXRhL3JlY2lwZXMtY29ubmVjdGl2aXR5L29w
ZW5zDQo+IHNoL29wZW5zc2gvc3NoX2NvbmZpZykNCj4gDQo+IFRoZXJlIGRvZXNuJ3Qgc2VlbSB0
byBiZSBhIGJ1ZyBmb3IgdGhpcyB5ZXQNCj4gKGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0
Lm9yZy9idWdsaXN0LmNnaT9xdWlja3NlYXJjaD1vcGVuc3NoKS4NCj4gDQo+IFNvIHdoYXQncyB0
aGUgcHJvY2Vzcz8gSXMgdGhpcyBhbHJlYWR5IGJlaW5nIHdvcmtlZCBvbiBzb21ld2hlcmUgb3IN
Cj4gc2hvdWxkIEkgdXBncmFkZSB0aGUgdmVyc2lvbj8gSWYgdGhlIGxhdHRlciBzaG91bGQgSSBk
byB0aGlzIG9uDQo+IEtpcmtzdG9uZSAod2hpY2ggaXMgd2hhdCB3ZSdyZSB1c2luZykgdGhlbiBt
YWluPw0KPiANCg0KVXN1YWxseSwgdGhlIHZlcnNpb24gc2hvdWxkIGJlIHVwZ3JhZGVkIGluIG1h
c3RlciBhbmQgb25seSB0aGUgZml4DQpiYWNrcG9ydGVkIGluIGtpcmtzdG9uZS4NCg0KVGhhbmtz
LA0KDQpBbnVqDQo=

