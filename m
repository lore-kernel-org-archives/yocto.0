Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EC38C4708E
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 03:05:41 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.4198.1670468734303197971
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 19:05:34 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=nrpX4EyN;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670468734; x=1702004734;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=Ub6TRFUWkWaGIC2mHe4j9/GLnq+CSfKpBqmA76bkzPc=;
  b=nrpX4EyNBrAW3JN1/6TiRrr3nqygSVtTKy03vNn3whPm3E9S9pmJ5urr
   aqs5P3DhTGgcAgWUmtOj61ZB+xCEC6QdRIH9O6AjNmMTbd3whUJpsLaca
   74VHqr+jrM9UyUby27XHsa9W3DbxGW0/NeLIbtiFim4RCGmN4bo6hKZA3
   W5DGZ+E+dkSMi0sUj9mbgmA+7Tp87n5j2Uk6qzu0CITzVKK6L/O5oO/95
   8ViWewaS/jPiO6YkqINDvQxIO2hkV59LDUXw9Sehglvkf7xhzMDnrKVkP
   CAN4TwF4FUrTupbieE5/rexfHwOLE+i+F/qnJLZNr1LgRhgcZtFiSbr8+
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="379226583"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; 
   d="scan'208";a="379226583"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2022 19:05:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="597189812"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; 
   d="scan'208";a="597189812"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga003.jf.intel.com with ESMTP; 07 Dec 2022 19:05:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 19:05:33 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 19:05:33 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 19:05:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n7lq2Rlgoh/Y6z5SMWJa+ljsf9AbnPMC78Eb5hczkt+YV4yRmDaOHCB0L3d1JHo8Y8TTFXmZiBv9CGJnfG0QLzvrUBtWO9vwFpIBiYXWNm29NXINYRSzNwz4796mWgM0hC9acU1N11eIupt/vsvIzTPQTuNW6TpbXUyCF4eJuFRPsIVLPgGV5DiH8Y1OOQeYLytMxWp+k3ac+0/hFPnr2S6vlFI9e8CqGm62NnmjLgL5u7hgWMff8bS+7s9ihdfeAGyfdsMpWoLQYzLmvkc4gi6Y/kdJJ/njsbPUGsX3SWiXz1Xy8jurAnqACkEQVL8bWpj2KZi2oB8REhnQHkC8lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ub6TRFUWkWaGIC2mHe4j9/GLnq+CSfKpBqmA76bkzPc=;
 b=JVWhIHWdIBNn4uFQiIL1ddCErNrtAI/yR0XM5/VDB84qH+zfkuXe5S/dJsCIGQyNhpQGuaoEpLRTNQl0YglhpxX7qrpFG2zLtroceyi4SFiP3rXcKqjaUmGwd3McOmb1QJGvaYAUTrIsqnDM1gVZPEocD3BnTMxr7hS9ABYgoq59ZdYbfZRRJC5GxIY/eRMKzmpooMG1QJgbNtJFMsu6jgnfVk1ubYjPJ1NP5y+y5pM+Hyny1S7s98Yr944aq3d/s6IpjsZwodnQsSseRrWVPHThQDKRW6M1iFMSdJSL9BufB+7h3hQplvel1Sf1q/xLXMMAu5Ze9qbSql4tDygDOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6418.namprd11.prod.outlook.com (2603:10b6:208:3aa::18)
 by PH8PR11MB6926.namprd11.prod.outlook.com (2603:10b6:510:226::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 03:05:30 +0000
Received: from IA1PR11MB6418.namprd11.prod.outlook.com
 ([fe80::e4f7:a82d:dd09:a55d]) by IA1PR11MB6418.namprd11.prod.outlook.com
 ([fe80::e4f7:a82d:dd09:a55d%4]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 03:05:30 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "gary@missionsecure.com" <gary@missionsecure.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #kirkstone #systemd
Thread-Topic: [yocto] #kirkstone #systemd
Thread-Index: AQHZCo1RP07JWRsicEe5ZtsnNeB7d65jTruA
Date: Thu, 8 Dec 2022 03:05:29 +0000
Message-ID: <38ac59d79f2562488b098071bbcf0f3e11d8cd8a.camel@intel.com>
References: <NqFY.1670452987971380409.tdnO@lists.yoctoproject.org>
In-Reply-To: <NqFY.1670452987971380409.tdnO@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4 (3.44.4-2.fc36) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6418:EE_|PH8PR11MB6926:EE_
x-ms-office365-filtering-correlation-id: de64991b-a212-476f-5eca-08dad8c91020
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YQc7YCEgF5n2kYDDBSMHjN49lfhPPeEyWI7hJOOgBoDSz/yUTVYkfh3d+LF2MzlyPzQcKJ6cvc2qd6RR9HvZPjeZyynBRmHrzo8vBgHBzc5X9ZULu4hNvVePe2w3RhqJ4poOKNoAYRNymsI8zGN3gwPDHZZlTQMXUV60ddJ/VOWlPvmXpyYDpXUXxxPcplGZkDMJMRCMs9pYKyvMWlnLyUfMGCh2dQcVPUMjBzTn/74agWXCMPh1sf5B7AQ5iNO1fPSR2y6TIgwxPRCusslyZQ5ICSNNBnKc8OzMmafotc7tvWRwL66capE4fLV/Q1HXx9FyLgtbTYdd/X/a7Vu2mVk5X6akRjzlOsM7+Et2kacQ4SGjn0vPtH84VfRAvAyVyy4HluY/xWMuXGvEHjh8d4xz5hGKklqsV4P4iivQE6J5fLSXCnb+3gkcymkc8KgQ5JVI9PSFEqo1tQFAW8QhOcP7ZfW3TWSZOqcSKMwjSvGcrQjVw/wxygDyP8/WOaShd/Ql4VapkKQqEJlWpEKdSuIukDgFS/V91+aOEPq4ahdt4GV2DPApCxK82No0mFmwuyq7qqDLPN9RBlFqDpkFooGORU7pax1faLLEJk5ION4+McvYIo2WMWvvqmliZR2nPPofaTvrn9sMR3+jXEx8sgKhCHGjIVh8Ey1PriDlhsbLQmxZMKUtEnK1KGOH3JyZJEFiCbn7SCKoQTBbRIs4HA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR11MB6418.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199015)(66946007)(76116006)(66476007)(66556008)(91956017)(66446008)(8676002)(5660300002)(4744005)(2906002)(41300700001)(64756008)(8936002)(316002)(122000001)(71200400001)(110136005)(478600001)(6512007)(6486002)(36756003)(26005)(6506007)(186003)(2616005)(38070700005)(38100700002)(86362001)(82960400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUF5QnNJM3RGcHNvRUJ4Q0xNK015QVd6U2xNNlVuQXNjNXVWMTBEYm51YW1F?=
 =?utf-8?B?ZXRKTzcwaXJNMjJwazlrbkgzR2VuMmRFdUt2RG9vbjVMcUUyNjF3SEJPUFoz?=
 =?utf-8?B?bnZsNXJkUUhTZ3Q5SG5JTldVblY4UVBGaDRRNUJGd3VpTlFzbWxZdHZ0a1Zn?=
 =?utf-8?B?VWZMUjNHWGU4Mlh4anhURVFkOGtvOTVMQWlpOTJRdTZZSTQ1S2tydzdZbFN6?=
 =?utf-8?B?MVloaEFZNi8rek5FbGZRN3FJOEZQSWc1ZFpFUlhrcUNnbnpENEdUUzltbDha?=
 =?utf-8?B?RmZiV01EbnFNRjFtMm01MnEybHRIdVBueUdqRVd1enFuVys1dTY2Tnk5WG01?=
 =?utf-8?B?ckpsVTRGUXA0dU04b0ErSFExdlpzMzVob3FSTDUvVTh2Ym1pNmlVcERtS2dY?=
 =?utf-8?B?ZFJUVDFUNmhGeXlrU1o0NzFvczdQMVY5WU9TRzFOU1plMlpscUx6OVJnRGVz?=
 =?utf-8?B?M0EybXd6N1VtME90dnpUd2lOOFJKQ29TVVZoU08zMkFaYjd6VVNtUWdJellW?=
 =?utf-8?B?OE5odlJnQTNyajFzZkdQZFhscXY5c2lsUGdpNWRucmVldFZWNHVhSTVVdURR?=
 =?utf-8?B?S2kwWmV0eExtMEZOaThuR01iZXZLYyt2bDlvQS9QeWhvRmVPMGZMcjQvS1No?=
 =?utf-8?B?c21ENEpIRGRsMVREUzY3akJUWTFHSjFBTS96c3loTkI2RXJ2enZvWVBBUWtL?=
 =?utf-8?B?SVI5Ny9zdFkrbm8rUi8xdGdUbldjUjJoWjhQWmNvSWdqOGFPeTd2STBLb0xK?=
 =?utf-8?B?K3RxcjNOR0RSWFJqQW93NEI0K2grM2srSUprQlo5WmRLdHhnZk5oYVkwV3Zh?=
 =?utf-8?B?TThtT3BKSjgwcU5kWC9ULzhYRU9nVXpzUkxJajA2ZHE2Q1lSTWJteEVIT2Z2?=
 =?utf-8?B?REE3aXQ0RGRYakNJd0ZWaW5JUGVKY3I2WHkvZ0xYSldONldsVzd4NU5rNUNP?=
 =?utf-8?B?VzlHM3Q5ZTMrV2ZSb2dyOEZpSHVGOG9LeThqZE11ZnNvL0VrOFI1cE1ScFZJ?=
 =?utf-8?B?akxGd1NUdzRQcE1FSUZMMUpHZlVWeTEybGo5TjRhR0lFZWFtT1o0dVcva2ta?=
 =?utf-8?B?bWt0STZDN2hadDQwUXRqOXlMUzZOZ1R6TGZOYXVKMzBWYkF3M3U0WHdPZURa?=
 =?utf-8?B?VGlNNEoycDV4ZVp0KzFsZUdiVFNJVmZIMXZ0b0pXK2IxcW5wS0hqV0RJeGds?=
 =?utf-8?B?MUN6S0VhQ25seUNyY3NVREd1bEt6OXVjMmFwZy82d25Qd3BIWmdmRzRqbktJ?=
 =?utf-8?B?dUMxcktDNm1xSXVpL2IyMUxOSUFsbmlnT1k4OFFUNEwvMVZFUmE2N3JWdHky?=
 =?utf-8?B?NjMvYUdHemVFY294bFFOTGRGMlQyR3d1YmQzVitLTC82d2VFeDdXUFY2OERT?=
 =?utf-8?B?Mk9aZW16NEtzSTlaeEJtSkRNMHNXRElRU2VFWUVIZFFJRjRTUHRIZ0djaVRI?=
 =?utf-8?B?eGF1ZGJ4WDNDQXFGMUIxc3VhWm9HeDdHdUl3RlZMODFCMG9Nc0diWm1UdUxi?=
 =?utf-8?B?V1JKR2hvdmtPN0JDZXlWc3FhcndScDN2Q1lPMFAyQTVza1FIcU9qVi80U0R1?=
 =?utf-8?B?TXM3NjJZSlpwQTJIdUd3UFU5NkxENS9OV1ZJcE1QVjJiTzAyMVBWcUdZbUhC?=
 =?utf-8?B?VW1qVTV2V1NUVjFwa25NanZ0aEJid3V2NVlReGtyQjdZWk9UbUQzNDVJTC9u?=
 =?utf-8?B?cUVjVHc1QjNVKzVhUzZGYVo5eERmbDg0dmkzcDRqSEIyTzRNK0hBenRZYk5a?=
 =?utf-8?B?NGUxUUdJakM5R0s5K0R1ZFRnT0pxZEQ1clk2RDNhYnp2TE1CcnZROGI3ZTl0?=
 =?utf-8?B?UVBUcEJoUXNCT3pNV0NtOHFJODdWMDFVNDRNZlZxaFUrM3Q3U2NUdkJOSCs2?=
 =?utf-8?B?VHI0NzFmSlJCYWcrVDU5TFBoQzJBY1Z0ZmlzM3NMbTE0b1llNSt6aGJGM0lR?=
 =?utf-8?B?c2RBRXlMRTVPSkxLNjcrNTVVSlBHMnlURE9KWUJQZWhIM3NrMEoySlUxOWht?=
 =?utf-8?B?eFpLdm1FNWdGSGdZektqQ0QveXpaNXdzUDlCMEMzcjZPSnM2dC9jUVZBQ0px?=
 =?utf-8?B?a1FXbFNWc2dMYWsyb0lxbGVBek9YQWJUU21KaDNzc2VoaWcvcllzejFIZTFl?=
 =?utf-8?B?UkVCckZkUzFBUzhqalBqejNYZy9IZm11MjZnWXAxRW9SeGU1czFxR25wb2h2?=
 =?utf-8?B?QXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9D832B394E5ED3458EAB8B47C5CAEAF4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6418.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de64991b-a212-476f-5eca-08dad8c91020
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 03:05:29.6767
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /rc05HB6Sm7nBDGcyJ/MfuM8m9mfbQUc6Xsp3lYFxmMoimudJkXmnRxfz0U9Vj0khr6tTSZaqYtqeBXrdc/Z8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6926
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 03:05:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58753

T24gV2VkLCAyMDIyLTEyLTA3IGF0IDE0OjQzIC0wODAwLCBHYXJ5IEh1YmFuZCB2aWENCmxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+IEknbSBidWlsZGluZyBhbiBpbnRlbC1jb3JlaTct
NjQgaW1hZ2UgdXNpbmcgbWV0YS1pbnRlbCB3aXRoIHN5c3RlbWQuwqANCj4gSSBuZWVkIHRvIG1v
ZGlmeSAvYm9vdC9sb2FkZXIvbG9hZGVyLmNvbmYgYW5kDQo+IC9ib290L2xvYWRlci9lbnRyaWVz
L2Jvb3QuY29uZi7CoCBJJ3ZlIHRyaWVkIHVzaW5nIGRldnRvb2wgbW9kaWZ5IGZvcg0KPiBzeXN0
ZW1kLCBzeXN0ZW1kLWNvbmYsIHN5c3RlbWQtYm9vdCwgYW5kIHN5c3RlbWQtYm9vdGNvbmYsIGJ1
dCB0aGUNCj4gZmlsZXMgd2VyZSBub3QgaW4gdGhvc2UgcmVjaXBlcy7CoCBXaGF0IHJlY2lwZSBk
byBJIG1vZGlmeSB0byBjaGFuZ2UNCj4gbG9hZGVyLmNvbmYgYW5kIGJvb3QuY29uZj8NCj4gDQoN
CklmIHlvdSBhcmUgdXNpbmcgd2ljLCB5b3Ugd2lsbCBuZWVkIHRvIG1vZGlmeSB5b3VyIC53a3Mg
ZmlsZSB0byBzdXBwbHkNCmFkZGl0aW9uYWwgcGFyYW1ldGVycyBhcyB0aGUgZmlsZXMgYXJlIGdl
bmVyYXRlZCBieSBib290aW1nLWVmaSBwbHVnaW4NCmluIHdpYy4gVGhlIGJvb3RpbWctZWZpIHBs
dWdpbiBhbHNvIGFsbG93cyBzdXBwbHlpbmcgYSBjdXN0b20gYm9vdCBjZmcNCmZpbGUgYXMgd2Vs
bC4NCg0KVGhhbmtzLA0KDQpBbnVqDQo=

