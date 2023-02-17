Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17C67C636D7
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 19:02:25 +0000 (UTC)
Received: from APC01-PSA-obe.outbound.protection.outlook.com (APC01-PSA-obe.outbound.protection.outlook.com [40.107.255.74])
 by mx.groups.io with SMTP id smtpd.web10.3068.1676660530367641099
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 11:02:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=MIKqcfD1;
 spf=pass (domain: advantech.cz, ip: 40.107.255.74, mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9MM7zZGKsPT92PgDSKbtuGuYpi8G0gglaXbPK6iP3L7QsJDo1F8hCD+EVPz3WzrNFbvUlCSJrdxtZ42nRPZNwiOvS+OcrQncvVob/d+1DjUQq0ZB6bcvcPt0idL1TOpnxjU6zTRpnLGG12asb+iNLI//sGc8cD1iUEaNv8cnwwfDh2xsHd2EvB9v7fDrBb0lSJexmly5IDTOOHHRlbrby+c8SpekmLn+Xs+d2uqFKGb1+mEGuz7I27u8OhysxWc/tOUtb1cMhACvigHlZlefvvaIjOT0ebBFGZ17HenvIea7ZFiIdVKmvJiAo3ql87EhjlhljkKnh8FBXGvOD16kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/LQwEq4+YGxI7TV700VRVSMrE7AdiAyQ57xdONgPU/g=;
 b=Uc8sB7uXwQyCTxyZXlJvDy8fXSs2oIvEmQ7+Km1TJVWzMT4snEhnynlFdWLBolLzOMpqAw8SzL43HPI8CA2M+RDH0FuEPJ2DwM8vnqalFBvRaE7DdL+xt+Yq1TjffV/DcxPzfUPKLuf/3cW9EPy/MnSoElpvd2CoQ6jmJAA3vKpPR3VJNdJsv4reFi/ACiXblZpMtZA7OZOuafKyVVr4+U89vb5m7uhEQgRHuf9NL0UVI1q7+8hDj/BRLTPBUXtViVNAAa86ZkuejecVHhxQcu+h1PpzHp8Bt/+87Lz0FRbGdE1hdzQjeW2cHb5k96BmzFqWAff05s3Qf7LUQ856IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/LQwEq4+YGxI7TV700VRVSMrE7AdiAyQ57xdONgPU/g=;
 b=MIKqcfD1WFgRu3o2GntlHT9f96e50jEv1nSAZEmpzGNex4pPg5fuSiSnkeoIoA63k/5RfBcP2PItPpKbEdqMw7fzb7+H6GQY8Cp4X0Wn0oItMf17Ltt71yLUtysQ6l3hfBhyZ8TEk4seKnNDLGYzD1gTbGdbFzIcsY2aZff0eRPr+Ko3BYU+/DHfKhXzDGRQxDvSp3eHn1KWSH627wD2ZG6Y52ZReiefpDZGxGUrZX8hNtCCmRVnl9xKtj+gTDDE6GJebQjLwWBfFBp1omahK4aLm2yVcwtMYbyOf5/Cgx5Zfos88UI0ojcs7yavD3enHoiEdFE9N3BL4XaGRuMJ9A==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by PSAPR02MB5128.apcprd02.prod.outlook.com (2603:1096:301:8e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.17; Fri, 17 Feb
 2023 19:02:05 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::e2f4:d03b:1736:e417]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::e2f4:d03b:1736:e417%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 19:02:05 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] tpm2-tss: upgrade 3.2.0 -> 4.0.1
Thread-Topic: [meta-security][PATCH] tpm2-tss: upgrade 3.2.0 -> 4.0.1
Thread-Index: AdlDAe8E5qn+5u8KQEKhiKEZ3CNQbg==
Date: Fri, 17 Feb 2023 19:02:04 +0000
Message-ID: 
 <TY2PR02MB36783697BB0D07ECA91365F581A19@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY2PR02MB3678:EE_|PSAPR02MB5128:EE_
x-ms-office365-filtering-correlation-id: 8ff901ed-f739-4f14-66d6-08db1119758b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ggvVAgbaqweW64a+G0OWFHLFDaV6CHxviqi1m6+eLg7bbKCJmPU4BSNUcKCiEMWurnCK8xHhP+Y2Rsv2hnPY0AohP5BUzlSvgqilZWhOcdmFPUzVwvHkJ1K4N1iostspJ5fC0GS3NgnnA8hShH0hZHoYP2XXykS5SoMWLYpv7JQ0nqvVNVVqU2i0/wr0YiQNrrAMuYBv7utxxeH9E+37sRvZ8NOywc+r2sN75p26HU2sZ3UW6J9Asi8qouD4f/V1+HoKKG29dWJnthaZqAMc07592lwWx4SRtdI8BnMOib4w3jJa16ig3azedbQXp1xHIFvm8ZHk4DgcLZUGaJjNIuKw0grALDWvYyQSDdafhMPzSQCd1hc8Tf9VUr/rFA/tJxVRKhczF6HLGCsx3F0ovpBBhwn3R3xiOS/QkAqxi9+OD59sPr8P1uV7JovOm3aU0OLKuiW6ydQxP8OxxHMN4WfwRHSxM10nW0q8maNYRNGMfOek72Nk8NuY3raeLMtIY0vzzN0wVmxcJZlmZ5GycS6eN143ra2KnGwGmumm7KefTTp/dIUBXdG/2WkRIerzZC1yXUiKYeylaHNXYmMyAqkxJD6Zx1gwPIMRr98vv3W7fNH0fRzWLQ573b8W08rZM3he2psGFTdH2hmj5CTy0XujfFLay5As85BrQpOvOa6TPHvoj73DgwDBgdcHn/3e
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(451199018)(186003)(26005)(9686003)(316002)(5660300002)(38070700005)(122000001)(86362001)(55016003)(478600001)(44832011)(38100700002)(41300700001)(6916009)(76116006)(66946007)(64756008)(66556008)(8676002)(66476007)(66446008)(52536014)(33656002)(8936002)(6506007)(71200400001)(83380400001)(2906002)(966005)(7696005)(84970400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?alExVmdHdkNuTWdia1ZGNDdzUVl2YWlBN0ZTRG5hTGtJK21rMnZrRHF5UTBC?=
 =?utf-8?B?WUNIRDNWVmNxSllVSko4TTBQK1NYL3gzWVFGZnpSRWh1OXpXOUFZUi94WUhv?=
 =?utf-8?B?OXN2bytINHVyeUUzb1J2QnpqeXZQTVVmQVVKUUhmOUR0cmlqRFdDWHF4UUxR?=
 =?utf-8?B?Ym9vcUFMbVM0SVJUTlRNUGlPOFYrTVVId0RlcUJaOVIxWmp0UFhHaitvbTlv?=
 =?utf-8?B?RmVpNDJ1c0hTT0VsdVBRaVl3UVM3cUlOZGMvQmNlallKRHpWUVFvTEUvK1p6?=
 =?utf-8?B?TEx1ZVYvQnRRcitjbVZRYzlOcTlEN2tYSlZnczJoVE5yQ3ZBM3JXc0V5Sm5L?=
 =?utf-8?B?T0NqaDdNVkQyVVkrZUU4bWxncXhjY05Fcy9EMzdWQWErU0Q4TmJtQ2oyMHdm?=
 =?utf-8?B?aE5VRUFMU3p2WlFuVVIvRWpPdHVlS2YwUFRsWUZYSml4Nlp3Ui9SREQwVEJV?=
 =?utf-8?B?eSttNXNac1d3SUM2ak0wRzJOemsxSUlydGlndVFWL2ppT2cxN3hPRlh1TUNI?=
 =?utf-8?B?KzI0cXNVenpNejEzRUU1dE9valFRRk1GN1ZpRnhnWjFqN2h0MUJJR1d5Q3hJ?=
 =?utf-8?B?RzErYUNCZmFHK05ZM3Z2Y2xYNTJJOVhkak91eG1ubnNhS1VHZjBzbExuRjRB?=
 =?utf-8?B?Wk1FR20xZzhISEtxdXorQnQxeUdJelhUSC80dHFIbjhQWCtrSVpQMFNBZ2E3?=
 =?utf-8?B?RjdRRi9hZnUrK3JQajNDUDRMei9UaFlzS3JNQjVyN1hBbDJwb0RwWTZKV284?=
 =?utf-8?B?MUNlU0YzbjVZc1Zudmt2NVZuNWQrQXRQMHVFWUZoTWd4dmtUOWVDQUdMUzFD?=
 =?utf-8?B?dFBCYUxVeTJkWm8wMmthSlFWK0tyWERrUldzdkdFRjNWNGVUMlNiYTYwdnpO?=
 =?utf-8?B?OGNuaFZSNGpLQWhwbll6TUNta3M3RjRob2NkZUM3dVdlNmNXbEJRUjlGVTV5?=
 =?utf-8?B?Q1FuWkp6QllJRlFOOXNHdTZtTDRKWmpmaGZjWGU1Ky9lcU80TG1PVENHMTYw?=
 =?utf-8?B?NTBQYktxYlhaSUhaVm5sdk9UU0Q2WWhuRnBka1hPM2RrQXFBVUZiT01FRGJO?=
 =?utf-8?B?Zm5NWGFXNmxpTlkrdk4rZXR1TEpnc3ViNUJ4N1dJTmZNcXRUclgvaVpCNVcw?=
 =?utf-8?B?Q3dBLzc3RUJjNmNTMHV3OFAvdXVEalI4aTJzSHdjR1NWRzQzbjQ3SjRpaUtK?=
 =?utf-8?B?SkgvYnFNYUtHZ1NiNGVZcHZoVTlHNjFnZzhpMDhwenA3SGdINFFaU2RyZ3Jo?=
 =?utf-8?B?MGNtdzJXc0U0YmQxblpuZldDVjV2WTZDb1B2VDd5YklXOUlzRHVyNnBRMWZn?=
 =?utf-8?B?bVFTK3ZpUFVOakxKak5qNmFrcml2RDhzd1duMzZlL1BKeFVIa3U1NjIzZkJa?=
 =?utf-8?B?a1RwQjFqOHdoU1d2ODh6ekVRd3hJQzZUL2hETFh3cGcxMm5iK2k4SjU5VzQv?=
 =?utf-8?B?WTRnNmZwRllrbFpsV0dLb0Z0VzI3VGhFbVA5NkJVNC8wb1ZoVTJJNlNpMEJw?=
 =?utf-8?B?WkFKVjhxbXlxZUJpSk5BcDl4UnI3YzIzUjI3d1JSbEdZSk5pM2Y0YzFMZWpn?=
 =?utf-8?B?Vy9mOWhJUW9Ha2N2bmNhTWlRazF6SHpwL3JrVlR1QS9LakxQcGdyV2ZUSGlN?=
 =?utf-8?B?dzM5bEJNNUtGSWZCem1kcmEvUmNobm14UmJLbm9LWUZ4c25yK0gvSFAxcE9w?=
 =?utf-8?B?NFFnSWxyTURpdUlGUHo5N0RXNnhWOG14RWhzRDYyeXVoUmtuZ0I5S2RCTUFQ?=
 =?utf-8?B?MVh0aEZoOExXU0N1K1c1Z2U4YWdBbTMzRlRQUy8rYzVWUjczQlA2bk9KbjlP?=
 =?utf-8?B?UWR1Skoyd3JpTldneldJQmFiVWgwendyR2ovL1FUN0Uvajd1c1UzM1Bxc3g4?=
 =?utf-8?B?R1o2Mm1ROGh1RCtmZ3p3TFNweEZpMEpYbHRWNnl0Y3EzbnZ0VytsbWNHYUhs?=
 =?utf-8?B?d0Y1SmYzL3F1Y2REZjJtSDVTMUNxYm41OU5MK3JEODlOQStrZG1ObGdzbG5I?=
 =?utf-8?B?M1dXMmJ2elRFbWZZdVRZVTJraER0bWJvUXhjS3I4bENFZjNUUXFnVXNVNHFw?=
 =?utf-8?B?MXF2bzZSZW1tSW95S05SY01DK3FubHk0bS8rWUc5MDhVVTlFS2p5TEFJNzRO?=
 =?utf-8?B?S2pnckE5bFNYYmthRDdieFlpTU1RcDJVY0Fwa0d0bmNyVmsrTlh2OUMweWxj?=
 =?utf-8?B?cWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff901ed-f739-4f14-66d6-08db1119758b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2023 19:02:04.6669
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8+1tb1cpiPcBMI8f5NCbCXvXBYrzo31Eb2Ebc43tNJU1HBB8obDya6Z9t08O1zgMjqylr7P7P2sbS9ti41MfjpewQ87GMpLOGuR5TtGDjUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PSAPR02MB5128
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 19:02:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59244

Q2hhbmdlbG9nOg0KaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvdHBtMi10c3MvYmxv
Yi80LjAuMS9DSEFOR0VMT0cubWQNCg0KU2lnbmVkLW9mZi1ieTogUGV0ciBHb3R0aGFyZCA8cGV0
ci5nb3R0aGFyZEBhZHZhbnRlY2guY3o+DQotLS0NCiAuLi4vdHBtMi10c3MvdHBtMi10c3MvZml4
dXBfaG9zdHRvb2xzLnBhdGNoICAgICAgICAgIHwgMTAgKysrKystLS0tLQ0KIC4uLi97dHBtMi10
c3NfMy4yLjAuYmIgPT4gdHBtMi10c3NfNC4wLjEuYmJ9ICAgICAgICAgfCAxMiArKysrLS0tLS0t
LS0NCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQog
cmVuYW1lIG1ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLXRzcy97dHBtMi10c3NfMy4yLjAuYmIg
PT4gdHBtMi10c3NfNC4wLjEuYmJ9ICg5MCUpDQoNCmRpZmYgLS1naXQgYS9tZXRhLXRwbS9yZWNp
cGVzLXRwbTIvdHBtMi10c3MvdHBtMi10c3MvZml4dXBfaG9zdHRvb2xzLnBhdGNoIGIvbWV0YS10
cG0vcmVjaXBlcy10cG0yL3RwbTItdHNzL3RwbTItdHNzL2ZpeHVwX2hvc3R0b29scy5wYXRjaA0K
aW5kZXggNDUwNjk4Zi4uMDRhMjk2NCAxMDA2NDQNCi0tLSBhL21ldGEtdHBtL3JlY2lwZXMtdHBt
Mi90cG0yLXRzcy90cG0yLXRzcy9maXh1cF9ob3N0dG9vbHMucGF0Y2gNCisrKyBiL21ldGEtdHBt
L3JlY2lwZXMtdHBtMi90cG0yLXRzcy90cG0yLXRzcy9maXh1cF9ob3N0dG9vbHMucGF0Y2gNCkBA
IC01LDE2ICs1LDE2IEBAIE5vdCBhcHByb3ByaWF0ZSBmb3IgY3Jvc3MgYnVpbGQgZW52Lg0KIFVw
c3RyZWFtLVN0YXR1czogT0UgW2luYXBwcm9wcmlhdGVdDQogU2lnbmVkLW9mZi1ieTogQXJtaW4g
S3VzdGVyIDxha3VzdGVyODA4QGdtYWlsLmNvbT4NCiANCi1JbmRleDogdHBtMi10c3MtMy4yLjAv
Y29uZmlndXJlLmFjDQorSW5kZXg6IHRwbTItdHNzLTQuMC4xL2NvbmZpZ3VyZS5hYw0KID09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0NCi0tLS0gdHBtMi10c3MtMy4yLjAub3JpZy9jb25maWd1cmUuYWMNCi0rKysgdHBtMi10
c3MtMy4yLjAvY29uZmlndXJlLmFjDQotQEAgLTQ4OCwxNyArNDg4LDYgQEANCistLS0gdHBtMi10
c3MtNC4wLjEub3JpZy9jb25maWd1cmUuYWMNCisrKysgdHBtMi10c3MtNC4wLjEvY29uZmlndXJl
LmFjDQorQEAgLTU1NCwxNyArNTU0LDYgQEAgQU1fQ09ORElUSU9OQUwoU1lTRF9TWVNVU0VSUywg
dGVzdCAieCRzeXN0ZW1kX3N5c3VzZXJzIiA9ICJ4eWVzIikNCiAgQUNfQ0hFQ0tfUFJPRyhzeXN0
ZW1kX3RtcGZpbGVzLCBzeXN0ZW1kLXRtcGZpbGVzLCB5ZXMpDQogIEFNX0NPTkRJVElPTkFMKFNZ
U0RfVE1QRklMRVMsIHRlc3QgIngkc3lzdGVtZF90bXBmaWxlcyIgPSAieHllcyIpDQogIA0KIC0j
IENoZWNrIGFsbCB0b29scyB1c2VkIGJ5IG1ha2UgaW5zdGFsbA0KLS1BU19JRihbdGVzdCAiJEhP
U1RPUyIgPSAiTGludXgiXSwNCistQVNfSUYoW3Rlc3QgIiRIT1NUT1MiID0gIkxpbnV4IiAmJiB0
ZXN0ICJ4JHN5c3RlbWRfc3lzdXNlcnMiICE9ICJ4eWVzIl0sDQogLSAgICBbIEFDX0NIRUNLX1BS
T0codXNlcmFkZCwgdXNlcmFkZCwgeWVzKQ0KIC0gICAgICBBQ19DSEVDS19QUk9HKGdyb3VwYWRk
LCBncm91cGFkZCwgeWVzKQ0KIC0gICAgICBBQ19DSEVDS19QUk9HKGFkZHVzZXIsIGFkZHVzZXIs
IHllcykNCmRpZmYgLS1naXQgYS9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10c3MvdHBtMi10
c3NfMy4yLjAuYmIgYi9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10c3MvdHBtMi10c3NfNC4w
LjEuYmINCnNpbWlsYXJpdHkgaW5kZXggOTAlDQpyZW5hbWUgZnJvbSBtZXRhLXRwbS9yZWNpcGVz
LXRwbTIvdHBtMi10c3MvdHBtMi10c3NfMy4yLjAuYmINCnJlbmFtZSB0byBtZXRhLXRwbS9yZWNp
cGVzLXRwbTIvdHBtMi10c3MvdHBtMi10c3NfNC4wLjEuYmINCmluZGV4IDE1NTYyNzMuLjY1N2Ey
Y2QgMTAwNjQ0DQotLS0gYS9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10c3MvdHBtMi10c3Nf
My4yLjAuYmINCisrKyBiL21ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLXRzcy90cG0yLXRzc180
LjAuMS5iYg0KQEAgLTEwLDE1ICsxMCwxNiBAQCBTUkNfVVJJID0gImh0dHBzOi8vZ2l0aHViLmNv
bS90cG0yLXNvZnR3YXJlLyR7QlBOfS9yZWxlYXNlcy9kb3dubG9hZC8ke1BWfS8ke0JQTg0KICAg
ICAgICAgICAgZmlsZTovL2ZpeHVwX2hvc3R0b29scy5wYXRjaCBcDQogICAgICAgICAgICAiDQog
DQotU1JDX1VSSVtzaGEyNTZzdW1dID0gIjQ4MzA1ZTQxNDRkY2Y2ZDEwZjNiMjViN2JjY2YwMTg5
ZmQyZDExODZmZWFmZDhjZDY4YzZiMTdlY2YwZDc5MTIiDQorU1JDX1VSSVtzaGEyNTZzdW1dID0g
IjUzMmE3MDEzMzkxMGI2YmQ4NDIyODk5MTViM2Y5NDIzYzAyMDVjMGVhMDA5ZDY1Mjk0Y2ExOGE3
NDA4N2M5NTAiDQogDQogVVBTVFJFQU1fQ0hFQ0tfVVJJID0gImh0dHBzOi8vZ2l0aHViLmNvbS90
cG0yLXNvZnR3YXJlLyR7QlBOfS9yZWxlYXNlcyINCiANCiBpbmhlcml0IGF1dG90b29scyBwa2dj
b25maWcgc3lzdGVtZCB1c2VyYWRkDQogDQotUEFDS0FHRUNPTkZJRyA/Pz0gIiINCitQQUNLQUdF
Q09ORklHID8/PSAidmVuZG9yIg0KIFBBQ0tBR0VDT05GSUdbb3h5Z2VuXSA9ICIsLS1kaXNhYmxl
LWRveHlnZW4tZG9jLCAiDQotUEFDS0FHRUNPTkZJR1tmYXBpXSA9ICItLWVuYWJsZS1mYXBpLC0t
ZGlzYWJsZS1mYXBpLGN1cmwganNvbi1jICINCitQQUNLQUdFQ09ORklHW2ZhcGldID0gIi0tZW5h
YmxlLWZhcGksLS1kaXNhYmxlLWZhcGksY3VybCBqc29uLWMgdXRpbC1saW51eC1saWJ1dWlkICIN
CitQQUNLQUdFQ09ORklHW3BvbGljeV0gPSAiLS1lbmFibGUtcG9saWN5LC0tZGlzYWJsZS1wb2xp
Y3ksanNvbi1jIHV0aWwtbGludXgtbGlidXVpZCAiDQogDQogRVhUUkFfT0VDT05GICs9ICItLWVu
YWJsZS1zdGF0aWMgLS13aXRoLXVkZXZydWxlc2Rpcj0ke25vbmFyY2hfYmFzZV9saWJkaXJ9L3Vk
ZXYvcnVsZXMuZC8iDQogRVhUUkFfT0VDT05GICs9ICItLXJ1bnN0YXRlZGlyPS9ydW4iDQpAQCAt
MjgsMTEgKzI5LDYgQEAgVVNFUkFERF9QQUNLQUdFUyA9ICIke1BOfSINCiBHUk9VUEFERF9QQVJB
TToke1BOfSA9ICItLXN5c3RlbSB0c3MiDQogVVNFUkFERF9QQVJBTToke1BOfSA9ICItLXN5c3Rl
bSAtTSAtZCAvdmFyL2xpYi90cG0gLXMgL2Jpbi9mYWxzZSAtZyB0c3MgdHNzIg0KIA0KLWRvX2Nv
bmZpZ3VyZTpwcmVwZW5kKCkgew0KLSAgICAjIGRvIG5vdCBleHRyYWN0IHRoZSB2ZXJzaW9uIG51
bWJlciBmcm9tIGdpdA0KLSAgICBzZWQgLWkgLWUgJ3MvbTRfZXN5c2NtZF9zKFxbZ2l0IGRlc2Ny
aWJlIC0tdGFncyAtLWFsd2F5cyAtLWRpcnR5XF0pLyR7UFZ9LycgJHtTfS9jb25maWd1cmUuYWMN
Ci19DQotDQogZG9faW5zdGFsbDphcHBlbmQoKSB7DQogICAgICMgUmVtb3ZlIC9ydW4gYXMgaXQg
aXMgY3JlYXRlZCBvbiBzdGFydHVwDQogICAgIHJtIC1yZiAke0R9L3J1bg0KLS0gDQoyLjM0LjEN
Cg0K

