Return-Path: <dharma.b@microchip.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C302FC4725D
	for <webhook@archiver.kernel.org>; Fri, 19 Jan 2024 04:07:54 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
 by mx.groups.io with SMTP id smtpd.web11.14328.1705637270773288091
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jan 2024 20:07:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microchip.com header.s=mchp header.b=RuP8HDiw;
 dkim=pass header.i=@microchip.com header.s=selector1 header.b=lWe19foK;
 spf=pass (domain: microchip.com, ip: 68.232.153.233, mailfrom: dharma.b@microchip.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1705637270; x=1737173270;
  h=from:to:cc:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=ya0m8p8viIlb6xtYxNcgYutTgejNrVRv8bv/jf1E5Qc=;
  b=RuP8HDiwGWTUp1Qf9RdX0zYyq7aJJXa834DCfKHL+6d9sAM81QgO1jRA
   FIbib87lND3oK9yZnGFFH/P9L+KAgXGlJL2cOUaov8RJpKQoHTblXw6qm
   TJqSTuaXsJiTMgqbIrRKYoYuG40ILc6VUr7oWYs2f2gVxZg41Ot35oVeU
   vUFM0xnhoNVAJGmTPCF9V//27RxMr9ZY8Ag4wLyKXlXe6SI/btmIhlNOt
   FaslQKEra69lT13Pa+7VmY5ZoQ5neRcifjeN5IB47p7dGY15vmdhVQubV
   b7KRuGjRw3/aiCO96uP0nnmZ10AmglDd24wy9gjFJOFtxzKw8/79QpCAZ
   g==;
X-CSE-ConnectionGUID: maqWGRFISPCu2VzCz5oHVw==
X-CSE-MsgGUID: SEoKo0puQ1SggfffN9Qnsg==
X-IronPort-AV: E=Sophos;i="6.05,204,1701154800"; 
   d="scan'208";a="245702023"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Jan 2024 21:07:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 21:07:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.250)
 by email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 21:07:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QGN98sGD7ETnYFp1aTFEguPsE/IOjOGJMHNR1fucAQg6BrwyLzeEKv5sQg6aUKKRjckVYfP7X5sfj6R/Lyu4nFGjf3xjbBQN96QNLUGpc8t1YUyYwpWb/xPguOWixYYe0G+5Ng9oV4W+aZJ6was53KArBAI+W7SDo6yDvApXCH7Bs9nxWm3lP82PCkJZT7yvjFlYh9OTpOZyRsBhbyOjuvCbRTkfTTWT7qDuuLcYz1WU+GUe5efULUw5x1TOR/5ytNGy/S7tzSeFr21MMeC58uR72n5qQ9lP/zBE9YZgemrReyBKasAOBtDJNJKRlPWyZICaAgSS8ZbSxowrzmgmPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ya0m8p8viIlb6xtYxNcgYutTgejNrVRv8bv/jf1E5Qc=;
 b=oAvA76wYtRrQqFDc0v/F8M/wE5ryuduyOSkxLIoY+HDb7m/dMSQT5Po1R2QLtXnqKna0f2cfmjWf8OL71kjZtLavhOldytJboVif8VKbk5oqPNRsq0vVaXpMQh9piDI1C1AQrKMMT02RfCl3i/z9XAI3cxBWHxJcQIBhw99VHb/y5UG5EYkzZv5sgQ/bhIUF0VDOyBWg+fhY0Xa/0Tt0o2xX3u48/rSPqdq3EBv+jTDehspCl42RkjYErmJerg6Sm0vo+oouar2WKMPWMwkpKY+W1P2opSkETSeny09AmefbbfZmxAgjrBmmG+/u2Y81vHZoy4kM6Yq67W6C2JmHZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ya0m8p8viIlb6xtYxNcgYutTgejNrVRv8bv/jf1E5Qc=;
 b=lWe19foKTLt9NDF1Glt8a0v7R6ZfqU6cH+LULLTmYwy7UTm1z2qsBeQX3zJSmZV7aeRlnThFulPtj2ih6iKMOyl8PVslfA1VNd6kI+zarrPEasdiYpArk9S1KpevRKVUsUpUATmAA6ScG+tDrvko3f+sItWWyu2/cc9b7Fnr3+RvUZzRsJzNhysKrvmCa0ge1AKMeYyNxfw/+/wJV/zeY9wDGOAig7iDqGEODWddGopCDeOKbGOuwvz2ZHBFAi1A5z7f8xY6HrAlUZA4Nou5E1em326Cxs3/HEV7HsNouPyylCWog9Hy6KONsxnnq9INJmLTVEC9JXnRKtdQcqje4Q==
Received: from PH7PR11MB6451.namprd11.prod.outlook.com (2603:10b6:510:1f4::16)
 by MW4PR11MB6715.namprd11.prod.outlook.com (2603:10b6:303:20e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Fri, 19 Jan
 2024 04:07:41 +0000
Received: from PH7PR11MB6451.namprd11.prod.outlook.com
 ([fe80::80b9:80a3:e88a:57ee]) by PH7PR11MB6451.namprd11.prod.outlook.com
 ([fe80::80b9:80a3:e88a:57ee%3]) with mapi id 15.20.7202.020; Fri, 19 Jan 2024
 04:07:41 +0000
From: <Dharma.B@microchip.com>
To: <yocto@lists.yoctoproject.org>
CC: <Hari.PrasathGE@microchip.com>
Subject: [yocto] [Question] [meta-atmel/kirkstone] do_fetch - failed with exit
 code 128, no output
Thread-Topic: [yocto] [Question] [meta-atmel/kirkstone] do_fetch - failed with
 exit code 128, no output
Thread-Index: AQHaSo0MQIMgjNoXFUKXNcKkpSf4fw==
Date: Fri, 19 Jan 2024 04:07:41 +0000
Message-ID: <3cb67cd1-3670-4a54-a877-3fe9c5dc37ec@microchip.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6451:EE_|MW4PR11MB6715:EE_
x-ms-office365-filtering-correlation-id: bc0cc18e-54b6-47e6-e795-08dc18a42eb0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wwxx9CzN9q4O4rfKrOnqjybEUDFgOSj6oziwH9YZ2G5x31K3UBnb0klvJ+2K/WH9aF7rKL4YMXtOeg36xs9IFeYkMjQsskSiXED6EaAA0GUyfqlVdnBB2ao8aWNdsbaAMsgYA0mdsuRWxX21NmxoTZ6CwtXqgCLBMbIfAVTyTO3zlxqvIwFB7vW2PxAF2ZFSjyn3INzdu9Fy00An4w8O6JgoLy3uQKyG8Fpb19WL+/dHrkee0ujanvu6JGAtq05iVoqdNASTcPzYY6YNKubN8EAsDcuEG9x5BPZHF7r+jBRVrh/1GbWJ3L6Oy9uqMYWnpIX80WPHtSVPd439mLNHQN44Q/GwhaeW5E/2ekR15vxx2rF1w/Rjw1E2Mh/BJVCTPaTD0+28EqI8hSAsqa3Pi8EwdFWbOmRAcPDHBCIu70YNUE77y+i8Dd9eARV1Qs0mYy/WdS8QJcRV+8oZ6IqdeKcCXBxl29PH6Psp6MXn3g7wNnQAxHlEWOf6ERFcPHLiVDP4XnSeblHAj+eA8Wp60agmG95qAYvT8bFK7vfBaDoU7o0g2sOB///x/CeBYh7y7UkAWR9qwUdTOiSKPZ4YK170ZuW2LZkgA/vVKwqeZVLLPGf7lQeV1B7Du8mab7tbCA45zuTeYCZ691faUcwYXQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6451.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(346002)(136003)(396003)(39860400002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(6506007)(71200400001)(2616005)(26005)(107886003)(6512007)(122000001)(5660300002)(83380400001)(4326008)(8676002)(8936002)(2906002)(41300700001)(6486002)(478600001)(316002)(66556008)(76116006)(91956017)(66946007)(6916009)(66446008)(64756008)(66476007)(36756003)(31696002)(86362001)(38100700002)(38070700009)(31686004)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnFadStUQTh4U2pxZkdaTDJmNUZpRHRsUGZlcno4WHo0d0lhZ3FCUnoyQjJM?=
 =?utf-8?B?akE0NjQwb1JDN201RE85NUpCM01mSVRDK1pRM2pnY2k1cXRDaHJFZnRUOWg4?=
 =?utf-8?B?K0x0TXI4MmpDQWt0RDdRR1JsanhQWktDU0l1SVUxL2toeU1ORHNLZzI3M3F0?=
 =?utf-8?B?Mnp5TkJXNUdPc1VOOG40b2Z2c1hJN0kzTXU1UDFCcXdBYmd1cjhlK3RpNS9J?=
 =?utf-8?B?bm5DZEZrcGk5UThqRzhNS3NlU1M2UUlrVnNhYWFYZm4vRVQvTFZ3eGxjVmw4?=
 =?utf-8?B?RXRwN0NPc1Y1ZDNGUEltckNlNXdpL0hvUG82aXh6YlpMR096WmN2YUFpZmVt?=
 =?utf-8?B?RGtlQy9FQzgyVlZSVTgweFV2NGJTVHQ1WncyN3dvaXMxeVp4MWRwc0RNOHVm?=
 =?utf-8?B?THdrWktxTDV1SURaMERVYStyLysyQWlNbmcrandqNm0rV3hucXFCMW5mWVFz?=
 =?utf-8?B?djlvTnp1a2NFUkR5ZGNBb1dENnRjNU8rejhBclBldUZ1YWZOdmVrNkZzUHZO?=
 =?utf-8?B?c1l0MGhBWmQrby9qcU9haVJBK0pnakJLd0lsWFRDWGhwNEtRYW91ZzR0VGV6?=
 =?utf-8?B?VTg3OWJpR3E2TEJQMm9XdXRJeTlPdytzay9sN0k0ZVArMWZRRWFqYVovYUpN?=
 =?utf-8?B?M3RWaGNGUlhCdlFBQXZIQmpWR1VKdkpLbzQwckRMY0JOamh6ZkpLNUNRUkFP?=
 =?utf-8?B?eXliN08vQ1hsTk02cHRwVXJNOUhwdWJnR01NYVBxTFlDdWx4Vk9Ld1IydDIv?=
 =?utf-8?B?N3dnbXlVU2tRRWF1SlRoODB1Y2NJWTJxSTUrY3JpNUZLVWcvTHRhSGZ3QVdj?=
 =?utf-8?B?aWpsUVA1cE9SZVNsZ0p5V3g1QThtU0RGZW8vTGVwamEzdVJXeUY1dVZHTUcx?=
 =?utf-8?B?amZCTGpZY2ZSeFN0SDQrRXpGUnNMTjk2STNIN2VoSklMRVBSWGNiS3ZrMUJL?=
 =?utf-8?B?dm9qTVBLbjl1Wkx5eVhCcDd1aHlMQm9TTWpLa253dVFkUEM0VkV5MmVyOWNY?=
 =?utf-8?B?WVA0NFpVTVZkM29EanZaTis5dUhGZ2Z2TUZ6UzNHM2NwU1AzK09rNFM4NWwv?=
 =?utf-8?B?U3RwMXpheWl5VTJ6VUdLMFl3ekhFMXkyRFRrQXcwNEllbUdPaC9lNlZrUGZx?=
 =?utf-8?B?RDk4OGFTaDIySnJpZENOeThCbDNZcnd3UERCTjQrZG1pdWdNVWdqNXBoZk1B?=
 =?utf-8?B?bTFCUWhxcGxua1hhRUFSOURIandSbWtyWWxHaFVOdUdkRzZOY1VZZWJ5RHlR?=
 =?utf-8?B?b0hlM3o3OUVxbmxzQmJ6VC9sbjVPK1RDQ01mcW5SelVCcjgrTFZpemJHS2JF?=
 =?utf-8?B?VlJiMHdGSWVocXMxU05VVW1hSUYzZ3dGcTNmU0x5bnVjQkVleHhuMjZsSWg5?=
 =?utf-8?B?TkZhY21BbU1tdlhrdXBjYytiTjNRRWkzMzhKWVZjQk5EQm1IT3FtREV6bTRs?=
 =?utf-8?B?V0xDTlJORVhZRWtPNDFwZnNXTHBaejVsN0FIbXBGallLeE5LQjk5dWR2SmxP?=
 =?utf-8?B?UU4xRWdlUjFwKzdwSjZrYVU2eVJhNC9YOCtSNm5VVHlBajVZQ0IvRDJLZHd3?=
 =?utf-8?B?N2ZzOTAvRmxHRUg2WWl5UTlQT1JXMVNsV0RQNThXNGlhSDRFRWJKRVFTOVlu?=
 =?utf-8?B?aENYNUMyUUlBaWdYalgyZmZmMG56ZkZFTFQwN3o4bEZkRjdRc21uZHhnWC9G?=
 =?utf-8?B?eE1HNVdMdE1tekRPcFI3K1NNWFhpcFUyUmtJOFBMdlk2cXVnT3pwSXpJQUR2?=
 =?utf-8?B?cVRzUG9PQXVoN1kybVVMSy9OQ2N1eDlvN0JLTk9FMDU1YnAzMk5oaGgxK2d4?=
 =?utf-8?B?bVZJUmRTTk1laWpDVmQ2UTNvQVArcVRqZEJZdGRmYW5UWWszYWsyYW1UdFAx?=
 =?utf-8?B?TmhIZDQwWWZlcWtoc0MwMVYyQmJ3dHFQRmNPSVVIenhzcllpOUVFTzhlb3VI?=
 =?utf-8?B?cXpTVVRRWE9iUjJTZDdQQVBFTElxVU5yWk1vR2s4WHpkRWdCN3kybHRrT1F3?=
 =?utf-8?B?ekxmV3dRNDhtbkl6NzAvUnJlSzlHZHJrcVRjUWN0amd5Qldhajk1YXhzZlU1?=
 =?utf-8?B?dVExN3k2VUdsenlVOXVPL1ZjTEFwZmtsd1hHamtJQkUvZmVJQ0xScjVKdnBH?=
 =?utf-8?Q?ax/MFq5Jy3LEiK5rQ74vbXuPN?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <36F77086CC37BB4E8F3EA0EE0386BAD4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc0cc18e-54b6-47e6-e795-08dc18a42eb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2024 04:07:41.6449
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1h/UB6XwJiq4PfS6PocCagJ5VBj/2/JqPeHxRufSfAguLl7MfvBORVurwGwuo/uM3Zv1z5hMTW5F0HV/36d5Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6715
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jan 2024 04:07:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62194

SGkgWW9jdG8gZXhwZXJ0cywNCg0KV2UgcmVjZW50bHkgZW5jb3VudGVyZWQgYW4gdW5leHBlY3Rl
ZCBjaGFsbGVuZ2Ugc3Vic2VxdWVudCB0byBtaWdyYXRpbmcgDQp0byB0aGUgbGF0ZXN0IFBva3kg
dGFncy4gU3VycHJpc2luZ2x5LCB0aGlzIGlzc3VlIGhhZCBub3Qgc3VyZmFjZWQgaW4gDQpvdXIg
cHJpb3IgZXhwZXJpZW5jZXMuDQoNCldlIGFyZSBleHBlcmllbmNpbmcgZGlmZmljdWx0aWVzIHdp
dGggZmV0Y2hpbmcgZnJvbSB0aGUgcmVwb3NpdG9yeSwgDQpzcGVjaWZpY2FsbHkgZW5jb3VudGVy
aW5nIHRoZSBmb2xsb3dpbmcgZXJyb3JzOg0KLS0tDQpsb2cuZG8uZmV0Y2ggb2YgcmFuZG9tIHJl
Y2lwZXMNCi0tDQpmYXRhbDogdGhlIHJlbW90ZSBlbmQgaHVuZyB1cCB1bmV4cGVjdGVkbHkNCmZh
dGFsOiBlYXJseSBFT0YNCmZhdGFsOiBpbmRleC1wYWNrIGZhaWxlZA0KLS0tDQp3aXRoIHRoZSBm
b2xsb3dpbmcgYnVpbGQgY29uZmlndXJhdGlvbnMNCi0tLQ0KQnVpbGQgQ29uZmlndXJhdGlvbjoN
CkJCX1ZFUlNJT04gICAgICAgICAgID0gIjIuMC4wIg0KQlVJTERfU1lTICAgICAgICAgICAgPSAi
eDg2XzY0LWxpbnV4Ig0KTkFUSVZFTFNCU1RSSU5HICAgICAgPSAidWJ1bnR1LTIwLjA0Ig0KVEFS
R0VUX1NZUyAgICAgICAgICAgPSAiYXJtLXBva3ktbGludXgtZ251ZWFiaSINCk1BQ0hJTkUgICAg
ICAgICAgICAgID0gInNhbWE1ZDI3LXNvbTEtZWstc2QiDQpESVNUUk8gICAgICAgICAgICAgICA9
ICJwb2t5LWF0bWVsIg0KRElTVFJPX1ZFUlNJT04gICAgICAgPSAiNC4wLjE1Ig0KVFVORV9GRUFU
VVJFUyAgICAgICAgPSAiYXJtIHZmcCBjb3J0ZXhhNSBuZW9uIHZmcHY0IHRodW1iIA0KY2FsbGNv
bnZlbnRpb24taGFyZCINClRBUkdFVF9GUFUgICAgICAgICAgID0gImhhcmQiDQptZXRhDQptZXRh
LXBva3kNCm1ldGEteW9jdG8tYnNwICAgICAgID0gIkhFQUQ6NzU1NjMyYzJmY2FiNDNhYTA1Y2Rj
ZmE1Mjk3MjcwNjRiMDQ1MDczYyINCm1ldGEtb2UNCm1ldGEtbmV0d29ya2luZw0KbWV0YS13ZWJz
ZXJ2ZXINCm1ldGEtcHl0aG9uDQptZXRhLWluaXRyYW1mcyAgICAgICA9ICJraXJrc3RvbmU6NzMw
ZTQ0OTAwYTBhODYyNjViYWQ5M2ExNmI1YTVmZjM0NGEwNzI2NiINCm1ldGEtYXRtZWwgICAgICAg
ICAgID0gDQoiZHVyYWliL3NhbTl4NzVlYl92MTpmYjJmYzQ0NWNkZGRlNTQ2Zjg1NTZiMjM2OTVm
YmM2M2M4ODA3MmNhIg0KbWV0YS1tdWx0aW1lZGlhICAgICAgPSAia2lya3N0b25lOjczMGU0NDkw
MGEwYTg2MjY1YmFkOTNhMTZiNWE1ZmYzNDRhMDcyNjYiDQptZXRhLWFybQ0KbWV0YS1hcm0tdG9v
bGNoYWluICAgPSAia2lya3N0b25lOmIxODdmYjkyMzJjYTBhNmI1ZjhmOTBiNDcxNTk1ODU0NmZj
NDFkNzMiDQotLS0NCg0KV2UgYXJlIGN1cmlvdXMgdG8gdW5kZXJzdGFuZCBpZiBhbnlvbmUgZWxz
ZSB3aXRoaW4gdGhlIGNvbW11bml0eSBoYXMgDQpmYWNlZCBhIHNpbWlsYXIgaXNzdWUgYWZ0ZXIg
dXBkYXRpbmcgdG8gdGhlIGxhdGVzdCBQb2t5IHRhZ3MuIElmIHNvLCBoYXMgDQphIHNvbHV0aW9u
IGJlZW4gaWRlbnRpZmllZCBvciByZXBvcnRlZD8gV2UgYXJlIGtlZW4gdG8gYXNjZXJ0YWluIHdo
ZXRoZXIgDQp0aGVyZSBtaWdodCBiZSBhIGtub3duIGJ1ZyBjb250cmlidXRpbmcgdG8gdGhpcyBm
ZXRjaGVyIGZhaWx1cmUuDQoNCi0tIA0KV2l0aCBCZXN0IFJlZ2FyZHMsDQpEaGFybWEgQi4NCg==

