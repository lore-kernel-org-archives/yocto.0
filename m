Received: from GVXPR05CU001.outbound.protection.outlook.com (GVXPR05CU001.outbound.protection.outlook.com [52.101.83.68])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.18775.1792661264139639369
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2026 02:27:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=SDCxzEn1;
 spf=pass (domain: siemens.com, ip: 52.101.83.68, mailfrom: adrian.freihofer@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zNtTDowmveyF4t4pCBDLcLOte48KLkCBb5M3bClJfQ3vn0dwQH38UwJTVI9tiiCIMUi0nrA7DNbtTMK2If/kwWdE+USg+NCqC+Q9DpKLo2XZHcBEENfoUUxIY9ZC0CnzGhYkYE/W+nPp68PqiqpMid8gafE7o0T3nH9Ja5mqUuOsSlYhIu9ydjMiOcVeGvhznqacpbOJ7Fho75eB97Pn1jM+WSrJeXMe6R5bd4xBCMMUhvoBnXrpj+6ei0dVhpoteZegn0lFWFAVpkbSEV3CagvBCsoPPNNO04m7IRrI1+P5r/olMkhhGYK+Aorgjob5wmmPYlUy3pT8C+6kAXfENg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lgTwP8a7ZvPdr7iBbhYEpGLfJKV164LafUie04+oe80=;
 b=dL56TDN3ZLMDKO44ElXetddi7iHYYX2oL6DmZPaFKRJKsEI+4MGuY0Xaa3nErVKNyeD19ZbgV5D8CuG+vCJNB27B/o2tyM7EXDwguesRXgfxxAR4PhovSZ2yvQ51qFXXXA5WWphHmModyVyNbwsADJ7G0swi2u7vfHQYQehrbocJP9sPtqIi5qfHn2HtdojBqst2qF6rbJTKxjYp8PBaM7HsM/qILV2NHaAen8JeEGK1kiiflmenNsvossP8MGXCVLvjLVw95S09jfPrDRdTK1+UxU5U/n+oVV+ebIk7VZi5f2E0v1FPgbOSQ/SxAEDo9kdCplc8hVzLnJWNNk13VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgTwP8a7ZvPdr7iBbhYEpGLfJKV164LafUie04+oe80=;
 b=SDCxzEn1DpLo1dh8WQNmccCRb26Q2hd8vumeZMV4/gOQwl0sbfHmS0UUA6dQVJILGPzv9AMwPm3rNXfhmvLc8TTsBBkOr0+FcMStclP6//LIeVOtw9m8UPfAiHreZEw2IK/kZ8BnpBoOywUSjUy4tQFb7f7yh+LAUYkqOaoaR9opp17rCbURG7DNsg35vSRds2YjB4C6hEfvhUVay+/d5LM6aPg0DgVbqK8VGjQTIcXVK7bnqOSf2SknaCLPnb3+JV2TLAvnVjtTT5QMoRsByoUQRb3ht8qGimDJvc6FpLqroTapb4pjiP5nxndHxPaoKr//U0Bv60E8errk3pADlw==
Received: from AM7PR10MB3745.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:14e::19)
 by AS1PR10MB5368.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:4a0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.546.15; Thu, 22 Oct
 2026 09:27:39 +0000
Received: from AM7PR10MB3745.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7576:68aa:ea32:323f]) by AM7PR10MB3745.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7576:68aa:ea32:323f%5]) with mapi id 15.21.0546.012; Thu, 22 Oct 2026
 09:27:39 +0000
From: "Freihofer, Adrian" <adrian.freihofer@siemens.com>
To: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
CC: yocto <yocto@lists.yoctoproject.org>
Subject: Re: Issues and questions regarding PowerPC 32-bits e500v2 tuning
Thread-Topic: Issues and questions regarding PowerPC 32-bits e500v2 tuning
Thread-Index: csrwnORdasdJ3xzr7D7vjdu/N9REb6ThjGzwNaVB2iP+VAx68IAAEmoA
Date: Thu, 22 Oct 2026 09:27:38 +0000
Message-ID: <fbee9a7aecebbf87ce34560d6e097e16fb5b20e9.camel@siemens.com>
References: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com>
	 <AS8PR10MB507312025652BBCA5759F02BFD662@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
	 <248975416.905486.1792594896595.JavaMail.zimbra@savoirfairelinux.com>
	 <AM9PR10MB50824700DB37B9957B798A5CFD652@AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM9PR10MB50824700DB37B9957B798A5CFD652@AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US, de-CH
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.58.3 (3.58.3-2.fc43) 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM7PR10MB3745:EE_|AS1PR10MB5368:EE_
x-ms-office365-filtering-correlation-id: 4054cb35-be2c-4861-30d4-08df301eb72e
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|1800799024|376014|366016|261021121427099003|56012099006|38070700021|261021135927099003|11063799006|4143699003|10067099003|22082099003|18002099003|6133799003|55112099003;
x-microsoft-antispam-message-info: /6q7WB50j4GsFC39taoO5eeavfIYEsK3vHCPicTPf6beavOHRSGE3dzCRAL/XTsSqRP2YHeml6yzkUH4YUe8lvs+SF+AheTHBeAMF7NTaQ147B2IqmG8zH5kPIG4oDxl2BSn0oBTuDop5y8NhLRpvpW2dfuhLlY5uKdyI4c/PAU2l1T1Y2+tntNE8bl1ossnBA/3osmTI7JcZSE+Rzct1KUf7oLDCKHIv2X1e7JF7S+SjYMGx9oY0YdfFIaPQFsvxwrU4tj86bHAPKMre4oyuP1nufuIl8WVqGyR84+OONhGEhfO078mG7xhJ8u+3GI9Rn0y+bdcE2/NYycZT5+Va/DOnW0KiGgHagPFtC1vGhMReCIZXs0Y/BRG0ZLlK83rRyzszVAEj2h0xyaDCol+wT2eg83iUCWG5rSGy5wJ4ZzDnKeJxO2AvW/HXV7iKmgqODzVRku5YrxLV38kK3et5Hk4x6HOi/FrlfXAyixUNGdfCjZKjjHJljF+fhlgCApLrbBfEw3rGt5VHFsb+8SX164deapcX0OqStBtbhk6xqeIVLaaGS/WNF1IQiqAeJSdnTtS3/SPSxwc5hNftCr03DWAMX6aQn7tg0A6cTgY51eBkOtaSd86ct8wNEeMgT87xYWPvLkFeLrorO86dAOUGvVi4IJLS8sz1yOBPT27k7ey7WnfV2QELo73nzj9FABAaRSu50siq7cCIDdFB5rj8p19Uw78gVnUYUhiV99zR64=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR10MB3745.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(376014)(366016)(261021121427099003)(56012099006)(38070700021)(261021135927099003)(11063799006)(4143699003)(10067099003)(22082099003)(18002099003)(6133799003)(55112099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1JJZTVxbmNwOTE5Nm45cVdzVEU3cTIrM2MrSk12d0ZNdjJPMGlsMGU4SERD?=
 =?utf-8?B?bGRSeGk0QVd6ZVBiTE5vV0xENnBoU09pZjAwelZOMG9FZnJYaWg3ajFodG5X?=
 =?utf-8?B?QTdoS1RrQVY0SXQrUTB1TlNWOTZBZ1Vjb3hUK2ZHWnhVVDBTY3Q4dUtYWDlZ?=
 =?utf-8?B?MktMWkZxVER4RDBuYTkyaFhKUzJSWDJOcEpJK0FrRlZMMTlZbkI0SG9pRUxv?=
 =?utf-8?B?a3JnNVZwUk85TEh3QjJ3QlNPdkhmazV1cUhVNFRvYVozUzZUNWZKVFRFWlI5?=
 =?utf-8?B?QWplMXNLTmkwQ0tyR2dJMkdveFVsZExMVUNzSlpnWXpXWHdrRTArMWR6dnRO?=
 =?utf-8?B?TnhsYTExUiswODhuajY2M2hneVJEc1k0dXNwUWQxR1VFY0VhYzhlWm93Y2hl?=
 =?utf-8?B?SUU1VXRFeFhmUk5zcGhDNEZwb2l4WHVyUGpvWTNJNHFhMXMydVo5Zmg1MEMz?=
 =?utf-8?B?RTNTaE1qc0JYSXEzc3ZtbjNlZTNHeW9HdWd4c1FHQWFIOC84aENuNGFnV2lk?=
 =?utf-8?B?VEJJZ25qNDBvTGx2Ny9NWnN1Z3BsQmZwcURUcUQzK3ErN1JlREgwaURLaUdG?=
 =?utf-8?B?YjdTRnN6ZzBrblJjTzlsWUJPV0VtTVNQdVFmNlNKYXROajJVNCtKekFNSng2?=
 =?utf-8?B?eE80emJxTDg0TWQzNE9kaWF5T1Z0Tkd0anM0aGpoTTgrZ2dRdGw0WXhtbXpr?=
 =?utf-8?B?V2xCUjRPejhJL0o2ZEhVODFGbHo0WmFWWGR4UEVlZktQRHA5WS9BQTVDbGpz?=
 =?utf-8?B?b0VscTV1OEJCYXVxVjdPb0NOTm9jNGFFenE0TjZZWU1mVHVVcFdqV1FXb1Uz?=
 =?utf-8?B?VmNub1ZvMGlTRFZQdUR6dTVHaEhKRUI0T3o2bGkzZ2gxZmlMMGVteXF0cVcy?=
 =?utf-8?B?NzZoTU91VHRLeWtlZ2pKS09tTEQ5UkRibHdGckQ1QzJVQTJ4VndCeC92MU9O?=
 =?utf-8?B?OFFCK3IwODJ5Y0F1UDVrVzFsQjlnVCtTcVJXU0RET1k4ZDl5RllLdkZuUDBi?=
 =?utf-8?B?ZEZBUWY1d3piUFRaYjRnSEl1SUlqYTlBTEhjaW5iL0c3aVdiS3cyWjFib2JG?=
 =?utf-8?B?V2pGb2psMnNrcGFRNHY1U3Bld3NtRTlWRmdCanVaY3RqSjMveG5BVVZFTzZL?=
 =?utf-8?B?aHdvU1NwZmorcXI1QUZyRmVPeWhEc3dFc25QdFAwUUVKb1ZvODU4MFVBSFFX?=
 =?utf-8?B?ekhWanpyRTZZT1ZRTDRIY21xUytzUjluUVhRUEtScTJicWVTZG9XZHJxOEV6?=
 =?utf-8?B?eTF2eEtvalpLZnppaUYvN2FlRDRoUHArSDdoSzJVRWxJRUR5aEVmbXhYTzFt?=
 =?utf-8?B?dG9xRkxJV0JmZkgxNXhHdDhlZ2MxQ2tlQ0JxU1U2WERMaWdCVU5uOExaTEV2?=
 =?utf-8?B?U1dRWkJ6MUFBOWxVRFJmVjgxQmxlZkpuT01DOHEwY0c5MkhaNlRkMUMxeXVH?=
 =?utf-8?B?RG1SNU1TMmZvZlFxT0I5WmgzSnRsdVlSWFdSU3JPT2gwOTFKQ1NOTmcyZkZP?=
 =?utf-8?B?cmxiY1QyVGk4MHdxc05lZHloZ3l4SHd5MnBGdU9QRWVMOXZ4dC9SQnNnaUVp?=
 =?utf-8?B?dDNNb0ZsV1YzUmVFUGozamFrRkYwek42aVc2TGxtV3hsNlBDYzUzU29haVh4?=
 =?utf-8?B?NXBlZTFJQnpmOVY1cTluWTJudzl6U2RlVk1VSkhtSXUxcnVjME9xQmRQSWxm?=
 =?utf-8?B?cCtIOTZaTzlJb3lGTTVFcHpqMHE4NXJUR0txcThKdFU0L0pzNXE1MGNCeU1C?=
 =?utf-8?B?SEl1VDcwNk95UkNQMVV4UUhiRXJzUzcwMUhJNDVPR3kvUE5TaWcrMDZEdllO?=
 =?utf-8?B?OEpTdDJwNk9DYW0rNktSNnRocjBvb3Z2dWFSb0VjU29KNmNPZi8ycWI0dGlP?=
 =?utf-8?B?ZlNxZzRQRlpoNmNCbDNsaXlXcU01emc1WW10NXNtRUhzbmhJY05OU2lSc3pM?=
 =?utf-8?B?b0d0VEVhQ2J3bnhPRFcyTUNoUGxZcVRPTUUyV0pBa3NZaWc1R1gzblpGZHdz?=
 =?utf-8?B?MG9seU14ZGxUK1VQNWkvc0tPOG9qMm5ad2xNejlIYndmQTE0V05VeU1DWFlD?=
 =?utf-8?B?UFovRmE2Yk42a2VLZ2FwWFc4Sk5RUVN4aDQvb0lxSkR5WDdRMzhWdmY3YXdY?=
 =?utf-8?B?R1lMUkNRYlJoc0k3OXV4b1dsSGZyVEN6c0lHci9MVWRyM0l5aUlGZjBHYkw4?=
 =?utf-8?B?aEZiajc1UWlNd2w3VU5JYXhzc1hOSkpCclNzVjNlVUtGVmtuREVQelpKaUoy?=
 =?utf-8?B?M3R5c1hxaUJRYy9vMm5SZ0I2aythOC9zVGFySU1raDg0ZVlqWThPalB6Smtv?=
 =?utf-8?B?RFRzY0NOMmp5bHdiV2NhK3RubG1qVCtOQjZwUFl5bFE4T3JTUWdNZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5BD0CDF9A0E14A4D8D1AB34647FEA99C@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR10MB3745.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4054cb35-be2c-4861-30d4-08df301eb72e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2026 09:27:38.9695
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wG7JHKm6s56uLmYMsgbHoi/k+F1qdt6Ij1sM+I5H2p1WpjAMbfYrzVZ4aHxVdSRGL+Hts0BdhvjYEwQJ9XoXXn9oKK8RJdGVQDTsdGfcdSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR10MB5368
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2026 09:27:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66780

T24gVGh1LCAyMDI2LTEwLTIyIGF0IDA4OjIxICswMDAwLCBNYXJrbywgUGV0ZXIgKEZUIEQgRVUg
U0sgQkZTMSkKd3JvdGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4g
RnJvbTogRWxpbm9yIE1vbnRtYXNzb24gPGVsaW5vci5tb250bWFzc29uQHNhdm9pcmZhaXJlbGlu
dXguY29tPgo+ID4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIxLCAyMDI2IDU6MDIgUE0KPiA+
IFRvOiBNYXJrbywgUGV0ZXIgKEZUIEQgRVUgU0sgQkZTMSkgPFBldGVyLk1hcmtvQHNpZW1lbnMu
Y29tPgo+ID4gQ2M6IEZyZWlob2ZlciwgQWRyaWFuIChTSSBCIFBSTyBUSSBFQUMgQ0NQKQo+ID4g
PGFkcmlhbi5mcmVpaG9mZXJAc2llbWVucy5jb20+Owo+ID4geW9jdG8gPHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmc+Cj4gPiBTdWJqZWN0OiBSZTogSXNzdWVzIGFuZCBxdWVzdGlvbnMgcmVn
YXJkaW5nIFBvd2VyUEMgMzItYml0cyBlNTAwdjIKPiA+IHR1bmluZwo+ID4gCj4gPiBIZWxsbyBQ
ZXRlciwKPiA+IAo+ID4gLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLQo+ID4gPiBGcm9tOiAi
cGV0ZXIgbWFya28iIDxQZXRlci5NYXJrb0BzaWVtZW5zLmNvbT4KPiA+ID4gVG86ICJFbGlub3Ig
TW9udG1hc3NvbiIgPGVsaW5vci5tb250bWFzc29uQHNhdm9pcmZhaXJlbGludXguY29tPiwKPiA+
ID4gImFkcmlhbgo+ID4gZnJlaWhvZmVyIiA8YWRyaWFuLmZyZWlob2ZlckBzaWVtZW5zLmNvbT4K
PiA+ID4gQ2M6ICJ5b2N0byIgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+Cj4gPiA+IFNl
bnQ6IFdlZG5lc2RheSwgMjEgT2N0b2JlciwgMjAyNiAxNTo1MDoyMgo+ID4gPiBTdWJqZWN0OiBS
RTogSXNzdWVzIGFuZCBxdWVzdGlvbnMgcmVnYXJkaW5nIFBvd2VyUEMgMzItYml0cwo+ID4gPiBl
NTAwdjIgdHVuaW5nCj4gPiAKPiA+ID4gSGVsbG8gRWxpbm9yLAo+ID4gPiAKPiA+ID4gSSBoYXZl
IGFscmVhZHkgY2hlY2tlZCBTUEUgb24gZTUwMCBiZWZvcmUgYW5kIGNhbiBjb25maXJtIHRoYXQg
aXQKPiA+ID4gbmVlZHMgdG8gYmUKPiA+ID4gZGlzYWJsZWQgaW4gZmF2b3Igb2Ygc29mdC1mcHUg
d2l0aCBuZXdlciBHQ0MgdmVyc2lvbnMuCj4gPiA+IEl0IG9mIGNvdXJzZSBkcmFtYXRpY2FsbHkg
ZGVjcmVhc2VzIHBlcmZvcm1hbmNlLCBidXQgd2hhdCBjYW4gd2UKPiA+ID4gZG8uLi4KPiA+ID4g
Cj4gPiA+IEFzIHVzdWFsIHdpdGggWW9jdG8sIG9ubHkgdGhlIGRlZmF1bHQgc2V0dGluZ3MgYXJl
IGJlaW5nIHRlc3RlZAo+ID4gPiBhbmQgdW50ZXN0ZWQKPiA+ID4gZmVhdHVyZXMgc2xvd2x5IGJp
dCByb3QgYnkgdGltZS4KPiA+ID4gRm9yIG5vdywgd2UgZG9uJ3QgcGxhbiB0byBleHRlbmQgb3Vy
IHBpcGVsaW5lIHRvIGFsbCBwb3NzaWJsZQo+ID4gPiB0dW5lcy92YXJpYXRpb25zLgo+ID4gPiBT
byBpZGVhbGx5LCB5b3Ugc2hvdWxkIHNlbmQgcGF0Y2hlcyB0byBmaXggeW91ciB0dW5lCj4gPiA+
IGNvbmZpZ3VyYXRpb24gYW5kIHNwaW4gYQo+ID4gPiByZWd1bGFyIGxvY2FsIHBpcGVsaW5lIHdp
dGggWW9jdG8gbWFzdGVyIHRvIGNhdGNoIGlmIGl0IHdvdWxkCj4gPiA+IGJyZWFrIGFnYWluLgo+
ID4gPiAKPiA+ID4gQmVzdCBSZWdhcmRzLAo+ID4gPiDCoFBldGVyCj4gPiAKPiA+IE9rLCB0aGFu
ayB5b3UgZm9yIHlvdXIgYW5zd2VyLCBhdCBsZWFzdCBpdCBjb25maXJtcyBteSBhbmFseXNpcy4K
PiA+IAo+ID4gQmVjYXVzZSBHQ0MgaXMgbm90IGFuIG9wdGlvbiBmb3IgU1BFIHN1cHBvcnQsIEkg
YW0gY29uc2lkZXJpbmcKPiA+IHVzaW5nCj4gPiB0aGUgTExWTS9DbGFuZyB0b29sY2hhaW4gdGhy
b3VnaCBtZXRhLWNsYW5nLCBhcyBpdCBzZWVtcyB0byBzdXBwb3J0Cj4gPiBQb3dlclBDIFNQRS4K
PiA+IEkga25vdyB0aGF0IHNvbWUgc3BlY2lmaWMgcmVjaXBlcyB3aWxsIHJlcXVpcmUgYnVpbGRp
bmcgd2l0aCBHQ0MKPiA+IGFueXdheSwKPiA+IGluIHRoYXQgY2FzZSBmcHUtc29mdCB3aWxsIGJl
IGVuYWJsZWQsIGJ1dCBtb3N0IG9mIHRoZSBkaXN0cmlidXRpb24KPiA+IGNvdWxkIGJ1aWxkIHdp
dGggY2xhbmcuCj4gPiAKPiA+IElzIGl0IHNvbWV0aGluZyB5b3UgaGF2ZSB0ZXN0ZWQ/Cj4gCj4g
VGhpcyBpcyBhbiBpbnRlcmVzdGluZyBpZGVhIHdlbGwgd29ydGggdHJ5aW5nLCBidXQgYWZhaWsg
d2UgaGF2ZSBub3QKPiB0cmllZCB0aGF0Lgo+IE5vdGUgdGhhdCBJIHdhcyBvbmx5IGludm9sdmVk
IGluIGRpc2N1c3Npb25zIHdpdGggb3RoZXIgcHJvamVjdHMsIEkKPiBwZXJzb25hbGx5IGhhdmUg
bmV2ZXIgYnVpbHQvdXNlZCBlNTAwLgoKSGkgRWxpbm9yCgpJIHJlbWVtYmVyIHRoZSB0aW1lcyB3
aGVuIEkgd2FzIHdvcmtpbmcgd2l0aCBhIE1QQzUyMDAuIFF1aXRlIGEgZmV3CnllYXJzIGFnbyA6
LSkuCgpJZiB5b3UgY2FuIG1peCBiaW5hcmllcyBidWlsdCB3aXRoIGRpZmZlcmVudCBmbG9hdGlu
ZyBwb2ludAppbXBsZW1lbnRhdGlvbnMgZGVwZW5kcyBvbiB0aGUgZGV0YWlscyBvZiB0aGUgQ1BV
IGFyY2hpdGVjdHVyZSwgYXQKbGVhc3QuIFdlIGhhZCBzb21lIGRpc2N1c3Npb25zIHJlbGF0ZWQg
dG8gQVJNIDMyIGEgZmV3IHllYXJzIGFnby4gSQpqdXN0IHJlbWVtYmVyIHRoYXQgIml0IGRlcGVu
ZHMgb24gdGhlIGRldGFpbHMiLgoKV2l0aCB3cnlub3NlIHRoZXJlIGlzIG5vdyBhIFRPT0xDSEFJ
TiB2YXJpYWJsZSB3aGljaCBjYW4gYmUgc2V0IHRvCmNsYW5nIGdsb2JhbGx5LiBCdXQgaXQgZGVw
ZW5kcyBvbiB3aGF0IHlvdSBuZWVkIGlmIGEgYnVpbGQgd2l0aG91dCBnY2MKaXMgcG9zc2libGUg
b3Igbm90LiBGb3IgZXhhbXBsZSwgdGhlcmUgaXMgYSBwYXRjaHNldCB3aGljaCBmaXhlcyBnbGli
Ywpmb3IgYnVpbGRpbmcgd2l0aCBjbGFuZyAoYXJvdW5kIDUwIHBhdGNoZXMgZnJvbSBBUk0pIHNv
bWV3aGVyZSBhcm91bmQuCldpdGggbXVzbCBpdCBzaG91bGQgd29yayBhcyB3ZWxsLiBOb3Qgc3Vy
ZSB0aGlzIHdvdWxkIGFsbG93IHlvdSB0byBnbwp3aXRoIGNsYW5nIG9ubHkgZm9yIHlvdXIgdXNl
IGNhc2UuCgpUaGVyZSBhcmUgYWxzbyBzb21lIGRpc2N1c3Npb25zIHdpdGggbWFpbnRhaW5pbmcg
c29tZSBMVFMgYnJhbmNoZXMgbGlrZQpkdW5mZWxsIGZvciBsb25nZXIgdGhhbiA0IHllYXJzIHVu
b2ZmaWNpYWxseSBieSB1c2VycyB3aG8gbmVlZCB0aGF0LgoKSnVzdCBzb21lIGFsdGVybmF0aXZl
IGlkZWFzLgoKUmVnYXJkcywKQWRyaWFuCgo+IAo+IFBldGVyCj4gCj4gPiAKPiA+IEJlc3QgcmVn
YXJkcywKPiA+IEVsaW5vciBNb250bWFzc29uCg==
