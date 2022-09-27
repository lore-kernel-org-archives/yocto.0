Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D1A9C54EE9
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 09:55:33 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web12.9116.1664272524515190591
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 02:55:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=LbMuzZh9;
 spf=pass (domain: intel.com, ip: 134.134.136.126,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664272524; x=1695808524;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=qtgRHBNuRx3TZ64oAgxP1rtRDppWzxy64QKhYWIVQ4U=;
  b=LbMuzZh9b0wiMbbHifRMqJ4hEwXmvTKqrhFu/yeMWas5ROoyh4NmMpGW
   oTO5edTeocLQfZktJZPKG9YX2eNcrz9BUrkoSmcS5iKT7YDvO/6gIDj5c
   nDGPNB3EwhRvfPKzAsEEr0RPWZQjVxkiY7l0y+j26cUS3BULWVTr/Uw1Z
   Ui5XnCN1AFEk6W/YW9Fk7fAV/KJzzonk2Lw6//JaEnjNOPO4imT14RcAJ
   DSd4OskJZE3TKcvTbQKGr3FJxeh8CJnXljLJtkW3pgy/cK2Bv+YI3qFzr
   36ndA82j76cKUXsnXFQDt0XiW8YNxRABd/cABfsF8YLiz2wwh0rfUXKhY
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="284401019"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200";
   d="scan'208";a="284401019"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 02:55:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="950228926"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200";
   d="scan'208";a="950228926"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga005.fm.intel.com with ESMTP; 27 Sep 2022 02:55:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 02:55:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 02:55:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 02:55:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JK0a9M0FK8d7oDQiFiSlAQO8d0WvY16RR2xi5lnSuh3OepzqeMSfgEKs2gd3XIn4YIJO+B/2J65OH+9iGcpPd2xyspKe5ODPvbUxR+AMNTxXfgd2Sb9XSXERO0lIGmi2fNdr55C4lgzZzvE46xAlVJwgW+UvAp/nRUdWV6tgUSVq+HA7CCMhuj7aPMWLbVVj8/JBC30nm2GpZcrbMmsZ6zMyleqWtXP29y95pjAP80JTsAIqmaAAvLfKc+E8glYt+MPJPodg4VlPAaZLpKJ+e5A227DZtWWkEpWu7DJL1xZZPM89wFx7Wq+4sFGsGElo6SKlWSgHXDuoiwrLPaFDHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qtgRHBNuRx3TZ64oAgxP1rtRDppWzxy64QKhYWIVQ4U=;
 b=nPcC8p2Fseajt1ryErW6x2X9mcUabxsamieAoygbMB9R7zyz+sbGh2S9bJidAie5W6Jo+SsroxkZq2K8Z+a9XH9mUmIHb9GpP8THxBttOLnVzhLamAB2NUyJtDWE2NYjHdWWa6GJZBbP2v+RU16S2hL5IdcavIUdX874a1eOWGcxy/SXMwLiBxptHYYg9HGtv1Z18TB1JM9BGYAjuxy2mGnI0pB9Ls20CW/+J2CNkCPEkcdXWRyRTEUBIigChpxSMyjMDifa4HOVLrhcQf/7ikQG+mT3ZsF00njpVGqk/vhajLaLwqb5AFoMK4SZTqhgn7VXZm+Zp8F8RSRRq9kxrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by CH0PR11MB5345.namprd11.prod.outlook.com (2603:10b6:610:b8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.15; Tue, 27 Sep
 2022 09:55:19 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::dd5c:ca02:c00f:9006]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::dd5c:ca02:c00f:9006%7]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 09:55:19 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-zephyr] new qemu version breaking qemu-cortex-a53
Thread-Topic: [yocto] [meta-zephyr] new qemu version breaking qemu-cortex-a53
Thread-Index: AQHY0dvH23ioWCOPtkOraYv7GSloq63zCmMQ
Date: Tue, 27 Sep 2022 09:55:19 +0000
Message-ID: 
 <CO1PR11MB5026A9584F6C99277F25D636C4559@CO1PR11MB5026.namprd11.prod.outlook.com>
References: 
 <CAPoiz9wdF=-sq8+QFyosW-KTbsLQiYmYXG=W=TaYS=1bWi4wiQ@mail.gmail.com>
In-Reply-To: 
 <CAPoiz9wdF=-sq8+QFyosW-KTbsLQiYmYXG=W=TaYS=1bWi4wiQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|CH0PR11MB5345:EE_
x-ms-office365-filtering-correlation-id: f611afe8-9bab-4779-fdef-08daa06e62f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uiZa0KYLkcqVeOOmUuiCU3rCdeoFw4SRyP8IzJxmp46KImocwKVJuy42Ap7oAo9sqN3HJwYvZXQJEIl55lc0fm9y1edP9b38fe5/qZYzjv58irQXjl8ai+V1mtrA19RT3yEOtYCKRAQ5ZLGxKextU1ByyfBrgjq4cQ2Ipeo2hSxaf5pEAB/R+pECgf/pvFns9JkEnPNMcK5Wak+O2LkdCeIljv4NJiAeaWcpPZx5vICkWVKuwomBGLW59UykvY8QXDhhmu3qzalc9lPQhRg1YU/7UKN0VzSortywq66+NippyfIQ1HNfSVWSdJPNq3sVe1vAtpU7+9oKdo+ovY/grZ2OpuwyzvPeID/ecpxAKT02sj+e3le9VjzfXQ7pED2CjuJuxV4lkh/1qLD1R9ToWcHkDC2RKnYz8kq78+OX+gyi4kGS69ElNoXmEVBTJtV9C2G7DsiuXCOf8bw+pbx6G4EouURzChL7dJO9Rcpu3JGjcb/ddDBBwvMTSUfT1W57n6wj158rvX5O54yj+CpyXdohApgZTwLTYjWx5FG5NlIYUM4hgRVz8KFcjXv+N87jaML04GlAoSLZLY5Re7z3JT5EsRrrMXWNlSAXKtwTNK41yM1hVcIbT9iKBmhUzyAeTs+YSOU0d1ygNoUl9tyR+hSoQRU1QjEjS8GgsXrKZ+AkC4//S3rKAEuS1mIeDvLYZeXkMxaSEoCAGSL50QP4QhFcJwcK9wz+I6aMcVVy+q5VF5yBIEqxACLMttnKN/Zwu+g2vYs89GA+bQbSiGsY35nJeLrBAoNwOAduHXnTZfc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199015)(122000001)(26005)(9686003)(2906002)(53546011)(316002)(8936002)(52536014)(38070700005)(110136005)(41300700001)(86362001)(66946007)(8676002)(66556008)(66476007)(66446008)(64756008)(76116006)(33656002)(6506007)(38100700002)(82960400001)(7696005)(5660300002)(71200400001)(4744005)(966005)(478600001)(186003)(55016003)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VDZZZk9ibTZjR1E2Z3NhUFlWV0JWV1JpU2djYkcwazNKb1c5aTRFbFdLVFBi?=
 =?utf-8?B?UWFzTjFuWVBQRGQ0UCtsT290RzU4QUNyZnRhcjFFbElRZ0JSYlU0T3BBRDlC?=
 =?utf-8?B?clFiZWZkN1RnQzBUeE5uVFVaOFJVMUVqOGoxWnBHNm1DWVBKK0srdFpLWnRQ?=
 =?utf-8?B?UCtkY0xuNVJQZlZnUCs3azkvMzVpOVpwc3NsZGpHRzgvcXVqc094ZzA0OTZZ?=
 =?utf-8?B?QkRLTkQwZi9sSklzUXduQVRoQWU4RVFxSnh3VWRkNzgxUWNibUZOaTR0eEVD?=
 =?utf-8?B?ZUlDN3h1c1ZRK21jdElXNFkvcHlkOFVZQW8zaTgzRnR4TjJlR3pzWm10c3RH?=
 =?utf-8?B?bXdLbVA3dEJ1NXNzY0d5ckFnZklWWVlndnlPTmRHUlN6S043cCtXRFhnREtk?=
 =?utf-8?B?RXM0dmlTSDE1VG1YSkRSdXRXNnM5Y1lqMjhRMS82TWhsdUMwQk9KZ3l2THgv?=
 =?utf-8?B?VHg4TTFId21mL0xoTTFZZTdyTmRXY1NHdWRCOWxWZkZhUHNDVlJTZGhDajVl?=
 =?utf-8?B?bFFHaEYrM0ttQ0lpK1ZHNGtRdjJsaFd0WFBqTmdLUXhvYUwxeVd3ejA2TFhn?=
 =?utf-8?B?RllaZ0VkbTVCM3VEM1NuSGFtY2xhKzhWdTlMeGF1eUpXL3I4SjZ0NnFvQjRS?=
 =?utf-8?B?eU0yY0g2ZXhFVGNrNW5DSkhIZUYxZStCYTE0QSsrcUFDaDJOeHNtTFhpRGpr?=
 =?utf-8?B?cU8yOW04TTF5eDBLWldyQkVhK3cvVGkyM3RKczFMUHlQVUVpMG1HckdjeUR5?=
 =?utf-8?B?S0s1cWhOeno5bW90eTBXbEluaTdYVW5IWlNvWjlEbmkvVE9uckZjTVFkbTNQ?=
 =?utf-8?B?NVA4aDRneFVmZmZ5K2h2ODZLMWVWbVFOUDRGSG12L21sTlAwRERNU0hBSGo1?=
 =?utf-8?B?OGxrWHVQTEFlNTI0L2JLdXBNcW9UZlk2NE0vdWgxU0dGVXdrd0JQVWRBWDdU?=
 =?utf-8?B?YTErWGVzSytEMndXNzQvelFEN1FzNFYxSUxyOVlWbWN6UHlyUUhoVEd1bElx?=
 =?utf-8?B?VGUwOGtlYjBQMEd3RHh3TEdHelF0NDZnM0JhejN4eUtXeExmNEJ0ckVRa1U5?=
 =?utf-8?B?WUY4YVUvVi94ci8wQThHTm54TGhoSTYrbG01aVFDVml1UnpobmJaMWZlWDBG?=
 =?utf-8?B?MVlhZ3VqMXZVREVoWG9IV2REMEhmbitYajNsWjNmMmxYZEFCMTdBWkFVMjJU?=
 =?utf-8?B?RnJPaHZPOGNucE41WjBqS0pScE1nblNWTjROOXZlaDhpQU43UTZRN1B0TTZu?=
 =?utf-8?B?THRrQlV4cVdLREpOSFJBSm1hWGxNOVBDZHRrUEdOdUpjRE1ic2FLVlRsc1dv?=
 =?utf-8?B?ZVZBcnphQVRrM01lb2FBNzNGL3JoQk81MjVKUkRXVEZRWUZnME9qekIrbEd6?=
 =?utf-8?B?TGdlai9BbHFrWjJobDZQZzlyVVRDR0pueTRZNlBFbWRGZUx4aVhNdWJXWWJJ?=
 =?utf-8?B?b1Z0UmVlMXcxU25aejVkNGZVSVcydzE0ZXY5alllUmdiM2lkanJCeXR3V0dF?=
 =?utf-8?B?VVZ1cis3UHBNYVdjUFFKS1V2cmZDTGh6KzU2Ymt5QVJGR2MvZ0R6cXBQNkZB?=
 =?utf-8?B?ZHFLSDlmZEVVZ0YzeXpFU1JYck96U01TOGlVbEx5TmVBWitxZE5zUk9HTTFB?=
 =?utf-8?B?QUVlMUZTSDB4ZGc1NjFwa3ZTblhoVXF5T0JOem5mMzViV0dVL0liUWN6RDF0?=
 =?utf-8?B?bjZpZG1FSFNEN3l4cVZ3Q1dZYUkwZ0FiaHlxUlJxU2d4d1BNdklRK0tVT29o?=
 =?utf-8?B?NUFubm1LWnlVbkEySTJ1enROcVYzcGQrcnlZc1RTWmZuYlMreklrN2Q5USt6?=
 =?utf-8?B?VHEwSEhONmtzRnRiSGlJNm9nN2pxd0QyNE01eTV1SkczTDJGVlRvM2xyQTB0?=
 =?utf-8?B?SWVWWC9SRW93QlhNQ3FmN1VmUHVNYU8xZWsrMnFZbzJzUFM3T3pYZVhLMTFD?=
 =?utf-8?B?VWRyYWhrWDcyamR3OWI0dGhvTVdUUVNjSUxoN2VSYy9BMEJ4Z1lYUzRmL0Fi?=
 =?utf-8?B?bnBGbFJnSzlGblRTa09VUFdRRU1vVndYVzhVL052VVI0SFNzSWJKTXhEei96?=
 =?utf-8?B?YWVmZ1k2QTcvYVJ3d2p2bEZlRHhOM1BNWXV3NG8xZ09KOXJxRm1CdUxYMVI2?=
 =?utf-8?B?MUV0cVF5bGlnaUM5R0ZHdEdTd3ZOMHNGR2NyRlV5d0lpZWJSQnZSSmNtbzhK?=
 =?utf-8?B?Qmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f611afe8-9bab-4779-fdef-08daa06e62f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 09:55:19.3103
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 dewNBnocFDnq7uzKZhwElQNGjW8E1+KXPMZa994JZyNVhLH8dpq7X6HJf2AMJUiyhi7wywOK3oYsDlaNNWmon3X20+Yb3zFGTWHVVaveDaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5345
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 09:55:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58181

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24NCj4gQmVoYWxm
IE9mIEpvbiBNYXNvbg0KPiBTZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMjcsIDIwMjIgMzoxMSBB
TQ0KPiBUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBDYzogU2FpbmksIE5hdmVl
biBLdW1hciA8bmF2ZWVuLmt1bWFyLnNhaW5pQGludGVsLmNvbT4NCj4gU3ViamVjdDogW3lvY3Rv
XSBbbWV0YS16ZXBoeXJdIG5ldyBxZW11IHZlcnNpb24gYnJlYWtpbmcgcWVtdS1jb3J0ZXgtDQo+
IGE1Mw0KPiANCj4gVGhlIHJlY2VudGx5IHVwZGF0ZWQgdmVyc2lvbiBvZiBxZW11ICh2Ny4xKSBp
cyBjYXVzaW5nIHFlbXUtY29ydGV4LWE1Mw0KPiB0ZXN0cyB0byBmYWlsLiAgU2VlDQo+IGh0dHBz
Oi8vZ2l0bGFiLmNvbS9qb25tYXNvbjAwL21ldGEtemVwaHlyLy0vam9icy8zMDgyMDg2NTA5DQo+
IA0KPiBJIHdhcyBhYmxlIHRvIGJpc2VjdCB0aGUgaXNzdWUgdG8gdGhhdCBjb21taXQuICBJJ20g
bm90IGNlcnRhaW4gb2YgdGhlIGNhdXNlDQo+IGJleW9uZCB0aGF0LCBidXQgb3RoZXIgaXNzdWVz
IGFyZSBiZWluZyBzZWVuIHdpdGggdGhlIG5ldyBxZW11IGFuZCBtZXRhLQ0KPiBhcm0uICBMZXQg
bWUga25vdyBpZiB5b3Ugd2FudCBtZSB0byBvcGVuIGEgYnVnLg0KDQpZZXMsIEpvbiwgcGxlYXNl
IG9wZW4gYnVnIGZvciB0aGlzIG1hY2hpbmUgY29uZmlndXJhdGlvbi4NCg0KPiANCj4gVGhhbmtz
LA0KPiBKb24NCg==

