Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAAEEC433F5
	for <webhook@archiver.kernel.org>; Tue,  9 Nov 2021 04:47:14 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web09.7908.1636433233673770267
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Nov 2021 20:47:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=eNuUnYe5;
 spf=pass (domain: intel.com, ip: 192.55.52.136,
 mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="212408351"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800";
   d="scan'208";a="212408351"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 20:47:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800";
   d="scan'208";a="601672152"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by orsmga004.jf.intel.com with ESMTP; 08 Nov 2021 20:47:12 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 20:47:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 8 Nov 2021 20:47:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 8 Nov 2021 20:47:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XY9q2E38VSsjzFd0SiABDPeSw+BLcugwwqF65ITJBeF+XC704LFMOOExH1K6dkYMCpGUYmMEVbNGrPsiQn/Hjop1oxcQHNsvf9zXTUovUF3eJO2gSuFtzAYAHfRQaIVzOPEGkwq8HcDQQGYXDhE5V+pVNF6LUQ33Km/qA/cZ3Twiga/9eFUfWwxbZEQ/5EhNndvah1jXLYNLt3/Uf0NwPPzUQGrOoO5lbWjLCezA/cM6/JqgHWXUVRVWco5X9sd0N+yl3nTlXFdYvAjhUs9tKpBqbZkZvUM5A1R4rHipsnutRbDqgI3ovBJ8TmmlsuBXaQbp7IEJzaMR+mCjX1NHHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZDsQ5zIL1W+B5ILpGyjcRuIB5kKU3dwr1YIchniUwjw=;
 b=Avwd6Li4YEU1/lKWVBaUSonZxVP3vE0Izi8pyuniTCrFjbfUUrVzbKjuzY1NIqCXRiW58s5Jr8FiMAmMNLY2gLkE3O/aqnIL2vbDxWrSJHgZlNmaCKMG0bjk6JibY29PqphkJSP3J+OdSYg8BAsXMzKXv1PJCkm0RgqD2kg+eTSPiDtk2ADCDjNkgayIchRUROAZg9oABrXbmFf2xomYisak0leuQs7DJICJl4u61ehQf/La+ZQTxJEZ/FzTiQpfmEFxgf/HwunfJUGH70qHd7qx8Qbjm+ryWYtbGBJ/cyp7YdBhM7nv3S+AD1eAbyDeOkVV82JYrl9Lb7QfPS/CEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZDsQ5zIL1W+B5ILpGyjcRuIB5kKU3dwr1YIchniUwjw=;
 b=eNuUnYe5jyo++A3bb2vfUWk8806jIcnJHFU9ydLTJdeb09CP/F+eaaTNv6T9/xiM5XYMXOYe3mR0LG1OTl40JTfiPk+1UmEw1HqM2xvSCgUZBuuGnTCD2VPNqeaGaaMKChQPAVPNSAoSGzaJBwp7EIFLNpMizddA0/+71AphU+Y=
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by MWHPR11MB1806.namprd11.prod.outlook.com (2603:10b6:300:10e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Tue, 9 Nov
 2021 04:47:08 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::217f:42b:171d:c2fa]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::217f:42b:171d:c2fa%4]) with mapi id 15.20.4690.015; Tue, 9 Nov 2021
 04:47:08 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-zephyr][PATCH 0/4] zephyr-lvgl: make it possible to
 build the zephyr lvgl sample
Thread-Topic: [yocto] [meta-zephyr][PATCH 0/4] zephyr-lvgl: make it possible
 to build the zephyr lvgl sample
Thread-Index: AQHX1LeT1SMY4sVfFUqZ2s0F1CMwk6v6n/rA
Date: Tue, 9 Nov 2021 04:47:08 +0000
Message-ID: 
 <CO1PR11MB50262296F6E81B7FDEF7E07EC4929@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20211108154350.24351-1-brgl@bgdev.pl>
In-Reply-To: <20211108154350.24351-1-brgl@bgdev.pl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
authentication-results: bgdev.pl; dkim=none (message not signed)
 header.d=none;bgdev.pl; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39ce995e-0e51-4524-733f-08d9a33bfc8b
x-ms-traffictypediagnostic: MWHPR11MB1806:
x-microsoft-antispam-prvs: 
 <MWHPR11MB180606C7E509D24CE6678309C4929@MWHPR11MB1806.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VXX/QrVpLmSMVGqAwbstL7HHVV8tUuy4dyKKRxLs1qOX+AjB/vq3sxuD3OkdPYDp6AOyIQm0aSAmW+WtsbRLPD+m7aVO8adqfpfn5lWMATt9WUKXGOeAp6lpsj3ykvWm1K6YYBpv0k47UEoEizBeSKie9/ya7tUhCZoSHbxQ0yCndFjymRd0ST98z/xfyFJhEISRza9fV0AJE+aFJmcO6AuF1ToAFA9SLYqo40wRcJYcQ3IdKW6+qVkJQvjFYTQ/BKoEgj4HUItXIH404t/S47FmzPkFASZwh9zygzXrwFKfjzbOd76nmeukVWMINO8xuxHulGijK/WAPV/IafEFVzCyf5kPlqAT9wsCby2T6WKgf59wZ5KLeICn3yBoBgoR09AOTAh0zLnW8he2OMTN0MqD8GFHNN2FhXKsv/i/wcfeqJq102P2Nw2Yf+hSbjOhIz9cDmJBYPdF9NpKSNtkIPcLhRc3uWpJiKRAZMuNhqwfwH5oUGy5j5c4Q2QRlU/1Fj+0F4FfQoEFDbRJ+43WVBgMGz5BqosxRgLZSqkuZX7yXTRSJ6+X6U6GwcPYLxMRJIKzb5RoTf+DvrZPzTob92l8QDGEjoU2f41Yyxd6710+8ITNMtuoCHAWgpyD3ucoN+KbjnuTVOpMLmWTVMA9apwUXyv+eHgXFRnJp16YUb+Nn4R9WcKEV0s3EUmOpTE11IeyBbVfNxhAvShOIUFXsg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(82960400001)(316002)(7696005)(55016002)(122000001)(66476007)(66446008)(8676002)(8936002)(508600001)(38100700002)(33656002)(38070700005)(76116006)(66946007)(6506007)(53546011)(86362001)(83380400001)(2906002)(71200400001)(52536014)(26005)(186003)(5660300002)(110136005)(66556008)(9686003)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Qi9xemR3Qk5FYlhXanFoMnE0ZDR2WGU1YVlBeWo4a0FteCtQdWo3dzZpRFd0?=
 =?utf-8?B?WVVpNnljTzBPc1RGYld2aFNHdkZZeG03WTE2cWNGMy96OUp0TCs4cGI2cHlU?=
 =?utf-8?B?NzdCZnBmZDFqY2p1d0dMcXBOdUkxaFpmOTFwRTh1R1RUMll4bllVeGVpTTk0?=
 =?utf-8?B?NjNobnZHNWpFVUNpRlhrTGZFY2xZYkhwTlhLQ29KSnFIOU4yWG9SQWxrZXVx?=
 =?utf-8?B?MFhpM1A3RFNRK3QzNWVxRDEzWVBrcGdTNEpxa0svc1dzaXQ2MDM3bXdEOC9I?=
 =?utf-8?B?MjYwQlZacEx5T0xwanRjKzdudi9pLzgyVElKdU9QRHE4QVBOcHZnbkYwR0Fs?=
 =?utf-8?B?QmpxSnBtWlo2TWpxUHdQd3pEQTJLOEY0Z0pScmdtZlhaZUYvbWFRRzZCL1Bn?=
 =?utf-8?B?TlkvbndJVGIwNDkvQnFOTlhkcFVPaEs0eE1WSjZUemJUV1V1LzhxRkxvNlhq?=
 =?utf-8?B?RmMySUplR1NkU0tHQm16SE51YkNBZjBQQU5nUkNVa2xYUXB2MXVqUUJtdFZy?=
 =?utf-8?B?VzNOeXlIQlBOYXdSOVQ5dmtJczBuUFlTQWR5d0xSMW56bnl5SEN4R1d2REda?=
 =?utf-8?B?a1M4VzdaSG9tTmwvQjNHbXpkS2R2bkZJMGh4N1NCWXdKb01sSCtYWWVGaERl?=
 =?utf-8?B?WnFhQ2xMZTZWK2tKWUdLVE43R3JTK2hyNGhLWWZTTVNtMzFrSzFEakViUUFP?=
 =?utf-8?B?RWNKaFVxR0V5TFZQbS9VaVdqVTNHT1ZlR0t6Rk96c0RRcFltWmF0OUxDbnBj?=
 =?utf-8?B?YWlYSENBVUUxMDRNeUpLU2hlTzF0ekRUdG5CcTQ0eFNOcUQyUUZ0S2JsQzB2?=
 =?utf-8?B?b0ZxOWxYZkhQZ21JZ3dqbGw2NWg4K0R4ZmFRT21uekxJaHVrdjZ0Y0c5Rk1W?=
 =?utf-8?B?RERjUEN0NkgwOGtvc3UybjA0RHByOFFmb1F6WHQ0RG1LQmxnQ29HL3QrTEMv?=
 =?utf-8?B?a2ZoQjlZZHFYVHFFclFBZW1Ca1FXbVlPSmZOV3FGeGFwanNxMXREZUpST2pF?=
 =?utf-8?B?QnBGbnBDYmRtTkpyanQ3TWJaTjc1djJneWpSUktQY1cyU2JXS0VCSTNNOUI2?=
 =?utf-8?B?S2FRcmRvK3RVcU9XRlArMmwvaDEvOUM2UUVRV0lWbmlGakdWRHZUdTNmd3g3?=
 =?utf-8?B?cTk4eFQvaEZ4WEVFeCtqYWc0VnVtbkQzQ1dsejhha1RHSVVkc3BXcG0vd2gw?=
 =?utf-8?B?TDVWVjhnVk5nK2dDMHQrQUhQTUtNSWczUnVXRWpvc2N1aTkrSCtjSm9oTW1v?=
 =?utf-8?B?MUNXMjFhRDZ2S01LRVpPNUVRRWphLzVSR0JvVUZ1Smw5bVRuWGZqUjZlMXJP?=
 =?utf-8?B?N09hMW85OUtROHB5TG5Mdnp2eTFFUk5jMTRXU05PYS9ESlJPcU5JZHU1OGcv?=
 =?utf-8?B?YTBZK0g4elIxSFI3WkI0cFR5ZktpZUVqdWZmb0tnQUtCRDFLRSs0Uys4YnBQ?=
 =?utf-8?B?TUZXNU9RZWl1bnFCUmRyM3dYK0RETE5vT3VUc1V3dDJiYXZRazlIWGtCOENT?=
 =?utf-8?B?ZGRvcDZyWDQvaGhvL2tZdFVhbjBITmhRVHBWY0Zud2pYYm5tTGkrdjN2QmxJ?=
 =?utf-8?B?bUp0YkhOK0lXNGJkd3AvUVQyNFN0RWR6UDl2VnM3VG5UZE9GdXE2WFJ2L1Fj?=
 =?utf-8?B?bFNSS0lodHhoSlBBR1Y1TzhXNE10YVdlMUx3dUhpeFdwS3dkR2FlT2pWek9S?=
 =?utf-8?B?N0p6S0xMemZxai8xVUU1cEE0ZkVOcW5QTU9pYjdHVVVCeS9xem5hT0xYRG5V?=
 =?utf-8?B?Sm1ReVgzekNLOUhRbExwT215L2RudUhCaVRLZDh5WW1CWTVUSllPVEV0QWNs?=
 =?utf-8?B?UFoxYW5hd2F5U0xTbURYaER4V0t2ZGIxaFdHWUp0cnFmT0Z5QStRblFMR012?=
 =?utf-8?B?UnR3TXZjVGRaZERZMGtGazlZaWVRY0FQbk40Mll2Y3lpTVRkNnFJdTlSNVJC?=
 =?utf-8?B?ZDhPdHltRHBxeUxBa3ozRXRWU2RuanNhWFMwaXpmbmxyaGgrbjZwSHVISW4z?=
 =?utf-8?B?enVkeEFadUprWU82ajhEcWlUbmUrRFVSV2JTNHN2alp3TmhtQkNpZ3J2ZDVq?=
 =?utf-8?B?MFdQUFc1bzlMNmtYVzBUYW5rbngySDZ3dWdyRjR6Q3NNMFV2S05PVTZwaUpz?=
 =?utf-8?B?WmRObC91SFkxTUJsbFZNMUVzckdTQVpHOFZIdWNDZFpPVE1qcm4wNUJRd25U?=
 =?utf-8?B?M3lTMGw2bnA0OTBWaTBQV3VtcjE5ZnV2NnhVR2ZUSk9jUWZHeGtabzM3MW9w?=
 =?utf-8?B?ZVBDcGNqdDZqaktUcmFlc0FnL1ZnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 39ce995e-0e51-4524-733f-08d9a33bfc8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2021 04:47:08.3587
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 uPTiW9it3pVzurtr49qdN0yJpoYfjH8r50QYkD3GC3UZ0yaMFVOjO+TBQVykHu6hT26HGHHp1QStNKr+Rz1a8LVsqxYOs3ueJSB1VJbquDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1806
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Nov 2021 04:47:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55284

Q291bGQgeW91IHBsZWFzZSByZWJhc2UgdGhpcyBzZXJpZXMgd2l0aCBsYXRlc3QgIQ0KDQpSZWdh
cmRzLA0KTmF2ZWVuDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
T24gQmVoYWxmDQo+IE9mIEJhcnRvc3ogR29sYXN6ZXdza2kNCj4gU2VudDogTW9uZGF5LCBOb3Zl
bWJlciA4LCAyMDIxIDExOjQ0IFBNDQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
DQo+IENjOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2LnBsPg0KPiBTdWJqZWN0OiBb
eW9jdG9dIFttZXRhLXplcGh5cl1bUEFUQ0ggMC80XSB6ZXBoeXItbHZnbDogbWFrZSBpdCBwb3Nz
aWJsZSB0bw0KPiBidWlsZCB0aGUgemVwaHlyIGx2Z2wgc2FtcGxlDQo+IA0KPiBUaGlzIHNlcmll
cyBhZGRzIGEgcmVjaXBlIGZvciB0aGUgbHZnbCBzYW1wbGUgZnJvbSB6ZXBoeXIuIER1ZSB0byBo
b3cgbWV0YS0NCj4gemVwaHlyIHdvcmtzIHdlIG5lZWQgdG8gcHVsbCBpbiBzb21lIGFkZGl0aW9u
YWwgbW9kdWxlcyBmb3IgdGhlIGJ1aWxkIHRvDQo+IHN1Y2NlZWQuDQo+IA0KPiBUaGUgZmlyc3Qg
dGhyZWUgcGF0Y2hlcyBhcmUganVzdCBjb2Rpbmcgc3R5bGUgaW1wcm92ZW1lbnRzLCB0aGUgbGFz
dCBwYXRjaA0KPiBhZGRzIHRoZSByZWNpcGUuDQo+IA0KPiBCYXJ0b3N6IEdvbGFzemV3c2tpICg0
KToNCj4gICB6ZXBoeXIta2VybmVsLXNyYzogb3JkZXIgdGhlIFNSQ1JFViBhc3NpZ25tZW50cyBh
bHBoYWJldGljYWxseQ0KPiAgIHplcGh5ci1rZXJuZWwtc3JjOiB1c2UgdGhlIHByZWZlcnJlZCBj
b2Rpbmcgc3R5bGUgZm9yIG11bHRpLWxpbmUNCj4gICAgIGFzc2lnbm1lbnRzDQo+ICAgemVwaHly
LWtlcm5lbC1zcmM6IG9yZGVyIGdpdCByZXBvcyBhbHBoYWJldGljYWxseQ0KPiAgIHplcGh5ci1s
dmdsOiBuZXcgcmVjaXBlDQo+IA0KPiAgLi4uMDAwMS1jbWFrZS1hZGRlZC1taXNzaW5nLWZpbGUt
ZXh0LXRvLnBhdGNoIHwgNDIgKysrKysrKysrKysrKysrKysrKw0KPiAgLi4uL3plcGh5ci1rZXJu
ZWwvemVwaHlyLWtlcm5lbC1jb21tb24uaW5jICAgIHwgIDEgKw0KPiAgLi4uL3plcGh5ci1rZXJu
ZWwvemVwaHlyLWtlcm5lbC1zcmMtMi42LjEuaW5jIHwgMjAgKysrKystLS0tICAuLi4vemVwaHly
LQ0KPiBrZXJuZWwvemVwaHlyLWtlcm5lbC1zcmMtMi43LjAuaW5jIHwgMTggKysrKy0tLS0NCj4g
IC4uLi96ZXBoeXIta2VybmVsL3plcGh5ci1rZXJuZWwtc3JjLmluYyAgICAgICB8ICA1ICsrLQ0K
PiAgcmVjaXBlcy1rZXJuZWwvemVwaHlyLWtlcm5lbC96ZXBoeXItbHZnbC5iYiAgIHwgMTEgKysr
KysNCj4gIDYgZmlsZXMgY2hhbmdlZCwgODEgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0p
ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gcmVjaXBlcy1rZXJuZWwvemVwaHlyLWtlcm5lbC9maWxl
cy8wMDAxLWNtYWtlLWFkZGVkLW1pc3NpbmctZmlsZS1leHQtDQo+IHRvLnBhdGNoDQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgcmVjaXBlcy1rZXJuZWwvemVwaHlyLWtlcm5lbC96ZXBoeXItbHZnbC5i
Yg0KPiANCj4gLS0NCj4gMi4zMC4xDQoNCg==

