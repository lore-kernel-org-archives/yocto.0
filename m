Return-Path: <Hari.PrasathGE@microchip.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55954CA0EC3
	for <webhook@archiver.kernel.org>; Tue, 12 Sep 2023 06:08:54 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
 by mx.groups.io with SMTP id smtpd.web10.19032.1694498927413714303
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 23:08:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microchip.com header.s=mchp header.b=r9mzPyDV;
 dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b=AahrpZZ/;
 spf=pass (domain: microchip.com, ip: 68.232.153.233, mailfrom: hari.prasathge@microchip.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1694498928; x=1726034928;
  h=from:to:cc:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=7Hb92IFJwJjQ4IJK9yHkOpF8vpZfKChF9U2dcv8lzK0=;
  b=r9mzPyDVCfwqx6dXt1SDtRbSXnWLOMa24gh3hLUNCle+HeYLSkHt5ckR
   k9YkA+0l1w0w40WAXJ1x+8Zl3pnYmeW++W2h+h66TkBy5NbKQMGMTyVKD
   6X3SXgjQNIC8CS66RKwSPzhjTCJVfdV8gsxVb601xYi3sWr2lhajtn8Kz
   OYFyQ08+AdFEu9VSzyCV01mnf88UkxA10sjhT1IS7YjD7FuWfxNexP1f0
   Zhz8LpGNqBVsqZ2uxvLQa9m/ek7be/lzloq8mWR4aNiU4dJ+vjNtAKCAx
   SKPpfhCajkdh6dsXxp8aUDSH1F6Nh6jTCueQWM9qsDnCEC4hBy/dZ4leB
   g==;
X-CSE-ConnectionGUID: Dw/YtyD0QSOBkAuzQJm5lQ==
X-CSE-MsgGUID: bRYuaeAkRsiHZ+qcdJ4gUA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; 
   d="scan'208";a="234689823"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Sep 2023 23:08:47 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 11 Sep 2023 23:08:46 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 11 Sep 2023 23:08:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0Qr8sL7AdDiQ1rekTu+sR3g4X4zJClGTiJ/NtR+nPderIlVtlpirEHNTqroKUpY0HXP4XWIF14soNfCv7uckmCj8eNz9ObFtik+WobxvW9rYqlhcn8ESmq04lfccaYu+ewxsjAlyDF+UFC7ssYuP50JIIe9nfGpXZqTpkRD96jqYd9s022F0/kJKCSQq0c4zZBXbN2YvOYE1EaNoNyhhBhxNW5F7JjzplquOLW+NbgYZGdrhT+rMJySmq+naWvrsTtiT1X3TE0BLYMDP79cmeDvqBpKm3lPf+i1dUo1XzXLvxkknIuHYSIHreKC/i0KtINq1Ok5Nhck3JjAd9cLRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Hb92IFJwJjQ4IJK9yHkOpF8vpZfKChF9U2dcv8lzK0=;
 b=SSicsTGs9cWz2fADFhdjSb2oYqVzsz2vOh1R1tSQKbhRAH1rOoyQ47ILlYxo3pKdj6bJBzHueFtkNV+Dftd4OrkCXhWsX1yqCkU3vsBmzzJEAcHFCJ91FguNZ62cdSOOJYcbcl5PQTLVvIMaOwDoyZKGFY4Qsfj2jOyNTP4Nbgwq6Ms8xivaYKdXyb/5asII7PjJeSqlniScz2zQmQtqP+1bo5FDsLbe1E367LpTX5FFixzMOSpaghk8MjOayb32er76c+qYVme14Z9FaMpe/jpIxbHndIiYBiVLYdjwqF2Vf8bBdpfJqaY/dtNRsHGv98wgsgSbbs+Oenn6rdR7MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Hb92IFJwJjQ4IJK9yHkOpF8vpZfKChF9U2dcv8lzK0=;
 b=AahrpZZ/HWeD7CSidRRTd15rGZlr0UKNeWrrCixz5OlsUOevrVj0DWAjWsXk5XkBvUf1965D/2rKXlwebBR2hug+3p0pGWW6vfeThV06RX6KMLRC8Jp7hteqOSHE/lFXiynbg279CC3oFKbJQvBH6DXhqv51TliVGiNl7QxRwNI=
Received: from DM6PR11MB4185.namprd11.prod.outlook.com (2603:10b6:5:195::29)
 by CYYPR11MB8408.namprd11.prod.outlook.com (2603:10b6:930:b9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Tue, 12 Sep
 2023 06:08:44 +0000
Received: from DM6PR11MB4185.namprd11.prod.outlook.com
 ([fe80::591f:32f4:3319:e1f8]) by DM6PR11MB4185.namprd11.prod.outlook.com
 ([fe80::591f:32f4:3319:e1f8%7]) with mapi id 15.20.6768.036; Tue, 12 Sep 2023
 06:08:43 +0000
From: <Hari.PrasathGE@microchip.com>
To: <yocto@lists.yoctoproject.org>
CC: <Dharma.B@microchip.com>, <Ludovic.Desroches@microchip.com>
Subject: [yocto] [meta-atmel] QA Issue reported with dev-deps error
Thread-Topic: [yocto] [meta-atmel] QA Issue reported with dev-deps error
Thread-Index: AQHZ5T+VLHQ+GrncnEynYgAlfiyx6A==
Date: Tue, 12 Sep 2023 06:08:43 +0000
Message-ID: <b1a53364-628f-bde8-e6b0-efd126346745@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4185:EE_|CYYPR11MB8408:EE_
x-ms-office365-filtering-correlation-id: a4dbd26b-1006-4b51-eb55-08dbb356b7c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wYFLp3mhn1gnr8A5GaKlC4FwVvt54JAvrNMTroAb+OBRwbiYDFRoWL0hBZaNAESC/l8pnsyRoAE38vET7qGOmXlU7ED63n2kIXF62OQXEVS7DWfWs9WJQwDqCgk9wQod6XsG+UyQT1j63kpExtfjd7yKOOYR2g04dOd3vrsZ+kDsqYfACw8eHsqwvMNfZk+mEeCuq9Igcz2wDCoKeNVF+VM/M8BwCKqEz+k6sOXtEtw/9Vs5rKqK8OW0lNDdZ6l+dBPt+8Jp6I5gSvLLoRSZfoVuA+bZAUt6AbgR/aW2iRmcDVm7DOzxqiN5hor+6j8peLjsF98eKZ23LuO2U2sDc0U1ApnoAmuw0X85ZbRg0Ojs7bwiQ255kwx/wWuP4U/D4uJH0FOGBQ/yKTig41qRLfKzJ93VCG45NdhX1baYpwM3SAlWQrKmiOzQ5VMWAGcFDsVFjhvqSADsoINwiWnW1OaoqX4MA6lGVckCQgzO5zLLGNXTNZY18z33apxaw1DSFeRO+bLOLsUvZkxs446tOTZHtY4q8i3agj4MgmZM+Rx9w30GOkHDIktFv1mvVqVVzJvGkc9jdWU6oeiVwA6cQVkEZFgt8CI2TyV84SanRa1AGYVfKIxbFq3YWhQl3GN7eETx/SbmrEkVRd9Xk6NVmYDxJ4NwzQ/xRTuqSkdqY9PMFr7OGIIIx26lRDXhI6+T
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4185.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(39860400002)(366004)(136003)(396003)(1800799009)(186009)(451199024)(316002)(31686004)(122000001)(6506007)(6486002)(71200400001)(38100700002)(86362001)(38070700005)(36756003)(31696002)(107886003)(26005)(4744005)(2906002)(966005)(6512007)(2616005)(478600001)(41300700001)(8676002)(4326008)(5660300002)(91956017)(8936002)(64756008)(54906003)(66556008)(66476007)(66946007)(66446008)(6916009)(76116006)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVBDWG1PMmQ3M2E2M1JTeVJ3SGlyQTVlYzlCVS84MG1DeVFOc2w1UnpQaitr?=
 =?utf-8?B?MUFtSGtsREFrSDlqd21jREhnaFdkUXZLZTdnVnBIMTZ1eW52VHppb01TKzVl?=
 =?utf-8?B?RE1acE1veUVDd1NkUmR6RDlOUzh4Mm5PT3l4dU96V1FtbkJYYmRGTUxTR0dt?=
 =?utf-8?B?a2VtZDMwTm1NcDJLVlFRVWNxYXdNWVRKbTJHN3ZhMlNqbE5LcEhCTTdxVmM1?=
 =?utf-8?B?eHpLN1FSZmdDVFZ4SitoNWcyRUlPZmNaWDRPRFU0eFRDbHFvVjhFZ013TXNY?=
 =?utf-8?B?OHhGM1RsL3JyWnkxLyt4RkFBdm5rcDF4NEYrdzNrYjRmbEErVzVwNitzT2Zh?=
 =?utf-8?B?NDFTMHQ1TUIrYXByUXJSL21oL1NKUUtxaldidGdrZzVRdHNiYzAyU3pUZ1NK?=
 =?utf-8?B?WG9tWXhxSE1vSk1kbWJQTzBzSDkyWE1nOGdKOHNWRG1JVXA4RXJRNERZRktS?=
 =?utf-8?B?S1FqMGZjaEVtVVl1Q2V4NEZ1TWpvTVlZZzQ2SldEeDgwUS8xcDd1ZzVSaHRa?=
 =?utf-8?B?NW9pdE12S2cremdHSHZmaENYMlVCQnR3eEVVRFlSdkxrNW1QMDlIQjZRZ3BX?=
 =?utf-8?B?ZUdVYVpqc25PNlY0OFIyb0dhS2pxME5xai9ncEF1N3M4cElSc0NtMXhzTEFE?=
 =?utf-8?B?OWExVW1zdHhKZWtWSktrb3RxS0QyYTFMMnY5R1EzbXBkUjM5WVVjRmJUVGcw?=
 =?utf-8?B?Sm1MTWdpeWpHRWt5N1hhdlR3b0RjNU1QQ1dJZ2NXUmJDMWxDVjA4QkRCSUxq?=
 =?utf-8?B?Z2NURW9rTXp0T0JRWGdtOERKa2lnNWFEMTF3T09remJDT0xhQU5qcEF4VVFE?=
 =?utf-8?B?K21uNjh4U2QvOGtoZDcvQkc0cUVodlJWQUNUR3VmeURhL0RwcFd2ZVRVai8x?=
 =?utf-8?B?aU1ua3dnWjI2R0tkb05rRzhIMjVkVVQ2YWtrNlIvaDFwVGczRFNZWEVxbmMr?=
 =?utf-8?B?U1NsalZ3WUd6eUpaUTl2S3hsSGNySE9DVUpodUEyc3pMN0xKMFJQMTNZZEVJ?=
 =?utf-8?B?VXNCNGExRUw4eVZHWHZFVTNlYWY0NTJ0akl4am9hbXJrV1JaU3cvRkQrekpx?=
 =?utf-8?B?VlVnenRURWN4MWVxMkU1S1hweWhHQVYyWnNNTXhBdkJ3SnI4T21sbmhJSmtE?=
 =?utf-8?B?MmVOSGdmQ1pQanZNMzBNS3FEV1ZJdlA0V3EzU0FmZXdIR0FNYlVidE9BbENP?=
 =?utf-8?B?ZGIwcXJodDErcEdoc1NkQmhLSFZuS2dSOHpZS1dJUmJuTkhKYnYxTUtoMW5q?=
 =?utf-8?B?d3pxc1dKRXFpQlVVVlljaUJ4bzhTRVZ4R0JFWnRQYUQzeFV6TVZJT212NHhp?=
 =?utf-8?B?OGxFc0JIejhEejR1enJteFBSbHIzL0dJWko1Q1hyZlhGZXpyTWlWTzRaajJs?=
 =?utf-8?B?SFByREZQZC96U0pzNmxRSUZEUjNNN25aNFhLQk92L1JWS0hTdVgyaWZRYW1z?=
 =?utf-8?B?azJ3M29VN2cvcW91T21UdjIydlRmWUZjM1ZIY3pKZjVWcVpHekdJdTJFWXNN?=
 =?utf-8?B?dTRxRFAxQVE3OG9NMlVOUDBScjlwcjNnSGMxcDVFa0kzN1ZKZ2V6bWtSeDln?=
 =?utf-8?B?Wno1b3kydnNvbFZkQUFING4wbTYwVFhGOFBlaHNCYU1VRU9Dd04veVJ3STM0?=
 =?utf-8?B?b29DTHRLQnd6dTg4K3hQVVFEMm9KMmxSb08wVlFMOThIbmpXYnBRWm1DeFla?=
 =?utf-8?B?NnhEa0ZDM0d3ZmRzK2RoakNJTnZNemtBaDFVbUpGeVJWLzlGeU5NOEczVTdT?=
 =?utf-8?B?aE9OZ2lWTGFOaVEyN2ZFM0RVamhsb0F1Z1JnRGNIMldoOGt4dnIrZkxJMmZL?=
 =?utf-8?B?dVRpN2FGVklXZG1ieWFvSmI4VUUrOVZjbUw4UVdQbllibGw1UmdNSnFpazU1?=
 =?utf-8?B?cktZaFJLbjI5WDBibDZxQkhGTmpPYWpna3FHbGo2WCt3NTZaODZxRitzTm1H?=
 =?utf-8?B?MkFHVHA4bGRiMG1VYTFDVmkxN0R1Zit1WnkyY1FTdlhSZ002SGk5bGh5SXIv?=
 =?utf-8?B?azFhMXRScVlTakljRGE4VzcvWUt3NFhrV3JlNDlndWpuSU93TTdHZk9URmdL?=
 =?utf-8?B?RDFCMzZ6Z01ub3lhTjBjNVBOMnhlaGpHSVBPQzlhWldoRGhDOXpWUWQ0b25n?=
 =?utf-8?B?bkgyVUc3VWY5eThTNW1YOXFJbnZYamNWeTJEOWZEM3BpWW56NUxVUjlLRW1X?=
 =?utf-8?B?d3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9B972E1F32D9094C93D6F722FFEBA028@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4dbd26b-1006-4b51-eb55-08dbb356b7c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 06:08:43.4317
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: THFUPt8XZ39Rz95gJlWFFvl+1us/svnE/6LDi+ORK/y3WoIb1KsqIYXpl+2YDsPuxRcb+vz4HwNvwGdbYs6SkZg16wLQgTbsOiOrI3ugRDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8408
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Sep 2023 06:08:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60980

SGVsbG8gYWxsLA0KDQpXaGlsZSBidWlsZGluZyB0aGUgeW9jdG8gcHJvamVjdCBkaXN0cmlidXRp
b24gdXNpbmcgb3VyIGN1c3RvbSBsYXllciANCidtZXRhLWF0bWVsJywgd2UgYXJlIGdldHRpbmcg
dGhpcyBiZWxvdyBlcnJvcjoNCg0KRVJST1I6IGxpYnBsYW5lcy0xLjAuMytnaXRBVVRPSU5DK2Q4
OTdkZTU5OGQtcjAgZG9fcGFja2FnZV9xYTogUUEgDQpJc3N1ZTpsaWJwbGFuZXMgcmRlcGVuZHMg
b24gbGliZHJtLWRldiBbZGV2LWRlcHNdDQpFUlJPUjogbGliZWd0LTEuNy1yMCBkb19wYWNrYWdl
X3FhOiBRQSBJc3N1ZTogbGliZWd0IHJkZXBlbmRzIG9uIA0KY2Fpcm8tZGV2IFtkZXYtZGVwc10N
Cg0KVGhlIHJlY2lwZSBmb3IgbGlicGxhbmVzIGlzIGF0DQoNCmh0dHBzOi8vZ2l0aHViLmNvbS9s
aW51eDRzYW0vbWV0YS1hdG1lbC9ibG9iL2tpcmtzdG9uZS9yZWNpcGVzLWdyYXBoaWNzL2xpYnBs
YW5lcy9saWJwbGFuZXNfMS4wLjMuYmINCg0KYW5kIHRoZSByZWNpcGUgZm9yIGxpYmVndCBpcyBh
dA0KDQpodHRwczovL2dpdGh1Yi5jb20vbGludXg0c2FtL21ldGEtYXRtZWwvYmxvYi9raXJrc3Rv
bmUvcmVjaXBlcy1ncmFwaGljcy9saWJlZ3QvbGliZWd0XzEuNy5iYg0KDQpXZSB0cmllZCBhZGRp
bmcgbGliZHJtIHRvIFJERVBFTkRTIG9mIGxpYnBsYW5lcyByZWNpcGUgYnV0ICJOb3RoaW5nIA0K
cHJvdmlkZXMgbGliZHJtLWRldiIgZXJyb3Igd2FzIHRocm93bi4gQW55IGlkZWEgd2hhdCdzIHdy
b25nIGhlcmUgPw0KDQpSZWdhcmRzLA0KSGFyaQ0K

