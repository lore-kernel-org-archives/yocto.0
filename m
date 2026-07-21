Return-Path: <daniel.turull@ericsson.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C736CC44529
	for <webhook@archiver.kernel.org>; Tue, 21 Jul 2026 07:23:39 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.17334.1784618612066327093
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2026 00:23:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ericsson.com header.s=selector2 header.b=VwymJ32+;
 spf=pass (domain: ericsson.com, ip: 52.101.66.49, mailfrom: daniel.turull@ericsson.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z1UI2/JOEvdUXGMHPwx+2ywqrZHU0dbLuvFWOKKNTj6Bvk5xtjnYYbR3Onwd6xfe5YJ1Jmft97nRsAUog8i/wqa+XazzfGbpCozLY/VLixe3wIrI4CaL38JO8LNVmjcFVYTxrdLcGpjAzVnKUPxZcD8INrrK/BRp8YNZxXsf9mXG1ajyomWdrYpC5XXGf4q4zoO1/JSEeLbmi5dowI+9rYhemrgm47ybbyT+uJXfaUbJ+UtIRM97IjjykcWMqCiKHIwKIHQLVsz0SkGjopX2fi4ghm4hEEe/DZoUL17qU0bqe7EetUw+qtSfO7tkUDtCT1/MucZ5u3tEQrfzJuC8rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=INd/fBU1a1ALcHjfN/CdjP7KY3bxYNMUT+ZXGg1Vo+8=;
 b=fL5ITEVc46L/2FeHqXP/A64RSfWDEqbHICga21XE7MucuQdu8/hAZ4kEB8Ti1e/usXg6XkkRRNfee9bl46Z4OUe06gV9J08zf2WM32Tb9iPwp+PWvvuO9qT8qjEAyDJBSy4Dlp1gf9jj34Jg4DG5o4vn3kGi7A1GhODWP8nTUh96NW0oibys+4Erm2uicAJpK/YZHoDqPJgZSbAVVztm4CfXA0nBJVPFhnb8A+R0w0FIr5S1+CfkV9fvsCuQc3OaBPswViUDLEtk9EDTcE7hTNRjAWbert5DOsIYDDgTVrA6Oqix5h+TMZ9W+G38uLCDcsy8AG4ofRZCSrpKmsWMtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=INd/fBU1a1ALcHjfN/CdjP7KY3bxYNMUT+ZXGg1Vo+8=;
 b=VwymJ32+pDGO+OJ+JnDWgJXVC8pQbrI1Cjr7LOZmj0GjgUvAQT5Mlj77BlJs75pAW0wc/4BQ76P4utpbCLvFZUdulsgck82cKlAXY5XiFOzD7CVWQlyokYbNgryIrnWfzQZeg5wG824iafTAQH09pdNQnmBzqXuoNaLYvJ2ShW6wGhlKTxb03ODdf4ZF6NVGfQi5gVKxTc55Ld+2MvI2RuFBJdPB9sOJ7xLS9Ama5BXtdmMffG/rKxBNZC5fg8DCUee3vnUfg57bQrXXBR7WVXxb8HgqnYUpbXu/ZpsaS5+z0/wwsxm6mdY5rtbhcp35WqLWao4Pd2BdivKHzYgh9w==
Received: from PA3PR07MB10721.eurprd07.prod.outlook.com (2603:10a6:102:4af::6)
 by AS1PR07MB9594.eurprd07.prod.outlook.com (2603:10a6:20b:472::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.245.10; Tue, 21 Jul
 2026 07:23:27 +0000
Received: from PA3PR07MB10721.eurprd07.prod.outlook.com
 ([fe80::afd3:17e5:1663:7ce7]) by PA3PR07MB10721.eurprd07.prod.outlook.com
 ([fe80::afd3:17e5:1663:7ce7%6]) with mapi id 15.21.0245.009; Tue, 21 Jul 2026
 07:23:27 +0000
From: Daniel Turull <daniel.turull@ericsson.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"security-discussions@lists.openembedded.org"
	<security-discussions@lists.openembedded.org>
Subject: yocto-security-tools: helper scripts for CVE backporting work
Thread-Topic: yocto-security-tools: helper scripts for CVE backporting work
Thread-Index: AQHdGOHSPegjwfGC/UauMSGblx4z4A==
Date: Tue, 21 Jul 2026 07:23:27 +0000
Message-ID: <2aa6cbc429f279571f460291435abbd6d3dfdd83.camel@ericsson.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ericsson.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA3PR07MB10721:EE_|AS1PR07MB9594:EE_
x-ms-office365-filtering-correlation-id: f046c8ef-7f75-4f69-7557-08dee6f8f52a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|23010399003|10070799003|376014|6133799003|56012099006|18002099003|11063799006|5023799004|10067099003|38070700021;
x-microsoft-antispam-message-info: 
 iY4lojNC4Yx386nZiMYSRKyKhcoofY/S4n3eER2kpDkq8D9C6QlcMm0ipHb9O8GmeIP8Gh6SdgB1V4E9ya+Vih09TukYUzb+ys2TFccpBlvULhQj+S5jQ8IyLzbJkYjqU0WXKeEA/iMhPjzDzxiKeFSE/bcS0MOuXTeXTEJVOduOvGhLG0R/BIbCjFkAhmahVTk8b2bcesGgtt+6iK32lbzFUC5/6jl8KhTTY5YNKcXKyWflPam5vxs9zgrXqOfsO6zM+3uNqSYmL3sj7ZkQva+dNcbHkCz4Wlgnr8jJhqbFQcw6sHDrtHAOFQa+oQKXhxhKmB4nrtiM0ZXzLyWRxU31IqhTNmlEvfALfKO9+anIyUnDQlzA2rucYZy6fur2OppCd8i1ZIvEfRRK+14PbVTbbZuIpUpzCtc8nu4v440RGoDc1Xbo6KVk8PlskDmFrFp4EOwY8GlOJ/iQyNGd5qO/AgO2Ipar9u9hqbEI5m7d1hkqTMwMvFom8oJUVMPTHU3sUa99sKWpJO4vN2ThfcfORq1Tfd4cecBfAzbB9vrvC8alk7XpN2zrtZE0X95pkurQ/eCoJ7Jew3DpQ53/LEPlRLBD9/OjIOSw06a2bHPkgwBmfy5qZf6URnYJoB+QS5wZMbmzre5cRqVABHFzIhVX5mfsKqtLMdms5JwcVKhJiKv1e1DiEb07lsBuOAijnN/TL9nJ82cB/FDOsHxgQRxcjEHaWxYxBDLJGhth/X4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA3PR07MB10721.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(10070799003)(376014)(6133799003)(56012099006)(18002099003)(11063799006)(5023799004)(10067099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?RXlkdGNobWRqV2pJOUlwdDQybHBnYmt1aXZQR2Q5UXVIUFV4VTlLN1ZiWFc0?=
 =?utf-8?B?NzlPd3BGc3d0bXFrU0E1WGw4NHpLUGUzbDBWWUN6TjB2RnUraFBSQVcwWll1?=
 =?utf-8?B?eUUxVFRTKzhxY05EWjE1emY1YlVXRm5uMXV2dy8zeXhRWWFzMmdxVkljWHlv?=
 =?utf-8?B?QmFKTC96TG9RRTViY2g5UFUvN1YwWHU2NC9pN2wrR29DZHVxczJldGp6Sjcy?=
 =?utf-8?B?Z3BON05NZzNLOVJoMWdMN0JKc1YxRmVsSWVXdFZpUlFyWVkvWU16SUtncTJX?=
 =?utf-8?B?Z0pLdkIrYjFVRjhEUllnZ2diYTUwUUw2ZHFBZ2ZVUWtxU0FuM2NyWU9wZ00z?=
 =?utf-8?B?ZUZJTXJaUkVCTmUxaGpqRWJrQVdRblFwMFFhSDNJd3huTFl3dVVWNTEvV3dp?=
 =?utf-8?B?NjRVNEJCdkU1eDQvN2JGeEw5N1FXZWJPajhVaExpMG13MXI4Nk5mOU9HbU9n?=
 =?utf-8?B?UVMwcW13THI5Q3JRamNHT05zakx4bFc5dFhGUlFlbiszdWxSOFlaVXZBRnBG?=
 =?utf-8?B?bk9XMzNPNHFScTlOdTl1TE9aWFQwY1NBMFFqQlZDbWJMMWh0eEpaQlRWc0l2?=
 =?utf-8?B?VmhBeHJJMXNxa2VoelBPZ1RHcGE1b21UT1pEb2ZEUGZoUVA3VFVqSmF4Umlu?=
 =?utf-8?B?azVHQUlWWE1CV09MM25YTzhvcTkrbGc5bjhNWkxGVFF1NFhXTENDRWQ2ZHRZ?=
 =?utf-8?B?VGtQbWJ6eHBXcTlXemZwWS9IbEhaMEZCWEZyTi80NVVPMjhKcFNxQ3pMS3FW?=
 =?utf-8?B?ZVBndDVPemN1eWRiWDdXU2FFS29JcDhteGtQTDhQQURnU3RWUCtOL0tpREN0?=
 =?utf-8?B?Zjk4NG0zdXhPNXlQYWlldFNHbHREbStteFJhbXMrVmpnY1ZaM0g4NW9xbkRj?=
 =?utf-8?B?RWNGaG53ZHRtRjZuQkZTR2pWUkVWSG44dTRzTFIzSTRqVmFUWWRxdmdoZHd2?=
 =?utf-8?B?YmFrQWswODR2aGdqNjgwejdsZ2hiNWRXeWd1QUl5ajZqaE5QR1lqOWxLemdw?=
 =?utf-8?B?VDNiakVnMkpPdndoRmczbGxtOCs3Q1FuSk45NzEzbWhBNWlDRjhEY1NXNFRi?=
 =?utf-8?B?dHVsN2gyTzhHNFBSajZ6QWtVMlVlNGl4MjRieERNWlJSajZ2eHNJU0JPS3Fm?=
 =?utf-8?B?YVIxMVJDaVZvSDhYbGhod2EwYS80cjBQcXgxN29zYWs1RWRka0RLcHpwanQx?=
 =?utf-8?B?bU4zRjlDOUN5NjFNUHV2SE9aSm1qeExvRm5rNE5BWGI5cFNUanlnUTB1d1ds?=
 =?utf-8?B?NWdLanhDU1VSNzZnaHZKbHM2R0ZNL3dTaGRwcHJGVTlVVFhMR1Axbk0xOHJL?=
 =?utf-8?B?V00rV1BUclJkVWd5Y0cvOHBvbnMvZmkyMnpEZ2h6VU8rM3VqbGdQVkp2dUlk?=
 =?utf-8?B?UEQ1SkpLUjVSMU00SFFpN2lsWWlmWE01Q1ZSbWd1ZjZmMTBnT3BDeVlvVG52?=
 =?utf-8?B?UkZUakdMcXNwVGxlc0hRWm50NzU2SkwzMDFTcFJ4NnJLeDZsTjdsNHVjckNm?=
 =?utf-8?B?M0pZTTRUTkZnMHNKSkFXdWhPL0svZUhDb1BvN3g5VkJPWE9EQWdST3NKT0VP?=
 =?utf-8?B?ODZuaG9iQU5CZlVFUGVVcUY1Zm1jaGNydUhpT3grOHN2WGcwRFRKYlY0QjF1?=
 =?utf-8?B?SmlUenEzOFI3QW1TYmJreGN5ZEpjVURuYm5pbUgyN0d1Mng5TkZwWDAyMVNO?=
 =?utf-8?B?SThrRU9oTHNZTERBQjJZK1lvbWRadjBMTmFERWhsLzZmUTB4NjVGK0JKMGU0?=
 =?utf-8?B?Z2VsRzFVSlhxOFdhTlJZSHAwamhuUFovMnpDWWJQTGsxRisyQ245cGxhWGt6?=
 =?utf-8?B?aU5JRVEyRFBNZGZkU2hBMmxHd1NSVzZteTZEKy9yeWI3NUt4dFVWM2o0U0xK?=
 =?utf-8?B?Tm8zam5hNDJkbEJCeVRGZ3AvbTVvdkF6OElkbEgyMHF3M2I3R0hlcHNJOGN6?=
 =?utf-8?B?Y1Y5RnVRcm5iekdHL083bTNRbk1QeVhKbVBqcUJrbVFmVDFpSnFJODFEOStK?=
 =?utf-8?B?S1YxMFFPc2ZwODdQd3FjZkIxRHlQZlNDVUxFcFFDNG91NnBGUlNGU2NLNXZq?=
 =?utf-8?B?UGNzY0FQaTVWSXpPVlp0b1hhVVBVMkw1RElzdVdkdS84Z2VYeHIwdmZid3Vn?=
 =?utf-8?B?ZnNCYWpsVStNaEFoZGRPS0J3WEI4WkY5SXVVZ3d2cXYyM1hCT0JPS0t6anhL?=
 =?utf-8?B?WURrM2ZtU2h1WVAxVDRGb1krZHVZSjN1WUFXMWdMaEtBcmY3T0c0dnl2Tmhx?=
 =?utf-8?B?N0N0eXJzQkdzQ3ZFbEUzZmN5UjBEOUp5Y1Fka2dCb3I1eTZtdjFKQld3bWh2?=
 =?utf-8?B?MUxxNm1ZTy9ncTVWT0VoM0gzWG1YbUxmeTNvbDREcDdSYnY4aE1SY2Y2c2l2?=
 =?utf-8?Q?w6dvTqews0HDxnBIgz6Kj1UjpOIcug5KKRwZONU44pZ8t?=
x-ms-exchange-antispam-messagedata-1: Swh0BK5oArthTBkZNm6hX9L21eWeCFwDoAs=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0B3A22A2C8C3AC4FB1186B2B3BCBEE18@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA3PR07MB10721.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f046c8ef-7f75-4f69-7557-08dee6f8f52a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2026 07:23:27.2301
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YzVeXYEcz5wtPMNa3LZylQ4WXTro4tvfOj3Yq2ETS2xjotJ/40za153DvTX5h71wVYBsTLNEHLLir3muv5QFL4eDapNmhyJ0ib0DTFOq+lE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR07MB9594
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2026 07:23:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66646

SGVsbG8sDQoNCkkgd291bGQgbGlrZSB0byBzaGFyZSBhIHNldCBvZiBzY3JpcHRzIHRoYXQgSSB3
cm90ZSB0byBlbmFibGUgZmFzdGVyDQphbmQgbW9yZSBzeXN0ZW1hdGljIENWRSBiYWNrcG9ydGlu
ZyB3b3JrLiANCg0KaHR0cHM6Ly9naXRodWIuY29tL0VyaWNzc29uL3lvY3RvLXNlY3VyaXR5LXRv
b2xzDQoNCkl0IGNvbnNpc3RzIG9mIDMgcGFydHMuDQoNCiogY3ZlLW1ldGFkYXRhLWV4dHJhY3Rv
cjogRmluZCBmaXggY29tbWl0cyBmb3IgQ1ZFcyBmcm9tIG11bHRpcGxlDQpwdWJsaWMgc291cmNl
cyAoRGViaWFuLCBPU1YsIENWRUxpc3QgVjUsIFVidW50dSwgTlZEKS4gRm9yIHRoZSBsaXN0IG9m
DQpDVkVzIHVzZXMgYXMgaW5wdXQgdGhlIGN2ZSByZXBvcnQgZnJvbSBzYm9tLWN2ZS1jaGVjayBv
ciBhIGN2ZSBpZC4NCg0KKiBjdmUtY29ycmVjdG9yOiBBdXRvbWF0ZSBiYWNrcG9ydGluZyBDVkUg
Zml4ZXMgdG8gWW9jdG8gcmVjaXBlcyB1c2luZw0KZGV2dG9vbC4gSXQgbWltaWNzIGhvdyBpdCBp
cyBkb25lIG1hbnVhbGx5IGFuZCBjcmVhdGVzIGEgcGF0Y2ggcmVhZHkNCmZvciByZXZpZXcuIElm
IHRoZXJlIGFyZSBwdGVzdCBmb3IgdGhlIHBhY2thZ2UsIGl0IHdpbGwgcnVuIHRoZW0gYmVmb3Jl
DQphbmQgYWZ0ZXIgdG8gY2hlY2sgZm9yIHJlZ3Jlc3Npb25zLg0KDQoqIGN2ZS1hZ2VudDogaWYg
dGhlcmUgYXJlIGlzc3VlcyB3aXRoIGN2ZS1jb3JyZWN0b3IsIGxpa2UgYSBtZXJnZQ0KY29uZmxp
Y3Qgb3IgYnVpbGQgZXJyb3IsIGl0IGNhbiB0cmlnZ2VyIGFuIEFJLWFzc2lzdGVkIHJlc29sdXRp
b24gYW5kDQp0aGVuIGNvbnRpbnVlIHdpdGggdGhlIGN2ZS1jb3JyZWN0b3IuIEN1cnJlbnRseSB3
b3JrcyB3aXRoIEtpcm8gYW5kDQpDbGF1ZGUuDQoNClRoZSBsaWNlbnNlIGlzIE1JVC4gUGxlYXNl
IGZpbGwgZnJlZSB0byB0YWtlIGEgbG9vaywgZ2l2ZSBpdCBhIHRyeSBhbmQNCmlmIHlvdSBmaW5k
IGFueXRoaW5nIHRoYXQgY291bGQgYmUgaW1wcm92ZWQsIGZvciBleGFtcGxlLCB3aGF0IGNvdWxk
IGJlDQppbmNsdWRlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2VzIG9yIG1vcmUgc291cmNlcyBmb3Ig
Y3ZlIGluZm9ybWF0aW9uLA0KcGxlYXNlIGxldCBtZSBrbm93biBvciBjb250cmlidXRlIGJhY2su
DQoNCkl0IGlzIGRlc2lnbmVkIGluIGFuIG1vZHVsYXIgd2F5LCBzbyBpdCBpcyBlYXN5IHRvIGV4
dGVuZC4NCg0KTXkgaWRlYSB0aGUgbW9yZSBwZW9wbGUgaXMgdXNpbmcgaXQsIHRoZSBtb3JlIHBl
b3BsZSBjYW4gd29yayBmYXN0ZXIgb24NCmJhY2twb3J0aW5nIENWRXMsIHNoYXJlIHRoZSBsb2Fk
LCBhbmQgdGhlbiBmb2N1c2luZyBvbiBmZWF0dXJlcyBvcg0Kb3RoZXIgbWFpbnRlbmFuY2UuIEFu
ZCBJIGtub3cgdGhhdCBpbiBhbiBpZGVhbCB3b3JsZCwgd2Ugc2hvdWxkIHVwZ3JhZGUNCnRvIHRo
ZSBsYXRlc3QgdmVyc2lvbnMsIGJ1dCBkdWUgdG8gc3RhYmlsaXR5IGFuZCB0ZXN0aW5nIGlzIGRp
ZmZpY3VsdCwNCmV2ZW4gZm9yIHRoZSBsYXRlc3QgeW9jdG8gcmVsZWFzZS4NCg0KSSBoYXZlIHRl
c3RlZCBpdCB3aXRoIFNjYXJ0aGdhcCwgV3J5bm9zZSBhbmQgbWFzdGVyDQoNCkJlc3QgcmVnYXJk
cywNCkRhbmllbA0KDQoNCg0K

