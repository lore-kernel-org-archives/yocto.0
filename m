Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com [192.54.144.131])
 by mx.groups.io with SMTP id smtpd.web09.270.1615999206367661248
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 09:40:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=uDgWitoE;
 spf=pass (domain: thalesgroup.com, ip: 192.54.144.131, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F0wqm4TZvz454R
	for <yocto@lists.yoctoproject.org>; Wed, 17 Mar 2021 17:40:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1615999204;
	bh=msQvCFjKoSGCg4vsoyJPgRXAKGJqtAMl4UwyHgm0+Zs=;
	h=From:To:Subject:Date:Message-ID:Content-Transfer-Encoding:
	 MIME-Version:From;
	b=uDgWitoEJt1kHHWWgQaVSGEnMSpxnvELR3ATfn2Zihq0FpYc5KO3ZmMbXihHZCo0V
	 w7dk0QECgf3a88NRQMRY2eDtL0ntyBcKd0H+ZdL1Oii01aDv/hzXXS19erBdKX4rlE
	 XruT+QxcGfqKey8HKljqi4OHbtPpZlR+bbYwVV1MOWGHo5VU6TbhGG4Ucqy8EwCz44
	 Ylsg0qSaV8mRKkP/i/4p5E76djInkdYckFL76KDbqTTbi/rZe2CIXURn7CRPmBO1l5
	 8APj6lZnmyjlw2Jfu186dOe7YY+ou35o5FQm1TCdagZkcjT5Z3NKnjf57jZrWLfyGC
	 kOuAudTE5Gttw==
X-MTA-CheckPoint: {605230E3-1-C72F090A-45BF}
Authentication-Results: thsbbfxss01p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=R6FQ+H9r;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGe8ldzhOw28kofL1y8m5OflsYDnLW6RUn6rccOww74IjJOHKnrsGskH6MWEQKcQjXIciqH++ngTskRnNr3CrCqAvR6aHlGemkIbObMzLQgLqnB3cahj+B5jCbEP35plzFi48BtdcuNfuJ2K/abyv6rB7r91KBRbdcPGxaX1dmUj9F3KfDImWgarccPuUv3wAawBriFInoDTYbgdwpip2a8A4Gnk0BU4bUkVEMPQTjIECv8y6G06bE1EYTE+f8XChOq2W707F6XzUNll1CzQlq+5+vDEN4QTu4aHOtsLoaogrKqsNrTNWrCvys8SCZSQDSvxrXGjlYy2MZhCc/MrMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=msQvCFjKoSGCg4vsoyJPgRXAKGJqtAMl4UwyHgm0+Zs=;
 b=VMcMKSW2B9sD54p4VgEAGj3JNjvDJ+u0D3dKt55C/v2u9nwgLipcWUjMBv5htaEhabNEYMgVcoZLplWouVVBRlXYqzMZSQ3FGsZN1He829lrTgIH1ZGZGC1XKrezBnCYxYOpADHfk5Ae8UDdTwilPSjt8a+pvthqs1LqqcuYvTP2VFlt0XZfCwXxPNHRITJ58+bUGvZtWR3WovJTMcmuX73HkeLPEpfcLZySHCXhqvY9K/ft33NEhujsC96jPa1nx/SwjAEazpNiqFe/bD5VbQApsOB50mHsBXV/vHOAzjtZwdx5J8eIYZJYtuBnBmLiBQRhmAbEKFpczuKPcD37xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=msQvCFjKoSGCg4vsoyJPgRXAKGJqtAMl4UwyHgm0+Zs=;
 b=R6FQ+H9rp8QSAUwfn+JrVhN2ybrn76NYymuE4N+dp2euH+ElQjp7I0h0cgs/g60SBq3pUZ/Q1gCrEm7UduNfS6F2R/OG7KykkfBf8hK/71T9siqt1sse36yU+qsS0cJrZGqTvvxT4pHOsg8/TYQnl9ROPLIybBqrG1IGw578wdg=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Recipes and meta-data directory tree
Thread-Topic: Recipes and meta-data directory tree
Thread-Index: AdcbQJbRYxWSHSHxRXqE0+wGowtn/w==
Date: Wed, 17 Mar 2021 16:40:02 +0000
Message-ID: 
 <PR0P264MB08896A3DF38FEA8A2A85A18DE16A9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bede2854-e90f-4b10-0538-08d8e9635019
x-ms-traffictypediagnostic: PR0P264MB2218:
x-microsoft-antispam-prvs: 
 <PR0P264MB221870E495E26559F5EA4388E16A9@PR0P264MB2218.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ObGD1Kg4KQkRDafVsXPl7ngzSZg6bqO/UfviHTqGE0bPPiDshU9jmreQHOE+LPn28pMvUXyvHLFFDa7NF8srT0GEJj5DDFnRU6tKlrFT+3KUp0xutimvXG2n1Wen3uiUINaLzsF57MSUwzRTxRnmpAiv8z7Bq3lKKe3vaqmY1nmlVAnZvIqEKqJJUW/P+h9VCoNgfvKueUZC1sh5GAFYO1UPxAPee4jNX3LZUEHIPvcbM/u5qfVdhrK8mGWVtFsUnx2fIcMi7vgN5IEo4bsyJFsHqv+NQjMlKvqnOkfn4uHXqihTxb5qMLS25OzBWzbZTGXyNIG/4vSh1MbHhWwwkD4Z2l3YRu2PjS8+MQ96pJenrztWvlZll97GdP9jz24nE5gxZcD0qERCBif5kbQNK5ZimdFl0qoa/S6nfhg3dpnubqsM8mHPnxYOmP01zfeW9HqFlW1qN/AwX22XxJti/2M8UPoVYHqW0iEkDxg5RrwrkxHw2+SHIRx+1+Y2puyblOHqjvxzUBoL1W887N+/r5V7Aa/W455pS4ZIUfRrqs+mABGTYD+Hch68AcWF4v4n
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(2906002)(66556008)(66476007)(71200400001)(76116006)(186003)(66446008)(66946007)(64756008)(86362001)(6506007)(5660300002)(7696005)(55016002)(8676002)(6916009)(26005)(8936002)(52536014)(33656002)(9686003)(498600001)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?R0pGdnlnNjFaUVR3TVVlWWtwaVZLdStUVW52bkFObHhxRXB4R2NuRjJaR21K?=
 =?utf-8?B?dEZHVnhTT2IvOFVjVUY0aHU3c3VvYWU5RFZ5UUU3b3FYSHRiSE1rTVZOWWUv?=
 =?utf-8?B?aFphTVA4RUtMVjVMVXVRbWJRMWVuUU1aY3p6YjJySGs3MUZpMzNET3lvRW1B?=
 =?utf-8?B?Rk52eTBJbmV6WUhqTFFRVkc5VmQ3ZERmWEFwNmlKeWhSM200anc3MytFakhs?=
 =?utf-8?B?N0l2RHFUZ1FsTmM2Y3BiNEp2bjRvNGQ0Uy9vRDB2OW9YZUEybEsvQSsxQmdX?=
 =?utf-8?B?QWI3Q1pKS3JXSXFsald6cCtGK2w4eFgrVVJ3dXNhb3RqcmNOd01VbW51VUNM?=
 =?utf-8?B?czk3anRVRVF5U1A0V3dnYW00d3pVdC8vcUREV2lNckxKMWpEeDJaNlh0dkNv?=
 =?utf-8?B?aDU0MFpRbDMzODJINUozNTZjcEJCYXhzenFtaUk2L0ZKdE94eEZjZGpsNTAv?=
 =?utf-8?B?Z0xBRnhIcVZGVEUwVEdVN044VUdiaTNneUM0NWNUcTM0TC9PelVxVjBZS0VW?=
 =?utf-8?B?NGtqNGVZMENOeFJ1Y3h3c2hKOG80ajVNcXhqOEtrWHFrb3ByMEtMY1Q4aFM1?=
 =?utf-8?B?TktvWEJybElxM3ZiQWI2S3pqRko3cytqNWM2SUcwMnBad0hVOFRDMkJBN1Mr?=
 =?utf-8?B?WXFYOEo3SnFjSUtDbVd0b3hUUTVzdHpJaks4R3NId1ZXQnJGVXRyVytvNnVr?=
 =?utf-8?B?T2N6Z1FjT0JzaTFONHdMV2pCQXRUR291c2V2SE9pYjZXS1VxNCtQelBRKy9S?=
 =?utf-8?B?U3krb0xvaExkWnBTZSt5V3NmUXhyZXZWc1VmT0ZBNW4zRWcyUTFmTm10RHBx?=
 =?utf-8?B?UEtVSGNpNE9jbTg3YVp1NHU3dW1sdHpDYTFOR1hIbm1SaE0vK0FoU1czc0oy?=
 =?utf-8?B?S2dWM0EyamVlWmdUdVZiMm8zaWlnb1NBS2IybGp6dGZub3ArcEJ2MHh1cldR?=
 =?utf-8?B?dVprT3F3ODQ3SXlya1lIQ3k0b0ZjUjR3RU1ubkVFRVp5ZG9tbE9uQ3M3WERp?=
 =?utf-8?B?VTdlRXh0R3ZFVFZlRTRwOWM3Z3FYNFhVYU9MV0VHM2Z0TVh3cFJkWkg3cWtZ?=
 =?utf-8?B?YXAvSnpub3hjQWRPREsrUUNGTDd4cGloTkt1L1UybTZUTHp5Q3lLd2VuWGwv?=
 =?utf-8?B?Z1RIczJ4eHF6Q2lPbDR5LzgrUlcwYjRyL1Y1RWQ2eVpQRjlJWWplanV1MXhL?=
 =?utf-8?B?c3dtZ0s3R0N2ZmhIRFJoNVhCdnhuZkpVQ0RtOFBYcG9uUjd3VlpJK29sNkFZ?=
 =?utf-8?B?VGh4SGY4RG9NdGJFVVRTemRhZDJYa2s4OUloNkcrRGtKV3BjZEZDdGQrU1Iv?=
 =?utf-8?B?cXFoOXE4b21SSmU3VTlmU1RkMlg3Ui9DY2Y2MFExS0NYVHhQQWQrUE5ZRHNk?=
 =?utf-8?B?dDBlMlFQNmZtSEhvM2YyNXpLeTZBMG0vRXNIWDZFLzhGVFkva1gxaW5QTTlL?=
 =?utf-8?B?a2VuaFl3bmc5TGQ4eEhMaWl5YVFVS0pDc2RYU1lvUmNjSys2TThEODVTVm00?=
 =?utf-8?B?Z1oxeUdQUXNLQUpiYnJlZ0hYMmxVWlJsdkNQTVBDd0UrMDJtZlZ1QmpDMGNr?=
 =?utf-8?B?MVozYXFMOG1CQjlSdjV0bEl2WFZSWVJOMzdrWWNnckdpelVCemlEMWlXVmVm?=
 =?utf-8?B?emQrY2h5KzkxV1dCZHFJOE94OWJOVTBSQkZmcDRyOU1hNEdWNExBY0RTU0xL?=
 =?utf-8?B?YWpzdkJpc0xkTUJpaFpPOHZYSERGdEtFc3NYbWNPd1JKK2NRcFQydmEwTzFH?=
 =?utf-8?Q?T9sFt74JR4gzxkEE2bTMx0khGWWjaXOkPrfYZMh?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: bede2854-e90f-4b10-0538-08d8e9635019
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 16:40:02.7316
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xHgWjlS0JiNOduF1Ds/MrKWnO1Xfc//n00J8q2jCUtFkf+ifBQSCrzZ03qpLJjwQ37o1JbWXa0mqErnioc4SocMaw1MvethodCgMxERjVUNajrh92shtpksFSzAJv53Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB2218
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.3.17.163315, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.3.17.5820001
X-Sophos-SenderHistory: ip=104.47.24.101,fs=1179571,da=64713734,mc=21376,sc=1,hc=21375,sp=0,fso=64582120,re=75,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_2000_2999 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, CTE_BASE64 0, DKIM_SIGNATURE 0, DQ_S_H 0, KNOWN_MTA_TFX 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_99_L 0, __DQ_S_IP_SC_1_P 0, __DQ_S_IP_SP_0_P 0, __FROM_DOMAIN_NOT_IN_BODY 0, __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0,
 __HAS_FROM 0, __HAS_MSGID 0, __HAS_XOIP 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __NO_HTML_TAG_RAW 0, __RDNS_WEBMAIL 0, __SANE_MSGID 0, __SUBJ_ALPHA_END 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NO_NAME 0, __URI_NO_MAILTO 0'
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHdvIHByb2plY3RzIGFyZSBnaXZlbi4gVGhleSB1c2UgZGlmZmVyZW50IFlQIHJlbGVhc2UgZWFj
aC4gDQpQcm9qZWN0cyB1c2UgYWxzbyBkaWZmZXJlbnQgdGFyZ2V0IHBsYXRmb3JtIGVhY2guDQoN
Ckkgd29uZGVyIGlmIGRpZmZlcmVuY2VzIGluIHN0cnVjdHVyaW5nIG1ldGFkYXRhLSBhbmQgcmVj
aXBlcy0gZGlyZWN0b3J5IHRyZWUgYmV0d2Vlbg0KdGhlc2UgdHdvIHByb2plY3RzIHJlc3VsdCBz
b2xlbHkgZnJvbSBkaWZmZXJlbnQgWVAgcmVsZWFzZXMgaW4gdXNlLg0KT3IgaWYgdGhlc2UgY2Fu
IGJlIGEgcmVzdWx0IGFsc28gb2YgbW9kaWZpY2F0aW9ucyBjb25kdWN0ZWQgYnkgcGxhdGZvcm0g
dmVuZG9ycy4NCg0KQW55IGhpbnRzIGluIHdoYXQgZXh0ZW5kIHRoZXNlIHJlc3VsdCBmcm9tIGRp
ZmZlcmVudCBZUCByZWxlYXNlIG51bWJlcnMgaW4gdXNlPw0KDQpwcm9qZWN0IEEgKFlQIHJlbGVh
c2UgMi42KQ0KeHh4eCAveW9jdG8vDQp4eHh4L3lvY3RvL2Rvd25sb2Fkcw0KeHh4eC95b2N0by9t
ZXRhDQp4eHh4L3lvY3RvL3NzdGF0ZS1jYWNoZQ0KeHh4eC95b2N0by9idWlsZA0KeHh4eC95b2N0
by8ucmVwbw0KeHh4eC95b2N0by9zcmMNCnh4eHgveW9jdG8vcHJlYnVpbHQNCnh4eHgveW9jdG8v
bWV0YS8NCnh4eHgveW9jdG8vbWV0YS9wb2t5DQp4eHh4L3lvY3RvL21ldGEvbWV0YS1zZWN1cml0
eQ0KeHh4eC95b2N0by9tZXRhL21ldGEtY2xhbmcNCnh4eHgveW9jdG8vbWV0YS9tZXRhLW9wZW5l
bWJlZGRlZA0KeHh4eC95b2N0by9tZXRhL3Bva3kvDQp4eHh4L3lvY3RvL21ldGEvcG9reS9tZXRh
DQp4eHh4L3lvY3RvL21ldGEvcG9reS9kb2N1bWVudGF0aW9uDQp4eHh4L3lvY3RvL21ldGEvcG9r
eS9tZXRhLXBva3kNCnh4eHgveW9jdG8vbWV0YS9wb2t5L21ldGEtc2VsZnRlc3QNCnh4eHgveW9j
dG8vbWV0YS9wb2t5L2JpdGJha2UNCnh4eHgveW9jdG8vbWV0YS9wb2t5Ly5naXQNCnh4eHgveW9j
dG8vbWV0YS9wb2t5L21ldGEteW9jdG8tYnNwDQp4eHh4L3lvY3RvL21ldGEvcG9reS9tZXRhLXNr
ZWxldG9uDQp4eHh4L3lvY3RvL21ldGEvcG9reS9zY3JpcHRzDQorIGEgc2V0IG9mIGxheWVycyB2
YWx1ZSBjaGFpbiBzcGVjaWZpYywgbWV0YS0uLi4gc3ViZGlyZWN0b3JpZXMgd2l0aCBtZXRhLyAg
YXMgcm9vdC1wb2ludC4NCg0KcHJvamVjdCBCIChZUCByZWxlYXNlIDIuMCwgYWN0dWFsbHkgYmFj
a3BvcnQgb2Ygc29tZSBsYXRlciByZWxlYXNlDQp3aGljaCB1bmZvcnR1bmF0ZWx5IGlzIG5vdCBy
ZWZsZWN0ZWQgaW4gcG9reS5jb25mKQ0KeXl5eS9wb2t5Lw0KeXl5eS9wb2t5L21ldGEteW9jdG8N
Cnl5eXkvcG9reS9tZXRhDQp5eXl5L3Bva3kvZG9jdW1lbnRhdGlvbg0KeXl5eS9wb2t5L21ldGEt
c2VsZnRlc3QNCnl5eXkvcG9reS9tZXRhLXNlbGludXgNCnl5eXkvcG9reS9idWlsZA0KeXl5eS9w
b2t5L21ldGEtY3VzdC1pbnN0YWxsZXINCnl5eXkvcG9reS9iaXRiYWtlDQp5eXl5L3Bva3kvbWV0
YS15b2N0by1ic3ANCnl5eXkvcG9reS9tZXRhLXNrZWxldG9uDQp5eXl5L3Bva3kvc2NyaXB0cw0K
KyBhIHNldCBvZiBsYXllcnMgdmFsdWUgY2hhaW4gc3BlY2lmaWMsIG1ldGEtLi4uIHN1YmRpcmVj
dG9yaWVzIHdpdGggcG9reS8gIGFzIHJvb3QtcG9pbnQuDQoNCkkgbWVhbiBtYWlubHkgZm9sbG93
aW5nIGRpZmZlcmVuY2VzOg0KKiBQcm9qZWN0IEEgcGxhY2VzIGEgc2V0IG9mIHZhbHVlLWNoYWlu
IHNwZWNpZmljIGxheWVycy9tZXRhLS4uLiBkaXJlY3RvcmllcyBhdCBzYW1lDQpkaXJlY3Rvcnkg
bGV2ZWwgYXMgcG9reS4NCiogbWV0YS15b2N0byBhcHBhcmVudGx5IG5vdCBwcmVzZW50IGluIHBy
b2plY3QgQSB0cmVlDQoqIG1ldGEtcG9reSBhcHBhcmVudGx5IG5vdCBwcmVzZW50IGluIHByb2pl
Y3QgQiB0cmVlDQo=
