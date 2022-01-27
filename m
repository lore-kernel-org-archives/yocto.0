Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52038C4321E
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 16:37:53 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.80])
 by mx.groups.io with SMTP id smtpd.web11.159.1643301458705581077
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 08:37:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=J9N+GIi1;
 spf=pass (domain: optimeas.de, ip: 40.107.5.80,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDxBLdnJJV/TUmUekz4We6H4JqqPzBq3qaDU9L29TuPpXjEhnv1A73ocTU4d7mmPR+r0coFQsMIx1gZrIusPXNcxrjeUr53YJqvQ2X6MZc1qckh9AS021OGXAsmXIs2k8TxffZ5wRY2B/GoWx5e3V1Gnaxuv/NzjYfrXp6D352nHr734eWrBDFGIUjXyK5AgD2U8rGCrv0j85rJKYlW6paAGaIf4FoXvdWFmq60iuZWL11d6JYDRYGARLTcwH7qZ5Cm7XuQKSuoEmfIsOv7seNx4AV8TMOKp4e0kzG8VN+U2fChn9L76JeWXW+haHw7rJK8boyGxpEIPbo2Pk/FKdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sEAR7q5iVbcK3fkXeCesGnXHLSd6wodF7dO4eKBDMiY=;
 b=lux0ZWw0O9gUH6mPVE+BYqwMmwo+ZZid5O4WPtD9BV5YZkI1uGz0/w0k1JmRwmio7jGTiHYD080et+pqwRohlFuE+t8m6a2V687VAUJd+3NbXKY6nH0Qya0GI9Ak9FMKd3ribbWCcGYBm2Nw+3vDgxxxdR9tUO/Slczq5hXWvWdGmGqq0MJKOeDpBM3IDMpuhJDaez1DmL/yo5K92sUxeyK/JJGtwoZpt1uQEzvAULMueEse3j4PWwJS/x7CpR775bIUCnBw+yQ3c5x7uZWLqbOkBA0KIO1ye9DihjwLk044M1XW3ojslOYWWp2iLcEjJpvvPwENQWqxU5Z1n6a07A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sEAR7q5iVbcK3fkXeCesGnXHLSd6wodF7dO4eKBDMiY=;
 b=J9N+GIi1ERR0PImstX1HcxbBNXx21craieE6aGbobw098poSfRM1Thea1ppf89n3bCUe2tukWj6edSfnPAbSzX6vWA7zUcTdWqnPxoeTxTMhwRCNCa6r/fBDMGMcyAIuKfrewB37Av/T9Brj4kD81jk3EDKrCnjffKSiFn9gmls=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by VI1PR1001MB1309.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:e0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.13; Thu, 27 Jan
 2022 16:37:34 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4930.017; Thu, 27 Jan 2022
 16:37:34 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] bbappend conditional check for advanced metadata
 (yocto-kernel-cache)?
Thread-Topic: [yocto] bbappend conditional check for advanced metadata
 (yocto-kernel-cache)?
Thread-Index: AQHYDhKXIRnDTRLd1UqhLPjNOoqMe6x293Yw
Date: Thu, 27 Jan 2022 16:37:34 +0000
Message-ID: 
 <AM0PR10MB3107F90161F2453AD3FC0FAE99219@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB3107A3C6E22FB1D8AD02ED77995A9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CADkTA4MHsKjxm2koP5Ho+v85m4=tWtR6+wEMfH2AschO_y1uKg@mail.gmail.com>
In-Reply-To: 
 <CADkTA4MHsKjxm2koP5Ho+v85m4=tWtR6+wEMfH2AschO_y1uKg@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14d44c7c-f3c5-4f31-1055-08d9e1b35230
x-ms-traffictypediagnostic: VI1PR1001MB1309:EE_
x-microsoft-antispam-prvs: 
 <VI1PR1001MB13090D25E67A5FCD10F46D3799219@VI1PR1001MB1309.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 HZf+cnoadwtObmEYgtF2egWureQa3BXxiJ69trG0sFmJcLOSyycgCNFB6CRVmJbT8jOcEadnL3ZLd96uW5THVlYJx/DBjH+0XOQsVx1ayoENEgQGeFf6IcCOZSrM9jLbHWMHas8p+AGMs9llgc6rsVMMEjhJqynrAU9kTFYFqe36JysvWyJ/gzppuHxxaRExuZxNTmmTc8VWwCTACGzT9n69QBQJTfGCY78BkGIdH4k3UYaKQ3U88rrbh8qQUvMCbIx+83tRy4QeaGBCLCBspIoyq/7nyswahIVvwuYfnpmVhJ/XsHGGYjsq3wIEcmzl3Ab4xXK7r0ov1PYmz56+5U5bpE+Wysm5tjQNgaMwK7e/FNnivOMmj1i1S5cXD7B2Q/JCnipuZzP5d1rCB90d93F2XgLkCA0fevIr7gBB06ZyywPiLiBBzbRD0KA3T5oQDzBAgs+XAMIFU8XyV1DDbLy8VlCeag7LEfll5MnRmw3S/KPbR368tQE1fE4fHwS3Xh04HxAKstVGSbN6IRh6C75I0YQeNXrUmjzWLVj5YlEoB2HKN4IY/7bBj8pvXLk3cYE7+9nnbNnfH5PfqiFtAOzZcK6czGB0ijdhtzfwuIhMAzz83w+/b5ijgnKFI74jShPnvzL53sJdzdD/yrCYblXmzdTrPY3Y+T5QMF4O7kC2HO9uumdEYxWcj0irQflCHkCbLkI/b9tIGZrukDLj5Ow6OyYf3LlLkIf3S9h1xUv/h1LJm3YaQvLR1qYt5/h732X5ZU0FJvNbe8iBCcUWpHBtedgWuINX3qiSbfaOmFw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(396003)(376002)(346002)(366004)(136003)(39830400003)(76116006)(38070700005)(52536014)(38100700002)(44832011)(316002)(6916009)(4326008)(508600001)(71200400001)(33656002)(66946007)(122000001)(64756008)(5660300002)(66556008)(66476007)(7696005)(66446008)(8676002)(6506007)(9686003)(2906002)(55016003)(86362001)(186003)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?aDd4K00rc3RtdHRTU1lEM1ZxZVBBVW1QdnFXNEExcXZuUVlVUWFMcEZaRXVQ?=
 =?utf-8?B?U2s1c3lLREJ1Q0xJTlgrYnE4U21DVXp0TlVmYmd3RUFmVEFrMWdTV1VWdnJD?=
 =?utf-8?B?MElRakhpUU5NTi9Wc095NEhJSEd6dG0yNlZyU2h3NHFwbGhvNzVIZERpMGV1?=
 =?utf-8?B?eStHSHFwcXZKNG5Cb3I0UUs5S2g1YStuTzhyOHh4ZUJsYlVmKzFRbk91NjdD?=
 =?utf-8?B?czdXZG5QaVNkUFgrMW9yM29Pcmh0eXZRUUhrRXphVkRPekFqMTMvNUZzc05x?=
 =?utf-8?B?QzB0UG9BdDZSbXFGT3hCTEF6Zm01Tmc3dDA1MitKWUI5QTNvQnZsWHZaYUpW?=
 =?utf-8?B?QjBYU216N2J0ZUJoandkQ2hMYWZJUm1XWFlMR2FuTXZUclNvRE01d1lDdFRI?=
 =?utf-8?B?T3VRai9JdDVrUm1RWEJEU2h6bnNCbTdRc3R4MmgyN0tXbUc2WkFuS3N1cGlJ?=
 =?utf-8?B?cHhnOXIvZGllRWxtdDJ2VWMxeWE4THlkam5KcnVVRWlHN3U0U3FsQm43ZXRp?=
 =?utf-8?B?aWNNQm0xOUliSEpuK1RveFZadTN5K0xXcDVCcHVVa2lkTlU4QVZRU1ZKdGhZ?=
 =?utf-8?B?V0tZYWFOejhUZi80M0Q5YXQ0NFMvYTFERzFOb0RXWDh4ZXhhKy9LSE1EMmpP?=
 =?utf-8?B?YURtYXMvV2U5cnlTdkgzQzJ6USt0UEF4dDNsNmUzSXB2aFZ3cWk5cnhvWUNM?=
 =?utf-8?B?R0k2c0FvbTVBSHZCdVRWdEp4OEFGb3l0VjhXT21TWk9ncFFqZEVWNDRKajd3?=
 =?utf-8?B?NEk2eHlGRjI1MjhxZnJCbkVYdE53aVg0NUZYTjZmY3BYaS9EMms5Y3JqM0Fr?=
 =?utf-8?B?UmhDN0YvMWMvM1IxVE9iWVBFVE1VNld5NkswMkdaQ09zeDdIb29PcFFxd2ZP?=
 =?utf-8?B?Sytic0gvcVErb0Rxb2U3dGRpMjhRb3gvK3pnVTB2a0swMVEyTWFzRy9FVGxk?=
 =?utf-8?B?VXF4cEdEOEtXbzRyU2FldnNvMW5vU29lenVkYmhPQWpJT0UwZkthQVkvaDRx?=
 =?utf-8?B?TUY4Qm5HM3I1Y2FBWk5DOWlOQ3JDemRUelRhbUlUSlg3bGtIUW5zSG55QmZ5?=
 =?utf-8?B?YzA2SVpQeThuOGlQK3NnczQ4dWV2aXpYTWdvSXpZaVA0Z08ydWFENXc3Vys1?=
 =?utf-8?B?SW1odVM1YjBGaEdkakxTWUJyRXAySnJDWEh1TmNSNTNWRlFKUVJqUEtsWXVn?=
 =?utf-8?B?NmVNbllIWmdFRHZNcExmdzZuK2dVSlhwRFMrZDRaRDQxT0RKcGZhUHNuYjZZ?=
 =?utf-8?B?dnVVdTR5YS9HaXF1amtSN29POE4zdU1DSDhXS0U3RXFTR0pjeU1uaW1OazBN?=
 =?utf-8?B?MEN1Um4vcVIxL1VNSHYzb1hrV3dDcjFNd0FMUFJrRzIzUGswczl2VnQydXFS?=
 =?utf-8?B?Q05CTUZpYzBTOUprZS96WkdZS3VKNi8ydXdXYUJLNGdkMFZOZGFzUmM0N3py?=
 =?utf-8?B?ZlFPYndKWSt6V1ZzRlVkalNEaUQ0SjdvSm9TSzdTY2FnMVl6NFhmRTZvMW1j?=
 =?utf-8?B?UmphSlZ5SjVwSjU2UmFVc0tucUliQ2JMSlpvV0dQMlVHM0JvTDc4c2FnOFdm?=
 =?utf-8?B?eWI3N2pYOENPRUJ2RHlmUjgyRWQ0WHRFYzZpL2FtMFhOU0pWVGZzbGVrSlBv?=
 =?utf-8?B?SmRNWnJScEI1VjlpNldKUDRPNUdVc0toZG5ManFJYlFtcis4VGlNZm1tSDhC?=
 =?utf-8?B?ME8rNC9sYzB3SmdqV2w5d3dzU3dzSHhiUVovY1A4Wlc3dE1sbWVXekFIVnQx?=
 =?utf-8?B?Q0Qrcm9oL3lqc2VIVEhQVzBYeDFKSWpwdTJvZGhpc2ZuUmZ1MXA1dWM1NlAx?=
 =?utf-8?B?aXErMmxnRWRCdUFSOXpGODNIYmRDNVVaWVRncnBsWFdVOXBvS1hlaUpGRGR1?=
 =?utf-8?B?d3Zudm1DRkh1cklacVIwN1FmVHk1U1FJcUdFaURjTjBjVDB3bm04bDJGS1Jx?=
 =?utf-8?B?YzA4d1VjWUdCbjJTYWhlRktmT0JPSEFnN0pMcHhRUkc3NEQzRnQvbTMyaFBE?=
 =?utf-8?B?MzgrVHJxRVloMnphZ2E2UU41TUZXaG9SKzJBcVdjYXhnNy9PNjE0WnZoc2JV?=
 =?utf-8?B?MlB2dXRhWmJnL2VyZjI5aWZ3TnJPRWtqS3dJc2oyVzhsMWt3N1VoU2NnZ21q?=
 =?utf-8?B?Ti9Jb1ZQenBRZnR6NGEwOHdGL2hjT0hQenZFeHZsYko5VHFRSDVIV2ZDelBa?=
 =?utf-8?B?dnRDQ0Z6ZjlndDVMNGt4K3Y4SG9SUVA3RnNRcVg4blRlYXJpTTN1bmplN3ZU?=
 =?utf-8?B?eVdQQUtzUUM3amxXb2l1aXk4NzVjcFZoTWs2WUtxQnJaWFdkVWk5NzE5OFZD?=
 =?utf-8?B?T2pnc3dXNVBWbW1kZEpKdnlrMENmTXJVaTJhbGNLN1Q3ZHh6SHh5UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 14d44c7c-f3c5-4f31-1055-08d9e1b35230
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2022 16:37:34.2975
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ym4rESKESMkx5OLcneGt71yUHkZ3nwUyb3k93UBpEB4m/GPHyWCG/DECgeBMYNdRl/vOia0reb0HcTYMjE22tVSf7kiwT5zH3LjYI9DbFvQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR1001MB1309
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 16:37:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56000

SGVsbG8gQnJ1Y2UsDQoNCj4gQW5vdGhlciBpcyB0byBtYWtlIHRoYXQgYXBwZW5kIGNvbmRpdGlv
bmFsIGJhc2VkIG9uIHNvbWV0aGluZyB5b3UgY2FuIHRlc3QuIGkuZS4gdGVzdCBmb3Iga2VybmVs
LWNhY2hlIGluIHRoZSBTUkNfVVJJLCBhbmQgaWYgcHJlc2VudCwgZG8gdGhlIGFwcGVuZC4gT3Ig
eW91IGNvdWxkIHRlc3QgZm9yIHRoZSBkZWZjb25maWcgaW4gdGhlIFNSQ19VUkkgYW5kIGRvbid0
IGRvIHRoZSBhcHBlbmQuIFRoZXJlIG1heSBiZSBvdGhlciBvcHRpb25zIGZvciB0aGlzLCBidXQg
d2l0aG91dCBhbGwgdGhlIGRldGFpbHMgb2YgdGhlIHJlY2lwZXMsIEkgY2FuJ3Qgc2F5IGZvciBz
dXJlLg0KPiBJIGhhdmUgYSBmZXcgdmFyaWF0aW9ucyBvZiB0aGF0IHRoZW1lIGluIG1ldGEtdmly
dHVhbGl6YXRpb24sIHNpbmNlIHRoZXJlJ3MgYSBicm9hZCByYW5nZSBvZiBrZXJuZWwgdHlwZXMg
c3VwcG9ydGVkIChodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL21ldGEtdmlydHVhbGl6YXRp
b24vdHJlZS9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0b192aXJ0dWFsaXphdGlvbi5p
bmMpLg0KDQpJIGNob3NlIHRoZSB2YXJpYW50IGJhc2VkIG9uIFNSQ19VUkksIGJ1dCB1c2VkIEtF
Uk5FTF9DT05GSUdfVVJJIGJlY2F1c2UgSSBnb3QgZW5kbGVzcyByZWN1cnNpb24gYmV0d2VlbiBT
UkNfVVJJIGFuZCBLRVJORUxfRkVBVFVSRVMgaW4gdGhlIGtlcm5lbCByZWNpcGUgSSB1c2UuDQpJ
IGVuZGVkIHVwIHdpdGggdGhpcyBmdW5jdGlvbjoNCg0KZGVmIGluc2VydF9pZl9rZXJuZWxfY2Fj
aGVfYXZhaWxhYmxlKGZlYXR1cmUsIGQpOg0KICAgIGltcG9ydCByZQ0KICAgIGlmIGQuZ2V0VmFy
KCdLRVJORUxfQ09ORklHX1VSSScpOg0KICAgICAgIGNvbmZpZ191cmkgPSBkLmdldFZhcignS0VS
TkVMX0NPTkZJR19VUkknKQ0KICAgICAgIGtlcm5lbF9jYWNoZSA9IHJlLnNlYXJjaCgia2VybmVs
LWNhY2hlIiwgY29uZmlnX3VyaSkNCiAgICAgICBpZiBrZXJuZWxfY2FjaGU6DQogICAgICAgICAg
cmV0dXJuIGZlYXR1cmUNCiAgICByZXR1cm4gIiINCg0KS0VSTkVMX0ZFQVRVUkVTOmFwcGVuZCA9
ICIke0BpbnNlcnRfaWZfa2VybmVsX2NhY2hlX2F2YWlsYWJsZSgnIGZlYXR1cmVzL292ZXJsYXlm
cy9vdmVybGF5ZnMuc2NjJywgZCl9Ig0KDQpNYW55IGdyZWV0aW5ncywNCk1hdHRoaWFzDQoNCg==

