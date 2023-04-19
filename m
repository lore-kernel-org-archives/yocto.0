Return-Path: <pelle.windestam@skf.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E256C77B73
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 08:02:58 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.96])
 by mx.groups.io with SMTP id smtpd.web10.32318.1681891368970672325
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 01:02:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@skfgroup.onmicrosoft.com header.s=selector1-skfgroup-onmicrosoft-com header.b=Oe2gcxeM;
 spf=pass (domain: skf.com, ip: 40.107.104.96, mailfrom: pelle.windestam@skf.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NZytrI07bGulgwObISXSitlSNOz+CJGj/lZt7jodZvoBuXjDcdy/NjLZ4zm7l4ClaBxuOjAaRsCzkAohI8r7T13SSYGpOFH2tbhfWpoBZF6fpn1CV1t5X7zDtt8TLNjKaTX72CsnvhCxN2MZOPXDoshCQbx9g659W2cDEOKi25Hk+BaUdhKF4PLXDBw/PMtdXxfPIqlOR2j/QmTm7tEGw2OPSV9c5uxySPHDeA8m1LU/xYjE0wZj1lkyNo6/9d6K1QdVrkXTbCCoIDK705a4hZ50EObx1ZObde4QdV7CU+oH4nIllKxEcUiCHmKAoaD6nJu+PEfbWmi8ReTOroOZ6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NpCFE4IscUE8rf83NpNdHf0YfzsLTzS/isQAS2737MA=;
 b=iQIuOgCJMRicWolvNc625oPjY/h2idZQt1xgRCV2l1ETkcPCuXluhVR3P7kkoTQ41TgR3p+6wMTGH7DxWkzjf4zanpT3Da9sMP9/U8wMANLfRj0PGunagALfCcfcMfstE5N0prBROHa4g0CDgH9cctAiH/Ke/ejFtYzvkubwbJGANQZU9sffHWIBON66zgdi3r6KyAXLX4nGyyJHXvTgTx+PI6p2/D/VKHYDmpJ2LhUGkzebPKPSqI7S1vNvLZd3NCvaXIG34aF+M5laq8WR8P8MoDI+WKlRFnsEdPoDB4V5IpM6tayjiQyFYQUzbbDcb4sLr1jTV3AXuwxuSYcsDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skf.com; dmarc=pass action=none header.from=skf.com; dkim=pass
 header.d=skf.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skfgroup.onmicrosoft.com; s=selector1-skfgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NpCFE4IscUE8rf83NpNdHf0YfzsLTzS/isQAS2737MA=;
 b=Oe2gcxeMFmTQhFBFMlDIOpAx6gVb4crOwfa6qstsSL1c5Sho3FS66NUyTWy3R/aGEvEBpnXbcphiQK5j7iEosVYZeIPbEJCRutgeF/FTewHXTpJnuM7ll3vz4oOMuDBPINZkuCLHuvkI/H5zxYKQBovpLPMHlhUKXCy7BcgVY64=
Received: from AM7PR09MB3893.eurprd09.prod.outlook.com (2603:10a6:20b:122::18)
 by AS8PR09MB4614.eurprd09.prod.outlook.com (2603:10a6:20b:23d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 08:02:46 +0000
Received: from AM7PR09MB3893.eurprd09.prod.outlook.com
 ([fe80::a13e:51a8:3446:1a70]) by AM7PR09MB3893.eurprd09.prod.outlook.com
 ([fe80::a13e:51a8:3446:1a70%8]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 08:02:46 +0000
From: Pelle Windestam <pelle.windestam@skf.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Postinstall scriptet failure
Thread-Topic: Postinstall scriptet failure
Thread-Index: AQHZcpIqoKtTNFs1wkSWoAZhSj13k68yRYGA
Date: Wed, 19 Apr 2023 08:02:46 +0000
Message-ID: <b677b5c7-c296-27d9-ffc0-180ae2346681@skf.com>
References: <f20700bd-ca0c-2908-7d44-f47ff5686d3d@skf.com>
In-Reply-To: <f20700bd-ca0c-2908-7d44-f47ff5686d3d@skf.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=skf.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM7PR09MB3893:EE_|AS8PR09MB4614:EE_
x-ms-office365-filtering-correlation-id: 7adb98c6-67a5-4e55-89f7-08db40ac7632
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 eF5Y2JQ/Vxv48ZnSjzWoso45ZxffcBbWT+RTfhF9jWbynVSjiSf+DxTxzYpPrjcfqQIVf/aFUt8k1FDm494Kbz9MZX8Na/av2vXq9htkqyaPBpRoCE0rJYFmSmSY6EXkK908dUOLhorFl+AWsm1W9f5eJmL0H+tOvJtZsRJ8nbHwIr6Va1x7MUlK+MQR1USkSjYkoIrlR2sCTm2qKrQPaxD/QoDqXX63s60r5uS5Jv9PC5k9ZRIzdeVo7fbRbJQZJCdR8pnW0NyiTGXM+jtL1WNehXkJDhsYndFvuBtJLUOp8UjcNHV1xuc5iv1KxGWKFlc2/IdDRQ+9mb0ja4Kt56DJuDWhaeCVM+AXuPdB5FzLIhB5VFEcB38gEw+9sQ6lUi1cxYCjGjRpz2S6SCPEJ3r5aO5QXECL8WRXd4eVTcAUdPjwmuXDIznTVKc9OIHNm89HUrDjjZEO40wv7tZ7iqFI7HTQer2e8dOOmOcU2XhEY1dTt5YMmyG490KX9qObaplzONp36zRkT+GcerAjiy3oMjTWa6Qkme2kYIUNHemr+4GSpn4wqVz0QXW/VEM05R1VQeKdi/TBjXZCJF+Qx/C5kuDDQpHMpyJmpASCBLSm3PKAS/NJ8TYyIHTQQugZErflhnBNBw5dGUBjXGaBLA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR09MB3893.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199021)(31696002)(66899021)(478600001)(38100700002)(8936002)(8676002)(38070700005)(2906002)(36756003)(5660300002)(66946007)(7116003)(44832011)(76116006)(6916009)(66556008)(66446008)(66476007)(316002)(64756008)(91956017)(41300700001)(122000001)(186003)(6506007)(15974865002)(26005)(6512007)(3480700007)(31686004)(2616005)(83380400001)(86362001)(71200400001)(6486002)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?K2w4QjBUYVRxdzRCd3ZKQVdzcXRyTlIzd3dCeGZtTXpyWUdTTTh2YnMwOEk5?=
 =?utf-8?B?ZkFlVURGUUU3OElGRk94cTNSWTJaeHc5WnF3Znp6NmYzSWU3UU5HYy9yekt4?=
 =?utf-8?B?N1JrclZpR2k3QmE1NlNJd0NPUWN3QmlZczUyWFJnaVdjWVRuVjBSSVE1b3dK?=
 =?utf-8?B?ZlRHSSt2a0pSbURJSlVXUEJqZmw3NmZUa054K0VIVWhHVFRIMGI4UWJuQldG?=
 =?utf-8?B?dkM4dnJrS0hWYStzNG5SRjUxZDFMbHVybzBvdUR1aEZjQ3RuMGNENlNwK1Fw?=
 =?utf-8?B?LzBvelpnZFJJWlpKL1VnNHlUc1lUN1ZmS2Z3STNTSnZ3ZGZHVUhtc2RacFI3?=
 =?utf-8?B?elJENiszL1hqR05hR242SmRHRWIwaTFzWGlBNXg5dDdVdlM3TFArRVRtQmxu?=
 =?utf-8?B?UC9PRGZ4OGZLNlVCQXRTNUtWWlo3RDMvdHM0K3kyckFYSjdVVXR0YjBKVW1I?=
 =?utf-8?B?TjlzcFVZZXgxMTYxYWFoc1VBeHZOL3RLaXZiMk9TWGlZeWpseXFhbzRLM0VB?=
 =?utf-8?B?OWcwOEJBYnowU0R1aFQvTkxtU25RN2taeDMvQ3h2bVN5aldrWjg3dWF4Z1BD?=
 =?utf-8?B?Z1owWU5RQnhRTXRpUENocHpXcjNTazFTVEprVHVYbHhDdnNvMEtYQmZHY0wy?=
 =?utf-8?B?bGRzVGQ2V2R3WGphZEdvaFlRK2VPWGNNem5ObHFrZXpNMHA2ZWsyOXdiV3Bv?=
 =?utf-8?B?QXR2MElhT1pNU1grMUlaMm1hRS9RMzRodlEreFBrM2R6UnZkUWtQU2Rab0J6?=
 =?utf-8?B?cW9iazlKUXpxTkxTNTB0V3FJaHFWR2ZtcXljRTVycDBoUjZvSE9zbnBxOUhL?=
 =?utf-8?B?MXVOTHplbUVyNVA3cWtPL2dxOG5hSVRWcUVDVVJsa3B5T0VvUkw3MVpMbDRi?=
 =?utf-8?B?V2NhczBOS1MydVNmNW9uWW9mbjYrSkNLMi9ZQlRTOXF1ZC9EREVjaXBFbTJz?=
 =?utf-8?B?T2RIMWJsVCttSkdqSnM1SFVZNnRQYmRLZ2g0ZERuQVB4K2tsRlZNeHZybmdr?=
 =?utf-8?B?U2gvb01kSGNId0NxdTU2bDR3Z3UrMWQ5RnlZOGRpeHJhT2FOdnIwOGlodmtS?=
 =?utf-8?B?ZEppUk1CY0pkbjJtdXA5V0VhdmpWOXh5QUJyWHV4VjkxaWxPTVJQTnlMdCs5?=
 =?utf-8?B?YXkrRUlqZmhXbXh4Q1duOURYYkVEVUN2VklsTkNZK3hjSlJHeVA2dXg5T1Y3?=
 =?utf-8?B?ZmpmczVrMncrQ2VBTDVzWHJmUURjdDlBd1lxdlhIMzMwWHRTeWw0YUwydlVF?=
 =?utf-8?B?NkcxelhUelR5bWU0YnhxdHpoZE50MUNWOFhLVUV6WmRLV0JSaVpFYktDRlA0?=
 =?utf-8?B?QjEyT3RIRmh2VC8zQjQyMU9rWS9pQU1LYnpISG9qY2dlTWoyWnRIZkRMSlg0?=
 =?utf-8?B?RGV2ZC85UEFKMkUvUGhCV3c0RkRtSlk2djREOEsxdEtXNXZxL2MxNEhLbGN0?=
 =?utf-8?B?K0FENnpDR1I3bUpWbUM2TnR4d3oxcExmVHAxdjJvVTlzWGkydUY1aG9WbENR?=
 =?utf-8?B?K0V5WGU4RENqcUpJUE9QcWFkS1p6TEY4a1k3NU51bzdsd3RxK3hlOEltTDdC?=
 =?utf-8?B?ZHM4Wlc1MDVVaGphU0xDVGdwaEw4b1ppTGdNMklWcnhqWGd2R0hZdjluMHo4?=
 =?utf-8?B?eFRqKzVEaDVBK0ZpR2t2NzljZWQwMzhvMldjWTZyMm52UlRHRXprdXZnWHV5?=
 =?utf-8?B?WTJGb1hPQzNZdDBwb3VHcEdkZnVMRDFscEtIekExblUxS0o4TFhuci9aUWtO?=
 =?utf-8?B?c3NLYjRRMTl4NkhUWnYyZ1F3bXVtUGJXUUsrR2hVSmxNYis4WjNKYlRyVTc3?=
 =?utf-8?B?dm40OGoxT01GMENTT2xjZ21rckMwc3BUc2xVeFFGOXJweVYzVUkzQXZtOUNP?=
 =?utf-8?B?YVNKZzMxL25FRVdlOUhJZUxOZVNoTTU5K2w4WnlMSk1VVkIweHNDSkdnUHha?=
 =?utf-8?B?ZWtYSDZvVmpuZlh2Nk1sakNndXFvUTdIdGUvWmJBNnYvNFZwWHlFS1d5NU02?=
 =?utf-8?B?L0NtY2dGdUIwSWZnL1hianM2djQwZENJUndROEc5STZtTFJGcGJjajZqRm9u?=
 =?utf-8?B?ZzYxSXc0VzIwUnU0WmNiTWNMYWd4ekMwbmFrT1dVWlc4dGQ2RjlVT3Rkcnky?=
 =?utf-8?B?TVl2ZE1jUHNUSGdTRXE1TXAwWUtBQTYxZnVkdXpuSmJmWURTOUJFckhzNjRB?=
 =?utf-8?B?b3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A0D2B58AD2AF0D44974CBD27036F1A44@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: SKF.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR09MB3893.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7adb98c6-67a5-4e55-89f7-08db40ac7632
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2023 08:02:46.4513
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 41875f2b-33e8-4670-92a8-f643afbb243a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GlYViZm1X9Ij7Ktf4pLKuXkCVxQ/RvLw3gsdWLWzLAr5rw5ffLd6efw67AzzTkExARXCdsX2fgWe5MmXASk1nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR09MB4614
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 08:02:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59725

SGVsbG8gZXZlcnlvbmUsDQoNCkknbSBoYXZpbmcgYW4gaXNzdWUgd2l0aCBhIHBvc3RpbnN0YWxs
IHNjcmlwdGxldCBmYWlsaW5nIGZvciBhIHBhY2thZ2UNCnRoYXQgSSBhbSB0cnlpbmcgdG8gYWRk
IHRvIG15IFlvY3RvIGltYWdlLiBJbml0aWFsbHkgSSBoYWQgYSBzaW1wbGUNCkNNYWtlIEMrKyBh
cHBsaWNhdGlvbiB0aGF0IGluc3RhbGxzIGl0c2VsZiAoYSBzaW5nbGUgYmluYXJ5IGZpbGUpLCBh
DQpzeXN0ZW1kIHNlcnZpY2UgYW5kIGEgZC1idXMgaW50ZXJmYWNlIGZpbGUuIFRoaXMgd2FzIGNh
dXNpbmcgbm8gaXNzdWVzLg0KTGV0cyBjYWxsIHRoaXMgYXBwbGljYXRpb24gQS4gVGhlbiBJIHdh
bnRlZCB0byBjcmVhdGUgYSBzZWNvbmQNCmFwcGxpY2F0aW9uIGJhc2VkIG9uIHRoaXMsIHNvIEkg
Y29waWVkIGV2ZXJ5dGhpbmcgZnJvbSBhcHBsaWNhdGlvbiBBIHRvDQphcHBsaWNhdGlvbiBCLCBy
ZXBsYWNpbmcgdGhlIG5hbWUgQSB3aXRoIEIgZXZlcnl3aGVyZS4gV2hlbiBJIHRyeSB0byBhZGQN
CnRoaXMgc2Vjb25kIGFwcGxpY2F0aW9uIEIgdG8gbXkgaW1hZ2UgSSBnZXQgdGhpcyBlcnJvcjoN
Cg0KRVJST1I6IGRvX3Jvb3RmczogUG9zdGluc3RhbGwgc2NyaXB0bGV0cyBvZiBbJ0InXSBoYXZl
IGZhaWxlZC4gSWYgdGhlDQppbnRlbnRpb24gaXMgdG8gZGVmZXIgdGhlbSB0byBmaXJzdCBib290
LA0KdGhlbiBwbGVhc2UgcGxhY2UgdGhlbSBpbnRvIHBrZ19wb3N0aW5zdF9vbnRhcmdldF8ke1BO
fSAoKS4NCkRlZmVycmluZyB0byBmaXJzdCBib290IHZpYSAnZXhpdCAxJyBpcyBubyBsb25nZXIg
c3VwcG9ydGVkLg0KDQpCeSBsb29raW5nIGF0IHRoZSBwb3N0aW5zdGFsbCBzY3JpcHRsZXQgKHdo
aWNoIEkgc3VwcG9zZSBjb21lcyBmcm9tDQppbmhlcml0aW5nIHRoZSBzeXN0ZW1kIGNsYXNzKSBJ
IGFzc3VtZSB0aGF0IHRoZSBjb21tYW5kOg0Kc3lzdGVtY3RsICR7T1BUU30gZW5hYmxlICIkc2Vy
dmljZSINCmZvciBzb21lIHJlYXNvbiBmYWlscy4NCg0KSSB0aG91Z2h0IEkgaGFkIG1pc3NlZCBy
ZXBsYWNpbmcgdGhlIG5hbWUgQSB3aXRoIEIgc29tZXdoZXJlLCBidXQgdGhlIGluDQp0aGUgcG9z
dGluc3Qgc2NyaXB0IHRoZSBjb3JyZWN0IG5hbWUgKEIpIGlzIHVzZWQuDQoNCkFueSBpZGVhcz8g
SSBkbyBub3Qga25vdyB3aGVyZSB0byBjb250aW51ZSB0cm91Ymxlc2hvb3RpbmcgZnJvbSBoZXJl
LiBJcw0KaXQgcG9zc2libGUgdG8gImRlYnVnIiB0aGUgcG9zdGluc3RhbGwgc2NyaXB0bGV0IGlu
IHRoZSBlbnZpcm9ubWVudCB0aGF0DQppdCBpcyBydW5uaW5nIGluPw0KDQovL1BlbGxlDQpUaGUg
aW5mb3JtYXRpb24gY29udGFpbmVkIGluIHRoaXMgZW1haWwgaXMgaW50ZW5kZWQgc29sZWx5IGZv
ciB0aGUgdXNlIG9mIHRoZSBpbmRpdmlkdWFsIG9yIGVudGl0eSB0byB3aG9tIGl0IGlzIGFkZHJl
c3NlZCBhbmQgbWF5IGNvbnRhaW4gaW5mb3JtYXRpb24gdGhhdCBpcyBjb25maWRlbnRpYWwuIFBs
ZWFzZSBkZWxldGUgYW5kIG5vdGlmeSB0aGUgc2VuZGVyIGlmIHJlY2VpdmVkIGluIGVycm9yLiBT
S0YgZG9lcyBub3QgYWNjZXB0IGxpYWJpbGl0eSBmb3IgYW55IGRhbWFnZSBhcmlzaW5nIGZyb20g
dGhpcyBlbWFpbC4NCg0KRm9yIGluZm9ybWF0aW9uIG9uIFNLRuKAmXMgcHJvY2Vzc2luZyBvZiB5
b3VyIHBlcnNvbmFsIGRhdGEsIHBsZWFzZSB2aXNpdCBTS0bigJlzIFByaXZhY3kgUG9saWN5IGF2
YWlsYWJsZSB2aWEgd3d3LnNrZi5jb208aHR0cHM6Ly93d3cuc2tmLmNvbS91cy9mb290ZXIvcHJp
dmFjeS1wb2xpY3k+Lg0K

