Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C688C433F5
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 16:02:00 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.11490.1633708911517799566
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 09:01:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=Q76BTRqi;
 spf=pass (domain: intel.com, ip: 134.134.136.100,
 mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="290033124"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200";
   d="scan'208";a="290033124"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 09:01:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200";
   d="scan'208";a="561358496"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by FMSMGA003.fm.intel.com with ESMTP; 08 Oct 2021 09:01:15 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 8 Oct 2021 09:01:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 8 Oct 2021 09:01:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 8 Oct 2021 09:01:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c6riNzCyRo7I3NI2KsxR2WCKWszu5RWCm9it6IxVcOlEbHA85XjbSM6xB1cW7ZKe0g27zdHrgaMLfeNhFJfy4zdxTQW1TjYJfTwchoyG75orsSMi6qw6scOowWMzVC9wy30KFeVSCHItoY3vg+m3gBSeefTlp1i9RXesqDkJS6tRz8NdUfSJF4BdtTt/UW29neugVOd+rlN2KKVjP850ZBlD11nAQQKWhsw67NTrPz03AOTranVLn9do0bsCwVGQv8qsdNP1OfxiPo4XxGsk+OjW3Dc41l9thIhd7vOOQtBR1P/cwDrot3u7h/V6jZD/t4pAwd6b0UD46nOUT6neXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X9ClhMCRRmZO4KYYU+HVfxKI3YFz2VKrlVqeA55roAE=;
 b=IrlkOKE3ug/2UuWXXFeLZE6uIG/lw+n9Ks0uewVwo9J6HOzY1cCE+e8mjP1JfpbtHu8vdSdbZdqTcsuuM2863Cn1xV6f8pWWbiRWG7g7xB4Ubm774W6oD7ZFDvsIaMPEEDhHBtzqiy1TRi1WQLsO617GEWcU52qTVUERL4Nsg7Wsr3F3qDA+F9jLYctkFiHLrhh6JEykembNsT6twi4LuizTTTXW5bY/SCd7eTXCvzQ7OvmUKDT5N3WJNDQZEexkxet0U+Bo26mySBiAn8IxO1n7DFhYUOnIY8jqMc/xW7EH2hO2vr0yUJ2KiLy1YZAMYHRg2qGItklH2JHssMZ4Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X9ClhMCRRmZO4KYYU+HVfxKI3YFz2VKrlVqeA55roAE=;
 b=Q76BTRqio5XMIlousL0xoPhBLap9SyXHen14V9636aaXp51Q9bIPyvhmiWJOhbjTbnAoPSP2dqCuwJfU5V8AY8NfMeUU/7xD+jKltK40amZcDv9yONBKUhIArz68ZeMal9c6WhPDrZtpjYPaOc7fkHSTEllxX7I8okP8HrDxpkQ=
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by BYAPR11MB3302.namprd11.prod.outlook.com (2603:10b6:a03:7b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Fri, 8 Oct
 2021 16:01:13 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be%3]) with mapi id 15.20.4566.023; Fri, 8 Oct 2021
 16:01:13 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #zeus meta-intel
Thread-Topic: [yocto] #zeus meta-intel
Thread-Index: Ade7lYNzGnXDdfszSXOKckUgK88nGwAwKyaAAAC+XnAAASNjAA==
Date: Fri, 8 Oct 2021 16:01:13 +0000
Message-ID: <965a31af46a43bd02e27ebd00cdaa48cdf205997.camel@intel.com>
References: <036a98$65nf6t@mga17.intel.com>
In-Reply-To: <036a98$65nf6t@mga17.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: baesystems.com; dkim=none (message not signed)
 header.d=none;baesystems.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a088eb4-85c9-4d84-838a-08d98a74da94
x-ms-traffictypediagnostic: BYAPR11MB3302:
x-microsoft-antispam-prvs: 
 <BYAPR11MB330223BA22F3E56089C09AE2F8B29@BYAPR11MB3302.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cktIG6gc8ZCJntYF1ZP1btecaySTGXovTGc9nm5PW+k/OfQ2w2Xsx5YQlKLWj3xvXa8WNc7r4V4RzF+3txRGcKqg3AECuCUHpCltpVQEk9aGB/YXNZXm5s/mlBkWrktOn4o/sTao9I18+XK7uv/TAKfPyuZ66/aYDT44/SHoz+mCwbqjgR3NDwC/Ekj+VScf/xqzReOv4xajFIZ7657qAI9LXkEKkxu1Lv6YdNKQJ4Urc7QksZ5KJUhPICYNfGkDLvTEJfQA4ZEe99KTxlvjjJrTp3reKCCHds4JO0KTabTWN0F0XT3LPhAmDLVmck/8CySLNhA4xhG2ysqPUAUkv+iumrvqbNBmeWjduv9ghss/MB888+AO//TB3j89GPx18fVUaoQKsUJP0KbWLMhSp0mptBgQEmQvMkJbNh1AKWBK8fOBiHYEqhfKAE5LooywsszI7oKZoNYw4NAjgIRBb4KriipE+l/m3GPVUVmjOTYhQ3zMnYVo+KFIB0SMQhnXmMTzKX6UbKkzo21C7fNg2MfuclZzylDdlVqy+VVFOa+Gg3UincaGMO5ulw0QPojkwXPdxLpZAAltYiBUCL0fe0NfVnFiCJz0Q/2pNcLY9AyiMWzPFTigxm8tDGMgfGT+Rpi7Lv08NSdH0Z+BTHtiHEwcft97gVo3GQJ3QWhzBav0C4C2Qj6DM7AZlcl7wCg71qhuB9Q3byYD/3wuvzWdOc90DD5/ZB0uW+cIHu1/zMQ6MDj/2ISpALjrHKd++j2dX4T7KsaMDp4R0x+YkD6tH1S8/DWFYRc15Mami3vVssc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38070700005)(45080400002)(6506007)(38100700002)(122000001)(316002)(66476007)(36756003)(86362001)(83380400001)(91956017)(966005)(66946007)(8936002)(5660300002)(110136005)(64756008)(66446008)(66556008)(71200400001)(6512007)(508600001)(26005)(186003)(2616005)(8676002)(76116006)(6486002)(2906002)(53546011);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MnJEUXU1U3JjQUxGY1AxdnYxZVZ2M1dCVS9FdEVCSEZFUzRITkpXRlY2SFp6?=
 =?utf-8?B?WkNvQVFBRFZOM3dSZWlLL2lFekhpYzJIeUpnWXhXSUZ6VmJXTkVMSXJWTTFp?=
 =?utf-8?B?cnFYcko4a2pUUjRvYnZCU3VVZXozUlRleVpvTVpqQlJhUTFTeENFVGRtTGl3?=
 =?utf-8?B?dzJRZElvS1pGMWU1RW9DTHNJSnpySlBsVXA5YVh0SHBmaXlvUnplazduZUNI?=
 =?utf-8?B?STZ1L3dOSGdwZm1RWkhMUzZnSHh1QTd5UnFHWTMxbm02RUR6NGx2cThROWc2?=
 =?utf-8?B?ZWhhR0R4U0lBSDdMMFNDMEtSalZNcUZuai9lZERER1o3ajFTbCs2VVpQY0dH?=
 =?utf-8?B?Zjdua015VnlybUVZVVlYWS9DeGMxcW5JK1BjQXdRWVNWZTkzUi8vTWhpZEV5?=
 =?utf-8?B?QWdJMWpXWHFPQlhFdTVoaE54RUZEdldEbUVJZ0w2WXVPY0dKRkczN2p2T0x5?=
 =?utf-8?B?dmVLNXBPcncybytkQzRsQ2xJMFU3dmZWMkt1OFNVaTdWSGd1TUdOV2ZHNmVP?=
 =?utf-8?B?RFRiRXE1MXlqQkVIREVoZGVQckUwQ3JwQU5uZmZGU0Iway9DOGZWOHAxVFBo?=
 =?utf-8?B?QlpOVUw3TDI5U2s2b0wwMWM3UFdLMnpmbk54akFJcUZOMnBMcFdYenRtYXh0?=
 =?utf-8?B?ZERreUl6STBJNG1PMVJTRlBqUmxoVkc0NUNLdEhZZmNheFE0VGVjeUZ4NS8r?=
 =?utf-8?B?Z3RvQkFxT3d0eDkvMjZSa0hlYzNCY0lHSWVydDNsckxaZG5WbTB0OTFvTWFX?=
 =?utf-8?B?QktUcE5zbWU1R2JXMVJuV3RaamdDUVBoemJuM3hTcS9mK2dzaFBrbjE1RWJB?=
 =?utf-8?B?aGMyQjJhUHNQcUVFLzhsTkRWc1VwNVFVRUtKRUdvVlpVMnBROFdBeHhuK01p?=
 =?utf-8?B?a1MxcnRoLzQ3dktWMWdwa2FSUktWRTVBbnBSalR5OUx2MVJwOVJ6NjF6bGxH?=
 =?utf-8?B?cmcxYnpKeXZDekN1TC9jVjh5ZzR5cG53eFdKbGZXY3FEeGFYRlRpSzF5Wmdw?=
 =?utf-8?B?cGR2NU5SWCs3eXc3OElTUldBZzZQTmlWM0RzMUE2QXFBbkZUWlZWaVdlanMv?=
 =?utf-8?B?VDkzNGhjYlFpM2l5RzJhUGxOTDBBbUdHM3VxUWZwNlpsME4xV29JYkN1TkJr?=
 =?utf-8?B?SElTM2NxajFpd0c2N3BRaDdiVWtXUlFXN1dtS0VmQThjL2Uxa0ZFajVTMXlN?=
 =?utf-8?B?QmVaMVlUZWVxOGN1REc1WTl5aTQxM25qWTUzRVMyQ1VXMjY0ZTZXU3BnM2Zr?=
 =?utf-8?B?ekg5QUVZb0h4N2ZSeXJXYVoxOXNEMkV3djFtcHZoNWlhRzhaM3BjbVZQVGty?=
 =?utf-8?B?YjJ4VUNSbFJNeURPSk9jUnRXNk8ybXZ0MmgrNmEyM1Awb3hFSXdYR1BjUFp6?=
 =?utf-8?B?Mm0wZmZ6cGl5U0NxWXlnZWhoR3poSHNja1RpanY0ZFhHTUtVWG03OGhERTVK?=
 =?utf-8?B?WXY0WGY3TU5uTitIV05VMEd5d0VER0ZLZE1TaVNBblNEQzF2a3BQMjVkcjYr?=
 =?utf-8?B?SkJiVnVZaEZMWHliSnZQUitUWjk3NkZpK1dQb3ZzVThPczNFTDJYY3Bnd25K?=
 =?utf-8?B?OXF4S0FXb1FTNzI1RmNIdzM4Y0xLTzZtWXZJQ28vNXlZTHM4dVhKNHFvOGFM?=
 =?utf-8?B?VWgwVnJkQWlVdm5vbXo0WVNma3FtdlZkNW5IMzBtRHZxSldGMGFhR3N0enY4?=
 =?utf-8?B?MGxpNHVWbmNkaHFVL21CQi9YV0daMkFjL201QXdGQkdwM1NVYmoyQ0drM1FZ?=
 =?utf-8?B?SG9CSHJuMy9qSUpsYjVxWjBLMlFIN0RxZGJVOEQ5SlZKNEUrRzFqQjZoZGVu?=
 =?utf-8?B?RmYwQ1d5dE85UU9pTktUZz09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <025E759A00EE3A4FB37827E0C91DA82E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5a088eb4-85c9-4d84-838a-08d98a74da94
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2021 16:01:13.6366
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 xu3t6KDCtNsYkTgXOzL5a3AQqsZBgaZnBxT0qeNkGrbWPZ2gSS1KLRZDzAGJz2aHbV3hEGYERm203BjPhhdPLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3302
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 16:02:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55004

U29ycnksIEkgZGlkbid0IHVuZGVyc3RhbmQgdGhlIHF1ZXN0aW9uLiBJZiB5b3Ugd2FudCB0byBr
bm93IHdoaWNoDQp2ZXJzaW9uIG9mIE9wZW5DTCBpcyBzdXBwb3J0ZWQsIHBsZWFzZSBzZWUgdGhl
IFJFQURNRSBmb3IgdmVyc2lvbiB0aGF0DQp5b3UncmUgYnVpbGRpbmcuIEFsc28gc2VlOg0KDQpo
dHRwczovL2dpdGh1Yi5jb20vaW50ZWwvY29tcHV0ZS1ydW50aW1lL2Jsb2IvbWFzdGVyL29wZW5j
bC9kb2MvRkFRLm1kDQoNClRoYW5rcywNCg0KQW51ag0KDQpPbiBGcmksIDIwMjEtMTAtMDggYXQg
MTU6MzAgKzAwMDAsIE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgd3JvdGU6DQo+IA0KPiBUaGFuayB5
b3UsIGp1c3QgZm9yIGNsYXJpZmljYXRpb24gLi4uDQo+IA0KPiAiQnVpbGRpbmcgdGhlIE5lbyBk
cml2ZXIiLCBkb2VzIHRoYXQgbWVhbiBubyBPcGVuQ0wgbGlicmFyeSBzdXBwb3J0ID8NCj4gDQo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1pdHRhbCwgQW51aiA8YW51ai5t
aXR0YWxAaW50ZWwuY29tPiANCj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDgsIDIwMjEgMTE6MDcg
QU0NCj4gVG86IE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3Rl
bXMuY29tPjsNCj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTog
W3lvY3RvXSAjemV1cyBtZXRhLWludGVsDQo+IA0KPiBFeHRlcm5hbCBFbWFpbCBBbGVydA0KPiAN
Cj4gVGhpcyBlbWFpbCBoYXMgYmVlbiBzZW50IGZyb20gYW4gYWNjb3VudCBvdXRzaWRlIG9mIHRo
ZSBCQUUgU3lzdGVtcw0KPiBuZXR3b3JrLg0KPiANCj4gUGxlYXNlIHRyZWF0IHRoZSBlbWFpbCB3
aXRoIGNhdXRpb24sIGVzcGVjaWFsbHkgaWYgeW91IGFyZSByZXF1ZXN0ZWQgdG8NCj4gY2xpY2sg
b24gYSBsaW5rLCBkZWNyeXB0L29wZW4gYW4gYXR0YWNobWVudCwgb3IgZW5hYmxlIG1hY3Jvcy7C
oCBGb3INCj4gZnVydGhlciBpbmZvcm1hdGlvbiBvbiBob3cgdG8gc3BvdCBwaGlzaGluZywgYWNj
ZXNzIOKAnEN5YmVyc2VjdXJpdHkNCj4gT25lU3BhY2UgUGFnZeKAnSBhbmQgcmVwb3J0IHBoaXNo
aW5nIGJ5IGNsaWNraW5nIHRoZSBidXR0b24g4oCcUmVwb3J0DQo+IFBoaXNoaW5n4oCdIG9uIHRo
ZSBPdXRsb29rIHRvb2xiYXIuDQo+IA0KPiANCj4gT24gVGh1LCAyMDIxLTEwLTA3IGF0IDE2OjIw
ICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYQ0KPiBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnIHdyb3RlOg0KPiA+IMKgDQo+ID4gwqANCj4gPiBJIGFtIGxvb2tpbmcgYXQg4oCcbWV0YS1p
bnRlbC9keW5hbWljLWxheWVycy9jbGFuZy1sYXllci9yZWNpcGVzLQ0KPiA+IG9wZW5jbC9jb21w
dXRlLXJ1bnRpbWXigJ0NCj4gPiBJIGhhdmUgYmVlbiDigJx0b2xk4oCdIHRoYXQgdGhpcyBjb21w
dXRlLXJ1bnRpbWUgcmVjaXBlIHNob3VsZCBiYXNpY2FsbHkgDQo+ID4gYnVpbGQgb3BlbmNsIChO
ZW8pIHdpdGggYWxsIHRoZSByZXF1aXJlZCBkZXBlbmRlbmNpZXPigKYgSSBkaWQgbm90DQo+ID4g
dGhpbmsgDQo+ID4gWW9jdG8gaGFkIHN1cHBvcnQgZm9yIE9wZW5DTCwgYW5kIHdhcyBsb29raW5n
IHRvIGJ1aWxkIE5lbyB1bmRlciB0aGUgDQo+ID4gU0RLLg0KPiA+IMKgDQo+ID4gKDEpwqDCoMKg
SXMgdGhpcyB0cnVlLCBkb2VzIG1ldGEtaW50ZWxsIHVuZGVyIHpldXMgbm93IHN1cHBvcnQgYnVp
bGRpbmcgDQo+ID4gT3BlbkNMIGFuZCB0aGUgT3BlbkNMIEdyYXBoaWNzIGNvbXBpbGVyIHVuZGVy
IFlvY3RvID8NCj4gDQo+IGNvbXB1dGUtcnVudGltZSByZWNpcGUgd291bGQgYWxsb3cgeW91IHRv
IGJ1aWxkIE5FTyBkcml2ZXIuIHpldXMgaXMgbm8NCj4gbG9uZ2VyIG1haW50YWluZWQgc28gdGhl
IHZlcnNpb24gdGhlcmUgaXMgb2xkIGFuZCBub3QgdGVzdGVkIG5vdyBidXQgaXQNCj4gc2hvdWxk
IHN0aWxsIGJ1aWxkLg0KPiANCj4gPiAoMinCoMKgwqBPZiBzbywgd2hhdCB3b3VsZCBiZSB0aGUg
cHJvcGVyIHdheSB0byBwdWxsIHRoaXMgaW50byBteSB5b2N0byANCj4gPiBidWlsZCA/DQo+IA0K
PiBJbmNsdWRpbmcgbWV0YS1pbnRlbCBhbmQgbWV0YS1jbGFuZyBpbiBiYmxheWVycyBzaG91bGQg
YmUgZW5vdWdoLg0KPiANCj4gVGhhbmtzLA0KPiANCj4gQW51ag0KDQo=

