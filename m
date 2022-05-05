Return-Path: <jay.shen.teoh@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DE0C433F5
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 01:15:41 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web08.5642.1651713335789520896
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 18:15:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=UuErEBZk;
 spf=pass (domain: intel.com, ip: 134.134.136.100,
 mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1651713336; x=1683249336;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=GNpJbBBydjY8+A5mnl+cFHN2MWaeK1Kn9DINWblz00s=;
  b=UuErEBZk0v6E5uG4iTaRI69Wb7UHnRz70bgl+GbPS0TeToQbejFnKDWl
   N3fVVE8JMY+29vIHSMa9bzbKNFuqIOhF4v0vpakKo4b0QPkSHHvGbT/Xt
   YaFWq07mydCO6tWnFbKQWkOHJqWGbpk8Ep6vF/KIqufuoV+Ws8bD8b5RS
   1OXWkcipc4Hyg17ZSq2eeSt29UEgNA8k6pG3V+EO1pgv7Epm1HuDgws1o
   1RB3BaAHmmzbWt4wF8kQZYKXlqBzF2Rjqf7vZNTvP5KY6C32EsTIT+VT7
   RdglOFPITHrzDUk6kztF+dQSMphyn0tLh0XLLSvZbXqAAGu5E3WN/eXO/
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="330937064"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600";
   d="scan'208";a="330937064"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 18:15:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600";
   d="scan'208";a="734663205"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by orsmga005.jf.intel.com with ESMTP; 04 May 2022 18:15:34 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 4 May 2022 18:15:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 4 May 2022 18:15:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 4 May 2022 18:15:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fqc1dunfiZM/mw9MJynQq3PUheI/Uu6axcBzJql5MIWAeJUuU1IeNT/NeW3cGTpLYzxPx3vTdw7yvj9B8sA4w209m283H28QqSGjc7fQoJFLQl0b53GI/60M7O/b+NVkzYnaOTQd/V8YL+5KFUNATd+/fUh8Ix99skn47PIVOAXXuBT16zAyCiFVIPKszA5V15RpqjUAEshd5YwIl6lHF/sHzUuCrkxiUy9PHSQQb1BQ59OzUr9EWZvppoxHEVCZSYZrVbROW8O9AjiHVjkR0IWWos0tKGF37BOnZb9k4QNiW9n6fuoA1UUHXhccfOfh+YYD7IgO8d+V80OFR0WElA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GNpJbBBydjY8+A5mnl+cFHN2MWaeK1Kn9DINWblz00s=;
 b=OCQVrZQldO2MBk0KircDMQb2SUKWHaFKk9CT4Co2a67ZCh8RyVzX/HfSP7mU56aP7OLnu3m29WSX5y0z1DjI7AX1RUolXHC3d/oKMQqxGB6stiDle6IcW+ShREyAoJ+xWPNQFZKrLVheJSsgWcf3083SGSmFGlBm3Dks75upKVQR0mI4fsBVQW5+T/AfJhixaa4PFNArVUn87x7rgdLXvBIt+nB9n3rDusqd97a/9K0Fl1vmPZvbLsrSOK4nd3KRQERG0LhKBIoQtJw2R1NYOb3n0V22Y5VRt8c1w5Eqy9mb59qkrKLRjKmlR5BbyfuYz2PZ9sJZYLtvLFSVqLOYpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR1101MB2339.namprd11.prod.outlook.com
 (2603:10b6:404:94::17) by BY5PR11MB4072.namprd11.prod.outlook.com
 (2603:10b6:a03:18f::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.13; Thu, 5 May
 2022 01:15:32 +0000
Received: from BN6PR1101MB2339.namprd11.prod.outlook.com
 ([fe80::b179:5566:ca64:89d9]) by BN6PR1101MB2339.namprd11.prod.outlook.com
 ([fe80::b179:5566:ca64:89d9%10]) with mapi id 15.20.5206.013; Thu, 5 May 2022
 01:15:32 +0000
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Yocto TSC <tsc@lists.yoctoproject.org>, "Mittal, Anuj"
	<anuj.mittal@intel.com>, "Elberger, Richard" <elberger@amazon.com>
Subject: RE: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-3.4.4.rc1)
Thread-Topic: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.4.4.rc1)
Thread-Index: AQHYX44v52pUDhnfiUOMVaQb/EYhYq0Peu+w
Date: Thu, 5 May 2022 01:15:32 +0000
Message-ID: 
 <BN6PR1101MB2339141C648E8A8C987D5BD5BBC29@BN6PR1101MB2339.namprd11.prod.outlook.com>
References: 
 <010101808ce91651-962b6832-98c0-412d-b766-0b6f9cfbf3e0-000000@us-west-2.amazonses.com>
 <6cf4b0c243c9fbb0ca7a7088acd22d8a5c23232f.camel@linuxfoundation.org>
In-Reply-To: 
 <6cf4b0c243c9fbb0ca7a7088acd22d8a5c23232f.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a95f801-19fb-47f2-876a-08da2e34c028
x-ms-traffictypediagnostic: BY5PR11MB4072:EE_
x-microsoft-antispam-prvs: 
 <BY5PR11MB407248405AB2885BF2C0FD8DBBC29@BY5PR11MB4072.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6g5OdaaFDWmzomcetdbiANuTTUfdaz8bpRFyJu3/k2JouevqjWiUdb5uYn49OStvmhb+i0Zxvl+odUbU4v8nGWs9gXeOS1ihsL9Bqw+bCTBF4Qz+p1tzdu1LCUC+/fN0tGa48CJ+U0Gb62mQFLWKXMJ+dSWltqR1UlkwISy40hUOxXAlzRAksBi8GOP7IOVkpb5zclvR5wtuTduteLluVZFxICP7A2tC/sIR4NIAcfhKk3bHcDCIomnO4Pk7TMFNW5s9GrH0OhwoK0Mj6qQbyeYWZ+cSYbREQ8zP9mHxkXK/ejFLDTnyA0OrT7vgtG7TxtqMFW8XMVJ6M3QIbzMds9CwSUA4Lp35QMLP5yxv2I4DMC1W/w1iSCT4pc3eht1TIPCJzHbLcjhMQ11w+fD5V4cUk9nR7l3joeZmIy5/Ohg+AgSZll4vTBP0nZSQ1Akjb33TbsEdxQzREYaVkgoMBh1yKuazfh3i4vSNGf69iMpvNq61ixfWjWpLwTT1W2WWYcAe+QI0eo8Tdm0ruojVQhccU6VuEvqGkWjTkiUh1uqw1Zs4aA7UxVY88v6rRpTUt2ywZOJpQSt/75ipZt4EkVtkzCFBtqEF3yybEzwwmnDyiweK6U1wfSyh+K/3gSdJyJ7Mgqj44zHhZFPHat/oyLdrxjA6prRX37l6onfSvrxNJ2C4BhezGj0T8tXikslWwf0OrZI05DHBBgR9jSV8OZvdbiYNNoReTs4A7zOgXD2k3Swx2comNhUyzAIn8IUK2pBDeLGLYHTtiyF6lcsns50Gof06AcIrHRpLPeYoygdDa/GGqUWCA1hHQzbTLDuArA2hP0rX/aHLKBsP6/3LfA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2339.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(66476007)(316002)(5660300002)(76116006)(2906002)(66556008)(66946007)(33656002)(7696005)(186003)(55016003)(52536014)(4326008)(15650500001)(83380400001)(8676002)(64756008)(66446008)(8936002)(54906003)(110136005)(86362001)(966005)(71200400001)(508600001)(38070700005)(82960400001)(38100700002)(55236004)(26005)(9686003)(53546011)(122000001)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?a29nSGdkNWdUNG9YNXI0SVlIREZ5WUoyWEpLMEhKTkNFU0dHTjN2cHB0NzR0?=
 =?utf-8?B?TVl6OXRtN01DRnBHNWlaSlZFUStxQTBpdmFnSXFTbVRWWFUxZjB0VS9oWTFw?=
 =?utf-8?B?aVVuSXo1QnMwMlJMOWZ3OEFHdEttQWJucGNhZ1Y0SU81cHpkc0hXZGFHcE5M?=
 =?utf-8?B?NEZpMVBTUWM5ejMvS0sxRVhVazNJM3VZSkdhb1A0a3Q5M1huYjQ0cXN6dHNq?=
 =?utf-8?B?YnhpWUZYL2JwY09sdXBTWC9pUWttb2N1Rk83SVlSYVpsdGxXL0xCSHBad3Bo?=
 =?utf-8?B?OHhPNi9jSDc0RUJrWmtTTWhEMTVoS0xzYnlKVXU0T0dFVnc4dWRaVmFNN2ha?=
 =?utf-8?B?YnpQNjdqUHloQnBMT0FuY21JQkxmaHR1Ni9ZcjlmTWYwQXRXMHdmN0FtenFP?=
 =?utf-8?B?ekJTeTNvVXF0M2dHSnk4M3FKQUpwVDRxWDNNZWNFTDEyd05TeEJoWGFNc1Bm?=
 =?utf-8?B?MHRxVXJMWWdXTFVlNTlZZUFHOUt3Nk1tSUxISkxYa1k4NWVZQlh4K2hFb3FB?=
 =?utf-8?B?MEQ4VlhjVEFaRlJYRy9tOGlKckQvUXFEcXJXb2NyT2xzQkZFOEVaaEdBVFVY?=
 =?utf-8?B?dTdkMFlrNVlHQ2I3bzUxWXR5N29Mb3dOUkZUeDlnekw2dXJHdU8rRytnZXcz?=
 =?utf-8?B?elZiMk5PeHVJMitQeTVxbVZqYU83bUp6c05NY2VmZnFYdTVja2Y0TC8rNTdz?=
 =?utf-8?B?K05VMTdmQ3ZyYSt6L1V5Y2piYWZ6cS9FakdkRStsVE4rR2s0QWFrZ283T3F0?=
 =?utf-8?B?L0pPOHUrM1JKMFUwRTNneDE2bFA2QjFzZ1REbE5mOXFwK3ROY1Frd1B2MFRw?=
 =?utf-8?B?aDNCaFhJNmpmR1R1UGpmN0NQbXhVQ1h1K1RrM2djcU1KTmtFWURBYVphalp3?=
 =?utf-8?B?ZFFxSzdNOE8rLzcwZmNYQkVaeHJqQUVLdHBEWWpvb081RTBRT3h0RmhsV1oy?=
 =?utf-8?B?VVVuR3RraGp0RzRGK2VZRFVidjF5QVNkM3BFWmw2TVJqOG9abW9GdlpYb2Vu?=
 =?utf-8?B?LzJqOHJ4ZDRhWEFneTZCZUVHVzVUclN6L25YSzd4Nkh4eWtoVnlsa3kzQ2Z3?=
 =?utf-8?B?dkxLbTJ2dGZiR1FEZy9vN001R3NhRzluTEttaE9id3RyUlBrZmxuQ2cySzFv?=
 =?utf-8?B?eWh5Z21RcDRpMDZSczVkZ0FVU1ZpSWNZSGFzTy9KNUhWTW1paitucW9aUmxD?=
 =?utf-8?B?WlhDYjUzSmdhaU9tcVF3TTIwZFdCUGVWYVF2YzkwM213eGRTZjN4aHNsQVhv?=
 =?utf-8?B?aXcrS0lNanhDVVhhVGErUUtNVWw1REsrMTFBUjU3Y3JwMzFjUTZvNk9XdUM2?=
 =?utf-8?B?cVVic0pTdUZBZ2NCeUpva2RGT2xQSGswMUhwT2NGbk5uOS9DQVV5NWJEK1BQ?=
 =?utf-8?B?K1UxZkU0N0M2NkpTK0M3OHZKK1VEM3dWYjhzbk4xNU5MTUJKdHFtMWZHN1lE?=
 =?utf-8?B?d21QZzFzV3FmZ1BaMVp3RFMwem92U1JSM1FBYWg5RjhOZ3pudXcxaUJzODdQ?=
 =?utf-8?B?S1A2WElYZnVPcSswY255VmduY1pIbFFWNEhaS3owckhtSmcyaWNISitUKzRF?=
 =?utf-8?B?SmxFRndsVGM2NUYyV0RockIrdzBTYnp1YVhGb3lQWjJ6enhhQW94YytsWHpt?=
 =?utf-8?B?Yk9WM3FHQWdiUm5PT29GN056dExtSVBuWjMxZExrZkY3eGFCYzhSY2Zpbm1U?=
 =?utf-8?B?LzdTQmpGNnkrSmNRMlpaNU5iamdZSEp1aEdQNXZGQlF2SlZNaEhVa1cwUlRB?=
 =?utf-8?B?WDN1Ti9iQ2RrejdrTVcrZFFLUzFuOFhVWnQ0OWp5aFMvQ3dLWGh3d0x0TEFa?=
 =?utf-8?B?bHpKWUt1TG9YMnh0SVpWMnUyRGppbGVhREJBUzM1cEJ4RUhKTnMzZnB0SGxU?=
 =?utf-8?B?dDlmZDRXNUl3L20wMXg4bXFpd1FOZjQ1UzlRWVZrd1FqL01pOWlOSnBJLzAy?=
 =?utf-8?B?anZsNW5oUVdYRzJIeFhWWVAzeWpIRmRNVE0wYjZPSnNucEVSWFA0Y01LcDlV?=
 =?utf-8?B?Y01NamhMV0VQeGw2cUZOUWhWNnRva0ZLQzJUNCtJVlNXc0x2aHNRRXBJUnZE?=
 =?utf-8?B?dFZMVDJqMXlKQmhMK1Zmck03Y3QzV3N4Q0hJUVJJNnFXcTNCcUNQWXhPOXh3?=
 =?utf-8?B?OVBjaEQxdmpNMEJKalo5VXB5NWs0bGExRERzSE1kTDZRaVN6WnZFTW9xYklv?=
 =?utf-8?B?bUJ4dE56bjRPQlpqY0Zjc1hRaFY0N2pCdFN0bGl2SzJ1QTkzL1d0aVU4NHNZ?=
 =?utf-8?B?Nk9LL3Y4SGlGVHljZW16ekhKaHllb0xHTEhka1VDdE9lM0FPYmQyQzJveXM4?=
 =?utf-8?B?OWxudHdyWUlpR2xkK29wM21VZEF1aFk2clBKYUllcTJOSWVMcVJiUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 BN6PR1101MB2339.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1a95f801-19fb-47f2-876a-08da2e34c028
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 01:15:32.2936
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ogkiOgzY6ZSI3ZGEnE6owQyAQ+pWyHLAIChs8ulXfg2PZkHEa8y9HJdSgq9y5HEMq7xE6UUIoa2x8JLmqwANsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4072
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 01:15:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56994

SGkgVFNDLA0KDQpJbnRlbCBhbmQgV1IgYXJlIGdvb2QgZm9yIFFBIGV4ZWN1dGlvbi4gIA0KU2hh
bGwgd2UgcHJvY2VlZD8NCg0KUmVnYXJkcywNCkpheQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+IEZyb206IHFhLWJ1aWxkLW5vdGlmaWNhdGlvbkBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnIDxxYS1idWlsZC0NCj4gbm90aWZpY2F0aW9uQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9u
IEJlaGFsZiBPZiBSaWNoYXJkIFB1cmRpZQ0KPiBTZW50OiBXZWRuZXNkYXksIDQgTWF5LCAyMDIy
IDQ6MDkgUE0NCj4gVG86IHFhLWJ1aWxkLW5vdGlmaWNhdGlvbkBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnOyB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IENjOiBZb2N0byBUU0MgPHRzY0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnPjsgTWl0dGFsLCBBbnVqDQo+IDxhbnVqLm1pdHRhbEBpbnRl
bC5jb20+OyBFbGJlcmdlciwgUmljaGFyZCA8ZWxiZXJnZXJAYW1hem9uLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtxYS1idWlsZC1ub3RpZmljYXRpb25dIFFBIG5vdGlmaWNhdGlvbiBmb3IgY29tcGxl
dGVkIGF1dG9idWlsZGVyDQo+IGJ1aWxkICh5b2N0by0zLjQuNC5yYzEpDQo+IA0KPiBIaSBUU0Ms
DQo+IA0KPiBPbiBXZWQsIDIwMjItMDUtMDQgYXQgMDI6MzIgKzAwMDAsIFBva3lidWlsZCBVc2Vy
IHdyb3RlOg0KPiA+IEEgYnVpbGQgZmxhZ2dlZCBmb3IgUUEgKHlvY3RvLTMuNC40LnJjMSkgd2Fz
IGNvbXBsZXRlZCBvbiB0aGUgYXV0b2J1aWxkZXINCj4gYW5kIGlzIGF2YWlsYWJsZSBhdDoNCj4g
Pg0KPiA+DQo+ID4gICAgIGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL3JlbGVhc2Vz
L3lvY3RvLTMuNC40LnJjMQ0KPiA+DQo+IA0KPiBUaGlzIGJ1aWxkIG9mIDMuNC40IGhhZCBzb21l
IGlzc3VlcyBvbiB0aGUgYXV0b2J1aWxkZXI6DQo+IA0KPiAqIHFlbXV4ODYtNjQgcHRlc3QgZmFp
bHVyZSBpbiBsdHRuZy10b29scyAtIGtub3duIGlzc3VlDQo+ICAgaHR0cHM6Ly9idWd6aWxsYS55
b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xNDI2Mw0KPiAgIGh0dHBzOi8vYXV0b2J1
aWxkZXIueW9jdG9wcm9qZWN0Lm9yZy90eXBob29uLyMvYnVpbGRlcnMvODEvYnVpbGRzLzM0NDkN
Cj4gKiBsb2dyb3RhdGUgaW4gdGVzdGltYWdlIGZhaWxlZCBvbiBxZW11YXJtNjQtYXJtaG9zdCAt
IGtub3duIGlzc3VlDQo+ICAgaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3df
YnVnLmNnaT9pZD0xNDY4Ng0KPiAgIGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG9wcm9qZWN0Lm9y
Zy90eXBob29uLyMvYnVpbGRlcnMvOTcvYnVpbGRzLzQ0OTANCj4gKiBtZXRhLWF3cyBzaG93cyB0
aGUgd2FybmluZ3Mgd2UgdXNlZCB0byBzZWUgb24gbWFzdGVyIGFib3V0DQo+IFNSQ1JFVl9GT1JN
QVQ6DQo+ICAgaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3R5cGhvb24vIy9i
dWlsZGVycy8xMjIvYnVpbGRzLzExMjkNCj4gKiBhbG1hOCBwZXJmIHdvcmtpbmcgZmFpbHVyZSAt
IHNhbWUgaXNzdWUgYXMgZHVuZmVsbCwgd2UgbmVlZCB0aGUgc2FtZSBmaXgNCj4gICBodHRwczov
L2F1dG9idWlsZGVyLnlvY3RvcHJvamVjdC5vcmcvdHlwaG9vbi8jL2J1aWxkZXJzLzEzMy9idWls
ZHMvMTIwDQo+IA0KPiBJIGRvbid0IHRoaW5rIGFueSBvZiB0aGVzZSBhcmUgYmxvY2tpbmcsIGp1
c3Qgc2FkIHdlIGhhdmUgc28gbWFueSBpc3N1ZXMgdGhhdA0KPiBrZWVwIGNyb3BwaW5nIHVwLiBE
byB3ZSBwcm9jZWVkIHRvIFFBIG9yIHJldHJ5PyBXZSBoYXZlIG5vIGtub3duIGZpeCBmb3INCj4g
dHdvIG9mIHRoZSBhYm92ZS4NCj4gDQo+IENoZWVycywNCj4gDQo+IFJpY2hhcmQNCj4gDQo+IA0K
PiANCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBt
ZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+IFZpZXcvUmVwbHkgT25saW5lICgjMTQ0KTog
aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cvcWEtYnVpbGQtDQo+IG5vdGlmaWNhdGlv
bi9tZXNzYWdlLzE0NA0KPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZy9tdC85MDg4MDEyNS80ODk5NDYzDQo+IEdyb3VwIE93bmVyOiBxYS1idWlsZC1ub3Rp
ZmljYXRpb24rb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNjcmliZTogaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cvcWEtYnVpbGQtDQo+IG5vdGlmaWNhdGlvbi9s
ZWF2ZS8xMDQwNjgwNS80ODk5NDYzLzcxNTM4OTk5NS94eXp6eQ0KPiBbamF5LnNoZW4udGVvaEBp
bnRlbC5jb21dDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IA0KDQo=

