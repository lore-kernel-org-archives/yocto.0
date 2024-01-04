Return-Path: <Hari.PrasathGE@microchip.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DDC47073
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 04:21:59 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
 by mx.groups.io with SMTP id smtpd.web10.47562.1704342112822512785
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jan 2024 20:21:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microchip.com header.s=mchp header.b=GX5lkgbT;
 dkim=pass header.i=@microchip.com header.s=selector1 header.b=Wjalyi0a;
 spf=pass (domain: microchip.com, ip: 68.232.154.123, mailfrom: hari.prasathge@microchip.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1704342112; x=1735878112;
  h=from:to:cc:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=cYZt2AGXoPBWZnCserfBoAvjmz78aHH2lJgtchAq59k=;
  b=GX5lkgbTZeE/jP5ifIyQ1nhUDgiU8r4WoLoTd4VcbsZlVzcd1keqSs5q
   cfg8frTyjr2CH0Va76cJT1ENba7H4mDQ4NmqCgqLnR2743yJUZboCxpbY
   zU94DLq88JZsG4+npCaWQSBCb6Rvszba9t2HJu/b0uz4P1J5lfoVv6lZ3
   brqz3ytaek6rnIUwmkbbLAqs3UL9UNXY/SozJqlwDop4t2pji75SbR4u1
   VCdyE0C+A3KTOhfzQLDhPvi5YzMY8qPsI3d+4HF/NFh4gsk88MwMLH5uq
   T8bUeo97EZobxseFEsmRBXMjBOZplfpT9+0X6wh6bFTqXRaHZfJrSNsPn
   g==;
X-CSE-ConnectionGUID: fMRasWbNTJKhsXJVZ/mB4w==
X-CSE-MsgGUID: 8RPK10/cTEG61o5GDzDC/g==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; 
   d="scan'208";a="181428864"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Jan 2024 21:21:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 21:21:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.250)
 by email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 21:21:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YKmLM+8yUiflhxa4EFHHNinEQd1lrYRq2Z+19OKKk4wBNlPxg83LRQG/ZIMbCaSn5IeX7vh1Xmtr+O1ktX/Szo9G9Qu3jPiicP2LeDAPpSRdkQ0uMvPPcGvi7bxpkLiFuS7kqylqrbOoiRAl0s5QcuLznVk0MCUGU36+aig1P1HPXJHNaNpahceXYNGNeLbwE33qVJo65ypbunt6z88Mvu8rxHhM3aJpTaeeqLlKYATNmHPv7yxu169KnZTFEncv/BwhLprBp7zBjibhsXXqP5CiwddtvsANhdATNm4+DWS0lsklkZb/U5v8ZQo5Oq3DytWQ2Oz0lw2Vhh63XPUMFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cYZt2AGXoPBWZnCserfBoAvjmz78aHH2lJgtchAq59k=;
 b=M5du5c/azqZPUEOfHCtLuNsR3ry8e1R7haXP2072EVWBTq9fmfqPtgaXVxGsoInGz+A+h0qAxG05Ksv/66NztWI1Rj0Kc37i4vVoFpkrOMqlQFiqBLiKgmqoCAMNjxQw9EcuK6joVk36EtczO3QqnXYET77qCsjYxQM1KG7VlT9zf2lCEP2xzAFhwFE5mlLi603FeaKZNE9FMm75atyMPABV2PcxH6Cz8/5oDjTBII/VvR7mciyHKCrlVD7nHYe55obgwnz+Bh8x82WpZOVkq+vy0eTdH0cfS3m67HCEhdmc0FQKAAFPowOVAmNcWTPy7lJH5hbH2RMvoSoywXvRPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cYZt2AGXoPBWZnCserfBoAvjmz78aHH2lJgtchAq59k=;
 b=Wjalyi0akZ7HGOZ2cH+UTA4wgPwyHsiSpiYCWoopM/IB55i21/HeUdAXiNeo0t016+V52/gChwcOqn/rTZWFjnWFduVGV6E7RZYL2nE7JsTP3wJJLecO/kb57AGjOyTyNZUmDDhs9We23SqOfgczmAYMJsksfkcanLJjAga0jdSg5/FdTgQg0bQtI2hPz3THKDehgILMLe8sfyFDK5MC811uriaFgOtCGm+4uzo1Ujo/s3fLlTqUCEcOcEv4zpbSiu4OnypzICIx26koWzAsUeTnr6fBEahg1ypHblqTd2m2lhbTGyahOxsyHHs7icPKA84ybAxMafhGg/kel/k65g==
Received: from DM6PR11MB4185.namprd11.prod.outlook.com (2603:10b6:5:195::29)
 by DS7PR11MB7781.namprd11.prod.outlook.com (2603:10b6:8:e1::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.14; Thu, 4 Jan 2024 04:21:12 +0000
Received: from DM6PR11MB4185.namprd11.prod.outlook.com
 ([fe80::7b9e:6259:c859:9f97]) by DM6PR11MB4185.namprd11.prod.outlook.com
 ([fe80::7b9e:6259:c859:9f97%7]) with mapi id 15.20.7159.015; Thu, 4 Jan 2024
 04:21:12 +0000
From: <Hari.PrasathGE@microchip.com>
To: <yocto@lists.yoctoproject.org>
CC: <Dharma.B@microchip.com>
Subject: Interest in making 'meta-atmel' layer public
Thread-Topic: Interest in making 'meta-atmel' layer public
Thread-Index: AQHaPsVzA+MK3BRZrEiEbJsAez4J/w==
Date: Thu, 4 Jan 2024 04:21:12 +0000
Message-ID: <2ee1fd9a-475c-49f8-afd7-ded326b58528@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4185:EE_|DS7PR11MB7781:EE_
x-ms-office365-filtering-correlation-id: 5125f9c3-a3a0-408c-b79b-08dc0cdc95c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EkjG7qnU5OEzIGbJ3unihmik0pw1PHhf0Td4KWab1GrCDLpXdZMQQUepw6TZoQXlkU7RrPz8hG4NT1Lt7+Q6lx0K0Mg/UojLqVzbRDlD0d7EPmNanm3nfCQYq4xwZdWDLy7Pqluw5womOmDnSIrMpSje7/xWUb8c2s35WzjEXEzpX4UJSvJK57aqfhVbl2AWlpoGidLhhMzSjQN6A5B+Zpzx5mE2aZ3i3OqF8Qv/1e3i0AcdftteK5bfKlzAQPwMOhGR7Nj56yMnTAPDX3E88QkX4MX7D7vFusj/dBiLEXsGVV6I+P/ZwJUIEkPsy88c4ea6p3t+5zDOcsuzWlwSrBJkOT7RiEjUku5lxJEVSuOkO5j8igRVqAKCzc8aVzJyc3ws+4QRpTenNKEI5g1CqPHJCs3wR2SUoKXV7Q+9F7XnVHS0IfnopgaGMsG4FqUIYW1PM3IigJaeekS6qM0HcZ6/dQ9MOA96F29BXXbUv/NcVM/ykMgAnPr7Eai7T+Yi4QL1t3D++pCs60BhHp1Zt/dfxX8vwRYE5SeGKz9JgJkWeVbACOCe0QCcqvCe2BfX9p86gskkg9WjKBPu4j6B4IDud1xhgsnlfpOl6rxq+SqvBZYZvBiisQltwuEhPy2Tvg+DiIsBZ27lgVZi9/Q2jA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4185.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(136003)(376002)(366004)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(6506007)(6512007)(31686004)(86362001)(38070700009)(71200400001)(31696002)(478600001)(26005)(91956017)(66946007)(64756008)(76116006)(66446008)(66476007)(66556008)(966005)(2616005)(6486002)(107886003)(6916009)(316002)(4326008)(8936002)(8676002)(4744005)(2906002)(38100700002)(41300700001)(36756003)(5660300002)(122000001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aE04RFRCdUxOYzN3Y21mbG9WOUFVZis1NDgrd3NXVVYycUpxZ2NmVFNscWNr?=
 =?utf-8?B?d2pHMXpUeXNLMlcvMDhEdFFWN25ONUh4bWJHQ2s3azdndkZ2L2pCaVI1Vlp1?=
 =?utf-8?B?TkE1aGdRR29aa3VFNDZPYlkzVUE1SUJrZ2ExdmY3WTFqcXcxU3FLU242d2ZQ?=
 =?utf-8?B?YWl6TW1hcDVnR3NlaVFPeHZVTEFoUy9Qemljengxanh1alB4dkFWNkY1YVZl?=
 =?utf-8?B?SXcyN3pFUzNobjVQRDQwbFdVTS9MeTR0eXdKTkh2ZGo4ZFRjaGIyQ3pGYXpa?=
 =?utf-8?B?ZFJwUE16VWFtQzFrMEk3eFI1eG5rSHlrYXBtcUZDQ051Q3Z3VzMzaC95K3k2?=
 =?utf-8?B?MVk2WkI3NWtEMWpjcCs5SzVIWjVXMG5zV2gydld6akN2Ukh1dnRoTFBtUnIy?=
 =?utf-8?B?WDBpS2ptVlFnRGg0UjRFbzFMWDk4N21lVFM4SVJRbml0YkZxWDZqZzF5bUdj?=
 =?utf-8?B?QkRGR3FNOUVPcC9IK3lmOGdDZ08zZ1RweU1FWUMwckJxenpSUXBkRnNZVzky?=
 =?utf-8?B?cU5KS3lJeUtIQXFBM2lHOWc5RTFpRHY1VDhIeXFtdllWZXBrVkdxSFRFeWt4?=
 =?utf-8?B?ZTBQMkV3dGVmTVBHUlFTaU1KcEswNFdZQTZYOGwvRnpBanhFVStkS0RydEI4?=
 =?utf-8?B?NVBVSWQrek01U0NEZUdGOG54MkZCQStJRlRPajRmZUJjWS9XRDV5R0VXcDR5?=
 =?utf-8?B?Ty8rTDlOVlNxa29STTgrK1FXWGU5a1N2cWZhZE5Eek9taDBtcllvS2gwc0RR?=
 =?utf-8?B?T29TTnoydDF2QnFpckxYQXp4cFVBZUxXZ0d6QzYzL1pCRkhBallrOStFNk90?=
 =?utf-8?B?ZmUyK2dmUzBuR2xZZkM3VmwwKzFpT3A0V2NWZjFOTVBwdDdzcHV6N3RRSXpu?=
 =?utf-8?B?UktQK2RxZVR3OEdQSDVMd0pEL056L1M5S0JqSEl2K2hXeGd0WU1Sa203UElG?=
 =?utf-8?B?SzRGYkZLL2FTMG1pZWJOckNQUGRLaytxZUJxV1MzL01aSjkyMFkvN1YweFlm?=
 =?utf-8?B?YWJCV2JOQnkyd3ZqMExHMS81VHNzS3NyVjJLNk5iU0daRkcxRzFoNGpnS3da?=
 =?utf-8?B?Sm5XYlpiREE0M0hTU3IwUFV1OXZWRThUZzBrS3ppMmRCNnovZUYzY3BDaE05?=
 =?utf-8?B?MEZ2UkJPZ1BIbTV4QTMxVVBDeDROMlFyNGVDY3hPYXR3dTA0OEpoZWhwWkNP?=
 =?utf-8?B?NVBtRjl3TXFzWWhWY3QxMXlxdGdUUVdFdSsvbEt6WGJzNmxOQlZSVDNEbTBN?=
 =?utf-8?B?cFdxaHBJZHNvcmdMVFB2bG1TYzBpQXZybjRzbkExaXNVcVZ6bWt3ZEtiMENt?=
 =?utf-8?B?OGZXTkZMUTRTa21nSG81UEJEWHZub2lhWUluRkx6ek9lMGtpYUxCUFYyUWIx?=
 =?utf-8?B?UWdicVhvcm00azlOb0lGcUllSFkrcEJiZTBFdDFncXkvcW44U0JZU3ZoZCtt?=
 =?utf-8?B?RUgrRU9MOWpGcVBndG1YYUl2d0ZnNnZvenJmQlJJc2JnY1lkZVVXRjUvd090?=
 =?utf-8?B?a29rWm5iZlpKTEdyTU5NekY4enJ4R2gxcEhLTy9PVVpGTjdPWVFXMTdVMlZY?=
 =?utf-8?B?bzJIUFU0Y29Delh0TTdDY0haUnpWRDBaSDNYWVZNUGtQZTB2OW5PbFNpYVg1?=
 =?utf-8?B?YUZnR0ZXZlJJNndoR3p4NnhFK0UyTzRZRkhNRnFDN1FYN2VLa1FHajdiSldJ?=
 =?utf-8?B?Y1BnVG4xSlJtdkNYMExQcXo1RkJsUTR4QzNjOWxlN2hVclpmSGNlTmhtdzFN?=
 =?utf-8?B?MVZCTzQwTlpOOUEyWGlIWWZ0TjlWczlZbVE1NnBYWEZjVmZKODVFVEthZnZo?=
 =?utf-8?B?YkNacXZzNGQxY0hhMFhFNU1rWFFiOUxSVXpsTWRhMVpTZmVldUhPcXFMS0Z4?=
 =?utf-8?B?cFBycTRUb3NYYVBpbUJucGJ0dTJ2VzRkZUpFNTR1R2g1VUhWMENuQktrSHh4?=
 =?utf-8?B?WSt3cllpYnYvQjdXT2k5dWxBNHF4WjkwdlpjMVdZOWhwVnNUMytUUXBrbCtZ?=
 =?utf-8?B?VkZzNHJXZHg0WnRSdlZNOWI1dVp3VFcxNkY3Y3huOXd3bFdJRVJCYlQ1MjBE?=
 =?utf-8?B?ZVRUdHF2dGkyc3FkbUxhUE85blNIbUthRU9PZENEL2xVQXFXUnBVQW1CUThk?=
 =?utf-8?B?Y2xjdVVQbW5JdDFvbmE3VjJwSVgyeTFodm05Vm9tZFZyUXZjeXVXbXB2WlNa?=
 =?utf-8?B?TlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8BFA3FE45693D5489B68292A81F11088@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5125f9c3-a3a0-408c-b79b-08dc0cdc95c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2024 04:21:12.4279
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +KDVyh7cxvUiRlBx3CCpCcA6e/VulMpF4MszTeJwVAVsGOJ7dQqi5Hy0b2fp4cAygVKM0SFDpSiXD07vg4bz4+pvsdomz8Eyk+66WdwXMAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7781
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 04:21:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62083

SGVsbG8sDQoNCldlIGF0IE1pY3JvY2hpcCB3b3VsZCBsaWtlIHRvIG1ha2UgdGhlICdtZXRhLWF0
bWVsJyBsYXllciBwdWJsaWMgaS5lLiB3ZSANCndhbnQgdG8gbWFrZSB0aGlzIGxheWVyIHBhcnQg
b2YgdGhlIG9mZmljaWFsIFlvY3RvIHByb2plY3QgbGlzdGVkIGxheWVycyANCmxpa2UgbWV0YSBs
YXllcnMgZnJvbSBvdGhlciBTb0MgdmVuZG9ycyhtZXRhLWludGVsLi5ldGMpLkkgZ29vZ2xlZCBh
IGJpdCANCmFib3V0IHRoaXMgYW5kIGZvdW5kIHRoaXMgbGluayB3aGljaCBtaWdodCBiZSB0aGUg
b25lIEkgYW0gbG9va2luZyBmb3IuDQoNCmh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZGV2
ZWxvcG1lbnQveW9jdG8tcHJvamVjdC1jb21wYXRpYmxlLWxheWVycy8NCg0KVGhlIGlkZWEgaXMg
dG8gaGF2ZSBvdXIgbGF5ZXIgbWVldCB0aGUgc3RhbmRhcmRzIGFuZCBoYXZlIGFueW9uZSANCmlu
Y2x1ZGluZyBvdXIgY3VzdG9tZXJzIGNvbnRyaWJ1dGUgdG8gaXQgc3RheWluZyB0cnVlIHRvIHRo
ZSBvcGVuLXNvdXJjZSANCnBoaWxvc29waHkuQW55IGd1aWRhbmNlIHdpbGwgYmUgbXVjaCBhcHBy
ZWNpYXRlZC4NCg0KUmVnYXJkcywNCkhhcmkNCg==

