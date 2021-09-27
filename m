Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E310C433F5
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 06:57:52 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web11.27697.1632725871078313765
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Sep 2021 23:57:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=hI/3KjTt;
 spf=pass (domain: intel.com, ip: 134.134.136.126,
 mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10119"; a="211506282"
X-IronPort-AV: E=Sophos;i="5.85,325,1624345200";
   d="scan'208";a="211506282"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2021 23:57:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,325,1624345200";
   d="scan'208";a="518448405"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by fmsmga008.fm.intel.com with ESMTP; 26 Sep 2021 23:57:49 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 26 Sep 2021 23:57:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 26 Sep 2021 23:57:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 26 Sep 2021 23:57:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 26 Sep 2021 23:57:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fp8W28XdGpWawypqMoQIQVu66ZEAxXBZB/1E8iPvMogyxMUnAfhro0IU8/Ois7YznVTv5ffTFiaFYFXzh65fX5qf9MehCv7+f0/OWhAD2Zb4u5MItsFSKofCsCiOg/qFA6kZdHx+Fca/oGScDpnVQdp2+9JXBfrZgEG7xuVJDWFfV7tn35MU54Bv0M73mIIpjUBArbLXM8tldV4f8PKAVDthZgXxyQK7OmXwfSocEmcwir1iBWucsiqu0NHgEU6zItqBAjUv/EXVRX+KctIwssRdschnQAIQBc/pbHJWgabzNQpUN+sBvBipSFLcdpMogBr3TPkrD3NNJV5ZiVfs8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=qn+X6RTFXOum6J9+h8pUgPK7rYyoKs9DpYff1Ua03JQ=;
 b=VJ33QKsxTXtVi1V4B0W5/JsbjNTh8+TZn+lgzg44NzwYViQpEUoyykFOyrGKEpV2yeuPMWEUH63JxDNERtYm4tWWf73Y6L81MNjiGTMIBnVduX7bxH+EfjpI7Z+yIudVCe8TFWIDsMyive79QlfBBGT5Pz5sIUjFuCYuYcZvxbw5JFmMSLOlQQvKJmBRHk3n1kAg6sv10zQAF8WlgEWZAYMLP95UmVKXQnigrgaRTuvhHlyucsHSx8gkE8/BAc3LY7tc+Igbqey9PCn2y54Nae5hIp96jQjIwV4xwSrN5UiiYwRqwyYga0MAo242+tP2X91JXsNSQRjHah82cDoRSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qn+X6RTFXOum6J9+h8pUgPK7rYyoKs9DpYff1Ua03JQ=;
 b=hI/3KjTt4U2e/bCbOZqj7y5cxi9O4zAq4C8GgFE85LG0AVEMtRV/9cGpVjVnjf7Pp+gXQzU+vBBpnS+TZBJnL2BLvN2AOgfYxdDYMn/mMsF8Uokq6XqkINVh7Ucnhw25S86rGPXS3b+ndvzIGsgZurEHknQrAweMfsDFQPjPZV8=
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by BYAPR11MB3352.namprd11.prod.outlook.com (2603:10b6:a03:1d::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Mon, 27 Sep
 2021 06:57:47 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be%3]) with mapi id 15.20.4544.021; Mon, 27 Sep 2021
 06:57:47 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [hardknott][meta-yocto][PATCH 1/4] poky: Use
 SDKPATHINSTALL instead of SDKPATH
Thread-Topic: [yocto] [hardknott][meta-yocto][PATCH 1/4] poky: Use
 SDKPATHINSTALL instead of SDKPATH
Thread-Index: AQHXrsKV/yvDn8GFuEe9Co4fd9qeuqu3fG+A
Importance: high
X-Priority: 1
Date: Mon, 27 Sep 2021 06:57:47 +0000
Message-ID: <367b43f8f96e2556b75753dcaba4216f4a695746.camel@intel.com>
References: <16A6C8F0F31341AA.15587@lists.yoctoproject.org>
In-Reply-To: <16A6C8F0F31341AA.15587@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6e4a32c-b251-469c-0cf3-08d981841d6f
x-ms-traffictypediagnostic: BYAPR11MB3352:
x-microsoft-antispam-prvs: 
 <BYAPR11MB335209B30BC1075EB6A4E36BF8A79@BYAPR11MB3352.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2QlUnK1Kk5UEllX8ET/8H3jQYukv5NAiKvdHbtTW2g4D/v8ck3646DB8uCbgMM2/IRNU0TdGXyAuvReSx0iKVvPzJxNhqIjVWCtBo9H2IJ3sEZ93Tt8cPHo34EawdqW+9qXppu2lQRhsvFaMPqiju12X/6uAmOZEUa/a4MzLMA4SbUqiRgoBd/jQO/kWLflpDh/AQCHH6hydILJkm6h+VuY3EGuWqig7af/tXoghKKjY0qUoeBJDtwMs9t5aaZuYBE9kHmz7Y1fyQjsz7OZC68h7lLVFeGJmyQmmLnm2DdH/KExUshwAOR2w35Mn6s27/KEEe7+WKkgSF9DWBE+ocsInbvvOLO5XWPsdxcAEc6MMHQbkHFRfqgmGhuLtZ/WKzKLRF6ClbGvzmCPB4xv/0aEQ3JCmH2qAJSWKoCPoAxj4yxBNGjo9h6r75/KH1GJ+JEQsU4cZ2q5fAP1iUpPu3LmwL9cMfiwsm1X6EO1+h0r1SjgZ3l4fsFs0MzRQErIOH5S5ZkK1U4ntIFi0TGwDMvOlcZEWYdntwr22TvXyLm86tZQPxnWExpdFpabk6rrP0C0J28UQFPy3VgdYhLia/65G6lCPqIDoAkV/Ob0Ss0kO57sJXRJGYOJ09GJr3IwtMb88y9nYNkqKk7PA0PuTYPA400tuduu7qVnuM7W2LQzRHONb//85/0S+F2Qm4sB88Jj5bOOv8l1gxlhd50mny15jrtlf9ak381CtlFeyKVuGpPuNrhr2pTqOyM1pT72/YMkz7OEgM5oievecjxOH8Ium4oiVwnp0cLASUBnM4amAYC+8y4HXJC/7cErMnotj
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(110136005)(122000001)(5660300002)(83380400001)(8676002)(38070700005)(316002)(8936002)(6486002)(186003)(38100700002)(6512007)(6506007)(508600001)(76116006)(36756003)(71200400001)(26005)(91956017)(2906002)(66476007)(86362001)(64756008)(66556008)(66946007)(966005)(66446008)(2616005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cWg1dDFEcmdHeDZ1ZE9GT3h3RTRwQXF3RTQ2V09WdSswVzRTNjRDSStFY2ty?=
 =?utf-8?B?OHp3bk1yQnNNVElGd0Q2aytHNEhxOTdHdnVUY05uT1hIakdmZ3BUYVhEclVm?=
 =?utf-8?B?V09tQWhiMVdRNkFNZjkrcjZiOUFXcDBDdGNia3VjbUZ4NXlVN1RhK3Z3UHA5?=
 =?utf-8?B?aDAzZW1NblJOTVdFK05IdGRXMUlWdW9kUzN1MENRRC9tV1p4MlpWek1JWUZI?=
 =?utf-8?B?QnhoUlp3NGpnOTRyNjYzWnllM0I2MldXSitGcjJxdUVPczJwMFcwb1R0TkVL?=
 =?utf-8?B?U3Y5VEQvRkVoM3psYWlPMHlUMDJUR2NIcHZKL1JoMUI4RDJNVjRZbnFzUm5H?=
 =?utf-8?B?bFViMDB0RVRMWGR5OVZOeVRQOThCVVpTaGFOTUM2KzdpUmhXMTJlWXp0RHRJ?=
 =?utf-8?B?SUZJRmhPd3YrWUVKVXF2ZXRQU0dSTHNaanF4T0tBZXZ2N2d5N1hBYlh0aVBQ?=
 =?utf-8?B?a1E2ZE1adzJmczBvNVJMMVIyNkxiYVJoVW5LUWgxbGVyODZ5K3hOVGo0Q1l1?=
 =?utf-8?B?d0NZY3hDcUF6LzFpRUhJVHQySVBCTy9ESm5SejBpZy84T1VFekpFZ20xUVo2?=
 =?utf-8?B?cEtZVG1sQy9CMUFodTJ5ZWxLblJJSWxuU0ZRMVlTa0ZSaFoveG5qRG9rMGti?=
 =?utf-8?B?WHN2K3F1VU9qY05kbng2Q1QxTmY3TnBlZmJ6TVg3ZysycHAxWXVTZnY5ckFs?=
 =?utf-8?B?UlQ3bFZxSWVqM0l6bXFXVVdCczJUMzByQ1paYk5PaFJyNitoWHcrcnZsSFVl?=
 =?utf-8?B?dVdzc253WFllVjc3My9jbE1zZE1va2FtcVRlc3ExbW1meGRIRU56K3VCbnFM?=
 =?utf-8?B?VWcvSVJOQ2txWEk2Z1JBaURVM2M2MXhrcCs2dXYwRjRnVFZhOVBQK1NXc0g0?=
 =?utf-8?B?QWZYaGdPN05ib0UwTGp4SXBMQ21jd3ZMQ21oOTNMQmdYaTFQSHJaWEQ5NWx2?=
 =?utf-8?B?Y3BuWUtZNkgvVFo3NDlvWGVTeHZtb05PNVoxd1M4RnNTN2ZYQ040R2V4dkt3?=
 =?utf-8?B?QjVFanhadVAxcUQ0Vmc1NVNFV0lwUG1HTGxFTHJQQXdMRThMTHgxTmhqNUhl?=
 =?utf-8?B?Sy9HQjVhRnUrbWpCc0ZxeDdwSkc4cXpBdXZKMVBMZDk5OTFEUjY5K3REWG9u?=
 =?utf-8?B?cUh2WitBTklqK3RoS3E2ZzBtT1V1ZEtvVXNxYXE4Qm1SVnRzQVhCRmlPaFho?=
 =?utf-8?B?Rmh5eHlqZ3pybUZHNDJ3NkVuWWJ0VlhDZHNQcVM5YmVieC9iYjFoU2hOd2E2?=
 =?utf-8?B?M0RkWHJWSnIvbldEczE1d25VK3YvZzVNekJkQ3o3dEMzVVdBV2orUk1HQkFo?=
 =?utf-8?B?cHBjZWVXcHBZUmgrTjdxUlVVYzZvT1BOSkxKMm9aMkZFZ2ZBWEJxeVppMXh3?=
 =?utf-8?B?b1lLRDlSTGdvVkM0R0xQNDN5Mys0dHp1Wm5WOEtLbjI4RFRuUlNkSWs2M3dX?=
 =?utf-8?B?dHpOdDd6ZHo1RzFkVnBoaVRzYVNSTXJXeUxlSkpoMTlCRmljcXFpU0tvRjVa?=
 =?utf-8?B?ckQxRlVVTkM1QmdkQTRQV0dweStDR0RIV1BQcHlwSXFSY21YUnNHTUl4L0ZM?=
 =?utf-8?B?VWpETlg1eGFqS1dyVGF2T3FnTkRNYVNzeU95eW9wQzF0RE9HWlByaWNPOC9O?=
 =?utf-8?B?WEVyK2xmelpUS0NRdzNqTUpIWDFHd2VPOUJqMUhzMUlDVldXdmNlR2tMckRX?=
 =?utf-8?B?TlI3YnVxSTFqT3dHeHF5a1huVVpDS2NYMHFwK3B2LzlQdHdlUHd0MTkxbHNH?=
 =?utf-8?Q?klg9+KeCWtMsgoLLb6uRMBkpHgKRQSMYmq9J7R6?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <9E23EC95D2400646A6858BAD15A0782F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d6e4a32c-b251-469c-0cf3-08d981841d6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2021 06:57:47.8203
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 IyRCLfuw2CfzJwL3BNdNdLvPREeI02vBtul8Sew7llj5a20q97vaRQy0CLSFSZFuLIYS5l30iwCcMmjcOZemIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3352
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 06:57:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54871

SGkgUmljaGFyZCwNCg0KQ2FuIHlvdSBwbGVhc2UgbWVyZ2UgdGhpcyBzZXJpZXMgZm9yIG1ldGEt
eW9jdG8gaGFyZGtub3R0Pw0KDQpUaGFua3MsDQoNCkFudWoNCg0KT24gVHVlLCAyMDIxLTA5LTIx
IGF0IDE2OjI3ICswODAwLCBBbnVqIE1pdHRhbCB3cm90ZToNCj4gRnJvbTogUmljaGFyZCBQdXJk
aWUgPHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+IA0KPiBTREtQQVRISU5T
VEFMTCBpcyB0aGUgZGVmYXVsdCBpbnN0YWxsYXRpb24gcGF0aCB1c2VkIGZvciB0aGUgU0RLIGJ1
dA0KPiBpcyBub3QNCj4gdGhlIHBhdGggZW5jb2RlZCBpbnRvIGV2ZXJ5IFNESyBiaW5hcnkgYXMg
dGhlIGRlZmF1bHQgcGF0aC4gVGhpcw0KPiBjaGFuZ2UNCj4gYWxsb3dzIGl0IHRvIGNvbnRhaW4g
dGhpbmdzIGxpa2UgZGF0ZXMgd2l0aG91dCByZXF1aXJpbmcgZXZlcnkNCj4gbmF0aXZlc2RrDQo+
IHJlY2lwZSB0byByZWJ1aWxkLg0KPiANCj4gUGFydGlhbGx5IGZpeGVzIFtZT0NUTyAjMTQxMDBd
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5wdXJkaWVAbGlu
dXhmb3VuZGF0aW9uLm9yZz4NCj4gKGNoZXJyeSBwaWNrZWQgZnJvbSBjb21taXQgYTYyMTc1ZWU1
ODFiZDA1NjYxNzE3ZjBmYjg5ZGFkMmEyOTdiNDAzNCkNCj4gU2lnbmVkLW9mZi1ieTogQW51aiBN
aXR0YWwgPGFudWoubWl0dGFsQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgbWV0YS1wb2t5L2NvbmYv
ZGlzdHJvL3Bva3kuY29uZiB8IDIgKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tZXRhLXBva3kvY29uZi9kaXN0
cm8vcG9reS5jb25mIGIvbWV0YS0NCj4gcG9reS9jb25mL2Rpc3Ryby9wb2t5LmNvbmYNCj4gaW5k
ZXggMWRmY2U3Ni4uZDM2ODU2MSAxMDA2NDQNCj4gLS0tIGEvbWV0YS1wb2t5L2NvbmYvZGlzdHJv
L3Bva3kuY29uZg0KPiArKysgYi9tZXRhLXBva3kvY29uZi9kaXN0cm8vcG9reS5jb25mDQo+IEBA
IC0yMyw3ICsyMyw3IEBAIFBSRUZFUlJFRF9WRVJTSU9OX2xpbnV4LXlvY3RvID89ICI1LjEwJSIN
Cj4gwqBQUkVGRVJSRURfVkVSU0lPTl9saW51eC15b2N0by1ydCA/PSAiNS4xMCUiDQo+IMKgDQo+
IMKgU0RLX05BTUUgPSAiJHtESVNUUk99LSR7VENMSUJDfS0ke1NES01BQ0hJTkV9LSR7SU1BR0Vf
QkFTRU5BTUV9LQ0KPiAke1RVTkVfUEtHQVJDSH0tJHtNQUNISU5FfSINCj4gLVNES1BBVEggPSAi
L29wdC8ke0RJU1RST30vJHtTREtfVkVSU0lPTn0iDQo+ICtTREtQQVRISU5TVEFMTCA9ICIvb3B0
LyR7RElTVFJPfS8ke1NES19WRVJTSU9OfSINCj4gwqANCj4gwqBESVNUUk9fRVhUUkFfUkRFUEVO
RFMgKz0gIiR7UE9LWV9ERUZBVUxUX0VYVFJBX1JERVBFTkRTfSINCj4gwqBESVNUUk9fRVhUUkFf
UlJFQ09NTUVORFMgKz0gIiR7UE9LWV9ERUZBVUxUX0VYVFJBX1JSRUNPTU1FTkRTfSINCj4gDQo+
IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVzc2Fn
ZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBWaWV3L1JlcGx5IE9ubGluZSAoIzU0Nzc5KToNCj4g
aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS81NDc3OQ0KPiBN
dXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC84NTc2MTM1
Mi8zNjE2NzAyDQo+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnDQo+IFVuc3Vic2NyaWJlOg0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95
b2N0by91bnN1YsKgW2FudWoubWl0dGFsQGludGVsLmNvbV0NCj4gLT0tPS09LT0tPS09LT0tPS09
LT0tPS0NCj4gDQoNCg==

